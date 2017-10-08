{{ define "traefik.toml" }}
    logLevel = "INFO"
    defaultEntryPoints = ["http", "https"]
    [entryPoints]
        [entryPoints.http]
        address = ":80"
        [entryPoints.https]
        address = ":443"
    [web]
    [kubernetes]
    namespaces = ["{{ .Release.Namespace }}"]
    labelselector="release={{ .Release.Name }}"
{{ end }}
