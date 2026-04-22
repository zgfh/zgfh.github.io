来源: https://github.com/argoproj/argo-cd/releases/tag/v3.4.0-rc5

# argoproj/argo-cd v3.4.0-rc5 Release Notes

Published at: 2026-04-16T16:55:26Z

## Quick Start

> [!IMPORTANT]
> A potential bug with application reconciliation has been identified in this release. The application controller may fail to refresh applications, causing an application to not sync / show resources as out of sync. 
> 
> **Issue:** [#27344 – Application controller not refreshing applications](https://github.com/argoproj/argo-cd/issues/27344)


### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.0-rc5/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.0-rc5/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* f4e7a6e604f0b5632bb619c55ba2d9579991a118: [release-3.4] fix: improve perf: switch parentUIDToChildren to map of sets, remove cache rebuild (#26863) (#27110) (@jcogilvie)
* b7f9f6d1d0c518054061cf235811d20ccdda5ba2: fix(ci): run yarn install with --frozen-lockfile  (cherry-pick #27099 for 3.4) (#27350) (@dudinea)
* f50abb659662d2d27dbc81095efcd114d1befdba: fix(controller): reduce secret deepcopies and deserialization (#27049) (cherry-pick release-3.4) (#27132) (@rumstead)
* 99e29c7d9177d710b12c2b124061f44eed03c13a: fix(docs): Fix manifest path in Source Hydrator docs (cherry-pick #27123 for 3.4) (#27166) (@argo-cd-cherry-pick-bot[bot])
* 67d12ebbd4f0ba007f1e3cf36d6d963fa52776d4: fix(hook): Fixed hook code issues that caused stuck applications on "Deleting" state (Issues #18355 and #17191) (cherry-pick #26724 for 3.4) (#27257) (@argo-cd-cherry-pick-bot[bot])
* 33247b96fe55e865b43f964b4ecc2bbab10556c3: fix(hydrator): preserve all source type fields in GetDrySource() (cherry-pick #27189 for 3.4) (#27196) (@argo-cd-cherry-pick-bot[bot])
* a244f7cb7af37c6a21a2207729a0e0b70bf46a5d: fix(server): Ensure OIDC config is refreshed at server restart (cherry-pick #26913 for 3.4) (#27115) (@argo-cd-cherry-pick-bot[bot])
* eecac8e473f327c7f9622fb779e8b71a1975989c: fix(ui): OCI revision metadata never renders due to conflicting guard clause (#26948) (cherry-pick #27097 for 3.4) (#27363) (@argo-cd-cherry-pick-bot[bot])
* 58a6f85650b2a184214140250dea76091594cec7: fix(ui): handle 401 error in stream (cherry-pick #26917 for 3.4) (#27228) (@argo-cd-cherry-pick-bot[bot])
* 696a18f7d35763c1234fa4f04dc9ea02ece6231c: fix: Add X-Frame-Options and CSP headers to Swagger UI endpoints (cherry-pick #26521 for 3.4) (#27153) (@argo-cd-cherry-pick-bot[bot])
* 8550f60a05c3132152c5d950e5022831f27bae81: fix: force attempt http2 with custom tls config (#26975) (cherry-pick #26976 for 3.4) (#27073) (@argo-cd-cherry-pick-bot[bot])
* dfa079b5e318f800d42169afc824f813a3162c87: fix: pass repo.insecure flag to `helm dependency build` (cherry-pick #27078 for 3.4) (#27082) (@argo-cd-cherry-pick-bot[bot])
* a061d1c664ce17b2a8d35afcd76fed656c44dc23: fix: prevent automatic refreshes from informer resync and status updates (cherry-pick #25290 for 3.4) (#27229) (@argo-cd-cherry-pick-bot[bot])
* b648248984f2e2538e767effbae579b90e682085: fix: trigger app sync on app-set spec change (cherry-pick #26811 for 3.4) (#27131) (@argo-cd-cherry-pick-bot[bot])
* 0a29bfd0935e7e1ae152b46f0b6790c5a913dd5d: fix: use unique names for initial commits (cherry-pick #27171 for 3.4) (#27198) (@argo-cd-cherry-pick-bot[bot])
### Dependency updates
* 60fed8b4ec04b5cf69d271694d919aafe660f6df: chore(deps): bump github.com/go-jose/go-jose/v4 from 4.1.3 to 4.1.4 (cherry-pick #27101 for 3.4) (#27207) (@argo-cd-cherry-pick-bot[bot])
### Other work
* b9c4c2b6f54e50a0b79c844b47b3dda841c264d1: test(e2e): add e2e tests for reverse deletionOrder when progressive sync enabled (cherry-pick #26673 for 3.4) (#27263) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.4.0-rc4...v3.4.0-rc5

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

