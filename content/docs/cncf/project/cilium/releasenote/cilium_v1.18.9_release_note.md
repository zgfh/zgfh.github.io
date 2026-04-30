来源: https://github.com/cilium/cilium/releases/tag/v1.18.9

# cilium/cilium v1.18.9 Release Notes

Published at: 2026-04-15T21:05:45Z

Summary of Changes
------------------

**Minor Changes:**
* Fix performance bug in L7 policy proxy redirect handling (Backport PR cilium/cilium#44827, Upstream PR cilium/cilium#44613, @fristonio)
* helm,docs: add configDriftDetection Helm values and documentation (Backport PR cilium/cilium#44972, Upstream PR cilium/cilium#44703, @PhilipSchmid)

**Bugfixes:**
* [v1.18] Fix incorrect policy service selector handling (cilium/cilium#44949, @fristonio)
* Ensure completion.WaitGroup always has a timeout (Backport PR cilium/cilium#45218, Upstream PR cilium/cilium#44731, @jrajahalme)
* envoy: Fix xds server npds listeners accounting (Backport PR cilium/cilium#45218, Upstream PR cilium/cilium#44830, @fristonio)
* Fix a slow memory leak triggered by incremental policy updates (Backport PR cilium/cilium#45053, Upstream PR cilium/cilium#44328, @odinuge)
* Fix endpoints for static pods stuck in init identity (Backport PR cilium/cilium#45213, Upstream PR cilium/cilium#45016, @aaroniscode)
* Fix memory leak triggered by policies being created and deleted (Backport PR cilium/cilium#44827, Upstream PR cilium/cilium#44724, @odinuge)
* Fix panic in Hubble Relay when new peer address is unresolvable (Backport PR cilium/cilium#45213, Upstream PR cilium/cilium#45021, @pesarkhobeee)
* Fixed a bug in dual-stack cluster-pool IPAM where an operator restart with a pre-existing duplicate IPv6 PodCIDR could cause the affected node's IPv4 PodCIDR to be incorrectly freed and reassigned to another node. (Backport PR cilium/cilium#44867, Upstream PR cilium/cilium#44832, @christarazi)
* Fixed a bug in service load balancing where backend slot assignments could have gaps when maintenance backends exist, potentially causing traffic misrouting. (Backport PR cilium/cilium#44972, Upstream PR cilium/cilium#43902, @Aman-Cool)
* Fixed an issue where policy update ack is never completed after endpoint deletion. (Backport PR cilium/cilium#44819, Upstream PR cilium/cilium#44754, @jrajahalme)
* Fixed ipcache identity update hang when last proxy listener is removed. (Backport PR cilium/cilium#45218, Upstream PR cilium/cilium#44597, @jrajahalme)
* Fixes increased CPU usage in `hubble observe` caused by log coloring feature, even when coloring was disabled (Backport PR cilium/cilium#44827, Upstream PR cilium/cilium#44119, @tporeba)
* lb: fix panic in orphan backend cleanup when addr is zero-value (Backport PR cilium/cilium#45053, Upstream PR cilium/cilium#44853, @vipul-21)
* lb: Skip nil slots during BPF map restore to prevent panic (Backport PR cilium/cilium#44972, Upstream PR cilium/cilium#44895, @vipul-21)
* operator/identitygc: fix nil pointer dereference on shutdown (Backport PR cilium/cilium#45213, Upstream PR cilium/cilium#45091, @tsotne95)

**CI Changes:**
* .github/workflows: disable cache for go steps (Backport PR cilium/cilium#45213, Upstream PR cilium/cilium#45073, @aanm)
* .github/workflows: replace external set-commit-status action (Backport PR cilium/cilium#45213, Upstream PR cilium/cilium#45078, @aanm)
* .github: cleanup disk before ci-verifier tests (Backport PR cilium/cilium#45053, Upstream PR cilium/cilium#44971, @aanm)
* ci: add fail-fast false to ci image builds (Backport PR cilium/cilium#45213, Upstream PR cilium/cilium#45079, @Artyop)
* ci: set TMPDIR=/host/tmp in datapath verifier tests (Backport PR cilium/cilium#45213, Upstream PR cilium/cilium#45047, @aanm)
* ci: Switch catchpoint/workflow-telemetry-action to our fork (cilium/cilium#45220, @YutaroHayakawa)
* fix: escape $ character in regex to prevent injection (Backport PR cilium/cilium#44827, Upstream PR cilium/cilium#44638, @peoyekunle)

**Misc Changes:**
* .github/workflows: do not use deployments for environments (Backport PR cilium/cilium#45213, Upstream PR cilium/cilium#44908, @aanm)
* [v1.18] vendor: update google.golang.org/grpc to v1.79.3 (cilium/cilium#45346, @aanm)
* bpf: Clear `tc_classid` on all ingress code paths (Backport PR cilium/cilium#45213, Upstream PR cilium/cilium#42105, @pchaigno)
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#44940, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#45042, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#45174, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#45309, @cilium-renovate[bot])
* chore(deps): update base-images (v1.18) (cilium/cilium#44833, @cilium-renovate[bot])
* chore(deps): update base-images to v1.25.9 (v1.18) (cilium/cilium#45274, @cilium-renovate[bot])
* chore(deps): update dependency bufbuild/buf to v1.67.0 (v1.18) (cilium/cilium#45172, @cilium-renovate[bot])
* chore(deps): update dependency cilium/little-vm-helper to v0.0.29 (v1.18) (cilium/cilium#45281, @cilium-renovate[bot])
* chore(deps): update docker.io/library/busybox:1.37.0 docker digest to 1487d0a (v1.18) (cilium/cilium#45040, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.9 docker digest to a95d3d1 (v1.18) (cilium/cilium#45316, @cilium-renovate[bot])
* chore(deps): update docker.io/library/ubuntu:24.04 docker digest to 186072b (v1.18) (cilium/cilium#44935, @cilium-renovate[bot])
* chore(deps): update docker.io/library/ubuntu:24.04 docker digest to 84e77de (v1.18) (cilium/cilium#45306, @cilium-renovate[bot])
* chore(deps): update gcr.io/etcd-development/etcd docker tag to v3.6.10 (v1.18) (cilium/cilium#45171, @cilium-renovate[bot])
* chore(deps): update gcr.io/etcd-development/etcd docker tag to v3.6.9 (v1.18) (cilium/cilium#44937, @cilium-renovate[bot])
* chore(deps): update module github.com/go-jose/go-jose/v4 to v4.1.4 [security] (v1.18) (cilium/cilium#45150, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.35.9-1773729248-8de84653be3b2b3011e1cee5b3e702f6556fb3df (v1.18) (cilium/cilium#44938, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.35.9-1774363526-9d47d40f80df306891816788b71415813ce49ef3 (v1.18) (cilium/cilium#45041, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.5-1775137579-2b3493aca96923190423ccec7e4dbc5f074ccad4 (v1.18) (cilium/cilium#45173, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.6-1775912317-d56e4f5fec87556b7aaf3b8edeb100025ec87183 (v1.18) (cilium/cilium#45308, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.6-1776000132-2437d2edeaf4d9b56ef279bd0d71127440c067aa (v1.18) (cilium/cilium#45321, @cilium-renovate[bot])
* docs: document reverse_sk map exhaustion impact on socket termination (Backport PR cilium/cilium#44861, Upstream PR cilium/cilium#44835, @ysksuzuki)
* docs: Update Gateway API docs to reference Gateway API v1.3.0 (Backport PR cilium/cilium#44972, Upstream PR cilium/cilium#40825, @Untersander)
* docs: Update sphinx theme to v3.1.0 (Backport PR cilium/cilium#45338, Upstream PR cilium/cilium#45289, @joestringer)
* fix(deps): update k8s.io patch updates stable to v0.33.10 (v1.18) (patch) (cilium/cilium#44939, @cilium-renovate[bot])
* fix(deps): update k8s.io/utils digest to 28399d8 (v1.18) (cilium/cilium#44936, @cilium-renovate[bot])
* fix(deps): update sigs.k8s.io/mcs-api/controllers digest to 4b9911b (v1.18) (cilium/cilium#45170, @cilium-renovate[bot])

**Other Changes:**
* [1.18] Reapply "loader: XDP attach type fallback logic" (cilium/cilium#44999, @rgo3)
* [v1.18 Backport] EKS API Server Hardening (cilium/cilium#44977, @sekhar-isovalent)
* [v1.18] deps: bump cni plugins to v1.9.1 (cilium/cilium#45241, @ferozsalam)
* [v1.18] Revert "loader: XDP attach type fallback logic" (cilium/cilium#44857, @julianwiedmann)
* install: Update image digests for v1.18.8 (cilium/cilium#44956, @cilium-release-bot[bot])
* v1.18: bpf: Clear `tc_classid` on all ingress code paths (cilium/cilium#45341, @pchaigno)


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.18.9@sha256:c9140c2ebcc636ba346a4152fb28d616a4a51586c22c72dcd6f273bed41053c0`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.18.9@sha256:140bbb0433dbdb12e3ab0aaca0cb6fd1a8430812816ccff54c0d7f0adb713175`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.18.9@sha256:da9e6d08f8c11624619692af7ae022b2a7e8e1136d9164910bc6776acdc60079`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.18.9@sha256:031288422f2b0bfff3372fba9812d2867dd9262a6f12c6e6282cfebe54e5efe1`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.18.9@sha256:2116cd9ec94484a1bb7f5cb9703fb6d7c4e63b11431cf145280abda218f3e8b9`

### operator-aws

`quay.io/cilium/operator-aws:v1.18.9@sha256:48d78a4d22fc055a2223019941fc30a51f8a980691e55225bfd6b9cffb164a45`

### operator-azure

`quay.io/cilium/operator-azure:v1.18.9@sha256:4523175c9452c2eab7fa537faa85654120e29b740843f72d55b43c5cbc774f71`

### operator-generic

`quay.io/cilium/operator-generic:v1.18.9@sha256:9094fe19965c558bc9361aa4f0d19fcc48f7377f835dc70f138bf4dc1db48ca4`

### operator

`quay.io/cilium/operator:v1.18.9@sha256:da7b86562f4db18d61e6d34bb1f998d826f993af9d2047bf3e0b7346f658d65c`

