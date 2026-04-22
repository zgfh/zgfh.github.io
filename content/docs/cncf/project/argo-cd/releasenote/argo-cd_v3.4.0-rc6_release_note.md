来源: https://github.com/argoproj/argo-cd/releases/tag/v3.4.0-rc6

# argoproj/argo-cd v3.4.0-rc6 Release Notes

Published at: 2026-04-21T18:06:48Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.0-rc6/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.0-rc6/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 9fd02aac33c6a7a19acc9a12ff7f9547eabaf6e4: Revert "fix: prevent automatic refreshes from informer resync and status updates (cherry-pick #25290 for 3.4)" (#27402) (@crenshaw-dev)
* a19a83a06f57f1b922a3f583ec1f9b0eaebf8ba0: fix(cli): uses DrySource revision for app diff/manifests with sourceHydrator (#23817) (cherry-pick #24670 for 3.4) (#27483) (@argo-cd-cherry-pick-bot[bot])
* bcea79b3c65642f221af37acb9ff6fe6db2e5642: fix: avoid stale informer cache in RevisionMetadata handler (cherry-pick #27392 for 3.4) (#27395) (@argo-cd-cherry-pick-bot[bot])
* 06310bc7f7ab91b92356263a230e259a495af215: fix: remove resourceVersion from ssd (cherry-pick #27406 for 3.4) (#27461) (@argo-cd-cherry-pick-bot[bot])
* d7a8170dc6b2fe65fb418791c5ab8d67b651d593: fix: revert autosync event message format change (cherry-pick #27387 for 3.4) (#27390) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.4.0-rc5...v3.4.0-rc6

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

