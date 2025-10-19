来源: https://github.com/argoproj/argo-cd/releases/tag/v3.1.9

# argoproj/argo-cd v3.1.9 Release Notes

Published at: 2025-10-17T22:28:20Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.1.9/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.1.9/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/announcing-argo-cd-v3-1-f4389bc783c8)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 1904de50652a2cfdd4c0372f33460c84c2e6994b: fix(server): ensure resource health status is inferred on application retrieval (#24832) (cherry-pick #24851 for 3.1) (#24867) (@argo-cd-cherry-pick-bot[bot])
* a419e477e693a60c9acac629a4fa424d4b205c83: fix: don't show error about missing appset (cherry-pick #24995 for 3.1) (#24996) (@argo-cd-cherry-pick-bot[bot])
* e53196f9fd9c22d2369e13b7d63485b4f384bad7: fix: make webhook payload handlers recover from panics (cherry-pick #24862 for 3.1) (#24914) (@argo-cd-cherry-pick-bot[bot])
### Dependency updates
* 16ba5f9c4333bc339a56a99ca964c5cbb2b32d0f: chore(deps): bump redis from 7.2.7 to 7.2.11 to address vuln (release-3.1) (#24886) (@carlosrodfern)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.1.8...v3.1.9

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

