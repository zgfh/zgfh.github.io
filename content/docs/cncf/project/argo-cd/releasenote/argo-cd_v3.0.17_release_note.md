来源: https://github.com/argoproj/argo-cd/releases/tag/v3.0.17

# argoproj/argo-cd v3.0.17 Release Notes

Published at: 2025-09-18T20:24:12Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.0.17/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.0.17/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v2-14-release-candidate-57a664791e2a)  

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* a85fa0947bda87ca6d4ceb69559123f85c87a58d: fix: correct post-delete finalizer removal when cluster not found (cherry-pick #24415 for 3.0) (#24589) (@argo-cd-cherry-pick-bot[bot])
* 97a87308ab1696db115ebc0cc0d1db7da60bcf4d: fix: use informer in webhook handler to reduce memory usage (#24622) (#24627) (@alexmt)
### Documentation
* b729cff93212a98c671603b5871e858e6f5bf852: docs: Update URL for HA manifests to stable. (#24455) (@Kelketek)
### Other work
* 2a0282d66826c9a0a549c3912eadaf8ff2c7d1c5: fix(3.0): change the appset namespace to server namespace when generating appset (#24479) (@nitishfy)
* 0af18331eb3c3e23418eb272a1587ca8ee7a2980: fix(cherry-pick-3.0): Do not block project update when a cluster referenced in an App doesn't exist (#24449) (@OpenGuidou)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.0.16...v3.0.17

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

