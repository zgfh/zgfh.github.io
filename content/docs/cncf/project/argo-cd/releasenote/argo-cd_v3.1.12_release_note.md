来源: https://github.com/argoproj/argo-cd/releases/tag/v3.1.12

# argoproj/argo-cd v3.1.12 Release Notes

Published at: 2026-01-22T20:22:49Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.1.12/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.1.12/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/announcing-argo-cd-v3-1-f4389bc783c8)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 0262c8ff97c68ba6cc6d0e9cf2dede8be3fba878: fix(hydrator): empty links for failed operation (#25025) (cherry-pick #26014 for 3.1) (#26017) (@argo-cd-cherry-pick-bot[bot])
* 28b618775d16e1259448b13414c5f789c1990afd: fix: cherry pick #25516 to release-3.1 (#26116) (@FourFifthsCode)
* 1b7cfc0c0682118b04058419976d90152723a6d0: fix: invalid error message on health check failure (#26040) (cherry pick #26039 for 3.1) (#26071) (@dudinea)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.1.11...v3.1.12

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

