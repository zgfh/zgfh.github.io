来源: https://github.com/argoproj/argo-cd/releases/tag/v3.2.0-rc3

# argoproj/argo-cd v3.2.0-rc3 Release Notes

Published at: 2025-10-07T18:26:26Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.2.0-rc3/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.2.0-rc3/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 35e3897f61122769b043c575c272149dad81b20e: fix(health): incorrect reason in PullRequest script (cherry-pick #24826 for 3.2) (#24828) (@argo-cd-cherry-pick-bot[bot])
* 1ba3929520ea4bcee62bb004884c7dd878e9f223: fix(server): ensure resource health status is inferred on application retrieval (#24832) (cherry-pick #24851 for 3.2) (#24865) (@argo-cd-cherry-pick-bot[bot])
* a1f42488d9c13c377c798310d12732c01e762d5e: fix: hydration errors not set on applications (#24755) (#24809) (@agaudreault)
### Documentation
* dc309cbe0d0384023b2055635613bb8759733ed8: docs: fix typo in hydrator commit message template documentation (cherry-pick #24822 for 3.2) (#24827) (@argo-cd-cherry-pick-bot[bot])
### Other work
* a42ccaeeca4c3334a740f4e92b334d444f59e484: chore: bump gitops engine (#24864) (@pjiang-dev)
* d75bcfd7b2aaf5e30c02d19017d1c29b4badbc43: fix(cherry-pick): server-side diff shows duplicate containerPorts (#24842) (@pjiang-dev)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.2.0-rc2...v3.2.0-rc3

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

