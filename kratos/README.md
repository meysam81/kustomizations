# Kratos

## Usage

```yaml
# kratos-server-config.yml
dsn: memory

courier:
  smtp:
    connection_uri: smtps://test:test@mailslurper:1025/?skip_ssl_verify=true

identity:
  schemas:
    - id: default
      url: https://github.com/ory/kratos/raw/refs/tags/v1.3.1/contrib/quickstart/kratos/email-password/identity.schema.json
```

```yaml
# kustomization.yml
configMapGenerator:
  - name: kratos-config
    files:
      - config.yml=kratos-server-config.yml
    behavior: replace

resources:
  - https://github.com/meysam81/kustomizations//kratos/vm/?ref=v1.2.0

namespace: auth
```
