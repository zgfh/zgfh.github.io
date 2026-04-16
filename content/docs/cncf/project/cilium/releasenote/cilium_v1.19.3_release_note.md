来源: https://github.com/cilium/cilium/releases/tag/v1.19.3

# cilium/cilium v1.19.3 Release Notes

Published at: 2026-04-15T21:06:02Z

Summary of Changes
------------------

**Minor Changes:**
* Fix performance bug in L7 policy proxy redirect handling (Backport PR cilium/cilium#44828, Upstream PR cilium/cilium#44613, @fristonio)
* Fixes issue where the Cilium agent fails to initialise when using KVStore identity mode with etcd behind a K8s Service (Backport PR cilium/cilium#44828, Upstream PR cilium/cilium#44653, @41ks)
* helm,docs: add configDriftDetection Helm values and documentation (Backport PR cilium/cilium#44974, Upstream PR cilium/cilium#44703, @PhilipSchmid)

**Bugfixes:**
* [v1.19] Fix incorrect policy service selector handling (cilium/cilium#44888, @fristonio)
* bgp: Fix potential race in service advertisements upon error retry (Backport PR cilium/cilium#45211, Upstream PR cilium/cilium#45049, @rastislavs)
* clustermesh: fix a bug in the MCS-API CRD installl that could attempt a CRD downgrade when the version label is higher (Backport PR cilium/cilium#44828, Upstream PR cilium/cilium#44738, @MrFreezeex)
* ctmap: Change order of active maps (Backport PR cilium/cilium#44828, Upstream PR cilium/cilium#44729, @brb)
* Ensure completion.WaitGroup always has a timeout (Backport PR cilium/cilium#45217, Upstream PR cilium/cilium#44731, @jrajahalme)
* envoy: Fix xds server npds listeners accounting (Backport PR cilium/cilium#45217, Upstream PR cilium/cilium#44830, @fristonio)
* Fix a slow memory leak triggered by incremental policy updates (Backport PR cilium/cilium#44994, Upstream PR cilium/cilium#44328, @odinuge)
* Fix endpoints for static pods stuck in init identity (Backport PR cilium/cilium#45211, Upstream PR cilium/cilium#45016, @aaroniscode)
* Fix in-cluster NodePort connectivity failure in DSR mode when SocketLB is disabled. When a pod accesses a NodePort service via a remote node's IP (instead of the ClusterIP) and the selected backend resides on the same node as the client, the connection fails due to missing reverse NAT on the reply path. (Backport PR cilium/cilium#44968, Upstream PR cilium/cilium#41963, @gyutaeb)
* Fix memory leak triggered by policies being created and deleted (Backport PR cilium/cilium#44828, Upstream PR cilium/cilium#44724, @odinuge)
* Fix panic in Hubble Relay when new peer address is unresolvable (Backport PR cilium/cilium#45211, Upstream PR cilium/cilium#45021, @pesarkhobeee)
* fix(datapath): ignore link-local IPv6 addresses for NodePort binding (Backport PR cilium/cilium#44974, Upstream PR cilium/cilium#44778, @Bigdelle)
* Fixed a bug in dual-stack cluster-pool IPAM where an operator restart with a pre-existing duplicate IPv6 PodCIDR could cause the affected node's IPv4 PodCIDR to be incorrectly freed and reassigned to another node. (Backport PR cilium/cilium#44866, Upstream PR cilium/cilium#44832, @christarazi)
* Fixed an issue where policy update ack is never completed after endpoint deletion. (Backport PR cilium/cilium#44818, Upstream PR cilium/cilium#44754, @jrajahalme)
* Fixed ipcache identity update hang when last proxy listener is removed. (Backport PR cilium/cilium#45217, Upstream PR cilium/cilium#44597, @jrajahalme)
* Fixes GRPCRoute being silently excluded from Envoy config when a Gateway listener explicitly sets allowedRoutes.kinds. (Backport PR cilium/cilium#44974, Upstream PR cilium/cilium#44826, @eufriction)
* Fixes increased CPU usage in `hubble observe` caused by log coloring feature, even when coloring was disabled (Backport PR cilium/cilium#44828, Upstream PR cilium/cilium#44119, @tporeba)
* lb: fix panic in orphan backend cleanup when addr is zero-value (Backport PR cilium/cilium#44994, Upstream PR cilium/cilium#44853, @vipul-21)
* lb: Skip nil slots during BPF map restore to prevent panic (Backport PR cilium/cilium#44974, Upstream PR cilium/cilium#44895, @vipul-21)
* operator/identitygc: fix nil pointer dereference on shutdown (Backport PR cilium/cilium#45211, Upstream PR cilium/cilium#45091, @tsotne95)
* wal: Do not truncate in NewWriter (Backport PR cilium/cilium#44974, Upstream PR cilium/cilium#44886, @joamaki)
* WireGuard now respects the `underlay-protocol=ipv6` setting when selecting peer endpoints in dual-stack clusters with IPv6 underlay, fixing connectivity issues where IPv4 was incorrectly used despite being unreachable across nodes. (Backport PR cilium/cilium#45247, Upstream PR cilium/cilium#44629, @tibrezus)

**CI Changes:**
* .github/workflows: disable cache for go steps (Backport PR cilium/cilium#45211, Upstream PR cilium/cilium#45073, @aanm)
* .github/workflows: replace external set-commit-status action (Backport PR cilium/cilium#45211, Upstream PR cilium/cilium#45078, @aanm)
* .github: cleanup disk before ci-verifier tests (Backport PR cilium/cilium#44994, Upstream PR cilium/cilium#44971, @aanm)
* allocator: handle unlikely goroutine leak (Backport PR cilium/cilium#44828, Upstream PR cilium/cilium#44589, @asauber)
* ci: add fail-fast false to ci image builds (Backport PR cilium/cilium#45211, Upstream PR cilium/cilium#45079, @Artyop)
* ci: fix is-workflow-call check to handle empty input (Backport PR cilium/cilium#45052, Upstream PR cilium/cilium#45020, @aanm)
* ci: fix PR branch pull step on stable pushes (Backport PR cilium/cilium#45052, Upstream PR cilium/cilium#45019, @Artyop)
* ci: fix pr number check for base branch retrieval (Backport PR cilium/cilium#45052, Upstream PR cilium/cilium#45024, @Artyop)
* ci: set TMPDIR=/host/tmp in datapath verifier tests (Backport PR cilium/cilium#45211, Upstream PR cilium/cilium#45047, @aanm)
* ci: Switch catchpoint/workflow-telemetry-action to our fork (cilium/cilium#45219, @YutaroHayakawa)
* Fix some test-e2e-upgrade issues (Backport PR cilium/cilium#45211, Upstream PR cilium/cilium#45075, @aanm)
* fix: escape $ character in regex to prevent injection (Backport PR cilium/cilium#44828, Upstream PR cilium/cilium#44638, @peoyekunle)
* fix: harden k8s apiserver endpoint access (Backport PR cilium/cilium#44994, Upstream PR cilium/cilium#44863, @sekhar-isovalent)
* sockets: Ensure bpffs is mounted in TestPrivilegedSocketDestroyers (Backport PR cilium/cilium#45052, Upstream PR cilium/cilium#44979, @christarazi)

**Misc Changes:**
* .github/workflows: do not use deployments for environments (Backport PR cilium/cilium#45211, Upstream PR cilium/cilium#44908, @aanm)
* [v1.19] vendor: update google.golang.org/grpc to v1.79.3 (cilium/cilium#45345, @aanm)
* bgp: Disable MPTCP in the MD5 probing in the test (Backport PR cilium/cilium#45211, Upstream PR cilium/cilium#45102, @YutaroHayakawa)
* bgp: Introduce --with-attrs option to bgp/routes (Backport PR cilium/cilium#45211, Upstream PR cilium/cilium#45015, @YutaroHayakawa)
* bpf: lxc: limit NAT buffer lookup to per-packet LB (Backport PR cilium/cilium#44968, Upstream PR cilium/cilium#44387, @julianwiedmann)
* bpf: Reduce scope of large variables (Backport PR cilium/cilium#45211, Upstream PR cilium/cilium#45067, @pchaigno)
* bpf: Use global function for `snat_v6_needs_masquerade` (Backport PR cilium/cilium#44828, Upstream PR cilium/cilium#44544, @pchaigno)
* bpf_lxc: improve per-packet LB for NodePort services (Backport PR cilium/cilium#44968, Upstream PR cilium/cilium#44710, @saiaunghlyanhtet)
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#44934, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#45038, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#45169, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#45304, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.19) (cilium/cilium#44674, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.19) (cilium/cilium#45039, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.19) (cilium/cilium#45305, @cilium-renovate[bot])
* chore(deps): update base-images (v1.19) (cilium/cilium#44786, @cilium-renovate[bot])
* chore(deps): update base-images to v1.25.9 (v1.19) (cilium/cilium#45273, @cilium-renovate[bot])
* chore(deps): update dependency bufbuild/buf to v1.67.0 (v1.19) (cilium/cilium#45167, @cilium-renovate[bot])
* chore(deps): update dependency cilium/little-vm-helper to v0.0.29 (v1.19) (cilium/cilium#45280, @cilium-renovate[bot])
* chore(deps): update docker.io/library/busybox:1.37.0 docker digest to 1487d0a (v1.19) (cilium/cilium#45035, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.9 docker digest to a95d3d1 (v1.19) (cilium/cilium#45315, @cilium-renovate[bot])
* chore(deps): update gcr.io/etcd-development/etcd docker tag to v3.6.9 (v1.19) (cilium/cilium#44929, @cilium-renovate[bot])
* chore(deps): update module github.com/go-jose/go-jose/v4 to v4.1.4 [security] (v1.19) (cilium/cilium#45149, @cilium-renovate[bot])
* chore(deps): update module sigs.k8s.io/kube-api-linter to v0.0.0-20260320123815-c9b9b51b278a (v1.19) (cilium/cilium#44930, @cilium-renovate[bot])
* chore(deps): update module sigs.k8s.io/kube-api-linter to v0.0.0-20260408163332-73b2175ca510 (v1.19) (cilium/cilium#45302, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.35.9-1773729248-8de84653be3b2b3011e1cee5b3e702f6556fb3df (v1.19) (cilium/cilium#44931, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.35.9-1774363526-9d47d40f80df306891816788b71415813ce49ef3 (v1.19) (cilium/cilium#45036, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.5-1775137579-2b3493aca96923190423ccec7e4dbc5f074ccad4 (v1.19) (cilium/cilium#45168, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.6-1775912317-d56e4f5fec87556b7aaf3b8edeb100025ec87183 (v1.19) (cilium/cilium#45303, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.6-1776000132-2437d2edeaf4d9b56ef279bd0d71127440c067aa (v1.19) (cilium/cilium#45320, @cilium-renovate[bot])
* chore(deps): update quay.io/goswagger/swagger docker tag to v0.33.2 (v1.19) (cilium/cilium#44932, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.19) (patch) (cilium/cilium#45037, @cilium-renovate[bot])
* docs: document reverse_sk map exhaustion impact on socket termination (Backport PR cilium/cilium#44860, Upstream PR cilium/cilium#44835, @ysksuzuki)
* docs: Update sphinx theme to v3.1.0 (Backport PR cilium/cilium#45335, Upstream PR cilium/cilium#45289, @joestringer)
* Fix EKS workflows misc errors (Backport PR cilium/cilium#45052, Upstream PR cilium/cilium#45023, @aanm)
* fix(deps): update k8s.io patch updates stable to v0.35.3 (v1.19) (patch) (cilium/cilium#44933, @cilium-renovate[bot])
* fix(deps): update k8s.io/utils digest to 28399d8 (v1.19) (cilium/cilium#44928, @cilium-renovate[bot])
* fix(deps): update sigs.k8s.io/mcs-api/controllers digest to 4b9911b (v1.19) (cilium/cilium#45177, @cilium-renovate[bot])
* fix: using a local action needs checkout in eks-cluster-delete (Backport PR cilium/cilium#44994, Upstream PR cilium/cilium#44890, @sekhar-isovalent)
* helm: Use bash instead of sh in init containers for Ubuntu 24.04 compatibility (Backport PR cilium/cilium#44828, Upstream PR cilium/cilium#44615, @shivdesh)
* Probe support for BIG TCP for tunnels instead of relying on the config option. (Backport PR cilium/cilium#45211, Upstream PR cilium/cilium#43959, @gentoo-root)

**Other Changes:**
* [v1.19] deps: bump cni plugins to v1.9.1 (cilium/cilium#45240, @ferozsalam)
* chore(deps): update gcr.io/etcd-development/etcd docker tag to v3.6.10 (v1.19) (cilium/cilium#45166, @cilium-renovate[bot])
* install: Update image digests for v1.19.2 (cilium/cilium#44957, @cilium-release-bot[bot])
* loadbalancer: Fix issue in resynchronization of state from api-server which may have left stale backends around until an updated EndpointSlice was received (cilium/cilium#45198, @joamaki)


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.19.3@sha256:2e61680593cddca8b6c055f6d4c849d87a26a1c91c7e3b8b56c7fb76ab7b7b10`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.19.3@sha256:a8136a7615d6c6041d3aa6f2674d17beaec238170d669507ccc05328a778e2b7`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.19.3@sha256:728c3903518b0b6904e7208143355b38b7e6de3b514694fb6098b25bb9457397`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.19.3@sha256:5ee21d57b6ef2aa6db67e603a735fdceb162454b352b7335b651456e308f681b`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.19.3@sha256:176321a65123373ff8c7823b25183102cbad98375e8d6c80b96d68b6e8491103`

### operator-aws

`quay.io/cilium/operator-aws:v1.19.3@sha256:a53dcbfb77282bf2ddd3abbe60f6d49762e7c1389a36cb35b71d504644a56640`

### operator-azure

`quay.io/cilium/operator-azure:v1.19.3@sha256:699c1571a3df1a98882ee13610d47cffb7b34ee7e8d276096db798a5f6c7e4cb`

### operator-generic

`quay.io/cilium/operator-generic:v1.19.3@sha256:205b09b0ed6accbf9fe688d312a9f0fcfc6a316fc081c23fbffb472af5dd62cd`

### operator

`quay.io/cilium/operator:v1.19.3@sha256:9075e6944996227574762ec0118caab0145d6e67f821409c4a6756b6b6caf6ea`

