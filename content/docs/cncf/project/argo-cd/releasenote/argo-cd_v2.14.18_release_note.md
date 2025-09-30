来源: https://github.com/argoproj/argo-cd/releases/tag/v2.14.18

# argoproj/argo-cd v2.14.18 Release Notes

Published at: 2025-09-18T20:32:47Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v2.14.18/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v2.14.18/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.


## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* caa4dc1bd29606c41b8682a38b0e0cc421fc3675: fix(util): Fix default key exchange algorthims used for SSH connection to be FIPS compliant (#24499) (@anandf)
* 4f6686fc3f5e284da697ad1414899342994b6e26: fix: correct post-delete finalizer removal when cluster not found (cherry-pick #24415 for 2.14) (#24591) (@argo-cd-cherry-pick-bot[bot])
* 4359b3c77448594be8cf97f3e817ff6987653bb2: fix: use informer in webhook handler to reduce memory usage (#24622) (#24628) (@alexmt)
### Documentation
* 3d76aa5daa8714f4595097f72747a3e07d401674: docs: Update URL for HA manifests to stable. (#24456) (@Kelketek)
### Other work
* 981e7f762aa23c3d7639548243d662992186fa08: fix(2.14): change the appset namespace to server namespace when generating appset (#24481) (@nitishfy)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v2.14.17...v2.14.18

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

