check:
  pre-commit run -a

trivy:
  trivy config -c trivy.yaml .
