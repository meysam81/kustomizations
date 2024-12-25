# Kratos Admin UI

## Usage

```ini
# config.json
{
  "kratosAdminURL": "http://localhost:4435",
  "kratosPublicURL": "http://localhost:4430",
  "reverseProxy": false
}
```

```yaml
# kustomization.yml

configMapGenerator:
  - name: kratos-admin-ui-statics
    files:
      - config.json
    behavior: replace

resources:
  - github.com/meysam81/kustomizations//kratos-admin-ui/overlays/default?ref=v1.7.1&timeout=5m
```
