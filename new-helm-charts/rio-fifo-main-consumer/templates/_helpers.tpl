{{- define "common.name" -}}
{{- default .Chart.Name .Values.nameOverride }}
{{- end -}}

{{- define "common.fullname" -}}
{{- $name := include "common.name" . -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end -}}
{{- end -}}
