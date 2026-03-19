来源: https://github.com/argoproj/argo-cd/releases/tag/v3.3.4

# argoproj/argo-cd v3.3.4 Release Notes

Published at: 2026-03-16T11:44:54Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.4/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.4/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 182e4c62b2e2b41212e7c6d2eae0ac206c96fc99: fix(ci): Add missing git-lfs installer checksum for ppc64le (cherry-pick #26835 for 3.3) (#26836) (@argo-cd-cherry-pick-bot[bot])
* 2fcc40a0fce851063970eaff1d3c59d3b1ab87b1: fix: skip token refresh threshold parsing in unrelated components (cherry-pick 3.3) (#26806) (@gdsoumya)
### Documentation
* 01b86e79007678d6cbf7a04f00da35afd3db77c8: docs: clarify cluster version change impact for ClusterGenerator, CMP Plugins and migration (#26851) (@reggie-k)
### Other work
* e164f8c50bf3d363c96c6ac31b50355fc76edf2f: chore: bump otel-sdk (release-3.3) (#26808) (@blakepettersson)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.3.3...v3.3.4

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

