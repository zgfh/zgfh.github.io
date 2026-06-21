来源: https://github.com/argoproj/argo-cd/releases/tag/v3.3.11

# argoproj/argo-cd v3.3.11 Release Notes

Published at: 2026-05-28T12:24:24Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.11/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.11/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* cd3b64dd8c250b61a8220ef07eabf47384635d15: fix(lint): unnecessary nesting (cherry-pick #27815 for 3.3) (#27818) (@argo-cd-cherry-pick-bot[bot])
* 82dd8ce2e39d1f254572f53527e91fa3703e854d: fix(ui): don't prefetch errors (#27877) (cherry-pick #27925 for 3.3) (#28023) (@argo-cd-cherry-pick-bot[bot])
* da10473981262fdb7693a0e06e104db72efd8c26: fix: nil-check (cherry-pick #28039 for 3.3) (#28041) (@argo-cd-cherry-pick-bot[bot])
* d5560679d12628243d5aeef9f85feb49adaa41e5: fix: prevent InvalidSpecError race in application controller startup (cherry-pick #27672 for 3.3) (#27844) (@argo-cd-cherry-pick-bot[bot])
* 21d55380342feb67f894fb800d100ac40460d778: fix: remove resourceVersion from ssd (#27406) (cherry-pick release-3.3) (#28016) (@blakepettersson)
* 120eb3126a5aa68efb178f67aa819ab799eac225: fix: truncate labels for deletion hook resources (cherry-pick #27542 for 3.3) (#27715) (@choejwoo)
### Dependency updates
* 1cb5892bd8c209d5e6fe3fac2bb27ce62477854e: chore(deps): bump redoc/dompurify to v3.4.0 in /ui for fixing CVE-2026-41240(cherry-pick 3.3) (#27912) (@alkakumari016)
### Other work
* 9e253030b62e7b8ae314a5a2d5c75ba8169bfabc: fix(gitops-engine): fix nil pointer dereference error in removeWebookMutation() (cherry-pick #27749 for 3.3) (#28032) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.3.10...v3.3.11

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

