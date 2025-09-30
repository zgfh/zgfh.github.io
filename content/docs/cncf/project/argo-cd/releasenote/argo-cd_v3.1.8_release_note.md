来源: https://github.com/argoproj/argo-cd/releases/tag/v3.1.8

# argoproj/argo-cd v3.1.8 Release Notes

Published at: 2025-09-30T16:27:54Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.1.8/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.1.8/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/announcing-argo-cd-v3-1-f4389bc783c8)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* c63c2d8909f541acf541893f2c6da76d479c0b69: fix(docs): include v3.1 upgrade docs (#23529) [backport] (#24799) (@SJrX)
* b2fa7dcde6daf82b41ad958a8c8cde5c781a585f: fix: #24781 update crossplane healthchecks to V2 version (cherry-pick #24782 for 3.1) (#24783) (@argo-cd-cherry-pick-bot[bot])
* 41eac62eac9ebe499d73397ceff7f09db9c0c7f9: fix: Clear ApplicationSet applicationStatus when ProgressiveSync is d… (#24715) (@aali309)
* 38808d03cdc8e246234689ecaf980f9d595ad1b1: fix: allow for backwards compatibility of durations defined in days (cherry-pick #24769 for 3.1) (#24771) (@argo-cd-cherry-pick-bot[bot])
* 54bab39a80ced71962c0c4ee3dbe1754bcd44ef3: fix: update ExternalSecret discovery.lua to also include the refreshPolicy (cherry-pick #24707 for 3.1) (#24712) (@argo-cd-cherry-pick-bot[bot])
### Other work
* 5c466a4e39802e059e75c0008ae7b7b8e842538f: Merge commit from fork (@crenshaw-dev)
* 1a023f1ca7fe4ec942b4b6696804988d5a632baf: Merge commit from fork (@crenshaw-dev)
* 761fc27068d2d4cd24e1f784eb2a9033b5ee7f43: Merge commit from fork (@crenshaw-dev)
* e20828f86937072e78a61d99c930543017075fc8: Merge commit from fork (@thevilledev)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.1.7...v3.1.8

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

