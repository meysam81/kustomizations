# Kustomizations

[![GitHub issues](https://img.shields.io/github/issues/meysam81/kustomizations)](https://github.com/meysam81/kustomizations/issues)
[![GitHub pull requests](https://img.shields.io/github/issues-pr/meysam81/kustomizations)](https://github.com/meysam81/kustomizations/pulls)
[![GitHub](https://img.shields.io/github/license/meysam81/kustomizations)](https://github.com/meysam81/kustomizations/blob/main/LICENSE)
[![GitHub last commit](https://img.shields.io/github/last-commit/meysam81/kustomizations)](https://github.com/meysam81/kustomizations/commits/main)
[![GitHub language count](https://img.shields.io/github/languages/count/meysam81/kustomizations)](https://github.com/meysam81/kustomizations)

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Kustomizations](#kustomizations)
  - [Intro](#intro)
  - [Usage](#usage)
  - [FAQ?](#faq)
    - [Why not use Helm?](#why-not-use-helm)
  - [Philosophy](#philosophy)
  - [Contribute](#contribute)
  - [License](#license)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Intro

This repository holds the Kustomization for some of the well-known applications
to be deployed in a Kubernetes cluster.

The reason for this repository is the inflexibility and lack of expressiveness
I have personally found the official Helm charts to have. This repository
tackles that by providing a YAML-based configuration that can easily be
modified as required.

## Usage

If you're interested to use any of these applications, you can refer to the
`test` directory in each app to see a real-world example.

Make sure to modify the `ref` as of the latest tag of the GitHub repository to
ensure consistency and reproducibility.

For your reference, here's a quickstart:

```yaml
# kustomization.yml

resources:
  - https://github.com/meysam81/kustomizations//oathkeeper/overlays/vm?ref=v1.0.0&timeout=5m
```

## FAQ?

### Why not use Helm?

I have seen many issues with the officially supported Helm chart of the provided
applications in this repository.

To name a few, inability to modify volumes and environment variables when
using third party services such as external-secrets operator is a real deal
breaker when it comes to production deployment.

With the Kustomizations you see in this repo, that is just one patch away from
manifestation.

## Philosophy

I believe Kustomization is way better than templating language of the Helm.
Although I respect the people maintaining the upstream charts, and regardless
of the fact that I also use most of the Helm charts in my day-to-day work, I
prefer Kustomization because of its expressiveness and flexibility.

In my opinion, being the first-class citizen in the Kubernetes ecosystem makes
Kustomization is a superior choice for deploying applications.

Additionally, modifying the upstream Helm charts, if not done right by the
maintainer, can leave the end-user in a big hassle, e.g., when trying to mount
secrets from External Secrets!

Kustomization, however, has it all. There is nothing you can't do when
deploying apps with Kustomization stack and with its powerful patch
functionality.

## Contribute

Feel free to open a PR or an issue in case you want anything specific added.

## License

This project is licensed under the Apache License 2.0 - see the
[LICENSE](LICENSE) file for details.
