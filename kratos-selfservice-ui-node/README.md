# Kratos Selfservice UI Node

## usage

```ini
# configs.env
CSRF_COOKIE_NAME=ory_kratos_session
KRATOS_ADMIN_URL=http://kratos-admin
KRATOS_BROWSER_URL=https://example.com
KRATOS_PUBLIC_URL=http://kratos-public
```

```yaml
# kustomization.yml

configMapGenerator:
  - envs:
      - configs.env
    name: kratos-selfservice-ui-node-envs
    behavior: replace

resources:
  - github.com/meysam81/kustomizations//kratos-selfservice-ui-node/overlays/default?ref=v1.5.0&timeout=5m
```
