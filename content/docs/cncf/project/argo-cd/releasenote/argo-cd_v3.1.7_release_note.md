来源: https://github.com/argoproj/argo-cd/releases/tag/v3.1.7

# argoproj/argo-cd v3.1.7 Release Notes

Published at: 2025-09-22T23:13:24Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.1.7/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.1.7/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/announcing-argo-cd-v3-1-f4389bc783c8)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 4081e2983ad17bfa9f7e314a17b60b85f1088936: fix(server): validate new project on update (#23970) (cherry-pick #23973 for 3.1) (#24662) (@argo-cd-cherry-pick-bot[bot])
* c26cd5502bacb26ff4ff7c9e575ddb8fcd56d1f9: fix: Progress Sync Unknown in UI (cherry-pick #24202 for 3.1) (#24643) (@argo-cd-cherry-pick-bot[bot])
* 2e4458b91aaca0cec24a07223b4e61fa5dde8616: fix: limit number of resources in appset status (#24690) (#24696) (@alexmt)
* f3d59b0bb7898171c3560ff1d2401dd5e42b9125: fix: resolve argocdService initialization issue in notifications CLI (cherry-pick #24664 for 3.1) (#24681) (@argo-cd-cherry-pick-bot[bot])
### Other work
* 7f92418a9c7a4f16a63281fbeef94cb9aa60966c: ci(release): only set latest release in github when latest (cherry-pick #24525 for 3.1) (#24685) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.1.6...v3.1.7

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

