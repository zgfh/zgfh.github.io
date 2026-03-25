来源: https://github.com/argoproj/argo-cd/releases/tag/v3.3.2

# argoproj/argo-cd v3.3.2 Release Notes

Published at: 2026-02-22T13:18:59Z

> [!IMPORTANT]
> Before upgrading all types of Argo CD installations to this release, please read the upgrade guide first: 
> https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/3.2-3.3/#breaking-changes
>
> **Upgrading Argo CD which is managing itself**
>
> Users who have an Argo CD Application that manages their Argo CD installation, must enable `ServerSideApply=true` sync option on this Application in order for the upgrade to succeed. 
> 
> The issue with `failed to perform client-side apply migration` that existed on version `3.3.0` and `3.3.1` has been solved in this release: https://github.com/argoproj/argo-cd/issues/26279
> 
> For users who have previously upgraded to Argo CD `3.3.0`or `3.3.1` and applied the temporary remediation of `ClientSideApplyMigration=false` sync option on the Application that manages their Argo CD, are required to remove this setting to restore the default behavior of performing the migration. 
> The reason for removing the `ClientSideApplyMigration=false` sync option is that it may cause conflicts between Argo CD K8s field manager and other field managers at a later point in time.
> 
> More details here: 
> https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#client-side-apply-migration

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.2/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.2/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 67c23193c4dc23defb4cad555ba975cf501ba1b0: fix: use csapgrade to patch managedFields for client-side apply migration (cherry-pick #26289 for 3.3) (#26516) (@argo-cd-cherry-pick-bot[bot])
### Documentation
* 1bf62aea1991a772769b110d8a10e8d56a3c1eb2: docs: instruct to enable ClientSideApplyMigration in 3.3.2 (cherry-pick #26547 for 3.3) (#26549) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.3.1...v3.3.2

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

