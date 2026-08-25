来源: https://github.com/argoproj/argo-cd/releases/tag/v3.4.7

# argoproj/argo-cd v3.4.7 Release Notes

Published at: 2026-08-12T11:25:08Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.7/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.7/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* cbd768784b51cf3ac15143d8ab3ee8e1fa28bfd1: fix(appset): progressive sync fixes (3.4 backports of #29042 and #27577) (#29141) (@himeshp)
* 0781a1a9f1c5cf4d69e2dd8e93d65abce7386adc: fix(controller): reuse server-side diff result when masking Secret data (#27858) (#29075) (@1ovsss)
* a09c39ca9c18eb1f7f7ca79909ba5d2ec013d1b7: fix(server): prevent SSD CLI secret mask spoofing (cherry-pick #29089 for 3.4) (#29131) (@argo-cd-cherry-pick-bot[bot])
* 8afda0dc851b5012272951b2036a5d6caae5d7ec: fix(ssd): hide secret in last-applied-configuration annotation (#28989) (#29053) (@pjiang-dev)
### Dependency updates
* e0aea006fb6acd5a69740cbd806769e501933ded: chore(deps): bump fast-xml-parser from 4.5.3 to 4.5.6 in /ui - 3.4 (#27342) (@keithchong)
### Other work
* 7b6113c14c8186e126046131dfbe5103a9f680f4: chore: bump version to 3.4.7 on release-3.4 branch (#29161) (@github-actions[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.4.6...v3.4.7

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

