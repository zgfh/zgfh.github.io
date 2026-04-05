来源: https://github.com/argoproj/argo-cd/releases/tag/v3.3.5

# argoproj/argo-cd v3.3.5 Release Notes

Published at: 2026-03-25T14:59:40Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.5/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.5/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* e53c10caec8be0119bbcc7fa687d6daef62bfcef: fix(UI): show RollingSync step clearly when labels match no step (cherry-pick #26877 for 3.3) (#26884) (@argo-cd-cherry-pick-bot[bot])
* 03dda413f0f405275c6f6b1f119fb5be8e891186: fix(ci): add .gitkeep to images dir (cherry-pick #26892 for 3.3) (#26911) (@argo-cd-cherry-pick-bot[bot])
* ff207a460b34411f755916feded68c9025b09d1a: fix(server): fix find container logic for terminal  (cherry-pick #26858 for 3.3) (#26934) (@argo-cd-cherry-pick-bot[bot])
* 06d960ddf461286ccaf5fe5ce9f5e0e4767f243b: fix(ui): Improve message on self-healing disabling panel (#26977) (cherry-pick #26978 for 3.3) (#26981) (@argo-cd-cherry-pick-bot[bot])
* 0dc0a66e7f03034afa28f8da33de01694060c3f4: fix(ui): include _-prefixed dirs in embedded assets (cherry-pick #26589 for 3.3) (#26910) (@argo-cd-cherry-pick-bot[bot])
* 494b44ca5b8af1a1cc6e38fa088e0f2b142763ad: fix: Hook resources not created at PostSync when configured with PreDelete PostDelete hooks (cherry-pick #26996 for 3.3) (#26999) (@argo-cd-cherry-pick-bot[bot])
* 422cabb648a65f0854d5068741557f1d0cb0f214: fix: stack overflow when processing circular ownerrefs in resource graph (#26783) (cherry-pick #26790 for 3.3) (#26879) (@argo-cd-cherry-pick-bot[bot])
### Dependency updates
* 476800e479f19c0fca1f49708053d51c147c7c4c: chore(deps): bump google.golang.org/grpc from 1.77.0 to 1.79.3 for release-3.3 (#26886) (#26953) (@dudinea)
### Other work
* ea8a881c143fd49db77265487c05598d2aa9677d: ci: test against k8s 1.35.0 (cherry-pick #26062 for 3.3) (#26860) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.3.4...v3.3.5

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

