来源: https://github.com/argoproj/argo-cd/releases/tag/v3.5.1

# argoproj/argo-cd v3.5.1 Release Notes

Published at: 2026-08-12T12:12:58Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.5.1/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.5.1/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 33f3bc59faeec96204cda3a5ae211be17d15f1ac: fix(appset): stop progressive sync reconciling in a tight loop (#27577) (#29139) (@himeshp)
* d358e75b3539c3fc43eb2372317bde7a0d01c55f: fix(appset): verify terminating Applications against the API server (#29042) (#29138) (@himeshp)
* ecf37373a9d3a72b259a73abfee7ce27226b960a: fix(controller): cherry-pick treat `timeout.reconciliation=0` as disabled soft expiry (#27683) (#29007) (@aali309)
* 978fa65006565baaaf35894918fd661d610f5953: fix(controller): reuse server-side diff result when masking Secret data (#27858) (#29074) (@1ovsss)
* f399c84f85fc4e3a19ac1e8314ff111493d26fee: fix(controller): use diff cache when timeout.reconciliation is disabled (cherry-pick #29073 for 3.5) (#29158) (@argo-cd-cherry-pick-bot[bot])
* 960bed7f2efcdc8b43fe392dd6d17cf95507c9f2: fix(server): prevent SSD CLI secret mask spoofing (cherry-pick #29089 for 3.5) (#29130) (@argo-cd-cherry-pick-bot[bot])
* 9f360f4953a1dc0f3474aa9c482d72366863ea33: fix(ssd): hide secret in last-applied-configuration annotation (#28989) (#29052) (@pjiang-dev)
### Other work
* 109ca7ca71139e514114499d294a492e7910a965: chore: bump version to 3.5.1 on release-3.5 branch (#29165) (@github-actions[bot])
* b44fbbc2e040e303c18a69182fd5dbe2c36cfdf9: fix(manifest-generate-paths): Consistent gen manifest cache key (#28074 and #29037) (#29049) (@agaudreault)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.5.0...v3.5.1

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

