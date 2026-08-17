来源: https://github.com/argoproj/argo-cd/releases/tag/v3.3.13

# argoproj/argo-cd v3.3.13 Release Notes

Published at: 2026-07-31T12:15:59Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.13/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.13/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 1853165f399f73d1ec567e6d7d8f4adc62c4d711: fix(health): configconnectorcontext and configconnector (#26308) (#26309) (3.3) (#28611) (@crenshaw-dev)
* 2536ce315f8bf29b23e1519e85bff65038ac18b0: fix(helm): pass registry passwords through stdin (#17821) (cherry-pic… (#28836) (@nitishfy)
* 853e2c0caea4efd2ef7d2dcb3254d5b631e58a46: fix(reposerver): honor depth of referenced source instead of primary source (cherry-pick #28339 for 3.3) (#28342) (@alexandresavicki)
* fac2752f152560331da5e0e96181e5e737fb80ba: fix(ssa): do not run auth reconcile with SSA (cherry pick of #28027 and #27601 to 3.3) (#28266) (@akhilnittala)
* d73c512462fbfb55f32509cd4184ff5dc9e28aac: fix: Revert "fix: avoid calling UpdateRevisionForPaths unnecessary (#25151)" (cherry-pick #27241 for 3.3) (#28949) (@ranakan19)
* 91a603b8059d12fb3ee1653304990f70823ca813: fix: deleted resource are incorrectly shown in UI (cherry-pick #28322 for 3.3) (#28336) (@argo-cd-cherry-pick-bot[bot])
* f6faa38bb234cc32e34da5903a42a2dbf9eb739d: fix: don't clobber non-ignored fields on "replace" (cherry-pick #27136 for 3.3) (#28506) (@argo-cd-cherry-pick-bot[bot])
* ea08dfae730aad73963b7e41d506f8c9913063d1: fix: fixes a regression of dex config env vars substituion - Cherry pick of #28369 in 3.3 (#28410) (@ppapapetrou76)
* 28d47f473d22055b290fde431a1650e13235ee8f: fix: mount argocd-cmd-params-cm in repo-server so pprof can be enabled (cherry-pick #28863 for 3.3) (#28865) (@argo-cd-cherry-pick-bot[bot])
### Dependency updates
* 676d6f58ee5b434d190b05b882cd661dfab3de7e: chore(deps): bump form-data to 4.0.6 in /ui for fixing CVE-2026-12143 (#28831) (@alkakumari016)
* 5aa0befdbc1e359b49209b5d1948a0aa02ad4446: chore(deps): bump golang.org/x/crypto to 0.53.0 (release-3.3) (#28338) (@nmirasch)
### Other work
* 58a3ab2df2390717685809caa0d0d180dc0bf70e: chore: bump version to 3.3.13 on release-3.3 branch (#28960) (@github-actions[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.3.12...v3.3.13

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

