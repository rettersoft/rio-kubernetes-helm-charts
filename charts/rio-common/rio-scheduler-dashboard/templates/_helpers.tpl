{{/*
Expand the name of the chart.
*/}}
{{- define "rio-scheduler-dashboard.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "rio-scheduler-dashboard.name" -}}
{{- printf "%s" .Chart.Name -}}
{{- end -}}