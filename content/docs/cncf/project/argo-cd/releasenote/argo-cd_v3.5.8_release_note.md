来源: https://github.com/argoproj/argo-cd/releases/tag/v3.5.8

# argoproj/argo-cd v3.5.8 Release Notes

Published at: 2026-11-18T19:54:30Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.5.8/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.5.8/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* fc6fd49071ddd62b62cc7179c052257520fb3063: fix(appset): patch only the refresh annotation instead of rewriting the ApplicationSet (#24378, #24647) (cherry-pick #31023 for 3.5) (#31028) (@argo-cd-cherry-pick-bot[bot])
* 80a29b8efaf7bab73d249ca5969f1006aad1a7a5: fix(deps): upgrade dlclark/regexp2 from v1.12.0 to v2.13.0 (CVE-2026-77299) (#31005) (#31027) (@nmirasch)
* 3d59c97f68aec77e61c4b7a8c066d42ab6abf2dd: fix(ui): tree view spacing with group nodes (cherry-pick #29660 for 3.5) (#30774) (@argo-cd-cherry-pick-bot[bot])
* c52d1b83ed1f9bdb812d5922e97f3f98c76591a0: fix(ui): truncate top bar breadcrumbs and title instead of overlapping (#29292) (cherry-pick #30682 for 3.5) (#30838) (@argo-cd-cherry-pick-bot[bot])
* eaf2292eff04f5017ec900e773c67c336d954c1c: fix: AppProject destination deny (!name / !server) vetoes when it positively matches (cherry-pick #30884 for 3.5) (#30894) (@argo-cd-cherry-pick-bot[bot])
### Documentation
* f1d2cc4b0219199dc9e15764bec53d35d04a0805: docs: fix the sync options example and explain spec options for kubectl syncs (#30815) (cherry-pick #30816 for 3.5) (#30842) (@argo-cd-cherry-pick-bot[bot])
### Dependency updates
* 9cc538411e5090930fdc499e45c08c40bb0ee053: chore(deps): bump github.com/go-jose/go-jose/v4 from 4.1.4 to 4.1.6 [3.5] (#30917) (@ranakan19)
* d65bb7760b95b28b617240f99cc41eb9ea5989d4: chore(deps): bump otel from v1.44.0 to v1.46.0 [3.5] (#30920) (@ranakan19)
* 050fdb317f58d035298287e6e325853ba9f881fc: chore(deps): update group golang to v1.26.11 (release-3.5) (#30916) (@argoproj-renovate[bot])
### Other work
* 34f815a299b3abf762e31418db1d0ffe085a1d45: chore(dep): upgrade git-lfs dependency from v3.7.1 to v3.8.1 (#31051) (@anandf)
* 99b495bb1973a62f914b1c13cad49d3a8b8c047a: fix(gitops-engine): stop retaining the decoded OpenAPI document per cluster (#30810) (cherry-pick #30811 for 3.5) (#30831) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.5.7...v3.5.8

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

