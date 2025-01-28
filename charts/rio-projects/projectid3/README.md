# user-code

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![AppVersion: 1.0](https://img.shields.io/badge/AppVersion-1.0-informational?style=flat-square)

A Helm chart for the runtime component

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| file://../../rio-common/rio-api | rio-api | 0.1.0 |
| file://../../rio-common/rio-rdk | rio-rdk | 0.1.0 |
| file://../../rio-common/rio-scheduler-api | rio-scheduler-api | 0.1.0 |
| file://../../rio-common/rio-scheduler-async-consumer | rio-scheduler-async-consumer | 0.1.0 |
| file://../../rio-common/rio-scheduler-cron-consumer | rio-scheduler-cron-consumer | 0.1.0 |
| file://../../rio-common/rio-scheduler-dashboard | rio-scheduler-dashboard | 0.1.0 |
| file://../../rio-common/rio-scheduler-task-consumer | rio-scheduler-task-consumer | 0.1.0 |

## Values

### Global Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| global.certificate.type | string | `"custom"` | What type of TLS certificate should be used?    Available options:    1) custom: A user-provided certificate.       - You must create your own secret, for example:         kubectl create secret tls my-cert-tls \           --cert /path/to/tls.crt \           --key /path/to/tls.key       - Reference that secret in your Helm chart as needed.    2) letsencrypt: Automatically request a certificate from Let's Encrypt.     Default is "custom". |
| global.env | object | `{"PROJECT_ID":"${PROJECT_ID}","RDK_URL":"http://${PROJECT_ID}-rio-rdk.default.svc.cluster.local","SCHEDULER_API_URL":"http://${PROJECT_ID}-rio-scheduler-api.default.svc.cluster.local","USER_CODE_URL":"http://${PROJECT_ID}-user-code.default.svc.cluster.local"}` | Environment variables that shared with all the pods |
| global.image | object | `{"pullPolicy":"IfNotPresent","repository":"${REPOSITORY}","tag":"${IMAGE_TAG}"}` | Image of the RIO CORE |
| global.objectStorage | object | `{"type":"MINIO"}` | Bucket storage |
| global.objectStorage.type | string | `"MINIO"` | type of the object storage other options S3 |
| global.podAnnotations | string | `nil` |  |
| global.secret.MINIO_PASSWORD | string | `"minio123"` |  |
| global.secret.MINIO_USERNAME | string | `"minio"` |  |
| global.userImage | object | `{"pullPolicy":"IfNotPresent","repository":"${REPOSITORY}","tag":"${IMAGE_TAG}"}` | The image of user code refer to: https://github.com/rettersoft/rio-kubernetes-user-code |

### Parent Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `true` |  |
| autoscaling.maxReplicas | int | `10` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `70` |  |
| command[0] | string | `"node"` |  |
| command[1] | string | `"/opt/core-extension/dist/src/bin/user-code.js"` |  |
| extraEnv.test | string | `"value"` |  |
| nodeSelector | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | float | `0.5` |  |
| resources.limits.memory | string | `"256Mi"` |  |
| resources.requests.cpu | float | `0.1` |  |
| resources.requests.memory | string | `"256i"` |  |
| rio-api.autoscaling.enabled | bool | `true` |  |
| rio-api.autoscaling.maxReplicas | int | `10` |  |
| rio-api.autoscaling.minReplicas | int | `1` |  |
| rio-api.autoscaling.targetCPUUtilizationPercentage | int | `70` |  |
| rio-api.command[0] | string | `"node"` |  |
| rio-api.command[1] | string | `"/opt/core-extension/dist/src/bin/api.js"` |  |
| rio-api.envFrom[0].secretRef.name | string | `"rabbitmq-secrets"` |  |
| rio-api.envFrom[1].secretRef.name | string | `"mongo-secrets"` |  |
| rio-api.envFrom[2].secretRef.name | string | `"object-storage-secrets"` |  |
| rio-api.envFrom[3].secretRef.name | string | `"redis-secrets"` |  |
| rio-api.envFrom[4].secretRef.name | string | `"scheduler-redis-secrets"` |  |
| rio-api.envFrom[5].secretRef.name | string | `"config-storage"` |  |
| rio-api.envFrom[6].secretRef.name | string | `"config-secret-root-api-key"` |  |
| rio-api.ingress.canary | bool | `false` |  |
| rio-api.ingress.enabled | bool | `true` |  |
| rio-api.resources.limits.cpu | float | `0.5` |  |
| rio-api.resources.limits.memory | string | `"256Mi"` |  |
| rio-api.resources.requests.cpu | float | `0.1` |  |
| rio-api.resources.requests.memory | string | `"256i"` |  |
| rio-rdk.autoscaling.enabled | bool | `true` |  |
| rio-rdk.autoscaling.maxReplicas | int | `10` |  |
| rio-rdk.autoscaling.minReplicas | int | `1` |  |
| rio-rdk.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| rio-rdk.command[0] | string | `"node"` |  |
| rio-rdk.command[1] | string | `"/opt/core-extension/dist/src/bin/rdk.js"` |  |
| rio-rdk.envFrom[0].secretRef.name | string | `"rabbitmq-secrets"` |  |
| rio-rdk.envFrom[1].secretRef.name | string | `"mongo-secrets"` |  |
| rio-rdk.envFrom[2].secretRef.name | string | `"object-storage-secrets"` |  |
| rio-rdk.envFrom[3].secretRef.name | string | `"redis-secrets"` |  |
| rio-rdk.envFrom[4].secretRef.name | string | `"scheduler-redis-secrets"` |  |
| rio-rdk.envFrom[5].secretRef.name | string | `"config-storage"` |  |
| rio-rdk.envFrom[6].secretRef.name | string | `"config-secret-root-api-key"` |  |
| rio-rdk.resources.limits.cpu | float | `0.5` |  |
| rio-rdk.resources.limits.memory | string | `"256Mi"` |  |
| rio-rdk.resources.requests.cpu | float | `0.1` |  |
| rio-rdk.resources.requests.memory | string | `"256i"` |  |
| rio-scheduler-api.autoscaling.enabled | bool | `true` |  |
| rio-scheduler-api.autoscaling.maxReplicas | int | `10` |  |
| rio-scheduler-api.autoscaling.minReplicas | int | `1` |  |
| rio-scheduler-api.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| rio-scheduler-api.command[0] | string | `"node"` |  |
| rio-scheduler-api.command[1] | string | `"/opt/core-extension/dist/src/bin/scheduler-api.js"` |  |
| rio-scheduler-api.envFrom[0].secretRef.name | string | `"rabbitmq-secrets"` |  |
| rio-scheduler-api.envFrom[1].secretRef.name | string | `"mongo-secrets"` |  |
| rio-scheduler-api.envFrom[2].secretRef.name | string | `"object-storage-secrets"` |  |
| rio-scheduler-api.envFrom[3].secretRef.name | string | `"redis-secrets"` |  |
| rio-scheduler-api.envFrom[4].secretRef.name | string | `"scheduler-redis-secrets"` |  |
| rio-scheduler-api.envFrom[5].secretRef.name | string | `"config-storage"` |  |
| rio-scheduler-async-consumer.autoscaling.enabled | bool | `true` |  |
| rio-scheduler-async-consumer.autoscaling.maxReplicas | int | `10` |  |
| rio-scheduler-async-consumer.autoscaling.minReplicas | int | `1` |  |
| rio-scheduler-async-consumer.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| rio-scheduler-async-consumer.command[0] | string | `"node"` |  |
| rio-scheduler-async-consumer.command[1] | string | `"/opt/core-extension/dist/src/bin/scheduler-async-consumer.js"` |  |
| rio-scheduler-async-consumer.envFrom[0].secretRef.name | string | `"rabbitmq-secrets"` |  |
| rio-scheduler-async-consumer.envFrom[1].secretRef.name | string | `"mongo-secrets"` |  |
| rio-scheduler-async-consumer.envFrom[2].secretRef.name | string | `"object-storage-secrets"` |  |
| rio-scheduler-async-consumer.envFrom[3].secretRef.name | string | `"redis-secrets"` |  |
| rio-scheduler-async-consumer.envFrom[4].secretRef.name | string | `"scheduler-redis-secrets"` |  |
| rio-scheduler-async-consumer.envFrom[5].secretRef.name | string | `"config-storage"` |  |
| rio-scheduler-cron-consumer.autoscaling.enabled | bool | `true` |  |
| rio-scheduler-cron-consumer.autoscaling.maxReplicas | int | `10` |  |
| rio-scheduler-cron-consumer.autoscaling.minReplicas | int | `1` |  |
| rio-scheduler-cron-consumer.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| rio-scheduler-cron-consumer.command[0] | string | `"node"` |  |
| rio-scheduler-cron-consumer.command[1] | string | `"/opt/core-extension/dist/src/bin/scheduler-cron-consumer.js"` |  |
| rio-scheduler-cron-consumer.envFrom[0].secretRef.name | string | `"rabbitmq-secrets"` |  |
| rio-scheduler-cron-consumer.envFrom[1].secretRef.name | string | `"mongo-secrets"` |  |
| rio-scheduler-cron-consumer.envFrom[2].secretRef.name | string | `"object-storage-secrets"` |  |
| rio-scheduler-cron-consumer.envFrom[3].secretRef.name | string | `"redis-secrets"` |  |
| rio-scheduler-cron-consumer.envFrom[4].secretRef.name | string | `"scheduler-redis-secrets"` |  |
| rio-scheduler-cron-consumer.envFrom[5].secretRef.name | string | `"config-storage"` |  |
| rio-scheduler-dashboard.envFrom[0].secretRef.name | string | `"redis-secrets"` |  |
| rio-scheduler-dashboard.envFrom[1].secretRef.name | string | `"scheduler-redis-secrets"` |  |
| rio-scheduler-dashboard.image.pullPolicy | string | `"Always"` |  |
| rio-scheduler-dashboard.image.repository | string | `"swr.tr-west-1.myhuaweicloud.com/rio-a101-test/scheduler-dashboard"` |  |
| rio-scheduler-dashboard.image.tag | int | `7` |  |
| rio-scheduler-dashboard.queues[0] | string | `"${PROJECT_ID}_async"` |  |
| rio-scheduler-dashboard.queues[1] | string | `"${PROJECT_ID}_task"` |  |
| rio-scheduler-dashboard.queues[2] | string | `"${PROJECT_ID}_cron"` |  |
| rio-scheduler-task-consumer.autoscaling.enabled | bool | `true` |  |
| rio-scheduler-task-consumer.autoscaling.maxReplicas | int | `10` |  |
| rio-scheduler-task-consumer.autoscaling.minReplicas | int | `1` |  |
| rio-scheduler-task-consumer.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| rio-scheduler-task-consumer.command[0] | string | `"node"` |  |
| rio-scheduler-task-consumer.command[1] | string | `"/opt/core-extension/dist/src/bin/scheduler-task-consumer.js"` |  |
| rio-scheduler-task-consumer.envFrom[0].secretRef.name | string | `"rabbitmq-secrets"` |  |
| rio-scheduler-task-consumer.envFrom[1].secretRef.name | string | `"mongo-secrets"` |  |
| rio-scheduler-task-consumer.envFrom[2].secretRef.name | string | `"object-storage-secrets"` |  |
| rio-scheduler-task-consumer.envFrom[3].secretRef.name | string | `"redis-secrets"` |  |
| rio-scheduler-task-consumer.envFrom[4].secretRef.name | string | `"scheduler-redis-secrets"` |  |
| rio-scheduler-task-consumer.envFrom[5].secretRef.name | string | `"config-storage"` |  |
| service.debugPort | int | `9229` |  |
| service.port | int | `80` |  |
| service.targetPort | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| tolerations | list | `[]` |  |
| vault.kvPath | string | `"secret"` |  |
### Sub-chart: rio-api Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| rio-api.affinity | object | `{}` |  |
| rio-api.autoscaling | object | `{"enabled":true,"maxReplicas":5,"minReplicas":1,"targetCPUUtilizationPercentage":60}` | Creates HPA |
| rio-api.autoscaling.enabled | bool | `true` | Creates HPA |
| rio-api.autoscaling.maxReplicas | int | `5` | Max Replicas |
| rio-api.autoscaling.minReplicas | int | `1` | Min Replicas |
| rio-api.autoscaling.targetCPUUtilizationPercentage | int | `60` | Target Cpu Utilization Percentage |
| rio-api.command[0] | string | `"node"` |  |
| rio-api.command[1] | string | `"/opt/core-extension/dist/src/bin/api.js"` |  |
| rio-api.image.pullPolicy | string | `"IfNotPresent"` |  |
| rio-api.image.repository | string | `"rio-api"` |  |
| rio-api.image.tag | int | `11` |  |
| rio-api.ingress.certificateSecret | string | `"my-cert-tls"` |  |
| rio-api.ingress.enabled | bool | `true` |  |
| rio-api.ingress.host | string | `"localhost"` |  |
| rio-api.ingress.path | string | `"/"` |  |
| rio-api.nodeSelector | object | `{}` |  |
| rio-api.replicaCount | int | `1` |  |
| rio-api.resources.limits.cpu | string | `"100m"` |  |
| rio-api.resources.limits.memory | string | `"128Mi"` |  |
| rio-api.resources.requests.cpu | string | `"100m"` |  |
| rio-api.resources.requests.memory | string | `"128Mi"` |  |
| rio-api.service.debugPort | int | `9229` |  |
| rio-api.service.port | int | `80` |  |
| rio-api.service.targetPort | int | `80` |  |
| rio-api.service.type | string | `"ClusterIP"` |  |
| rio-api.tolerations | list | `[]` |  |
### Sub-chart: rio-rdk Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| rio-rdk.affinity | object | `{}` |  |
| rio-rdk.command[0] | string | `"node"` |  |
| rio-rdk.command[1] | string | `"/opt/core-extension/dist/src/bin/rdk.js"` |  |
| rio-rdk.image.pullPolicy | string | `"IfNotPresent"` |  |
| rio-rdk.image.repository | string | `"rio-base-image"` |  |
| rio-rdk.image.tag | string | `"asdf"` |  |
| rio-rdk.ingress.enabled | bool | `true` |  |
| rio-rdk.nodeSelector | object | `{}` |  |
| rio-rdk.projectId | string | `"asdf"` |  |
| rio-rdk.replicaCount | int | `1` |  |
| rio-rdk.resources.limits.cpu | string | `"100m"` |  |
| rio-rdk.resources.limits.memory | string | `"128Mi"` |  |
| rio-rdk.resources.requests.cpu | string | `"100m"` |  |
| rio-rdk.resources.requests.memory | string | `"128Mi"` |  |
| rio-rdk.service.port | int | `80` |  |
| rio-rdk.service.targetPort | int | `80` |  |
| rio-rdk.service.type | string | `"ClusterIP"` |  |
| rio-rdk.tolerations | list | `[]` |  |
### Sub-chart: rio-scheduler-api Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| rio-scheduler-api.affinity | object | `{}` |  |
| rio-scheduler-api.autoscaling.enabled | bool | `true` |  |
| rio-scheduler-api.autoscaling.maxReplicas | int | `5` |  |
| rio-scheduler-api.autoscaling.minReplicas | int | `1` |  |
| rio-scheduler-api.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| rio-scheduler-api.command[0] | string | `"node"` |  |
| rio-scheduler-api.command[1] | string | `"/opt/core-extension/dist/src/bin/scheduler-api.js"` |  |
| rio-scheduler-api.image.pullPolicy | string | `"IfNotPresent"` |  |
| rio-scheduler-api.image.repository | string | `"rio-base-image"` |  |
| rio-scheduler-api.image.tag | int | `11` |  |
| rio-scheduler-api.nodeSelector | object | `{}` |  |
| rio-scheduler-api.replicaCount | int | `1` |  |
| rio-scheduler-api.resources.limits.cpu | string | `"100m"` |  |
| rio-scheduler-api.resources.limits.memory | string | `"128Mi"` |  |
| rio-scheduler-api.resources.requests.cpu | string | `"100m"` |  |
| rio-scheduler-api.resources.requests.memory | string | `"128Mi"` |  |
| rio-scheduler-api.service.debugPort | int | `9229` |  |
| rio-scheduler-api.service.port | int | `80` |  |
| rio-scheduler-api.service.targetPort | int | `80` |  |
| rio-scheduler-api.service.type | string | `"ClusterIP"` |  |
| rio-scheduler-api.tolerations | list | `[]` |  |
### Sub-chart: rio-scheduler-async-consumer Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| rio-scheduler-async-consumer.affinity | object | `{}` |  |
| rio-scheduler-async-consumer.autoscaling.enabled | bool | `true` |  |
| rio-scheduler-async-consumer.autoscaling.maxReplicas | int | `10` |  |
| rio-scheduler-async-consumer.autoscaling.minReplicas | int | `1` |  |
| rio-scheduler-async-consumer.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| rio-scheduler-async-consumer.command[0] | string | `"node"` |  |
| rio-scheduler-async-consumer.command[1] | string | `"/opt/core-extension/dist/src/bin/scheduler-async-consumer.js"` |  |
| rio-scheduler-async-consumer.image.pullPolicy | string | `"IfNotPresent"` |  |
| rio-scheduler-async-consumer.image.repository | string | `"rio-base-image"` |  |
| rio-scheduler-async-consumer.image.tag | int | `11` |  |
| rio-scheduler-async-consumer.nodeSelector | object | `{}` |  |
| rio-scheduler-async-consumer.replicaCount | int | `1` |  |
| rio-scheduler-async-consumer.resources.limits.cpu | string | `"100m"` |  |
| rio-scheduler-async-consumer.resources.limits.memory | string | `"128Mi"` |  |
| rio-scheduler-async-consumer.resources.requests.cpu | string | `"100m"` |  |
| rio-scheduler-async-consumer.resources.requests.memory | string | `"128Mi"` |  |
| rio-scheduler-async-consumer.service.debugPort | int | `9229` |  |
| rio-scheduler-async-consumer.service.port | int | `80` |  |
| rio-scheduler-async-consumer.service.targetPort | int | `80` |  |
| rio-scheduler-async-consumer.service.type | string | `"ClusterIP"` |  |
| rio-scheduler-async-consumer.tolerations | list | `[]` |  |
### Sub-chart: rio-scheduler-cron-consumer Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| rio-scheduler-cron-consumer.affinity | object | `{}` |  |
| rio-scheduler-cron-consumer.autoscaling.enabled | bool | `true` |  |
| rio-scheduler-cron-consumer.autoscaling.maxReplicas | int | `10` |  |
| rio-scheduler-cron-consumer.autoscaling.minReplicas | int | `1` |  |
| rio-scheduler-cron-consumer.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| rio-scheduler-cron-consumer.command[0] | string | `"node"` |  |
| rio-scheduler-cron-consumer.command[1] | string | `"/opt/core-extension/dist/src/bin/scheduler-cron-consumer.js"` |  |
| rio-scheduler-cron-consumer.image.pullPolicy | string | `"IfNotPresent"` |  |
| rio-scheduler-cron-consumer.image.repository | string | `"rio-base-image"` |  |
| rio-scheduler-cron-consumer.image.tag | int | `11` |  |
| rio-scheduler-cron-consumer.nodeSelector | object | `{}` |  |
| rio-scheduler-cron-consumer.replicaCount | int | `1` |  |
| rio-scheduler-cron-consumer.resources.limits.cpu | string | `"100m"` |  |
| rio-scheduler-cron-consumer.resources.limits.memory | string | `"128Mi"` |  |
| rio-scheduler-cron-consumer.resources.requests.cpu | string | `"100m"` |  |
| rio-scheduler-cron-consumer.resources.requests.memory | string | `"128Mi"` |  |
| rio-scheduler-cron-consumer.service.debugPort | int | `9229` |  |
| rio-scheduler-cron-consumer.service.port | int | `80` |  |
| rio-scheduler-cron-consumer.service.targetPort | int | `80` |  |
| rio-scheduler-cron-consumer.service.type | string | `"ClusterIP"` |  |
| rio-scheduler-cron-consumer.tolerations | list | `[]` |  |
### Sub-chart: rio-scheduler-dashboard Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| rio-scheduler-dashboard.affinity | object | `{}` |  |
| rio-scheduler-dashboard.env.redisHost | string | `"scheduler-redis-master.default.svc.cluster.local"` |  |
| rio-scheduler-dashboard.env.redisPassword | string | `"password"` |  |
| rio-scheduler-dashboard.env.redisPort | int | `6379` |  |
| rio-scheduler-dashboard.image.pullPolicy | string | `"IfNotPresent"` |  |
| rio-scheduler-dashboard.image.repository | string | `"bulldashboard"` |  |
| rio-scheduler-dashboard.image.tag | int | `3` |  |
| rio-scheduler-dashboard.nodeSelector | object | `{}` |  |
| rio-scheduler-dashboard.queues[0] | string | `"projectid3_task"` |  |
| rio-scheduler-dashboard.queues[1] | string | `"projectid3_cron"` |  |
| rio-scheduler-dashboard.replicaCount | int | `1` |  |
| rio-scheduler-dashboard.resources.limits.cpu | string | `"100m"` |  |
| rio-scheduler-dashboard.resources.limits.memory | string | `"128Mi"` |  |
| rio-scheduler-dashboard.resources.requests.cpu | string | `"100m"` |  |
| rio-scheduler-dashboard.resources.requests.memory | string | `"128Mi"` |  |
| rio-scheduler-dashboard.service.debugPort | int | `9229` |  |
| rio-scheduler-dashboard.service.port | int | `80` |  |
| rio-scheduler-dashboard.service.targetPort | int | `80` |  |
| rio-scheduler-dashboard.service.type | string | `"ClusterIP"` |  |
| rio-scheduler-dashboard.tolerations | list | `[]` |  |
### Sub-chart: rio-scheduler-task-consumer Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| rio-scheduler-task-consumer.affinity | object | `{}` |  |
| rio-scheduler-task-consumer.autoscaling.enabled | bool | `true` |  |
| rio-scheduler-task-consumer.autoscaling.maxReplicas | int | `10` |  |
| rio-scheduler-task-consumer.autoscaling.minReplicas | int | `1` |  |
| rio-scheduler-task-consumer.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| rio-scheduler-task-consumer.command[0] | string | `"node"` |  |
| rio-scheduler-task-consumer.command[1] | string | `"/opt/core-extension/dist/src/bin/scheduler-task-consumer.js"` |  |
| rio-scheduler-task-consumer.image.pullPolicy | string | `"IfNotPresent"` |  |
| rio-scheduler-task-consumer.image.repository | string | `"rio-base-image"` |  |
| rio-scheduler-task-consumer.image.tag | int | `11` |  |
| rio-scheduler-task-consumer.nodeSelector | object | `{}` |  |
| rio-scheduler-task-consumer.replicaCount | int | `1` |  |
| rio-scheduler-task-consumer.resources.limits.cpu | string | `"100m"` |  |
| rio-scheduler-task-consumer.resources.limits.memory | string | `"128Mi"` |  |
| rio-scheduler-task-consumer.resources.requests.cpu | string | `"100m"` |  |
| rio-scheduler-task-consumer.resources.requests.memory | string | `"128Mi"` |  |
| rio-scheduler-task-consumer.service.debugPort | int | `9229` |  |
| rio-scheduler-task-consumer.service.port | int | `80` |  |
| rio-scheduler-task-consumer.service.targetPort | int | `80` |  |
| rio-scheduler-task-consumer.service.type | string | `"ClusterIP"` |  |
| rio-scheduler-task-consumer.tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
