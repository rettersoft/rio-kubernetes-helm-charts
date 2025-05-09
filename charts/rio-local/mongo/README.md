# mongo

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 4.4.6](https://img.shields.io/badge/AppVersion-4.4.6-informational?style=flat-square)

A Helm chart for MongoDB using the arm64v8/mongo image

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"mongo"` |  |
| image.tag | int | `7` |  |
| mongodb.database | string | `"mydatabase"` |  |
| mongodb.password | string | `"password"` |  |
| mongodb.username | string | `"admin"` |  |
| nodeSelector | object | `{}` |  |
| persistence.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.enabled | bool | `true` |  |
| persistence.size | string | `"8Gi"` |  |
| persistence.storageClassName | string | `""` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| service.port | int | `27017` |  |
| service.type | string | `"ClusterIP"` |  |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
