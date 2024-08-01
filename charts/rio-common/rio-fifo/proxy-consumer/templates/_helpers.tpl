{{/*
Expand the name of the chart.
*/}}
{{- define "proxy-consumer.fullname" -}}
{{- if .Release.Name -}}
{{- printf "%s-%s" .Release.Name (default "proxy-consumer" .Chart.Name) | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- "proxy-consumer" -}}
{{- end -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "proxy-consumer.name" -}}
{{- default "proxy-consumer" .Chart.Name -}}
{{- end -}}
{{/*
Create a pod index.
*/}}
{{- define "proxy-consumer.podAnnotations" -}}
{{- $root := . -}}
{{- range $index, $queue := .Values.queues }}
"rio-class-queue-name-{{ $index }}": {{ $queue.name | quote }}
"rio-queue-consumer-partition-{{ $index }}": {{ $queue.partition | quote }}
{{- end }}
{{- end }}
{{/*
Create a Conversion Functions.
*/}}
{{- define "getOrdinal" -}}
{{- $podName := .Values.podName | quote }}
{{- $ordinal := $podName | regexReplaceAll "[^0-9]" "" }}
{{- $ordinal | int -}}
{{- end -}}

