{{/*
Expand the name of the chart.
*/}}
{{- define "app10.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a fully qualified app name (release + chart name)
*/}}
{{- define "app10.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "app10.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "app10.labels" -}}
app.kubernetes.io/name: {{ include "app10.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "app10.selectorLabels" -}}
app.kubernetes.io/name: {{ include "app10.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
