来源: https://github.com/argoproj/argo-cd/releases/tag/v3.4.0-rc4

# argoproj/argo-cd v3.4.0-rc4 Release Notes

Published at: 2026-03-27T14:28:19Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.0-rc4/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.0-rc4/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* ed4c63ba836da0f33076b150e31decbd17c13ecb: fix: controller incorrectly detecting diff during app normalization (cherry-pick #27002 for 3.4) (#27014) (@argo-cd-cherry-pick-bot[bot])
* 249b91d75b6170779b8376492c05ff28c38568c8: fix: wrong installation id returned from cache (cherry-pick #26969 for 3.4) (#27028) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.4.0-rc3...v3.4.0-rc4

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

