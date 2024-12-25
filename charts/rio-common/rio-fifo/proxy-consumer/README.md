# proxy-consumer

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0](https://img.shields.io/badge/AppVersion-1.0-informational?style=flat-square)

A Helm chart for the proxy-consumer component

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| class.command[0] | string | `"node"` |  |
| class.command[1] | string | `"/opt/core-extension/dist/src/bin/fifo-proxy-class-consumer.js"` |  |
| destination.command[0] | string | `"node"` |  |
| destination.command[1] | string | `"/opt/core-extension/dist/src/bin/fifo-proxy-dest-consumer.js"` |  |
| proxyGroup | int | `2` |  |
| proxyGroupSize | int | `2` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"200m"` |  |
| resources.limits.memory | string | `"128Mi"` |  |
| resources.requests.cpu | string | `"100m"` |  |
| resources.requests.memory | string | `"128Mi"` |  |
| service.debugPort | int | `9229` |  |
| service.port | int | `80` |  |
| service.targetPort | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)