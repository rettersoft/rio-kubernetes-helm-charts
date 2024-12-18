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
| global.env.PROJECT_ID | string | `"${PROJECT_ID}"` |  |
| global.env.RDK_URL | string | `"http://${PROJECT_ID}-rio-rdk.default.svc.cluster.local"` |  |
| global.env.SCHEDULER_API_URL | string | `"http://${PROJECT_ID}-rio-scheduler-api.default.svc.cluster.local"` |  |
| global.env.USER_CODE_URL | string | `"http://${PROJECT_ID}-user-code.default.svc.cluster.local"` |  |
| global.image.pullPolicy | string | `"IfNotPresent"` |  |
| global.image.repository | string | `"${REPOSITORY}"` |  |
| global.image.tag | string | `"${IMAGE_TAG}"` |  |
| global.podAnnotations | string | `nil` |  |
| global.secret.MINIO_PASSWORD | string | `"minio123"` |  |
| global.secret.MINIO_USERNAME | string | `"minio"` |  |
| global.userImage.pullPolicy | string | `"IfNotPresent"` |  |
| global.userImage.repository | string | `"${REPOSITORY}"` |  |
| global.userImage.tag | string | `"${IMAGE_TAG}"` |  |
| nodeSelector | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | int | `1` |  |
| resources.limits.memory | string | `"512Mi"` |  |
| resources.requests.cpu | int | `1` |  |
| resources.requests.memory | string | `"512Mi"` |  |
| rio-api.autoscaling.enabled | bool | `true` |  |
| rio-api.autoscaling.maxReplicas | int | `10` |  |
| rio-api.autoscaling.minReplicas | int | `1` |  |
| rio-api.autoscaling.targetCPUUtilizationPercentage | int | `70` |  |
| rio-api.command[0] | string | `"node"` |  |
| rio-api.command[1] | string | `"/opt/core-extension/dist/src/bin/api.js"` |  |
| rio-api.envFrom[0].secretRef.name | string | `"rabbitmq-secrets"` |  |
| rio-api.envFrom[1].secretRef.name | string | `"mongo-secrets"` |  |
| rio-api.envFrom[2].secretRef.name | string | `"minio-secrets"` |  |
| rio-api.envFrom[3].secretRef.name | string | `"redis-secrets"` |  |
| rio-api.envFrom[4].secretRef.name | string | `"scheduler-redis-secrets"` |  |
| rio-api.envFrom[5].secretRef.name | string | `"config-storage"` |  |
| rio-api.envFrom[6].secretRef.name | string | `"config-secret-root-api-key"` |  |
| rio-api.ingress.canary | bool | `false` |  |
| rio-api.ingress.enabled | bool | `true` |  |
| rio-api.resources.limits.cpu | int | `1` |  |
| rio-api.resources.limits.memory | string | `"512Mi"` |  |
| rio-api.resources.requests.cpu | int | `1` |  |
| rio-api.resources.requests.memory | string | `"512Mi"` |  |
| rio-rdk.autoscaling.enabled | bool | `true` |  |
| rio-rdk.autoscaling.maxReplicas | int | `10` |  |
| rio-rdk.autoscaling.minReplicas | int | `1` |  |
| rio-rdk.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| rio-rdk.command[0] | string | `"node"` |  |
| rio-rdk.command[1] | string | `"/opt/core-extension/dist/src/bin/rdk.js"` |  |
| rio-rdk.envFrom[0].secretRef.name | string | `"rabbitmq-secrets"` |  |
| rio-rdk.envFrom[1].secretRef.name | string | `"mongo-secrets"` |  |
| rio-rdk.envFrom[2].secretRef.name | string | `"minio-secrets"` |  |
| rio-rdk.envFrom[3].secretRef.name | string | `"redis-secrets"` |  |
| rio-rdk.envFrom[4].secretRef.name | string | `"scheduler-redis-secrets"` |  |
| rio-rdk.envFrom[5].secretRef.name | string | `"config-storage"` |  |
| rio-rdk.envFrom[6].secretRef.name | string | `"config-secret-root-api-key"` |  |
| rio-rdk.resources.limits.cpu | int | `1` |  |
| rio-rdk.resources.limits.memory | string | `"512Mi"` |  |
| rio-rdk.resources.requests.cpu | int | `1` |  |
| rio-rdk.resources.requests.memory | string | `"512Mi"` |  |
| rio-scheduler-api.autoscaling.enabled | bool | `true` |  |
| rio-scheduler-api.autoscaling.maxReplicas | int | `10` |  |
| rio-scheduler-api.autoscaling.minReplicas | int | `1` |  |
| rio-scheduler-api.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| rio-scheduler-api.command[0] | string | `"node"` |  |
| rio-scheduler-api.command[1] | string | `"/opt/core-extension/dist/src/bin/scheduler-api.js"` |  |
| rio-scheduler-api.envFrom[0].secretRef.name | string | `"rabbitmq-secrets"` |  |
| rio-scheduler-api.envFrom[1].secretRef.name | string | `"mongo-secrets"` |  |
| rio-scheduler-api.envFrom[2].secretRef.name | string | `"minio-secrets"` |  |
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
| rio-scheduler-async-consumer.envFrom[2].secretRef.name | string | `"minio-secrets"` |  |
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
| rio-scheduler-cron-consumer.envFrom[2].secretRef.name | string | `"minio-secrets"` |  |
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
| rio-scheduler-task-consumer.envFrom[2].secretRef.name | string | `"minio-secrets"` |  |
| rio-scheduler-task-consumer.envFrom[3].secretRef.name | string | `"redis-secrets"` |  |
| rio-scheduler-task-consumer.envFrom[4].secretRef.name | string | `"scheduler-redis-secrets"` |  |
| rio-scheduler-task-consumer.envFrom[5].secretRef.name | string | `"config-storage"` |  |
| service.debugPort | int | `9229` |  |
| service.port | int | `80` |  |
| service.targetPort | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| tolerations | list | `[]` |  |
| vault.kvPath | string | `"secret"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
