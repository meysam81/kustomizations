#!/usr/bin/env sh

set -eux

kubectl rollout restart -n "$POD_NAMESPACE" deployment prowler
