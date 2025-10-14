{- define "app4.name" -}app4{- end -}

{- define "app4.fullname" -}{ .Release.Name }{- end -}

{- define "app4.labels" -}
app.kubernetes.io/name: { include "app4.name" . | quote }
helm.sh/chart: { printf "%s-%s" .Chart.Name (.Chart.Version | replace "+" "_") | quote }
app.kubernetes.io/instance: { .Release.Name | quote }
app.kubernetes.io/version: { .Chart.AppVersion | quote }
app.kubernetes.io/managed-by: { .Release.Service | quote }
{- end -}

{- define "app4.selectorLabels" -}
app.kubernetes.io/name: { include "app4.name" . | quote }
app.kubernetes.io/instance: { .Release.Name | quote }
{- end -}

{/* Return merged values: base .Values overlaid by env apps.<chartName> block */}
{- define "app.values" -}
{- $app := .Chart.Name -}
{- $env := get .Values.apps $app | default dict -}
{- $base := deepCopy .Values -}
{- mustMerge $base $env -}
{- end -}
