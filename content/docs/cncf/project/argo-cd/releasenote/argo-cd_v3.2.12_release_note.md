来源: https://github.com/argoproj/argo-cd/releases/tag/v3.2.12

# argoproj/argo-cd v3.2.12 Release Notes

Published at: 2026-05-13T14:34:00Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.2.12/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.2.12/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 2d1a0bb5507e8fc22b23d7608d56bc0586415b95: fix(lint): unnecessary nesting (cherry-pick #27815 for 3.2) (#27819) (@argo-cd-cherry-pick-bot[bot])
* 4caf2709419b4f172d5a7adbe95d20cb1d86e3bd: fix: export url validation function (#27816) (@crenshaw-dev)
* d6e96fcc00b74d9692301fd18a23d22bf0e802a5: fix: wrap lines toggle causes log lines to overflow container - Fixes [Issue #27586] (cherry-pick #27627 for 3.2) (#27668) (@argo-cd-cherry-pick-bot[bot])
### Dependency updates
* cff8c0320985278c1d2a85860eace168a71f1b04: chore(deps): bump github.com/moby/spdystream from 0.5.0 to 0.5.1 (cherry-pick #27401 for 3.2) (#27735) (@argo-cd-cherry-pick-bot[bot])
### Other work
* 3f7237b5baf57a4b77574e2b0c4c793a7010341a: Merge commit from fork (@pjiang-dev)
* c8df5ff7acc403adcee1256da5d87081cd52f0a6: Merge commit from fork (@blakepettersson)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.2.11...v3.2.12

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

