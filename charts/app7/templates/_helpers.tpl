{{/*
Expand the name of the chart.
*/}}
{{- define "app7.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a fully qualified app name (release + chart name)
*/}}
{{- define "app7.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "app7.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "app7.labels" -}}
app.kubernetes.io/name: {{ include "app7.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "app7.selectorLabels" -}}
app.kubernetes.io/name: {{ include "app7.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
