# rio-scheduler-dashboard

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

A Helm chart for deploying BullBoard

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| env.redisHost | string | `"scheduler-redis-master.default.svc.cluster.local"` |  |
| env.redisPassword | string | `"password"` |  |
| env.redisPort | int | `6379` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"bulldashboard"` |  |
| image.tag | int | `3` |  |
| nodeSelector | object | `{}` |  |
| queues[0] | string | `"projectid3_task"` |  |
| queues[1] | string | `"projectid3_cron"` |  |
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
