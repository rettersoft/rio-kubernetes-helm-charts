{{/*
Expand the name of the chart.
*/}}
{{- define "rio-watcher-client-server-socket-io.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}