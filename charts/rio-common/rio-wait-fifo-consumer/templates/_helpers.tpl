{{/*
Expand the name of the chart.
*/}}
{{- define "rio-wait-fifo-consumer.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "rio-wait-fifo-consumer.name" -}}
{{- printf "%s" .Chart.Name -}}
{{- end -}}