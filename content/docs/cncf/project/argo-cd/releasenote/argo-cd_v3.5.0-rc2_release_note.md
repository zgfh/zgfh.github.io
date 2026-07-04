来源: https://github.com/argoproj/argo-cd/releases/tag/v3.5.0-rc2

# argoproj/argo-cd v3.5.0-rc2 Release Notes

Published at: 2026-07-01T03:35:17Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.5.0-rc2/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.5.0-rc2/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 3b60b5ec9b7c9d9fd57accf9cbd3b59ea3f347c2: fix(reposerver): honor depth of referenced source instead of primary source (cherry-pick #28339 for 3.5) (#28340) (@alexandresavicki)
* 5fa6fd3f2604d2fcdc7a67d097681d98e6149c32: fix: Watch APIServices like we do CRDs (cherry-pick #28289 for 3.5) (#28320) (@argo-cd-cherry-pick-bot[bot])
* 5d039f81f8c2ab7752b0e7fbd6b9a6db14492b1c: fix: add a lock on clusterinformer (cherry-pick #28216 for 3.5) (#28311) (@argo-cd-cherry-pick-bot[bot])
* 9a5c6b71a678a72e41d114c97bc053133bd876f0: fix: auto-sync skipped when newer commit arrives during sync with manifest-generate-paths (#27875) (cherry-pick #28227 for 3.5) (#28332) (@argo-cd-cherry-pick-bot[bot])
* bc04869cd45e63523045222955d74433cd646c8e: fix: deleted resource are incorrectly shown in UI (cherry-pick #28322 for 3.5) (#28335) (@argo-cd-cherry-pick-bot[bot])
* 54fa590345032f0f9ced81e27c37bac61ddb1df9: fix: don't clobber non-ignored fields on "replace" (cherry-pick #27136 for 3.5) (#28505) (@argo-cd-cherry-pick-bot[bot])
* bec3925bf022c8fb107b227112347b8d4a145577: fix: fix failure on Sync of resources that do not fit into last-applied-configuration (#28421) (cherry-pick #28440 for 3.5) (#28523) (@argo-cd-cherry-pick-bot[bot])
* a5e6a2e8bbd203ef6475dce1a2eebf4bf24941c0: fix: fixes a regression of dex config env vars substituion - Cherry pick of #28369 in 3.5 (#28409) (@ppapapetrou76)
* cb882f37c81f4a64ca97370fc3547afdd7d9c147: fix: normalize Helm valuesObject in source comparison to avoid spurious appdetails 403 (#28288) (cherry-pick #28318 for 3.5) (#28334) (@argo-cd-cherry-pick-bot[bot])
* 0b95bbc14bc8fe04cd2e698d6c7ffb8d5a1b9ea8: fix: replace k8s.io/cri-streaming (cherry-pick #28315 for 3.5) (#28319) (@argo-cd-cherry-pick-bot[bot])
### Other work
* 972e46b44eb7ab1b5a82eea8e7150cdb79dbde3c: chore: switch reconcile trigger log to info level for managed resource (cherry-pick #28456 for 3.5) (#28519) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.5.0-rc1...v3.5.0-rc2

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

