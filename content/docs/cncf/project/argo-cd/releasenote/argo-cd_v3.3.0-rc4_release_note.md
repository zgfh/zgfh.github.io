来源: https://github.com/argoproj/argo-cd/releases/tag/v3.3.0-rc4

# argoproj/argo-cd v3.3.0-rc4 Release Notes

Published at: 2026-01-22T20:23:03Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.0-rc4/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.0-rc4/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 15568cb9d57200927dd15858508f882826529153: fix(appset): do not trigger reconciliation on appsets not part of allowed namespaces when updating a cluster secret (cherry-pick #25622 for 3.3) (#25909) (@argo-cd-cherry-pick-bot[bot])
* b52a0750b2bf8c726d4a689000a723946f1c57b9: fix(hydrator): .gitattributes include deeply nested files (#25870) (cherry-pick #26011 for 3.3) (#26013) (@argo-cd-cherry-pick-bot[bot])
* 48a9dcc23b962eafe0a74691769c2c891882ec31: fix(hydrator): empty links for failed operation (#25025) (cherry-pick #26014 for 3.3) (#26018) (@argo-cd-cherry-pick-bot[bot])
* 0fa47b11b258da9a082a5b206e7fb175e70a9fdd: fix(hydrator): pass destination.namespace to manifest rendering (#25478) (cherry-pick #25699 for 3.3) (#26019) (@argo-cd-cherry-pick-bot[bot])
* 32c32a67cb2d0e4077e6e474dade43c798458e59: fix: Only show please update resource specification message when spec… (cherry-pick #25066 for 3.3) (#25894) (@argo-cd-cherry-pick-bot[bot])
* 74de77a24c80e0397f1c0f92e0f6ea9a19210e9d: fix: Toggle `automated.enabled` to disable auto-sync for rollbacks (cherry-pick #25719 for 3.3) (#25943) (@argo-cd-cherry-pick-bot[bot])
* a6472c83935700e43756ea7c19e91c5ef83f509b: fix: allow docker dhi helm charts to be used (cherry-pick #25835 for 3.3) (#25964) (@argo-cd-cherry-pick-bot[bot])
* cd6a9aaf3f8370d1c15afae9e7612420934d6f69: fix: cherry pick #25516 to release-3.3 (#26114) (@FourFifthsCode)
* 8fbb44c336f06397840a7b626c6535d11b2183de: fix: close response body on error paths to prevent connection leak (cherry-pick #25824 for 3.3) (#26005) (@argo-cd-cherry-pick-bot[bot])
* 3d64c21206c8756668df4eef2ef8f93014b16230: fix: invalid error message on health check failure (#26040) (cherry-pick #26039 for 3.3) (#26063) (@argo-cd-cherry-pick-bot[bot])
* 28e8472c69f35ec14a8df4c703899dce517d266d: fix: nil and empty ignoredifferences (cherry-pick #25980 for 3.3) (#26000) (@argo-cd-cherry-pick-bot[bot])
### Documentation
* 8639b7be5e862a17b30efff441eb59ec3cd6a7d3: docs: added Helm 3.19.4 upgrade to the upgrade guide (#25776) (@reggie-k)
### Dependency updates
* ac071b57a156d13ab0c2b26a70fe8e4e3555b93c: chore(deps): update notifications-engine to fix GitHub PR comments nil panic (cherry-pick #26065 for 3.3) (#26075) (@soutar)
* 369fb7577e58d34faacf6dae439e014c36496530: chore(deps): update notifications-engine to v0.5.1-0.20251223091026-8c0c96d8d530 (cherry-pick #25785 for 3.3) (#25853) (@argo-cd-cherry-pick-bot[bot])
* 5de1e6472d272b2c506960111acaf9faaed536dc: chore(deps): update to helm 3.19.4 due to cve : https://github.com/helm/helm/releases/tag/v3.19.4 (cherry-pick #25769 for 3.3) (#25774) (@argo-cd-cherry-pick-bot[bot])
### Other work
* 675f8cfe3f073d4ec070b1fb67d6c577f08d21b6: chore(cherry-pick-3.3): bump expr to `v1.17.7` (#25888) (@nitishfy)
* efca5b9144fab9aa4d5aabb1a51d6340d8fa0bd4: chore: bumps golang version everywhere to the latest 1.25.5 (cherry-pick #25716 for 3.3) (#25808) (@argo-cd-cherry-pick-bot[bot])
* 9ae26e4e74c1ef269f70a79ac8fca138eb9fbc31: ci: test against k8s 1.34.2 (cherry-pick #25856 for 3.3) (#25858) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.3.0-rc3...v3.3.0-rc4

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

