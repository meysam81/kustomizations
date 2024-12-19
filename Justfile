lint:
  pre-commit run -a

trivy:
  trivy config -c trivy.yaml .

k3d-cluster-create:
  k3d cluster create -c k3d-config.yml

checkov:
  checkov --config-file .checkov_config.yaml -d .

build-tar:
  tar cvzf kustomizations.tar.gz $(find . -maxdepth 1 -type d ! -name '.*' | grep -v -f .buildignore)
