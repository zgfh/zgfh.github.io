来源: https://github.com/argoproj/argo-cd/releases/tag/v3.3.12

# argoproj/argo-cd v3.3.12 Release Notes

Published at: 2026-06-18T09:35:20Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.12/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.12/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 47da18433587c202c8b57e47c34af86d37ee7b2b: fix(health): PromotionStrategy stuck Progressing after no-op re-hydration (#28124) (cherry-pick #28125 for 3.3) (#28136) (@argo-cd-cherry-pick-bot[bot])
* e385760aec1c6a5c8f736bcfd45e7259a41135ea: fix: add a lock on clusterinformer (cherry-pick #28216 for 3.3)  (#28313) (@blakepettersson)
* 516314b16f45757606ed39c6d9ebd6bbbe10d8aa: fix: exclude live status from normalization (cherry-pick #28201 for 3.3) (#28203) (@argo-cd-cherry-pick-bot[bot])
* 3205f8b0dd1588ff636d9ec0db1b4336343df761: fix: fixes parsing of dex passwords with dollar sign (cherry pick of #28027 to 3.3 (#28198) (@ppapapetrou76)
* 703ad3f9520ffb5e83a261d06bdb24d6776720ef: fix: honor repo depth setting in gitSourceHasChanges and fetch functions (cherry-pick #27838 for 3.3) (#28065) (@alexandresavicki)
### Other work
* c4c07e396ca4f85599b720331e4bfc6a8687b38e: Merge pull request #28161 from argoproj/cherry-pick-28158-to-release-3.3 (@dudinea)
* cdfc9a5d0e0838b0c3c0884adfa08c9b3dda2b79: Merge pull request #28166 from argoproj/cherry-pick-28155-to-release-3.3 (@dudinea)
* 6aecd33bd19a00c78f18c2d6a8cfa762419fe383: chore(ci): bump codecov action to 7.0.0 to fix the GPG issue (cherry-pick #28159 for 3.3) (#28173) (@dudinea)
* b9f2a3b6269adb25f8054241398884caecc0657f: test(e2e): Add test for second Sync after initial for different resources/options (#28156) (#28155) (@dudinea)
* fe3fea21ad00619438c2f0fa8117203f22bed784: test(e2e): fix cleanup of CRDs for e2e tests (#28157) (#28158) (@dudinea)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.3.11...v3.3.12

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

