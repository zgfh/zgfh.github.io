来源: https://github.com/cilium/cilium/releases/tag/v1.19.1

# cilium/cilium v1.19.1 Release Notes

Published at: 2026-02-17T18:30:26Z

Summary of Changes
------------------

**Bugfixes:**
* clustermesh: fix CRD update permission for MCS-API CRD install (Backport PR cilium/cilium#44280, Upstream PR cilium/cilium#44224, @Preisschild)
* Fix panic during datapath reinitialization if DirectRouting device is required but missing (Backport PR cilium/cilium#44280, Upstream PR cilium/cilium#44219, @fristonio)
* helm: Fixed RBAC errors with `operator.enabled=false` by aligning cilium-tlsinterception-secrets Role/RoleBinding conditionals (Backport PR cilium/cilium#44280, Upstream PR cilium/cilium#44159, @puwun)
* Reduces rtnl_mutex contention on SR-IOV nodes by not requesting VF information in netlink RTM_GETLINK operations (Backport PR cilium/cilium#44280, Upstream PR cilium/cilium#43517, @pasteley)

**CI Changes:**
* ci: e2e: add `kernel` to workflow job names (Backport PR cilium/cilium#44127, Upstream PR cilium/cilium#44291, @smagnani96)
* gh: ariane: don't run cloud workflows for LVH kernel updates (Backport PR cilium/cilium#44147, Upstream PR cilium/cilium#44109, @julianwiedmann)
* gh: ariane: skip more workflows for LVH kernel updates (Backport PR cilium/cilium#44147, Upstream PR cilium/cilium#44115, @julianwiedmann)

**Misc Changes:**
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#44248, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#44368, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.19) (cilium/cilium#44363, @cilium-renovate[bot])
* chore(deps): update base-images (v1.19) (cilium/cilium#44247, @cilium-renovate[bot])
* chore(deps): update cilium/cilium-cli action to v0.19.1 (v1.19) (cilium/cilium#44343, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.19.1 (v1.19) (cilium/cilium#44400, @cilium-renovate[bot])
* chore(deps): update docker.io/library/busybox:1.37.0 docker digest to b3255e7 (v1.19) (cilium/cilium#44242, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.7 docker digest to 85c0ab0 (v1.19) (cilium/cilium#44364, @cilium-renovate[bot])
* chore(deps): update gcr.io/distroless/static:nonroot docker digest to f9f84bd (v1.19) (cilium/cilium#44243, @cilium-renovate[bot])
* chore(deps): update gcr.io/etcd-development/etcd docker tag to v3.6.8 (v1.19) (cilium/cilium#44365, @cilium-renovate[bot])
* chore(deps): update module sigs.k8s.io/kube-api-linter to v0.0.0-20260206102632-39e3d06a2850 (v1.19) (cilium/cilium#44244, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.35.9-1770265024-9828c064a10df81f1939b692b01203d88bb439e4 (v1.19) (cilium/cilium#44245, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.35.9-1770554954-8ce3bb4eca04188f4a0a1bfbd0a06a40f90883de (v1.19) (cilium/cilium#44262, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.35.9-1770979049-232ed4a26881e4ab4f766f251f258ed424fff663 (v1.19) (cilium/cilium#44366, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.19) (patch) (cilium/cilium#44246, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.19) (patch) (cilium/cilium#44367, @cilium-renovate[bot])
* ci: e2e: improve GitHub action readability (Backport PR cilium/cilium#44127, Upstream PR cilium/cilium#44126, @smagnani96)
* docs: Update docsearch to v4.5.4 (Backport PR cilium/cilium#44272, Upstream PR cilium/cilium#44233, @joestringer)
* endpoint/watchdog: fetch all endpoints without programs loaded (Backport PR cilium/cilium#44280, Upstream PR cilium/cilium#44111, @mhofstetter)
* gateway-apis: Correct supported versions in docs (cilium/cilium#44217, @youngnick)
* Policy Tiers: feature-flagging, add fuzzer, fix corner cases (Backport PR cilium/cilium#44267, Upstream PR cilium/cilium#43893, @jrajahalme)
* Policy: Fix rule origin for ordered policies (Backport PR cilium/cilium#44280, Upstream PR cilium/cilium#44178, @jrajahalme)

**Other Changes:**
* install: Update image digests for v1.19.0 (cilium/cilium#44172, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.19.1@sha256:41f1f74a0000de8656f1de4088ea00c8f2d49d6edea579034c73c5fd5fe01792`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.19.1@sha256:56d6c3dc13b50126b80ecb571707a0ea97f6db694182b9d61efd386d04e5bb28`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.19.1@sha256:6edfbf46ca484b1ed961f3c7382159ba7f0227e7af692159e99e8d4810ecaf34`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.19.1@sha256:d8c4e13bc36a56179292bb52bc6255379cb94cb873700d316ea3139b1bdb8165`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.19.1@sha256:837b12f4239e88ea5b4b5708ab982c319a94ee05edaecaafe5fd0e5b1962f554`

### operator-aws

`quay.io/cilium/operator-aws:v1.19.1@sha256:18913d05a6c4d205f0b7126c4723bb9ccbd4dc24403da46ed0f9f4bf2a142804`

### operator-azure

`quay.io/cilium/operator-azure:v1.19.1@sha256:82bce78603056e709d4c4e9f9ebb25c222c36d8a07f8c05381c2372d9078eca8`

### operator-generic

`quay.io/cilium/operator-generic:v1.19.1@sha256:e7278d763e448bf6c184b0682cf98cdca078d58a27e1b2f3c906792670aa211a`

### operator

`quay.io/cilium/operator:v1.19.1@sha256:93a6306d4543f1d8eccd79d6770c00ef4d4791f66326d97f9851f9d316e70141`

