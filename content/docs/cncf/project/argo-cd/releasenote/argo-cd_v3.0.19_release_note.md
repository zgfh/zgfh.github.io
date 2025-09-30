来源: https://github.com/argoproj/argo-cd/releases/tag/v3.0.19

# argoproj/argo-cd v3.0.19 Release Notes

Published at: 2025-09-30T16:25:34Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.0.19/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.0.19/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v2-14-release-candidate-57a664791e2a)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* a731ea68ff6f43a4b4a8fe8e605edc7e9fd85b1b: fix: allow for backwards compatibility of durations defined in days (cherry-pick #24769 for 3.0) (#24770) (@argo-cd-cherry-pick-bot[bot])
### Other work
* 307073647669a2cbc843ed906d266835740b9aa4: Merge commit from fork (@crenshaw-dev)
* 93ab7e4519fb0534f93eb7c67a7a5e7490eb7bc7: Merge commit from fork (@crenshaw-dev)
* f60a9441a7a58c28affa38aa5057b3f1a5ad6ad3: Merge commit from fork (@crenshaw-dev)
* 2aaace870d4c13991069ef19ab99866d018d12ac: Merge commit from fork (@thevilledev)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.0.18...v3.0.19

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

