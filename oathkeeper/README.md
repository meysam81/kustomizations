# Oathkeeper

## Usage

```yaml
# oathkeeper-server-config.yml

# ... truncated ...

```

```yaml
# kustomization.yml

configMapGenerator:
  - behavior: replace
    files:
      - config.yml=oathkeeper-server-config.yml
    name: oathkeeper-config

resources:
  - https://github.com/meysam81/kustomizations//oathkeeper/overlays/vm/?ref=v1.3.0

namespace: auth
```
