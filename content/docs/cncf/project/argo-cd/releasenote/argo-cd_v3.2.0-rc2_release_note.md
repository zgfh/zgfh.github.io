来源: https://github.com/argoproj/argo-cd/releases/tag/v3.2.0-rc2

# argoproj/argo-cd v3.2.0-rc2 Release Notes

Published at: 2025-09-30T16:26:17Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.2.0-rc2/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.2.0-rc2/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Features
* feab307df3c74fde25e056c646c4dae42fdbd900: feat: add status.resourcesCount field to appset and change limit default (#24698) (#24711) (@alexmt)
### Bug fixes
* 4821d71e3d4634cbeac1d1b4ed26184a55947b75: fix(health): typo in PromotionStrategy health.lua (cherry-pick #24726 for 3.2) (#24760) (@argo-cd-cherry-pick-bot[bot])
* 50531e6ab36905de18fca3c65f3bc84d6a55808b: fix(oci): loosen up layer restrictions (cherry-pick #24640 for 3.2) (#24648) (@argo-cd-cherry-pick-bot[bot])
* 001bfda068395d917e9e172d95822531af0a3783: fix: #24781 update crossplane healthchecks to V2 version (cherry-pick #24782 for 3.2) (#24784) (@argo-cd-cherry-pick-bot[bot])
* ef8ac49807185be5c91b09ad031aba9daed676ce: fix: Clear ApplicationSet applicationStatus when ProgressiveSync is disabled (cherry-pick #24587 for 3.2 (#24716) (@aali309)
* 1453367645ff2c28d2a3f2ab89be370db4f6fb8f: fix: Progress Sync Unknown in UI (cherry-pick #24202 for 3.2) (#24641) (@argo-cd-cherry-pick-bot[bot])
* f3c8e1d5e36c38761a7c2b099f50dbe1b3838d45: fix: limit number of resources in appset status (#24690) (#24697) (@alexmt)
* 28510cdda692c067309d4753d4d16b4107599547: fix: resolve argocdService initialization issue in notifications CLI (cherry-pick #24664 for 3.2) (#24680) (@argo-cd-cherry-pick-bot[bot])
* 087378c6696000fc63074747cbd19650dd81ad7b: fix: update ExternalSecret discovery.lua to also include the refreshPolicy (cherry-pick #24707 for 3.2) (#24713) (@argo-cd-cherry-pick-bot[bot])
* bf9f927d55bfea7f60c2df9c38fe95bf9a5dcbf9: fix: use informer in webhook handler to reduce memory usage (cherry-pick #24622 for 3.2) (#24623) (@argo-cd-cherry-pick-bot[bot])
### Documentation
* ee0de13be4c2d63652e0fe917d64f253cb556938: docs: Delete dangling word in Source Hydrator docs (cherry-pick #24601 for 3.2) (#24604) (@argo-cd-cherry-pick-bot[bot])
### Other work
* 46409ae734d8998a299736a53480ce8652c3cb72: Merge commit from fork (@crenshaw-dev)
* 722036d447790e9535be8bc1b3df508e4ebde0b5: Merge commit from fork (@crenshaw-dev)
* 8f8a1ecacb4596da7170f16ea765f6b1a0f4247a: Merge commit from fork (@thevilledev)
* 5f5d46c78b131e079575000eebfce11e39237ebd: Merge commit from fork (@crenshaw-dev)
* cd87a13a0de7d41c1742f784da921285cc718177: chore(ci): update github runners to oci gh arc runners (3.2) (#24632) (#24653) (@crenshaw-dev)
* 4ac3f920d54d5bf750a9fb06e1c21c3c7f4ffd6b: chore: bumps redis version to 8.2.1 (cherry-pick #24523 for 3.2) (#24582) (@argo-cd-cherry-pick-bot[bot])
* 6a2df4380a6cdb9df54b49adbf99de3cf69c6950: ci(release): only set latest release in github when latest (cherry-pick #24525 for 3.2) (#24686) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.2.0-rc1...v3.2.0-rc2

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

