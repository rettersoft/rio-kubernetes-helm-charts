{{/*
Expand the name of the chart.
*/}}
{{- define "rio-scheduler-server.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "rio-scheduler-server.name" -}}
{{- printf "%s" .Chart.Name -}}
{{- end -}}