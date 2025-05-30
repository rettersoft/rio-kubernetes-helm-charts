{{/*
Expand the name of the chart.
*/}}
{{- define "projectid3.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "projectid3.name" -}}
{{- printf "%s" .Chart.Name -}}
{{- end -}}

{{- define "promtail.volumes" -}}
- name: promtail-config
  configMap:
    name: {{ .Release.Name }}-promtail-config
- name: logs
  emptyDir: {}
{{- end -}}

{{/*
prometheus sidecar metric exporter
*/}}
{{- define "nodeExporter.sidecar" -}}
- name: node-exporter
  image: prom/node-exporter:v1.0.1
  ports:
    - containerPort: 9100  # Expose port for metrics
  resources:
    limits:
      memory: "50Mi"
      cpu: "50m"
    requests:
      memory: "50Mi"
      cpu: "50m"
  args:
    - "--path.procfs=/host/proc"
    - "--path.sysfs=/host/sys"
    - "--collector.filesystem.ignored-mount-points"
    - "^/(dev|proc|sys|var/lib/docker/.+)($|/)"
  volumeMounts:
    - name: proc
      mountPath: /host/proc
      readOnly: true
    - name: sys
      mountPath: /host/sys
      readOnly: true
{{- end -}}