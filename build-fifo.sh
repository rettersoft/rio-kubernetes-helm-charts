#!/bin/bash

# Check if a parameter is provided
if [ $# -eq 0 ]; then
    echo "Please provide a tag for the Docker image."
    exit 1
fi
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

# Export the IMAGE_TAG environment variable with the provided tag
export IMAGE_TAG=$tag
echo "IMAGE_TAG has been set to '$IMAGE_TAG'."

# parse package.json to get the version
RIO_VERSION=$(yq eval '.version' package.json)
echo  "version is $RIO_VERSION"

#if below line fails it should be ignored
cd charts/rio-common/rio-fifo
/opt/homebrew/bin/helm uninstall projectid3-fifo || true
echo "image loading to the minikube docker daemon..."
echo "if minikube is your current k8 context remember to expose all loadbalancer services with -> minikube tunnel"
helm dependency update && helm package .

helm install projectid3-fifo rio-fifo-0.1.0.tgz \
 --set global.image.tag=$IMAGE_TAG \
 --set global.env.rioVersion=$RIO_VERSION