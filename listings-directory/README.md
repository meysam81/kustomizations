# Listings Directory

## Usage

```json
# static/listings.json
{
  "dev": [
    {
      "icon_url": "https://static-00.iconduck.com/assets.00/prometheus-icon-511x512-1vmxbcxr.png",
      "label": "Prometheus dev",
      "url": "https://prometheus.dev.example.com"
    }
  ],
  "prod": [
    {
      "icon_url": "https://static-00.iconduck.com/assets.00/prometheus-icon-511x512-1vmxbcxr.png",
      "label": "Prometheus prod",
      "url": "https://prometheus.example.com"
    }
  ]
}
```

```ini
# configs.env
# ref: https://static-web-server.net/configuration/environment-variables/
SERVER_LOG_FORWARDED_FOR=true
```

```yaml
# kustomization.yml
configMapGenerator:
  - name: listings-directory-static
    files:
      - static/listings.json
    behavior: replace
  - name: listings-directory-envs
    envs:
      - configs.env
    behavior: replace

resources:
  - https://github.com/meysam81/kustomizations//listings-directory/overlays/default/?ref=v1.6.1

namespace: default
```
