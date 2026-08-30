来源: https://github.com/argoproj/argo-cd/releases/tag/v3.4.8

# argoproj/argo-cd v3.4.8 Release Notes

Published at: 2026-08-27T09:56:04Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.8/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.8/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 90f81d5bc27491a97fb6d0ab0dc284a69ed14a08: fix(revert): auto-sync skipped when newer commit arrives during sync (cherry-pick #28692 for 3.4) (#29225) (@rumstead)
* 924ab35b93689ddba28731bdaa45a189ac653ddc: fix: don't degrade Cluster API Cluster health while Ready is False during provisioning (cherry-pick #29237 for 3.4) (#29274) (@argo-cd-cherry-pick-bot[bot])
### Dependency updates
* e4de80d7eee32f93416d9722719d4b8b1c1d47bf: chore(deps): bump DOMPurify to 3.4.7 for CVE-2026-49978 (#29222) (@aali309)
* 24754268593ae81a052bec378b8e967af787987f: chore(deps): bump brace-expansion to 2.1.4, 1.1.18 in /ui for fixing CVE-2026-14257 and CVE-2026-69152 (release-3.4) (#29379) (@nmirasch)
* e5bee2c2bbbff7b0c65b213addaf84e30ad66f94: chore(deps): bump js-yaml to fix CVE-2026-59869 (#28946) (@aali309)
### Other work
* 609fa82ba26de2369c7b5138279f06a2af1d13a5: chore: bump version to 3.4.8 on release-3.4 branch (#29405) (@github-actions[bot])
* 9c771f6f7cbd4448fef1a11fb03be7579c1e2fd3: fix(notification-controller): deep-copy before mutating object from a shared cache (cherry-pick #29350 for 3.4) (#29353) (@argo-cd-cherry-pick-bot[bot])
* bad3c481d2ceeaff1ad0e48b6c7c9fe23f77f118: fix(notification-controller): read appprojects from informer cache (#28815) (cherry-pick release-3.4) (#29346) (@antonu17)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.4.7...v3.4.8

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

