{{/*
Expand the name of the chart.
*/}}
{{- define "rdk.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "rdk.name" -}}
{{- printf "%s" .Chart.Name -}}
{{- end -}}