来源: https://github.com/argoproj/argo-cd/releases/tag/v3.2.10

# argoproj/argo-cd v3.2.10 Release Notes

Published at: 2026-04-21T18:06:27Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.2.10/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.2.10/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 91da6a0b4c39e1ca7317896225a02561b0d09b31: Revert "fix: prevent automatic refreshes from informer resync and status updates (cherry-pick #25290 for 3.2)" (#27399) (@crenshaw-dev)
* 5426e98a67918377fedf8e073b18aea67900dff2: fix(appcontroller): application controller in core mode fails to sync when server.secretkey is missing (#26793) (#27463) (@anandf)
* c3df70e7173d14266a33e07d6db291b61667edf2: fix(cli): uses DrySource revision for app diff/manifests with sourceHydrator (#23817) (cherry-pick #24670 for 3.2) (#27482) (@argo-cd-cherry-pick-bot[bot])
* 3f789ce02d15f11f93695e946174032193127d73: fix: avoid stale informer cache in RevisionMetadata handler (cherry-pick #27392 for 3.2) (#27394) (@argo-cd-cherry-pick-bot[bot])
* 860ef554c9b5b5f55f8c351654310c81512301db: fix: revert autosync event message format change (cherry-pick #27387 for 3.2) (#27388) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.2.9...v3.2.10

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

