来源: https://github.com/argoproj/argo-cd/releases/tag/v2.14.19

# argoproj/argo-cd v2.14.19 Release Notes

Published at: 2025-09-22T23:02:59Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v2.14.19/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v2.14.19/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.


## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 4a133ce41b5984443eaeaa513cc100f33e44ff84: fix: limit number of resources in appset status (#24690) (#24694) (@alexmt)
### Other work
* 376525eea2baedd18c41beeaf99dd18afbc4466c: ci(release): only set latest release in github when latest (#24525) (#24688) (@agaudreault)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v2.14.18...v2.14.19

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

