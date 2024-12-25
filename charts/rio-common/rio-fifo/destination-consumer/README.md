# destination-consumer

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0](https://img.shields.io/badge/AppVersion-1.0-informational?style=flat-square)

A Helm chart for the destination-consumer component

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| command[0] | string | `"node"` |  |
| command[1] | string | `"/opt/core-extension/dist/src/bin/fifo-dest-consumer.js"` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"100m"` |  |
| resources.limits.memory | string | `"256Mi"` |  |
| resources.requests.cpu | string | `"100m"` |  |
| resources.requests.memory | string | `"100Mi"` |  |
| service.debugPort | int | `9229` |  |
| service.port | int | `80` |  |
| service.targetPort | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)