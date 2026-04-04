来源: https://github.com/argoproj/argo-cd/releases/tag/v3.4.0-rc3

# argoproj/argo-cd v3.4.0-rc3 Release Notes

Published at: 2026-03-25T14:42:12Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.0-rc3/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.0-rc3/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 5ed403cf6005565290270cd090bab8afbcd6be86: fix(server): fix find container logic for terminal  (cherry-pick #26858 for 3.4) (#26933) (@argo-cd-cherry-pick-bot[bot])
* aced2b1b36a481798b3e4cba46ba8029abb39f6a: fix(ui): Improve message on self-healing disabling panel (#26977) (cherry-pick #26978 for 3.4) (#26980) (@argo-cd-cherry-pick-bot[bot])
* b66dea4282360396b2e57ab66c78392be8bd74ea: fix: Hook resources not created at PostSync when configured with PreDelete PostDelete hooks (cherry-pick #26996 for 3.4) (#26998) (@argo-cd-cherry-pick-bot[bot])
### Dependency updates
* ea71adbae5913401850543f7d5849c4de80c1485: chore(deps): bump google.golang.org/grpc from 1.79.2 to 1.79.3 (cherry-pick #26886 for 3.4) (#26952) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.4.0-rc2...v3.4.0-rc3

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

