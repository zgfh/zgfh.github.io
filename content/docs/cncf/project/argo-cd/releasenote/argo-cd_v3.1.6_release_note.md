来源: https://github.com/argoproj/argo-cd/releases/tag/v3.1.6

# argoproj/argo-cd v3.1.6 Release Notes

Published at: 2025-09-18T19:29:44Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.1.6/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.1.6/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/announcing-argo-cd-v3-1-f4389bc783c8)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* b46a57ab825980366e2fbcfb5ac0896cfd15a59c: fix(oci): loosen up layer restrictions (cherry-pick #24640 for 3.1) (#24649) (@argo-cd-cherry-pick-bot[bot])
* 468870f65d169bf24b397d2f897e3f0815219b88: fix: Ensure that symlink targets are not made absolute on extracting a tar (#24145) - backport/cherry-pick to 3.1 (#24519) (@leh-ppi)
* cb9574597e946dff1618bd9dc84bc276d8f585ba: fix: correct post-delete finalizer removal when cluster not found (cherry-pick #24415 for 3.1) (#24590) (@argo-cd-cherry-pick-bot[bot])
* 2b3df7f5a81251a9b6f4b632add5d2247f59de75: fix: use informer in webhook handler to reduce memory usage (#24622) (#24626) (@alexmt)
### Documentation
* 4ef56634b4e5cdf99d0bc6a69124ea1cb7b8e563: docs: Delete dangling word in Source Hydrator docs (cherry-pick #24601 for 3.1) (#24603) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.1.5...v3.1.6

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

