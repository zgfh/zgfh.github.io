来源: https://github.com/argoproj/argo-cd/releases/tag/v3.3.16

# argoproj/argo-cd v3.3.16 Release Notes

Published at: 2026-10-12T10:59:23Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.16/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.16/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 759e4e1d77f9110221d01bba113717bfe350bdca: fix(ci): use curl in kustomize checksum helper so Renovate can refresh checksums (cherry-pick #29938 for 3.3) (#30101) (@argo-cd-cherry-pick-bot[bot])
* 6d4837e72d639ad3309a98c26ad269cf0d3b8934: fix(hydrator): do not report a permanent note push failure as exhausted retries (cherry-pick #29903 for 3.3) (#29910) (@argo-cd-cherry-pick-bot[bot])
* 0dbdfaaa2274be513058275ad67a8547490f0c96: fix: correct scheduled-time format in CronWorkflow create-workflow action (#29915) (cherry-pick #29916 for 3.3) (#29951) (@argo-cd-cherry-pick-bot[bot])
* f9d20a32f5fa1b31cbded3c0f8ee689371077249: fix: fix escaped URL routing for write repo (creds) endpoints (cherry-pick #29940 for 3.3) (#29956) (@argo-cd-cherry-pick-bot[bot])
* 87c7d845f7d881d3c93b491806ed8fb43588269b: fix: fix untar inbound check if dstPath is symlinked (#28881 cherry-pick release 3.3) (#30055) (@blakepettersson)
### Dependency updates
* d84c9021e02d99ad3c9ba8d0d2c61e7de02d09dc: chore(deps): bump go-git dependency to 5.19.2 - cherry-pick #30013 for v3.3 (#30049) (@ranakan19)
* 34fbd46bb489b670f042e6ed54e08bc00e4a8d53: chore(deps): update group golang to v1.26.9 (release-3.3) (#30095) (@argoproj-renovate[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.3.15...v3.3.16

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

