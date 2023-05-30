{{/*
Return target revision branch/tag
*/}}
{{- define "argocd.targetRevision" -}}
{{- if .Values.global.targetRevision }}
    {{- .Values.global.targetRevision -}}
{{- else if .Values.argocd.targetRevision -}}
    {{- .Values.argocd.targetRevision -}}
{{- else -}}
    {{- "HEAD" -}}
{{- end -}}
{{- end -}}