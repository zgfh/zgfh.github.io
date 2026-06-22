来源: https://github.com/argoproj/argo-cd/releases/tag/v3.4.3

# argoproj/argo-cd v3.4.3 Release Notes

Published at: 2026-05-28T12:24:00Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.3/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.3/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* f435b0fd4c740fd49151b9cdf22263f4ca0c6ae8 fix(cli): return immediately from 'app wait' when app is already in desired state (#12211) (#27503) (#27713) (jheyduk)
* b39fe4fb1035e27d36b6d3afeaab8446418a017c fix(lint): unnecessary nesting (cherry-pick #27815 for 3.4) (#27817) (argo-cd-cherry-pick-bot[bot], Michael Crenshaw)
* 668f2c56a62bd03b597cf547b31afe3e058e2ceb fix(ui): don't prefetch errors (#27877) (cherry-pick #27925 for 3.4) (#28024) (argo-cd-cherry-pick-bot[bot], Blake Pettersson)
* b796979ce219c8d5de0f330a8e67baa92ea1c6e3 fix(ui): return full source for non-hydrator apps in Parameters tab (cherry-pick #26946 for 3.4) (#27964) (Gabriel Barreto, himeshp)
* 5d3f8a0b50b3507ae007e8bbb063b1f3fb2a6fff fix: honor repo depth setting in gitSourceHasChanges and fetch functions (cherry-pick #27838 for 3.4) (#28043) (argo-cd-cherry-pick-bot[bot], alexandresavicki, Cursor)
* 35ed877840f530d7868e524cdf27e203fbf3974a fix: nil-check (cherry-pick #28039 for 3.4) (#28040) (argo-cd-cherry-pick-bot[bot], Blake Pettersson, Soumya Ghosh Dastidar)
* b0f1553a61f61e0dac8f79ba9d0771274a2fc6c8 fix: prevent InvalidSpecError race in application controller startup (cherry-pick #27672 for 3.4) (#27845) (argo-cd-cherry-pick-bot[bot], Michele Baldessari)
* 4fa095050bb318b412519aecb1ac18f69aec4c23 fix: truncate labels for deletion hook resources (cherry-pick #27542 for 3.4) (#27714) (argo-cd-cherry-pick-bot[bot], Jaewoo Choi)
### Dependency updates
* 0edd404f7f1996abeec3ac411e33a1449fc94664 chore(deps): bump redoc/dompurify to v3.4.0 in /ui for fixing CVE-2026-41240(cherry-pick 3.4) (#27913) (Alka Kumari)
### Other work
* ce55c857b5e525f72c5c496d1bf69bc0d048edfa fix(gitops-engine): fix nil pointer dereference error in removeWebookMutation() (cherry-pick #27749 for 3.4) (#28031) (argo-cd-cherry-pick-bot[bot], Pierre Guinoiseau)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.4.2...v3.4.3

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

