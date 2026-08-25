来源: https://github.com/cilium/cilium/releases/tag/v1.18.13

# cilium/cilium v1.18.13 Release Notes

Published at: 2026-08-18T10:35:40Z

Summary of Changes
------------------

**Major Changes:**
* Add support for VRRP and IGMP protocols in host firewall (Backport PR cilium/cilium#47619, Upstream PR cilium/cilium#39872, @aditighag)

**Bugfixes:**
* bpf: hostfw: tolerate unknown CT protocols and rely on policies (Backport PR cilium/cilium#47619, Upstream PR cilium/cilium#47343, @smagnani96)
* Fix abnormal ip allocation caused by hostnetwork pod (Backport PR cilium/cilium#47687, Upstream PR cilium/cilium#47552, @haozhangami)
* Fix potential hangs caused by Netlink errors in filterAndDestroySockets. (Backport PR cilium/cilium#47799, Upstream PR cilium/cilium#46967, @ysksuzuki)
* ipcache: fix CIDR reference counter to use canonical prefixes (Backport PR cilium/cilium#47887, Upstream PR cilium/cilium#47208, @iwanhae)

**CI Changes:**
* .github: retry CLI and binary downloads over transient network errors (Backport PR cilium/cilium#47289, Upstream PR cilium/cilium#47167, @aanm)
* bpf: test: improve network policy testing (Backport PR cilium/cilium#47619, Upstream PR cilium/cilium#41906, @julianwiedmann)
* bpf: tests: IGMP improvements (Backport PR cilium/cilium#47619, Upstream PR cilium/cilium#43684, @julianwiedmann)
* chore: use GH_RUNNER_CILIUM_BASE_AMD64/ARM64 vars for integration-test runners (Backport PR cilium/cilium#47547, Upstream PR cilium/cilium#47182, @bogdankrasko)
* ci: build race images on push in the stable image builders (Backport PR cilium/cilium#47618, Upstream PR cilium/cilium#47616, @aanm)
* ci: draft renovate PRs until ciliumbot auto-approval (Backport PR cilium/cilium#47803, Upstream PR cilium/cilium#47364, @mhofstetter)
* ci: fix three renovate-PR CI flakes (kubectl download retry, merge-upload ref, EKS pool zones) (Backport PR cilium/cilium#47540, Upstream PR cilium/cilium#47357, @aanm)
* CI: fixed external-target readiness gating and ensured sig-network E2E JUnit reports are uploaded on failure. (Backport PR cilium/cilium#47289, Upstream PR cilium/cilium#46860, @aanm)
* ci: migrate set-commit-status to cilium/actions (Backport PR cilium/cilium#47803, Upstream PR cilium/cilium#47771, @bogdankrasko)
* ci: skip etcd log fetch when kvstore was never started (Backport PR cilium/cilium#47887, Upstream PR cilium/cilium#47801, @aanm)
* Collect /proc/net/softnet_stat, /proc/net/snmp and /proc/net/netstat in sysdumps to help diagnose host-level packet drops. (Backport PR cilium/cilium#47289, Upstream PR cilium/cilium#46985, @aanm)
* conformance-aws-cni: skip l7 and fqdn tests by name on chaining mode (Backport PR cilium/cilium#47289, Upstream PR cilium/cilium#47269, @aanm)
* Decrease CI costs on AWS (Backport PR cilium/cilium#47289, Upstream PR cilium/cilium#46615, @aanm)
* gha/e2e: cover etcd behind a service (Backport PR cilium/cilium#47411, Upstream PR cilium/cilium#47235, @giorio94)
* gha/kubespray: run on schedule, rather than on every push (Backport PR cilium/cilium#47735, Upstream PR cilium/cilium#47719, @giorio94)
* gha/lvh-kind: respect Kind image version also when config is provided (Backport PR cilium/cilium#47735, Upstream PR cilium/cilium#47703, @giorio94)
* gha: don't install LLVM and Clang in integration tests workflow (Backport PR cilium/cilium#47735, Upstream PR cilium/cilium#47717, @giorio94)
* gha: stop scheduled runs emitting spurious artifact warnings (Backport PR cilium/cilium#47289, Upstream PR cilium/cilium#46989, @aanm)
* images/scripts: Validate Envoy image vars against sed injection (Backport PR cilium/cilium#47803, Upstream PR cilium/cilium#47205, @MasloMaslane)
* Increase the timeout for the kvstore readiness wait in kind-based CI to avoid flakes on slow etcd image pulls. (Backport PR cilium/cilium#47289, Upstream PR cilium/cilium#46882, @aanm)
* pkg/rate: fix TestMaxParallelRequests flake under CI load (Backport PR cilium/cilium#47289, Upstream PR cilium/cilium#46856, @aanm)
* Revert "gha: don't install LLVM and Clang in integration tests workflow" (Backport PR cilium/cilium#47887, Upstream PR cilium/cilium#47780, @giorio94)
* test/cyclonus: capture logs of every job pod so a runner crash is diagnosable (Backport PR cilium/cilium#47289, Upstream PR cilium/cilium#46980, @aanm)
* test/cyclonus: log the JUnit XML instead of copying it from a dead pod (Backport PR cilium/cilium#47803, Upstream PR cilium/cilium#47725, @aanm)

**Misc Changes:**
* allocator: fix flake in TestWatchRemoteKVStore (Backport PR cilium/cilium#47687, Upstream PR cilium/cilium#47455, @giorio94)
* bpf: Condition ICMP SNAT on BPF masquerading and inter-cluster SNAT (Backport PR cilium/cilium#47557, Upstream PR cilium/cilium#47021, @pchaigno)
* bugtool: collect snmp6 and dev_snmp6 for IPv6 host packet drops (Backport PR cilium/cilium#47411, Upstream PR cilium/cilium#47353, @aanm)
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#47329, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#47494, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#47522, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#47871, @cilium-renovate[bot])
* chore(deps): update base-images (v1.18) (cilium/cilium#47493, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.19.6 (v1.18) (cilium/cilium#47341, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.19.7 (v1.18) (cilium/cilium#47578, @cilium-renovate[bot])
* chore(deps): update dependency go to v1.25.13 (v1.18) (cilium/cilium#48004, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf-go to v1.36.12 (v1.18) (cilium/cilium#47994, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang docker tag to v1.25.13 (v1.18) (cilium/cilium#47951, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.12 docker digest to 2c7ebca (v1.18) (cilium/cilium#47869, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.12 docker digest to d2e20dc (v1.18) (cilium/cilium#47325, @cilium-renovate[bot])
* chore(deps): update docker.io/library/ubuntu:24.04 docker digest to 561618e (v1.18) (cilium/cilium#47870, @cilium-renovate[bot])
* chore(deps): update gcr.io/distroless/static:nonroot docker digest to f7f8f72 (v1.18) (cilium/cilium#47326, @cilium-renovate[bot])
* chore(deps): update google/cloud-sdk docker tag to v577 (v1.18) (cilium/cilium#47512, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/certgen docker tag to v0.4.8 (v1.18) (cilium/cilium#47327, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.9-1784803288-cf56df1cccc09d7afde2847ff9e6e853dde50b77 (v1.18) (cilium/cilium#47491, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.9-1786864149-07e8503ff34b9190d7bbe4e57d4e185c4ef8b1de (v1.18) (cilium/cilium#48001, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#47328, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#47492, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#47872, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#47995, @cilium-renovate[bot])
* docs/clustermesh: remove obsolete reference to service cache (Backport PR cilium/cilium#47411, Upstream PR cilium/cilium#47195, @giorio94)
* docs: Fix DOCS_BUILDER_REPO env variable for BSD sed compatibility (Backport PR cilium/cilium#47830, Upstream PR cilium/cilium#46033, @arybolovlev)
* docs: Update docs-builder for Makefile usage (Backport PR cilium/cilium#47830, Upstream PR cilium/cilium#45774, @joestringer)
* fix(deps): update module google.golang.org/grpc to v1.82.1 [security] (v1.18) (cilium/cilium#47434, @cilium-renovate[bot])
* Fixed the conformance-ginkgo feature status report not being uploaded as an artifact. (Backport PR cilium/cilium#47540, Upstream PR cilium/cilium#47174, @aanm)
* gha: capture per-pod diagnostics for sig-network conntrack UDP NodePort failures (Backport PR cilium/cilium#47289, Upstream PR cilium/cilium#47140, @aanm)
* gha: let auto-approve match on re-runs (Backport PR cilium/cilium#47289, Upstream PR cilium/cilium#46832, @aanm)
* policy/k8s: record processing start time for k8s NetworkPolicy updates (Backport PR cilium/cilium#47289, Upstream PR cilium/cilium#46979, @aanm)
* Update all github action dependencies (v1.18) (cilium/cilium#47670, @cilium-renovate[bot])
* Update docker.io/library/busybox:1.37.0 Docker digest to 9db7b59 (v1.18) (cilium/cilium#47664, @cilium-renovate[bot])
* Update documentation dependencies (Backport PR cilium/cilium#47830, Upstream PR cilium/cilium#47750, @joestringer)
* Update quay.io/cilium/certgen Docker tag to v0.4.9 (v1.18) (cilium/cilium#47665, @cilium-renovate[bot])

**Other Changes:**
* [v1.18] Add DNS request checking prior to qname extraction (cilium/cilium#47385, @ferozsalam)
* install: Update image digests for v1.18.12 (cilium/cilium#47251, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.18.13@sha256:6e6e6a82a6a2a6d0bfe6dd7e36cb0222fa48135ad139ddc979b5c3c841e2db1a`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.18.13@sha256:15891681a6c7e743a6180a132bd70eb66ba9d9097e66cd6630fd22b73bcceb9d`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.18.13@sha256:6420c3a70b3adaad0d18698d1653b4505fc40263507e8a6bf13727e4d1477252`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.18.13@sha256:039c374b59cf4be4ecee1b3e1ec11316180a82c1eb33a55b4ee00a0da4999ad3`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.18.13@sha256:b5604ded38c0b0d758d3b11013f4ed0f21a59b3a1535e6232b2b6a98904a93fa`

### operator-aws

`quay.io/cilium/operator-aws:v1.18.13@sha256:bc24b51a0d3af69fead1693e853a0466118b236cc0a098f3c1fa6c6c4b307fc8`

### operator-azure

`quay.io/cilium/operator-azure:v1.18.13@sha256:c0e9fddeb9080bc3e403b4ed25d216961807fecfe9f643afb514a09268966350`

### operator-generic

`quay.io/cilium/operator-generic:v1.18.13@sha256:2041417ad2ebd8b3e7d80b63dd81810d405fa29f12926ddbe78321a74781993b`

### operator

`quay.io/cilium/operator:v1.18.13@sha256:fc72348ee2d5818a432901795fd77dbf35c1a8887db72d73546b9ee404551725`

