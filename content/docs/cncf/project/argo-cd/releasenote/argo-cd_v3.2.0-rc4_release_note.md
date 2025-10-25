来源: https://github.com/argoproj/argo-cd/releases/tag/v3.2.0-rc4

# argoproj/argo-cd v3.2.0-rc4 Release Notes

Published at: 2025-10-21T20:16:34Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.2.0-rc4/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.2.0-rc4/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* d1251f407a0d2372f783ea9dcefef2ad53226250: fix(health): use promotion resource Ready condition regardless of reason (cherry-pick #24971 for 3.2) (#24973) (@argo-cd-cherry-pick-bot[bot])
* b227ef1559d2bbff479fc8eb600b9688997ef687: fix: don't show error about missing appset (cherry-pick #24995 for 3.2) (#24997) (@argo-cd-cherry-pick-bot[bot])
* 3db95b1fbe32a24c3301b08f02a9262923be184f: fix: make webhook payload handlers recover from panics (cherry-pick #24862 for 3.2) (#24912) (@argo-cd-cherry-pick-bot[bot])
### Dependency updates
* 76284738023cfb8077bd670e620644965b7dd19b: chore(deps): bump redis from 8.2.1 to 8.2.2 to address vuln (release-3.2) (#24891) (@carlosrodfern)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.2.0-rc3...v3.2.0-rc4

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

