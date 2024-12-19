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

```yaml
# kustomization.yml
configMapGenerator:
  - name: listings-directory-static
    files:
      - static/listings.json
    behavior: replace

resources:
  - https://github.com/meysam81/kustomizations//listings-directory/default/?ref=v1.6.0

namespace: default
```
