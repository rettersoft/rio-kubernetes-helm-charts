# rio-api

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

A simple Node.js TypeScript HTTP server

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling | object | `{"enabled":true,"maxReplicas":5,"minReplicas":1,"targetCPUUtilizationPercentage":60}` | Creates HPA |
| autoscaling.enabled | bool | `true` | Creates HPA |
| autoscaling.maxReplicas | int | `5` | Max Replicas |
| autoscaling.minReplicas | int | `1` | Min Replicas |
| autoscaling.targetCPUUtilizationPercentage | int | `60` | Target Cpu Utilization Percentage |
| command[0] | string | `"node"` |  |
| command[1] | string | `"/opt/core-extension/dist/src/bin/api.js"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"rio-api"` |  |
| image.tag | int | `11` |  |
| ingress.certificateSecret | string | `"my-cert-tls"` |  |
| ingress.enabled | bool | `true` |  |
| ingress.host | string | `"localhost"` |  |
| ingress.path | string | `"/"` |  |
| nodeSelector | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"100m"` |  |
| resources.limits.memory | string | `"128Mi"` |  |
| resources.requests.cpu | string | `"100m"` |  |
| resources.requests.memory | string | `"128Mi"` |  |
| service.debugPort | int | `9229` |  |
| service.port | int | `80` |  |
| service.targetPort | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
