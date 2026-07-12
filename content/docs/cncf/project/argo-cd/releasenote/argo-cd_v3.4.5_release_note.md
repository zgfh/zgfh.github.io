来源: https://github.com/argoproj/argo-cd/releases/tag/v3.4.5

# argoproj/argo-cd v3.4.5 Release Notes

Published at: 2026-07-09T17:01:16Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.5/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.5/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* e77e4b645cc1ad28b1af74931d8810c514fa75e7: fix(reposerver): honor depth of referenced source instead of primary source (cherry-pick #28339 for 3.4) (#28341) (@alexandresavicki)
* 63e67d5e7f502f85b69cd52d6d56e1123b087992: fix(ssa): do not run auth reconcile with SSA  (cherry pick of #27624 and #27601 to 3.4) (#28265) (@Mangaal)
* 240390732e7b593a53a237c4f149426e7268f295: fix: auto-sync skipped when newer commit arrives during sync with manifest-generate-paths (#27875) (cherry-pick #28227 for 3.4) (#28331) (@argo-cd-cherry-pick-bot[bot])
* 2d18587a4c36d4676dd0514bc4a3c5e0cc8b2ed4: fix: deleted resource are incorrectly shown in UI (cherry-pick #28322 for 3.4) (#28337) (@argo-cd-cherry-pick-bot[bot])
* a82e158db8a56037d8e8b5085d188abd9fba12f0: fix: don't clobber non-ignored fields on "replace" (cherry-pick #27136 for 3.4) (#28507) (@argo-cd-cherry-pick-bot[bot])
* d4c8f1c3c724d4d71c1f4ddb6b255ab36d3bef4a: fix: fixes a regression of dex config env vars substituion - Cherry pick of #28369 in 3.4 (#28411) (@ppapapetrou76)
### Dependency updates
* 8c7ece50a4dfd731d5e10bedf3a3e692808b3d23: chore(deps): bump golang.org/x/crypto to 0.53.0 (release-3.4) (#28375) (@nmirasch)
* a8f245b7a0a9b4b9ca8538038b521da29b5932f6: chore(deps): update Ubuntu base image to 26.04 LTS (3.4) (#28430) (@suii2210)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.4.4...v3.4.5

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

