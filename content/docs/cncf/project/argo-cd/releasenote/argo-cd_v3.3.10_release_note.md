来源: https://github.com/argoproj/argo-cd/releases/tag/v3.3.10

# argoproj/argo-cd v3.3.10 Release Notes

Published at: 2026-05-12T21:20:43Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.10/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.10/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* eb947bfea26df18294600efa65235df44e68ff47: fix: prevent panic on nil APIResource in permission validator (cherry-pick #26610 for 3.3) (#27753) (@argo-cd-cherry-pick-bot[bot])
* 7b8c7be98657082396e1726ff9b1d97c1c4f5166: fix: wrap lines toggle causes log lines to overflow container - Fixes [Issue #27586] (cherry-pick #27627 for 3.3) (#27671) (@argo-cd-cherry-pick-bot[bot])
### Other work
* 7879e6322465080a82d152bf00f2b92e0f36c658: Merge commit from fork (@pjiang-dev)
* 00f83c41dcfd879f34f8e0248c860d704b41cf0f: Merge commit from fork (@blakepettersson)
* d7f8ba1b6c62634faf9894161dbdd632e3e39528: chore: align Go versions across Dockerfiles and downgrade Go version in go.mod (#27808) (@reggie-k)
* 5c7eb8f083342e48867e8857e52408c114a4baf3: chore: bump otel/sdk to 1.43.0 (release-3.3) (#27807) (@nitishfy)
* 7830a129c9c87267e1b74dc453c199d4fa327dfb: chore: update Go to 1.25.9 on release-3.3 to resolve CVEs (#27639) (#27656) (@ihmdika)
* ac11bec9986807adc8886ef1181eced7347ef5c6: fix(gitops-engine): apply HideSecretData to server-side diff results … (#27762) (@pjiang-dev)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.3.9...v3.3.10

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

