来源: https://github.com/argoproj/argo-cd/releases/tag/v2.14.20

# argoproj/argo-cd v2.14.20 Release Notes

Published at: 2025-09-30T16:18:32Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v2.14.20/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v2.14.20/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.


## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 4ab9cd45bf11b05f4cdd9f30226e1ace5d8ba57b: fix: allow for backwards compatibility of durations defined in days (cherry-pick #24769 for 2.14) (#24772) (@argo-cd-cherry-pick-bot[bot])
### Other work
* 7b219ee97fd10ef5cd2ca3e8f7324853d690c999: Merge commit from fork (@crenshaw-dev)
* e889f0a7ffbad5c5eff0cf8578f86e749c044253: Merge commit from fork (@crenshaw-dev)
* 741f00e2e3543579763d94ba588c676f2c05f5e1: Merge commit from fork (@crenshaw-dev)
* 1f98e3f9897cc9e424011591b729c061e8c99414: Merge commit from fork (@thevilledev)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v2.14.19...v2.14.20

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

