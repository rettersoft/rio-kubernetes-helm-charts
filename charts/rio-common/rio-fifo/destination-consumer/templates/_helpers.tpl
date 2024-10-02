{{/*
Expand the name of the chart.
*/}}
{{- define "destination-consumer.fullname" -}}
{{- if .Release.Name -}}
{{- printf "%s-%s" .Release.Name (default "destination-consumer" .Chart.Name) | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- "destination-consumer" -}}
{{- end -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "destination-consumer.name" -}}
{{- default "destination-consumer" .Chart.Name -}}
{{- end -}}
{{/*
Create a pod index.
*/}}
{{- define "destination-consumer.podAnnotations" -}}
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

