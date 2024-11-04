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
  - https://github.com/meysam81/kustomizations//oathkeeper/overlays/vm/?ref=v1.3.1

namespace: auth
```

## Advanced Usage: Oathkeeper Maester Integration

If using Oathkeeper alongside Measter, you will need to mount the final
ConfigMap created by the Maester instance into the Oathkeeper pod.

```yaml
# kustomization.yml

resources:
  - https://github.com/meysam81/kustomizations//oathkeeper/overlays/vm?ref=v1.3.1

patches:
  - patch: |
      - op: add
        path: /spec/template/spec/containers/0/volumeMounts/-
        value:
          name: oathkeeper-rules
          mountPath: /etc/rules
          readOnly: true
      - op: add
        path: /spec/template/spec/volumes/-
        value:
          name: oathkeeper-rules
          configMap:
            defaultMode: 0400
            items:
              - key: access-rules.json
                path: access-rules.json
            name: oathkeeper-rules
    target:
      kind: Deployment
      name: oathkeeper
```
