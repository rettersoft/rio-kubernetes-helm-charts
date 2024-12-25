# rio-fifo

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0](https://img.shields.io/badge/AppVersion-1.0-informational?style=flat-square)

A Helm chart for the rio-fifo component

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| file://./destination-consumer | destination-consumer | 0.1.0 |
| file://./main-consumer | main-consumer | 0.1.0 |
| file://./proxy-consumer | proxy-consumer | 0.1.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| global.destinations[0].class | string | `"state_stream_firestore"` |  |
| global.destinations[0].consumers[0] | string | `"0-1"` |  |
| global.destinations[0].name | string | `"state_stream_firestore"` |  |
| global.destinations[0].partitions | int | `1` |  |
| global.env.MINIO_SECRET_KEY | string | `"XEZrQDtB6NfYuaEamniUj8aOhT25C6nGWNCqBB6q"` |  |
| global.env.PROJECT_ID | string | `"${PROJECT_ID}"` |  |
| global.env.RDK_URL | string | `"http://${PROJECT_ID}-rio-rdk.default.svc.cluster.local"` |  |
| global.env.SCHEDULER_API_URL | string | `"http://${PROJECT_ID}-rio-scheduler-api.default.svc.cluster.local"` |  |
| global.env.USER_CODE_URL | string | `"http://${PROJECT_ID}-user-code.default.svc.cluster.local"` |  |
| global.envFrom[0].secretRef.name | string | `"rabbitmq-secrets"` |  |
| global.envFrom[1].secretRef.name | string | `"mongo-secrets"` |  |
| global.envFrom[2].secretRef.name | string | `"object-storage-secrets"` |  |
| global.envFrom[3].secretRef.name | string | `"redis-secrets"` |  |
| global.envFrom[4].secretRef.name | string | `"scheduler-redis-secrets"` |  |
| global.envFrom[5].secretRef.name | string | `"config-storage"` |  |
| global.image.pullPolicy | string | `"IfNotPresent"` |  |
| global.image.repository | string | `"${REPOSITORY}"` |  |
| global.image.tag | string | `"${IMAGE_TAG}"` |  |
| global.podAnnotations | object | `{}` |  |
| global.queues[0].class | string | `"MainTests"` |  |
| global.queues[0].consumers[0] | string | `"0-1"` |  |
| global.queues[0].name | string | `"MainTests"` |  |
| global.queues[0].partitions | int | `1` |  |
| global.queues[1].class | string | `"FifoTests"` |  |
| global.queues[1].consumers[0] | string | `"0-1"` |  |
| global.queues[1].name | string | `"FifoTests"` |  |
| global.queues[1].partitions | int | `1` |  |
| destination-consumer.command[0] | string | `"node"` |  |
| destination-consumer.command[1] | string | `"/opt/core-extension/dist/src/bin/fifo-destination-consumer.js"` |  |
| proxy-consumer.proxyGroup | int | `2` |  |
| proxy-consumer.proxyGroupSize | int | `2` |  |
| destination-consumer.command[0] | string | `"node"` |  |
| destination-consumer.command[1] | string | `"/opt/core-extension/dist/src/bin/fifo-dest-consumer.js"` |  |
| destination-consumer.replicaCount | int | `1` |  |
| destination-consumer.resources.limits.cpu | string | `"100m"` |  |
| destination-consumer.resources.limits.memory | string | `"256Mi"` |  |
| destination-consumer.resources.requests.cpu | string | `"100m"` |  |
| destination-consumer.resources.requests.memory | string | `"100Mi"` |  |
| destination-consumer.service.debugPort | int | `9229` |  |
| destination-consumer.service.port | int | `80` |  |
| destination-consumer.service.targetPort | int | `80` |  |
| destination-consumer.service.type | string | `"ClusterIP"` |  |
| main-consumer.command[0] | string | `"node"` |  |
| main-consumer.command[1] | string | `"/opt/core-extension/dist/src/bin/fifo-class-consumer.js"` |  |
| main-consumer.replicaCount | int | `1` |  |
| main-consumer.resources.limits.cpu | string | `"200m"` |  |
| main-consumer.resources.limits.memory | string | `"128Mi"` |  |
| main-consumer.resources.requests.cpu | string | `"100m"` |  |
| main-consumer.resources.requests.memory | string | `"128Mi"` |  |
| main-consumer.service.debugPort | int | `9229` |  |
| main-consumer.service.port | int | `80` |  |
| main-consumer.service.targetPort | int | `80` |  |
| main-consumer.service.type | string | `"ClusterIP"` |  |
| proxy-consumer.class.command[0] | string | `"node"` |  |
| proxy-consumer.class.command[1] | string | `"/opt/core-extension/dist/src/bin/fifo-proxy-class-consumer.js"` |  |
| proxy-consumer.destination.command[0] | string | `"node"` |  |
| proxy-consumer.destination.command[1] | string | `"/opt/core-extension/dist/src/bin/fifo-proxy-dest-consumer.js"` |  |
| proxy-consumer.proxyGroup | int | `2` |  |
| proxy-consumer.proxyGroupSize | int | `2` |  |
| proxy-consumer.replicaCount | int | `1` |  |
| proxy-consumer.resources.limits.cpu | string | `"200m"` |  |
| proxy-consumer.resources.limits.memory | string | `"128Mi"` |  |
| proxy-consumer.resources.requests.cpu | string | `"100m"` |  |
| proxy-consumer.resources.requests.memory | string | `"128Mi"` |  |
| proxy-consumer.service.debugPort | int | `9229` |  |
| proxy-consumer.service.port | int | `80` |  |
| proxy-consumer.service.targetPort | int | `80` |  |
| proxy-consumer.service.type | string | `"ClusterIP"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
