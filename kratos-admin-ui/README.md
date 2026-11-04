# Kratos Admin UI

Runs [ory-admin-ui](https://github.com/licenseware/ory-admin-ui).

## Usage

```ini
# config.json
{
  "local": {
    "kratosAdminBaseURL": "http://localhost:4435",
    "kratosPublicBaseURL": "http://localhost:4430"
  }
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
  - github.com/meysam81/kustomizations//kratos-admin-ui/overlays/default?ref=<tag>&timeout=5m
```
