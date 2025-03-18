# Listings Directory

## Usage

```yaml
# config.yml
serve:
  admin:
    port: 4445
  public:
    port: 4444
  tls:
    allow_termination_from:
      - 10.0.0.0/8
      - 172.16.0.0/12
      - 192.168.0.0/16
urls:
  self: {}
```

```yaml
# kustomization.yml
configMapGenerator:
  - name: hydra-config
    files:
      - config.yml
    behavior: merge

resources:
  - https://github.com/meysam81/kustomizations//hydra/overlays/default/?ref=v2.3.1

namespace: auth
```
