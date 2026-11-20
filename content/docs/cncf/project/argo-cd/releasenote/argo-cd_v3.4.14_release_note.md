来源: https://github.com/argoproj/argo-cd/releases/tag/v3.4.14

# argoproj/argo-cd v3.4.14 Release Notes

Published at: 2026-11-18T19:58:38Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.14/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.14/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* abbea8da4ed68afa3023ed7e583216ea949b40aa: fix(deps): upgrade dlclark/regexp2 to v2.13.0 (CVE-2026-77299) (#31005) (#31026) (@nmirasch)
* 5177bd6e981ba56356661f1a2b2fd7dfe0e47f21: fix: AppProject destination deny (!name / !server) vetoes when it positively matches (cherry-pick #30884 for 3.4) (#30895) (@argo-cd-cherry-pick-bot[bot])
### Dependency updates
* 5659a9325f5e63f8fb7d986f3f92ee017b42d0f3: chore(deps): bump github.com/go-jose/go-jose/v4 from 4.1.4 to 4.1.6 [3.4] (#30918) (@ranakan19)
* d14ad30d9f46328b68f816f0d139de7ae7d5192e: chore(deps): update group golang to v1.26.11 (release-3.4) (#30923) (@argoproj-renovate[bot])
### Other work
* 574fc47246478dfe0d8f365fd628c260a9dad8e9: chore(dep): upgrade git-lfs dependency from v3.7.1 to v3.8.1 (#31051) (#31053) (@anandf)
* b117092584d936f1ab05204eaa4c170b1bcb0877: fix(gitops-engine): stop retaining the decoded OpenAPI document per cluster (#30810) (cherry-pick #30811 for 3.4) (#30833) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.4.13...v3.4.14

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

