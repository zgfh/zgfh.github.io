来源: https://github.com/argoproj/argo-cd/releases/tag/v3.3.1

# argoproj/argo-cd v3.3.1 Release Notes

Published at: 2026-02-18T12:30:50Z

> [!IMPORTANT]
> Before upgrading all types of Argo CD installations to this release, please read the upgrade guide first: 
> https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/3.2-3.3/#breaking-changes
>
> **Upgrading Argo CD which is managing itself**
>
> Users who have an Argo CD Application that manages their Argo CD installation, must enable `ServerSideApply=true` sync option on this Application in order for the upgrade to succeed. 
> 
> In some cases, there may be a sync error like `Failed to perform client-side apply migration: failed to perform client-side apply migration on manager kubectl-client-side-apply`. 
>
> We are currently working on a long-term fix to this issue, the progress can be tracked here: https://github.com/argoproj/argo-cd/issues/26279
> 
> A temporary remediation is to additionally set the `ClientSideApplyMigration=false` sync option on this Application. This solution is temporary and not recommended for the long run because it may result in conflicts between Argo CD K8s field manager and other field managers at a later point in time, and if you use it, you will need to remove it after the above issue is fixed.
>
> More details here: 
> https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#client-side-apply-migration
## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.1/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.1/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 8449d9a0f32571e10c9e04228501930a97e36661: fix(server): OIDC config via secrets fails (#18269) (cherry-pick #26214 for 3.3) (#26423) (@argo-cd-cherry-pick-bot[bot])
* d0b2a6cfd7b28a32869327343c304992ae052ed8: fix:  Fix excessive  ls-remote requests on monorepos with Auto Sync enabled apps (26277) (cherry-pick #26278 for 3.3) (#26372) (@argo-cd-cherry-pick-bot[bot])
* e464f6ae43f91a5ecd69ff36b88d679af0839faa: fix: AppProject finalizer should consider apps in all allowed namespaces (#24347) (cherry-pick #26416 for 3.3) (#26480) (@argo-cd-cherry-pick-bot[bot])
* 445916fdb0e1221869b868fc0ee493ac5ce4779a: fix: compressedLayerExtracterStore+isCompressedLayer - allow tar.gzip suffixes (cherry-pick #26355 for 3.3) (#26376) (@argo-cd-cherry-pick-bot[bot])
### Dependency updates
* 61267982abf59e3ac55ce913198565da061ce986: chore(deps): Upgrade Kustomize to 5.8.1 (cherry-pick #26367 for 3.3) (#26369) (@argo-cd-cherry-pick-bot[bot])
### Other work
* 92df21cfc02acfe2c931e0c9a55a52c964ce1e95: chore(appset): cherry-pick basic progressive sync e2e tests (#26092) (#26191) (@ranakan19)
* 4b0a2c0ef29bc60207f99dc0bdd29ce50aef25d6: chore: bumps ubuntu base docker image to 25.10 (cherry-pick #25758 for 3.3) (#26436) (@argo-cd-cherry-pick-bot[bot])
* 273683b6473eeb9a31593eb2be51379b54846084: chore: placate Sonar by ignoring testdata files (cherry-pick #26371 for 3.3) (#26377) (@argo-cd-cherry-pick-bot[bot])
* 8df5e96981410dc8c78617252ad5353bb8ae20b4: test(e2e): CMP test fails locally on Mac (cherry-pick #25901 for 3.3) (#26340) (@argo-cd-cherry-pick-bot[bot])
* 24493145a6befae7b85402adcf0b3395dc5d54a9: test(e2e): add isolation by ensuring unique name (cherry-pick #25724 for 3.3) (#26287) (@ranakan19)
* c4f0cd3e84ffbb08bdfa9b24f69995f316ed0119: test(e2e): configurable tmp dir locally (#25780) (#26339) (@ranakan19)
* 55d0d098028a29a000b58af51c129f1c07cd687f: test(e2e): fix TestDeletionConfirmation flakiness (cherry-pick #25902 for 3.3) (#26284) (@argo-cd-cherry-pick-bot[bot])
* 6f270cc8f4badeabfabe10a1a3948801c6852021: test(e2e): oras binary not found locally if not installed in path (cherry-pick #25751 for 3.3) (#26337) (@argo-cd-cherry-pick-bot[bot])
* 54f29167a63c061b7d2d8259051e3d00bcc60a1d: test(e2e): unstable CMP e2e test when running locally (cherry-pick #25752 for 3.3) (#26288) (@argo-cd-cherry-pick-bot[bot])
* 0038fce14d04295cea3dd10a0b50b4ff8eda853b: test(e2e): update local certs so they are valid on MacOS  (cherry-pick #25864 for 3.3) (#26338) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.3.0...v3.3.1

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

