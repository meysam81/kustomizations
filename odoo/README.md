# Odoo

## Usage

```ini
# odoo.conf
db_host = postgresql
db_port = 5432
db_user = odoo
db_password = odoo
db_name = odoo
```

```yaml
# kustomization.yml

configMapGenerator:
  - envs:
      - odoo.conf
    name: odoo-config

resources:
  - https://github.com/meysam81/kustomizations//odoo/overlays/default/?ref=v1.5.0

patches:
  - patch: |
      - op: add
        path: /spec/template/spec/containers/0/args/-
        value: --config=/etc/odoo/odoo.conf
      - op: add
        path: /spec/template/spec/containers/0/volumeMounts/-
        value:
          mountPath: /etc/odoo/odoo.conf
          name: odoo-config
          subPath: odoo.conf
      - op: add
        path: /spec/template/spec/volumes/-
        value:
          configMap:
            defaultMode: 0440
            name: odoo-config
            optional: false
          name: odoo-config
    target:
      kind: Deployment
      name: odoo

namespace: odoo
```
