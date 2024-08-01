{{/*
Expand the name of the chart.
*/}}
{{- define "main-consumer.fullname" -}}
{{- if .Release.Name -}}
{{- printf "%s-%s" .Release.Name (default "main-consumer" .Chart.Name) | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- "main-consumer" -}}
{{- end -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "main-consumer.name" -}}
{{- default "main-consumer" .Chart.Name -}}
{{- end -}}
{{/*
Create a pod index.
*/}}
{{- define "main-consumer.podAnnotations" -}}
{{- $root := . -}}
{{- range $index, $queue := .Values.global.queues }}
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

