来源: https://github.com/argoproj/argo-cd/releases/tag/v3.2.6

# argoproj/argo-cd v3.2.6 Release Notes

Published at: 2026-01-22T20:22:34Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.2.6/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.2.6/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 20866f455712a453db09b1d80816838d2e0f0afc: fix(hydrator): .gitattributes include deeply nested files (#25870) (cherry-pick #26011 for 3.2) (#26012) (@argo-cd-cherry-pick-bot[bot])
* 508da9c79192a19fdf741a37715bd60d38f628e1: fix(hydrator): empty links for failed operation (#25025) (cherry-pick #26014 for 3.2) (#26016) (@argo-cd-cherry-pick-bot[bot])
* 2ff406ae33c3d13ae1090c107a9121303607141b: fix: cherry pick #25516 to release-3.2 (#26115) (@FourFifthsCode)
* e3b108b7384432517037f88022a67df30e9dbe97: fix: close response body on error paths to prevent connection leak (cherry-pick #25824 for 3.2) (#26006) (@argo-cd-cherry-pick-bot[bot])
* ad117b88a690a559eb373e19d0abed95806cb23d: fix: invalid error message on health check failure (#26040) (cherry pick #26039 for 3.2) (#26070) (@dudinea)
### Dependency updates
* 76fc92f6552b23e6802b7aac3c42640c0d089eae: chore(deps): update notifications-engine to fix GitHub PR comments nil panic (cherry-pick #26065 for 3.2) (#26074) (@soutar)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.2.5...v3.2.6

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

