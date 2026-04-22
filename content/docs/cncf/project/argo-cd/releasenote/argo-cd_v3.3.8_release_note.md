来源: https://github.com/argoproj/argo-cd/releases/tag/v3.3.8

# argoproj/argo-cd v3.3.8 Release Notes

Published at: 2026-04-21T18:07:19Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.8/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.8/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* fb727cf7c1ea579854ff0f0323f291ab02174347: Revert "fix: prevent automatic refreshes from informer resync and status updates (cherry-pick #25290 for 3.3)" (#27400) (@crenshaw-dev)
* 26c81520167817209f717a5ea9b1ee0ce6e4c3dd: fix(appcontroller): application controller in core mode fails to sync when server.secretkey is missing (#26793) (#27462) (@anandf)
* 82b6d45701f16f093da8711ad40d212c4865ae29: fix(appset): change appset resource status count to 5000 by default (cherry-pick #26249 for 3.3) (#26263) (@argo-cd-cherry-pick-bot[bot])
* 9bff1c5b8dcf1e30c4cb85e56a35305dda6dac44: fix(cli): uses DrySource revision for app diff/manifests with sourceHydrator (#23817) (cherry-pick #24670 for 3.3) (#27481) (@argo-cd-cherry-pick-bot[bot])
* 6f3ef7dc95cdb7a7e9f7daa402ef38199eb575c7: fix: avoid stale informer cache in RevisionMetadata handler (cherry-pick #27392 for 3.3) (#27396) (@argo-cd-cherry-pick-bot[bot])
* b64eb4f07a5d01482cf7d9628250781056e3f91e: fix: revert autosync event message format change (cherry-pick #27387 for 3.3) (#27389) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.3.7...v3.3.8

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

