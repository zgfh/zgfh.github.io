来源: https://github.com/argoproj/argo-cd/releases/tag/v3.0.18

# argoproj/argo-cd v3.0.18 Release Notes

Published at: 2025-09-22T23:09:36Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.0.18/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.0.18/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v2-14-release-candidate-57a664791e2a)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* dcfb4db5509dc6eab69d46e5bea271b7bcb3ea75: fix(server): validate new project on update (#23970) (cherry-pick #23973 for 3.0) (#24663) (@argo-cd-cherry-pick-bot[bot])
* 36ce3809064a433f83d0991ae832cd79bfa26544: fix: limit number of resources in appset status (#24690) (#24695) (@alexmt)
### Other work
* 531d96edef1c24e726a2f4ff7e9d2c088a6ef23e: ci(release): only set latest release in github when latest (#24525) (#24687) (@agaudreault)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.0.17...v3.0.18

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

