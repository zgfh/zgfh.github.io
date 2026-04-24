来源: https://github.com/cilium/cilium/releases/tag/v1.17.15

# cilium/cilium v1.17.15 Release Notes

Published at: 2026-04-15T21:05:23Z

Summary of Changes
------------------

**Bugfixes:**
* [v1.17] Fix incorrect policy service selector handling (cilium/cilium#44950, @fristonio)
* envoy: Fix xds server npds listeners accounting (Backport PR cilium/cilium#45262, Upstream PR cilium/cilium#44830, @fristonio)
* Fix a slow memory leak triggered by incremental policy updates (Backport PR cilium/cilium#45054, Upstream PR cilium/cilium#44328, @odinuge)
* Fix issue where endpoints got stuck in "waiting-to-regenerate" (Backport PR cilium/cilium#44825, Upstream PR cilium/cilium#42856, @odinuge)
* Fix memory leak triggered by policies being created and deleted (Backport PR cilium/cilium#44825, Upstream PR cilium/cilium#44724, @odinuge)
* Fix panic in Hubble Relay when new peer address is unresolvable (Backport PR cilium/cilium#45238, Upstream PR cilium/cilium#45021, @pesarkhobeee)
* Fixed a bug in dual-stack cluster-pool IPAM where an operator restart with a pre-existing duplicate IPv6 PodCIDR could cause the affected node's IPv4 PodCIDR to be incorrectly freed and reassigned to another node. (Backport PR cilium/cilium#44868, Upstream PR cilium/cilium#44832, @christarazi)
* Fixed an issue where policy update ack is never completed after endpoint deletion. (Backport PR cilium/cilium#44820, Upstream PR cilium/cilium#44754, @jrajahalme)
* Fixed ipcache identity update hang when last proxy listener is removed. (Backport PR cilium/cilium#45262, Upstream PR cilium/cilium#44597, @jrajahalme)
* Fixes increased CPU usage in `hubble observe` caused by log coloring feature, even when coloring was disabled (Backport PR cilium/cilium#44825, Upstream PR cilium/cilium#44119, @tporeba)
* operator/identitygc: fix nil pointer dereference on shutdown (Backport PR cilium/cilium#45238, Upstream PR cilium/cilium#45091, @tsotne95)

**CI Changes:**
* .github/workflows: disable cache for go steps (Backport PR cilium/cilium#45238, Upstream PR cilium/cilium#45073, @aanm)
* .github/workflows: replace external set-commit-status action (Backport PR cilium/cilium#45238, Upstream PR cilium/cilium#45078, @aanm)
* .github: cleanup disk before ci-verifier tests (Backport PR cilium/cilium#45054, Upstream PR cilium/cilium#44971, @aanm)
* [v1.17] ci: fix setup-eks-cluster action (cilium/cilium#44992, @tklauser)
* ci: add fail-fast false to ci image builds (Backport PR cilium/cilium#45238, Upstream PR cilium/cilium#45079, @Artyop)
* ci: set TMPDIR=/host/tmp in datapath verifier tests (Backport PR cilium/cilium#45238, Upstream PR cilium/cilium#45047, @aanm)
* fix: escape $ character in regex to prevent injection (Backport PR cilium/cilium#44825, Upstream PR cilium/cilium#44638, @peoyekunle)

**Misc Changes:**
* .github/workflows: do not use deployments for environments (Backport PR cilium/cilium#45238, Upstream PR cilium/cilium#44908, @aanm)
* [v1.17] vendor: update google.golang.org/grpc to v1.79.3 (cilium/cilium#45347, @aanm)
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#44945, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#45044, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#45176, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#45312, @cilium-renovate[bot])
* chore(deps): update base-images (v1.17) (cilium/cilium#44834, @cilium-renovate[bot])
* chore(deps): update base-images to v1.25.9 (v1.17) (cilium/cilium#45275, @cilium-renovate[bot])
* chore(deps): update dependency cilium/little-vm-helper to v0.0.29 (v1.17) (cilium/cilium#45282, @cilium-renovate[bot])
* chore(deps): update docker.io/library/busybox:1.37.0 docker digest to 1487d0a (v1.17) (cilium/cilium#45043, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.9 docker digest to a95d3d1 (v1.17) (cilium/cilium#45317, @cilium-renovate[bot])
* chore(deps): update docker.io/library/ubuntu:24.04 docker digest to 186072b (v1.17) (cilium/cilium#44941, @cilium-renovate[bot])
* chore(deps): update docker.io/library/ubuntu:24.04 docker digest to 84e77de (v1.17) (cilium/cilium#45310, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.35.9-1774363526-9d47d40f80df306891816788b71415813ce49ef3 (v1.17) (cilium/cilium#44943, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.5-1775137579-2b3493aca96923190423ccec7e4dbc5f074ccad4 (v1.17) (cilium/cilium#45175, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.6-1775912317-d56e4f5fec87556b7aaf3b8edeb100025ec87183 (v1.17) (cilium/cilium#45311, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.6-1776000132-2437d2edeaf4d9b56ef279bd0d71127440c067aa (v1.17) (cilium/cilium#45322, @cilium-renovate[bot])
* chore(deps): update quay.io/goswagger/swagger docker tag to v0.33.2 (v1.17) (cilium/cilium#44944, @cilium-renovate[bot])
* docs: document reverse_sk map exhaustion impact on socket termination (Backport PR cilium/cilium#44862, Upstream PR cilium/cilium#44835, @ysksuzuki)
* docs: Update sphinx theme to v3.1.0 (Backport PR cilium/cilium#45340, Upstream PR cilium/cilium#45289, @joestringer)
* Fix the typo to get the correct ipv6 pool name. (Backport PR cilium/cilium#45054, Upstream PR cilium/cilium#39877, @liyihuang)
* fix(deps): update k8s.io/utils digest to 28399d8 (v1.17) (cilium/cilium#44942, @cilium-renovate[bot])

**Other Changes:**
* [v1.17 Backport] EKS API Server Hardening (cilium/cilium#44978, @sekhar-isovalent)
* [v1.17] deps: bump cni plugins to v1.9.1 (cilium/cilium#45242, @ferozsalam)
* [v1.17] ipam: Fix race in multipool test helper causing flaky timeout (cilium/cilium#44870, @christarazi)
* install: Update image digests for v1.17.14 (cilium/cilium#44955, @cilium-release-bot[bot])
* v1.17: bpf: Clear `tc_classid` on all ingress code paths (cilium/cilium#45355, @pchaigno)


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.17.15@sha256:ace76d778230cf6f989cf358642361ee37821a2d1b1d388750b6d4148baab09b`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.17.15@sha256:ce54c31ca6fee716f76e2f8e980405cf1aea2c1a9f7c41b6e7e64491475af995`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.17.15@sha256:11279f03cea3c8305b08365a74e4351d03f057e6d02c2d70963ef329fedc7d28`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.17.15@sha256:60dcac76e5841a14d5c4813377cb463822db78568146e8c93ffc5b5cc0e894fb`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.17.15@sha256:6970dbfcddf1574311039dbe0f25f5389d5ab3a910be25b0a96a75253079c97c`

### operator-aws

`quay.io/cilium/operator-aws:v1.17.15@sha256:3224b2b1eb73fb2fa8a7532edb6f6a58bbced8eadb0e23c41a63a47a8a52d0f0`

### operator-azure

`quay.io/cilium/operator-azure:v1.17.15@sha256:5b501b1e2173846207b5d43db40c068df92b99ce264de0b8e07b882787605784`

### operator-generic

`quay.io/cilium/operator-generic:v1.17.15@sha256:72c8a5c61bb3277841ca1caf41f615173fde4f5b58966d007a2e64dc34a805f4`

### operator

`quay.io/cilium/operator:v1.17.15@sha256:d1b6dcce018f5d91af93c9890efb75a91181ee52852e8066946194f890b7240a`

