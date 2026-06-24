来源: https://github.com/argoproj/argo-cd/releases/tag/v3.4.2

# argoproj/argo-cd v3.4.2 Release Notes

Published at: 2026-05-12T21:20:33Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.2/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.2/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* b15e9e3cc5a89f0024974243f1dc90cc75194702 fix: Revert "fix: avoid calling UpdateRevisionForPaths unnecessary (#25151)" (cherry-pick #27241 for 3.4) (#27251) (argo-cd-cherry-pick-bot[bot], Alexander Matyushentsev)
* 570ccbc5217f5231d0a843b1099667591432a605 fix: prevent panic on nil APIResource in permission validator (cherry-pick #26610 for 3.4) (#27752) (argo-cd-cherry-pick-bot[bot], Andy Lo-A-Foe)
### Dependency updates
* 6eb621513ec513ab0a59b3b21e38e3874260707a chore(deps): bump github.com/moby/spdystream from 0.5.0 to 0.5.1 (cherry-pick #27401 for 3.4) (#27734) (argo-cd-cherry-pick-bot[bot], dependabot[bot])
### Other work
* 35ea43c537d6e8948e67f347317fc4f88b325122 Merge commit from fork (Blake Pettersson)
* bcb4298afc9fcff5f5d69f4e1db2d0a75983f42c Merge commit from fork (Peter Jiang)
* 4e715779c0d9ef5a0042843460062276ff72e53b chore: bump otel/sdk to 1.43.0 (release-3.4) (#27806) (Nitish Kumar)
* 6e227bad2b48620cfb1943828f973af8671139cf ci: pin images of setup-qemu-action, setup-buildx-action and goreleaser CLI version (cherry-pick #27060 for 3.4) (#27731) (argo-cd-cherry-pick-bot[bot], Regina Voloshin)
* 87e9148320749693624d08e3d6fa2cc217c672a0 fix(gitops-engine): apply HideSecretData to server-side diff results for Secrets (cherry-pick #27598 for 3.4) (#27754) (argo-cd-cherry-pick-bot[bot], Peter Jiang, downfa11)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.4.1...v3.4.2

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

