来源: https://github.com/argoproj/argo-cd/releases/tag/v3.1.15

# argoproj/argo-cd v3.1.15 Release Notes

Published at: 2026-04-21T18:05:54Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.1.15/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.1.15/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/announcing-argo-cd-v3-1-f4389bc783c8)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* bf5f210be0254195d48b1b9e2e681ee11f282635: Revert "fix: prevent automatic refreshes from informer resync and status updates (cherry-pick #25290 for 3.1)" (#27398) (@crenshaw-dev)
* 9ed4f21a4cb4cf7b167f42b5d3a096daa579f5d6: fix(appcontroller): application controller in core mode fails to sync when server.secretkey is missing (#26793) (#27464) (@anandf)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.1.14...v3.1.15

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

