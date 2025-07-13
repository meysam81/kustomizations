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
  - https://github.com/meysam81/kustomizations//kratos/overlays/vm/?ref=v1.3.1

namespace: auth
```

## Advanced Usage: External Secrets Operator

Having an `externalsecret.yml` file as below:

<details>

<summary>
Expand ...

</summary>

```yaml
# externalsecret.yml

apiVersion: external-secrets.io/v1beta1
kind: ExternalSecret
metadata:
  name: kratos
spec:
  data:
    - remoteRef:
        key: kratos-smtp-connection-uri
      secretKey: COURIER_SMTP_CONNECTION_URI
    - remoteRef:
        key: kratos-secrets-cookie-0
      secretKey: SECRETS_COOKIE_0
    - remoteRef:
        key: kratos-secrets-cipher-0
      secretKey: SECRETS_CIPHER_0
    - remoteRef:
        key: kratos-secrets-csrf-0
      secretKey: SECRETS_DEFAULT_0
    - remoteRef:
        key: kratos-selfservice-methods-oidc-config-providers-0-client-id
      secretKey: SELFSERVICE_METHODS_OIDC_CONFIG_PROVIDERS_0_CLIENT_ID
    - remoteRef:
        key: kratos-selfservice-methods-oidc-config-providers-0-client-secret
      secretKey: SELFSERVICE_METHODS_OIDC_CONFIG_PROVIDERS_0_CLIENT_SECRET
  refreshInterval: 24h
  secretStoreRef:
    kind: ClusterSecretStore
    name: azure-keyvault
```

</details>

Add the following as necessary.

```yaml
# kustomization.yml

resources:
  - https://github.com/meysam81/kustomizations//kratos/overlays/vm?ref=v1.3.1&timeout=5m
  - externalsecret.yml

# ... truncated ...

patches:
  - patch: |
      - op: add
        path: /spec/template/spec/initContainers/0/envFrom/-
        value:
          secretRef:
            name: kratos
      - op: add
        path: /spec/template/spec/containers/0/envFrom/-
        value:
          secretRef:
            name: kratos
      - op: add
        path: /spec/template/spec/containers/1/envFrom/-
        value:
          secretRef:
            name: kratos
    target:
      kind: Deployment
      name: kratos
```

## Advanced Usage: Sqlite Database

Imagine having the following config file:

```yaml
# kratos-server-config.yml
dsn: sqlite:///var/lib/kratos/sqlite.db?_fk=true&mode=rwc&_journal_mode=WAL
# ... truncated ...
```

This is how the kustomization file will change:

```yaml
configMapGenerator:
  - name: kratos-config
    files:
      - config.yml=kratos-server-config.yml
    behavior: replace

resources:
  - https://github.com/meysam81/kustomizations//kratos/overlays/vm?ref=v1.3.0&timeout=5m

images:
  - name: oryd/kratos
    # Change image tag from distroless to normal (compiled binary support for sqlite)
    newTag: v1.3.1

patches:
  - patch: |
      - op: add
        path: /spec/template/spec/initContainers/0/volumeMounts/-
        value:
          mountPath: /var/lib/kratos
          name: kratos-data
      - op: add
        path: /spec/template/spec/containers/0/volumeMounts/-
        value:
          mountPath: /var/lib/kratos
          name: kratos-data
      - op: add
        path: /spec/template/spec/containers/1/volumeMounts/-
        value:
          mountPath: /var/lib/kratos
          name: kratos-data
      - op: add
        path: /spec/template/spec/volumes/-
        value:
          name: kratos-data
          persistentVolumeClaim:
            claimName: kratos
    target:
      kind: Deployment
      name: kratos
```

## Advanced Usage: Extra Volume Mounts

It's common that you might require to mount your schemas or Jsonnet files.

This is how to do it:

```yaml
# kustomization.yml

configMapGenerator:
  - name: kratos-schemas
    files:
      - ./schemas/users.schema.json
  - name: kratos-jsonnet
    files:
      - jsonnet-mappers/google.jsonnet
      - jsonnet-mappers/microsoft.jsonnet

patches:
  - patch: |
      - op: add
        path: /spec/template/spec/initContainers/0/volumeMounts/-
        value:
          mountPath: /etc/kratos-schemas
          name: kratos-schemas
          readOnly: true
      - op: add
        path: /spec/template/spec/containers/0/volumeMounts/-
        value:
          mountPath: /etc/kratos-schemas
          name: kratos-schemas
          readOnly: true
      - op: add
        path: /spec/template/spec/containers/1/volumeMounts/-
        value:
          mountPath: /etc/kratos-schemas
          name: kratos-schemas
          readOnly: true
      - op: add
        path: /spec/template/spec/volumes/-
        value:
          configMap:
            defaultMode: 0444
            items:
              - key: users.schema.json
                path: users.schema.json
            name: kratos-schemas
            optional: false
          name: kratos-schemas
    target:
      kind: Deployment
      name: kratos
  - patch: |
      - op: add
        path: /spec/template/spec/initContainers/0/volumeMounts/-
        value:
          mountPath: /etc/kratos-jsonnet
          name: kratos-jsonnet
          readOnly: true
      - op: add
        path: /spec/template/spec/containers/0/volumeMounts/-
        value:
          mountPath: /etc/kratos-jsonnet
          name: kratos-jsonnet
          readOnly: true
      - op: add
        path: /spec/template/spec/containers/1/volumeMounts/-
        value:
          mountPath: /etc/kratos-jsonnet
          name: kratos-jsonnet
          readOnly: true
      - op: add
        path: /spec/template/spec/volumes/-
        value:
          configMap:
            defaultMode: 0444
            items:
              - key: google.jsonnet
                path: google.jsonnet
              - key: microsoft.jsonnet
                path: microsoft.jsonnet
            name: kratos-jsonnet
            optional: false
          name: kratos-jsonnet
    target:
      kind: Deployment
      name: kratos
```
