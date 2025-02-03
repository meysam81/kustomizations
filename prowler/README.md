# Prowler

## Usage

### Create a namespace

```shell
kubectl create ns prowler
```

### Create a PVC

```yaml
# pvc.yml
apiVersion: v1
kind: List
items:
  - apiVersion: v1
    kind: PersistentVolumeClaim
    metadata:
      name: prowler
      namespace: prowler
    spec:
      accessModes:
        - ReadWriteOnce
      resources:
        requests:
          storage: 32Gi
```

```shell
kubectl apply -f pvc.yml
```

### Deploy the Kustomization stack

```yaml
# kustomization.yml
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization

resources:
  - https://github.com/meysam81/kustomizations//prowler/overlays/default/?ref=v2.1.0
```
