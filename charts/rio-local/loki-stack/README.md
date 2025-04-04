# loki

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0](https://img.shields.io/badge/AppVersion-1.0-informational?style=flat-square)

A Helm chart for managing loki

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://grafana.github.io/helm-charts | loki-stack | ^2.9.7 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| global | string | `nil` |  |
| loki-stack.loki.resources.limits.cpu | string | `"200m"` |  |
| loki-stack.loki.resources.limits.memory | string | `"384Mi"` |  |
| loki-stack.loki.resources.requests.cpu | string | `"200m"` |  |
| loki-stack.loki.resources.requests.memory | string | `"384Mi"` |  |
| loki-stack.promtail.config.snippets.extraRelabelConfigs[0].action | string | `"replace"` |  |
| loki-stack.promtail.config.snippets.extraRelabelConfigs[0].source_labels[0] | string | `"__meta_kubernetes_pod_container_image"` |  |
| loki-stack.promtail.config.snippets.extraRelabelConfigs[0].target_label | string | `"image"` |  |
| loki-stack.promtail.serviceAccount.create | bool | `true` |  |
| loki-stack.promtail.serviceAccount.name | string | `"loki-promtail"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
