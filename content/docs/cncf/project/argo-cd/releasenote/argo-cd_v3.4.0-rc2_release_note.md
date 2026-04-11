来源: https://github.com/argoproj/argo-cd/releases/tag/v3.4.0-rc2

# argoproj/argo-cd v3.4.0-rc2 Release Notes

Published at: 2026-03-19T23:50:24Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.0-rc2/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.0-rc2/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Features
* 3157fb15a4f4b05f7b348932c39105e962dc77e9: feat(helm):  support wildcard glob patterns for `valueFiles` (cherry-pick #26768 for 3.4) (#26919) (@argo-cd-cherry-pick-bot[bot])
### Bug fixes
* 21e13a621eb05523044aad0ebf3cf166369e3f0a: fix(UI): show RollingSync step clearly when labels match no step (cherry-pick #26877 for 3.4) (#26882) (@argo-cd-cherry-pick-bot[bot])
* e70034a44b65fd6a54bdff6a6ddf4b496038d52b: fix(ci): add .gitkeep to images dir (cherry-pick #26892 for 3.4) (#26912) (@argo-cd-cherry-pick-bot[bot])
* 5deef68eaf3e38b37065a624e8de93d4c1003969: fix(ui): include _-prefixed dirs in embedded assets (cherry-pick #26589 for 3.4) (#26909) (@argo-cd-cherry-pick-bot[bot])
* 226178c1a5992a97a041eece2af49259e2bbf841: fix: stack overflow when processing circular ownerrefs in resource graph (#26783) (cherry-pick #26790 for 3.4) (#26878) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.4.0-rc1...v3.4.0-rc2

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

