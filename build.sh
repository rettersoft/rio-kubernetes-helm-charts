#!/bin/bash

# Check if a parameter is provided
if [ $# -eq 0 ]; then
    echo "Please provide a tag for the Docker image."
    exit 1
fi
npm run build
#npm run obfuscate

# Get the tag from the command line argument
tag=$1
# if minukube is installed do this
if command -v minikube >/dev/null 2>&1; then
    eval $(minikube docker-env) && echo "minikube docker env set"
else
    echo "Minikube is not installed. Skipping Minikube Docker environment setup."
fi
# red color message
echo -e "------- if you are not use minikube remove the \$(minikube docker-env) --------------"

# Build the Docker image with the specified tag
docker build -t rio-base-image:$tag .
#export DOCKER_BUILDKIT=1
#docker buildx use default
#docker buildx build  \
#    --platform linux/amd64 \
#    -t rio-base-image:$tag .

# Export the IMAGE_TAG environment variable with the provided tag
export IMAGE_TAG=$tag
echo "Docker image 'base image:$tag' has been built successfully."
echo "IMAGE_TAG has been set to '$IMAGE_TAG'."

# parse package.json to get the version
RIO_VERSION=$(yq eval '.version' package.json)
echo "version is $RIO_VERSION"

# Wait here for the user to press Enter before continuing
read -p "Press Enter to start deployment..."

cd charts/rio-projects/projectid3
rm -rf user-code-0.1.0.tgz
rm -rf charts
#if below line fails it should be ignored
# Define Helm variables
RELEASE_NAME="projectid3"
NAMESPACE="default"


# Define common Helm set parameters
SET_PARAMS=(
    --set global.env.rioVersion=$RIO_VERSION
    --set image.tag=$IMAGE_TAG
    --set rio-api.image.tag=$IMAGE_TAG
    --set rio-fifo.image.tag=$IMAGE_TAG
    --set rio-task.image.tag=$IMAGE_TAG
    --set rio-scheduler-task-consumer.image.tag=$IMAGE_TAG
    --set rio-scheduler-async-consumer.image.tag=$IMAGE_TAG
    --set rio-scheduler-cron-consumer.image.tag=$IMAGE_TAG
    --set rio-scheduler-api.image.tag=$IMAGE_TAG
    --set rio-rdk.image.tag=$IMAGE_TAG
)

echo "Helm dependencies updating and packaging chart..."
helm dependency update && helm package .

# Check if the Helm release exists
if helm ls --namespace $NAMESPACE | grep $RELEASE_NAME > /dev/null; then
    echo "Helm release $RELEASE_NAME found. Preparing to upgrade..."
    helm upgrade $RELEASE_NAME user-code-0.1.0.tgz \
        --namespace $NAMESPACE "${SET_PARAMS[@]}"
else
    echo "Helm release $RELEASE_NAME not found. Installing..."
    /opt/homebrew/bin/helm install $RELEASE_NAME user-code-0.1.0.tgz \
        --namespace $NAMESPACE "${SET_PARAMS[@]}"
fi
cd ../../..

./build-fifo.sh $IMAGE_TAG
