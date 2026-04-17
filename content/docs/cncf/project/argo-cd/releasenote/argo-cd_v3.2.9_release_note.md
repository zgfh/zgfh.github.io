来源: https://github.com/argoproj/argo-cd/releases/tag/v3.2.9

# argoproj/argo-cd v3.2.9 Release Notes

Published at: 2026-04-16T11:57:11Z

## Quick Start

> [!IMPORTANT]
> A potential bug with application reconciliation has been identified in this release. The application controller may fail to refresh applications, causing an application to not sync / show resources as out of sync. 
> 
> **Issue:** [#27344 – Application controller not refreshing applications](https://github.com/argoproj/argo-cd/issues/27344)

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.2.9/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.2.9/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 8420af56e384a207717f9d353cd5ebda3773db4c: fix(ci): run yarn install with --frozen-lockfile (cherry-pick #27099 for 3.2) (#27355) (@dudinea)
* d76e1bdc588aa6608998737de504a1690babbbbd: fix(ui): OCI revision metadata never renders due to conflicting guard clause (#26948) (cherry-pick #27097 for 3.2) (#27364) (@argo-cd-cherry-pick-bot[bot])
* f9623ce54c3d23899818714f85738bd8280553cf: fix: prevent automatic refreshes from informer resync and status updates (cherry-pick #25290 for 3.2) (#27236) (@aali309)
### Dependency updates
* a39f06d602e3a4d9875f59131ea2a740caaf80af: chore(deps): bump fast-xml-parser from 4.5.3 to 4.5.6 in /ui - 3.2 (#27361) (@keithchong)
* 9ff165ab4191a968e516258f236c4a081a029fbc: chore(deps): update notifications-engine dependency in release-3.2 to v0.5.1-0.20260316232552-d27ba0152c1c (#27094) (@pasha-codefresh)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.2.8...v3.2.9

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

