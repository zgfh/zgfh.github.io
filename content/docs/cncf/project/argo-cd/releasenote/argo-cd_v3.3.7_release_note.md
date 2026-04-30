来源: https://github.com/argoproj/argo-cd/releases/tag/v3.3.7

# argoproj/argo-cd v3.3.7 Release Notes

Published at: 2026-04-16T16:19:38Z

## Quick Start

> [!IMPORTANT]
> A potential bug with application reconciliation has been identified in this release. The application controller may fail to refresh applications, causing an application to not sync / show resources as out of sync. 
> 
> **Issue:** [#27344 – Application controller not refreshing applications](https://github.com/argoproj/argo-cd/issues/27344)

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.7/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.7/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* ea51bd8047e5ec171ea753bcce4008064b7b6393: [release-3.3] fix: improve perf: switch parentUIDToChildren to map of sets, remove cache rebuild (#26863) (#27108) (@jcogilvie)
* 4d2f2613d8f12fb38064c6f05a9f4ea6ba892a01: fix(ci): run yarn install with --frozen-lockfile (cherry-pick #27099 for 3.3) (#27351) (@dudinea)
* 671efff31dc8a2c2726f0066ea7b02e7e64efa71: fix(controller): reduce secret deepcopies and deserialization (#27049) (cherry-pick release-3.3) (#27129) (@rumstead)
* a77c1501fe213602bfcb7a7d8da2657c783026e6: fix(docs): Fix manifest path in Source Hydrator docs (cherry-pick #27123 for 3.3) (#27167) (@argo-cd-cherry-pick-bot[bot])
* f0b924f0b01633b538e054b09ef6efb062faa10b: fix(server): Ensure OIDC config is refreshed at server restart (cherry-pick #26913 for 3.3) (#27114) (@argo-cd-cherry-pick-bot[bot])
* 7eedc7ac4e36ef9bc52a32f100fc65a861c3bb75: fix(ui): OCI revision metadata never renders due to conflicting guard clause (#26948) (cherry-pick #27097 for 3.3) (#27365) (@argo-cd-cherry-pick-bot[bot])
* b0e04154cf1fcc5bb6f892082665bb1c1135dd48: fix(ui): handle 401 error in stream (cherry-pick #26917 for 3.3) (#27227) (@argo-cd-cherry-pick-bot[bot])
* 3b12b2e0d537308703bd84bbc0a65ac9051936e2: fix: Add X-Frame-Options and CSP headers to Swagger UI endpoints (cherry-pick #26521 for 3.3) (#27154) (@argo-cd-cherry-pick-bot[bot])
* 4939e1fb84beb75286e0a1eb2394f32e3c39e610: fix: force attempt http2 with custom tls config (cherry-pick #26976 for 3.3) (#27358) (@SamyDjemai)
* e372a7f09c8e5892f6cea13ab73ef1b4aa40d730: fix: pass repo.insecure flag to `helm dependency build` (cherry-pick #27078 for 3.3) (#27083) (@argo-cd-cherry-pick-bot[bot])
* 99e88e0963b8975cde7fc6c1cda302cbdac5f6d7: fix: prevent automatic refreshes from informer resync and status updates (cherry-pick #25290 for 3.3) (#27230) (@argo-cd-cherry-pick-bot[bot])
* 2512512b0cd9fc15aff334c60c89cd14d7e5f87c: fix: trigger app sync on app-set spec change (cherry-pick #26811 for 3.3) (#27130) (@argo-cd-cherry-pick-bot[bot])
* e451591448ac3897d54fdeed39338b1d78f01e07: fix: use force flag in copyutil symlink to prevent repo-server crashes (cherry-pick #26613 for 3.3) (#27057) (@argo-cd-cherry-pick-bot[bot])
* b948ff074dc61fb0ccd80cab0caf1e66b59e59c3: fix: use unique names for initial commits (cherry-pick #27171 for 3.3) (#27197) (@argo-cd-cherry-pick-bot[bot])
### Dependency updates
* 899c5e819c7f95f5907a449c8dea878c85265ac7: chore(deps): bump fast-xml-parser from 4.5.3 to 4.5.6 in /ui - 3.3 (#27360) (@keithchong)
* 7fd134a040307259745a0d56ac3844a5087a362f: chore(deps): bump go-jose from 4.1.3 to 4.1.4 (cherry-pick #27101 for… (#27208) (@blakepettersson)
* 2daefc045249285ea449095f32f676d4233a24a2: chore(deps): update notifications-engine dependency in release-3.3 to v0.5.1-0.20260316232552-d27ba0152c1c (#27093) (@pasha-codefresh)
### Other work
* 45cbc8421ca30a9777592fcf92bf9ac0f8dd40a1: test(e2e): add e2e tests for reverse deletionOrder when progressive sync enabled (cherry-pick #26673 for 3.3) (#27340) (@ranakan19)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.3.6...v3.3.7

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

