来源: https://github.com/argoproj/argo-cd/releases/tag/v3.0.20

# argoproj/argo-cd v3.0.20 Release Notes

Published at: 2025-10-17T22:22:11Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.0.20/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.0.20/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v2-14-release-candidate-57a664791e2a)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 3e09844ca53861993d083206c9687ba6b4c57076: fix(server): ensure resource health status is inferred on application retrieval (#24832) (cherry-pick #24851 for 3.0) (#24945) (@vr009)
* bdab094f7853c6bd58fd9c04728dc9f5a2f3669e: fix: make webhook payload handlers recover from panics (cherry-pick #24862 for 3.0) (#24913) (@argo-cd-cherry-pick-bot[bot])
### Dependency updates
* a7a88fd43d79e5e3ab26d88bf78a517d92d2120d: chore(deps): bump redis from 7.2.7 to 7.2.11 to address vuln (release-3.0) (#24890) (@carlosrodfern)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.0.19...v3.0.20

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

