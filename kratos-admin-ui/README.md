# Kratos Admin UI

## Usage

```ini
# configs.env
KRATOS_ADMIN_URL=http://kratos-admin
KRATOS_PUBLIC_URL=http://kratos-public
```

```yaml
# kustomization.yml

configMapGenerator:
  - envs:
      - configs.env
    name: kratos-admin-ui-envs
    behavior: replace

resources:
  - github.com/meysam81/kustomizations//kratos-admin-ui/overlays/default?ref=v1.7.0&timeout=5m
```
