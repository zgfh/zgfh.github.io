来源: https://github.com/argoproj/argo-cd/releases/tag/v3.1.14

# argoproj/argo-cd v3.1.14 Release Notes

Published at: 2026-04-16T12:12:17Z

## Quick Start

> [!IMPORTANT]
> A potential bug with application reconciliation has been identified in this release. The application controller may fail to refresh applications, causing an application to not sync / show resources as out of sync. 
> 
> **Issue:** [#27344 – Application controller not refreshing applications](https://github.com/argoproj/argo-cd/issues/27344)

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.1.14/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.1.14/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/announcing-argo-cd-v3-1-f4389bc783c8)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 76cd807b4e2eb3da6acec19d20905126d8d77f70: fix(ci): run yarn install with --frozen-lockfile (cherry-pick #27099 for 3.1) (#27356) (@dudinea)
* b00f837ebf195f4e8bc2687480019ae58ece49cc: fix: prevent automatic refreshes from informer resync and status updates (cherry-pick #25290 for 3.1) (#27238) (@aali309)
### Dependency updates
* 09e2130c29a7f4ef0667dae58159c11a595e5c6c: chore(deps): bump fast-xml-parser from 4.5.3 to 4.5.6 in /ui (#27341) (@keithchong)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.1.13...v3.1.14

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

