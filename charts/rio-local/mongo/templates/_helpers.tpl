{{- define "mongo.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{- define "mongo.fullname" -}}
{{- .Release.Name | printf "%s-%s" .Chart.Name -}}
{{- end -}}