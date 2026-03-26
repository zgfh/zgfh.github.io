来源: https://github.com/argoproj/argo-cd/releases/tag/v3.2.7

# argoproj/argo-cd v3.2.7 Release Notes

Published at: 2026-02-18T13:45:57Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.2.7/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.2.7/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* ca08f90e9616f41422d00fa3aaa3eea93f69144a: fix(server): OIDC config via secrets fails (#18269) (cherry-pick #26214 for 3.2) (#26389) (@argo-cd-cherry-pick-bot[bot])
* 10c3fd02f46c382700d1e1b0e29bda72b4ee7779: fix: Fix excessive ls-remote requests on monorepos with Auto Sync enabled apps (26277) (cherry-pick #26278 for 3.2) (#26502) (@dudinea)
* 9c128e2d4cda18159aabc3b8fa9494b0a11442aa: fix: compressedLayerExtracterStore+isCompressedLayer - allow tar.gzip suffixes (cherry-pick #26355 for 3.2) (#26375) (@argo-cd-cherry-pick-bot[bot])
### Dependency updates
* 75eddbd910a5463b98bc7a7d026e8cb177eae61b: chore(deps): update group golang to v1.25.6 (cherry-pick release-3.2) (#26291) (@nitishfy)
### Other work
* 1f03b27fd548ef36be4b7e08146a9928b64efb7b: ci: exclude testdata from sonar.exclusions (cherry-pick #26398 and #26371 for 3.2) (#26424) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.2.6...v3.2.7

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

