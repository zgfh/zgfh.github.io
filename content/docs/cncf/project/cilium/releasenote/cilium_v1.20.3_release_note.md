来源: https://github.com/cilium/cilium/releases/tag/v1.20.3

# cilium/cilium v1.20.3 Release Notes

Published at: 2026-10-15T15:26:34Z

Summary of Changes
------------------

**Minor Changes:**
* alibabacloud: support IMDSv2 (token-based) instance metadata access (Backport PR cilium/cilium#49336, Upstream PR cilium/cilium#49182, @4n4nd)
* Fix conntrack garbage collection deleting CT entries that the datapath reopened between the GC batch read and the delete, which could cascade into NAT mapping deletion and SNAT source-port reallocation for live connections. (Backport PR cilium/cilium#49119, Upstream PR cilium/cilium#46750, @gyutaeb)
* operator: prevent CNPs with nodeSelector from silently enforcing nothing (Backport PR cilium/cilium#49173, Upstream PR cilium/cilium#47882, @weizhoublue)

**Bugfixes:**
* azure: Fixed an issue where an interface with an empty MAC field would be reported back the the cilium agent causing it to crash on startup when trying to configure the routes. (Backport PR cilium/cilium#49336, Upstream PR cilium/cilium#48648, @41ks)
* bpf: icmp: use 576 byte of inner packet to avoid partial csum floor (Backport PR cilium/cilium#48907, Upstream PR cilium/cilium#48578, @tommyp1ckles)
* cilium-dbg: Print port numbers correctly for map cilium_lb*_reverse_sk (Backport PR cilium/cilium#49336, Upstream PR cilium/cilium#47134, @jayl1e)
* daemon: fix a bug where L7 DNS policies could remain loaded in the datapath during agent shutdown, causing pods under a wildcard toFQDNs policy to lose DNS resolution for the duration of the restart. (Backport PR cilium/cilium#48907, Upstream PR cilium/cilium#48747, @41ks)
* endpoint/restore: skip cleanup for reserved internal endpoints (Backport PR cilium/cilium#48999, Upstream PR cilium/cilium#48272, @fristonio)
* envoy: handle listener additional address changes (Backport PR cilium/cilium#48917, Upstream PR cilium/cilium#48712, @nezdolik)
* envoy: handle listener address changes in ADS (Backport PR cilium/cilium#48917, Upstream PR cilium/cilium#48798, @nezdolik)
* envoy: track coalesced ADS snapshot updates (Backport PR cilium/cilium#48917, Upstream PR cilium/cilium#48631, @nezdolik)
* Fix Gateway API ExternalAuth dropping request bodies when allowedResponseHeaders is unset (Backport PR cilium/cilium#49189, Upstream PR cilium/cilium#48770, @kirgene)
* Fix incorrect deletion of new endpoint during GC iteration when reusing ID from a previously GC'd endpoint (Backport PR cilium/cilium#49189, Upstream PR cilium/cilium#48905, @fristonio)
* Fix ip6tables chain rename errors being silently ignored during iptables rule reconciliation. (Backport PR cilium/cilium#49336, Upstream PR cilium/cilium#49024, @maxskokov)
* Fix panic in agent when CiliumLocalRedirectPolicy `redirectBackend.toPorts` is declared as an empty array. The agent will now reject such a policy. (Backport PR cilium/cilium#48907, Upstream PR cilium/cilium#48491, @ajmmm)
* Fix PMTU/ICMP replies for IPIP/Geneve DSR for GRO skbs (Backport PR cilium/cilium#49189, Upstream PR cilium/cilium#48489, @borkmann)
* Fix rare data race in selector cache that could lead to agent panic (Backport PR cilium/cilium#49189, Upstream PR cilium/cilium#47733, @odinuge)
* Fix restoration of terminating backends. If a terminating backend become active again during restart the backend was incorrectly kept as quarantined. (Backport PR cilium/cilium#48797, Upstream PR cilium/cilium#48763, @joamaki)
* Fixes a bug where Hubble flows may list the incorrect policy that allowed or denied a flow (Backport PR cilium/cilium#49189, Upstream PR cilium/cilium#49086, @tsotne95)
* Fixes a bug where the helm value `hubble.tls.auto.privateKey` settings are no longer ignored in Hubble cert-manager certificates (Backport PR cilium/cilium#49189, Upstream PR cilium/cilium#49114, @byxorna)
* Fixes an issue where CiliumCIDRGroups with zero-length cidrs (i.e. 0.0.0.0/0) inadvertently selected no traffic. (Backport PR cilium/cilium#49336, Upstream PR cilium/cilium#48366, @squeed)
* gateway-api: filter CEC controls from infrastructure metadata (Backport PR cilium/cilium#48984, Upstream PR cilium/cilium#47732, @nezdolik)
* gateway-api: make HTTP route ordering deterministic (Backport PR cilium/cilium#49336, Upstream PR cilium/cilium#48951, @abduu11aahh)
* gateway-api: Support system CA certificates in BackendTLSPolicy. (Backport PR cilium/cilium#49336, Upstream PR cilium/cilium#48895, @shreyasrajiv327)
* infraendpoints: Release the health IPv4 when the IPv6 allocation fails (Backport PR cilium/cilium#48907, Upstream PR cilium/cilium#48816, @HadrienPatte)
* k8s/resource: fix leaked event finalizer on unobserved delete (Backport PR cilium/cilium#48907, Upstream PR cilium/cilium#48785, @tklauser)
* L7 conformance CI fixes (Backport PR cilium/cilium#48999, Upstream PR cilium/cilium#47517, @fristonio)
* operator: Do not emit warning when deleting already deleted unmanaged pod (Backport PR cilium/cilium#48907, Upstream PR cilium/cilium#48765, @gandro)
* operator: fix `metrics list` default address to work on IPv6-only clusters with dual stack nodes by trying both IPv4 and IPv6 loopback addresses (Backport PR cilium/cilium#48907, Upstream PR cilium/cilium#48780, @41ks)
* Set ipv6 routing rules when dual stack is enabled (Backport PR cilium/cilium#49336, Upstream PR cilium/cilium#49188, @fcrespofastly)
* Sockets are no longer destroyed when a Service backend is terminated unless they are still connected to that backend. Unconnected UDP sockets, and sockets that have since disconnected or moved to another backend, used to have their local port silently changed. (Backport PR cilium/cilium#49189, Upstream PR cilium/cilium#48725, @maxskokov)

**CI Changes:**
* [ci] fix escaping in conformance ginkgo (Backport PR cilium/cilium#49189, Upstream PR cilium/cilium#48991, @nebril)
* [v1.20] .github: Remove the EKS cluster pool workflows (cilium/cilium#49084, @aanm)
* ci: Add support for OIDC (Backport PR cilium/cilium#49317, Upstream PR cilium/cilium#49007, @aanm)
* ci: cleanup disk space in documentation workflow (Backport PR cilium/cilium#48907, Upstream PR cilium/cilium#48427, @tklauser)
* ci: Drop the empty floating tag line from CI image digests (Backport PR cilium/cilium#49189, Upstream PR cilium/cilium#49070, @aanm)
* ci: fix CNI setup and readiness checks in the kubespray job (Backport PR cilium/cilium#49336, Upstream PR cilium/cilium#48927, @aanm)
* ci: Give Envoy Embedded conformance a bigger runner (Backport PR cilium/cilium#49189, Upstream PR cilium/cilium#49018, @aanm)
* ci: keep UDPRouteWeightedRouting skipped in the profile job (Backport PR cilium/cilium#49189, Upstream PR cilium/cilium#49005, @aanm)
* ci: login to docker registry for downgrade image wait (Backport PR cilium/cilium#49189, Upstream PR cilium/cilium#48983, @nebril)
* ci: Name runner variables after their Ubuntu release and let Renovate bump them (Backport PR cilium/cilium#49317, Upstream PR cilium/cilium#49065, @aanm)
* ci: Skip redundant setup when base images already exist (Backport PR cilium/cilium#49317, Upstream PR cilium/cilium#47209, @HadrienPatte)
* ci: Stop passing secrets to the base images workflow (Backport PR cilium/cilium#49317, Upstream PR cilium/cilium#49082, @aanm)
* gha/conformance-multi-pool: use the local fake external targets (Backport PR cilium/cilium#48986, Upstream PR cilium/cilium#48558, @aanm)
* gha/e2e-upgrade: gate the after-agent-restart conn-disrupt check (Backport PR cilium/cilium#48437, Upstream PR cilium/cilium#47440, @aanm)
* gha/setup-aks-cluster: Retry a create that never starts (Backport PR cilium/cilium#49317, Upstream PR cilium/cilium#48924, @aanm)
* gha: Derive the LVH package cache key once per run (Backport PR cilium/cilium#48986, Upstream PR cilium/cilium#48656, @aanm)
* gha: don't fail PR tests on reporting errors (Backport PR cilium/cilium#49317, Upstream PR cilium/cilium#48740, @aanm)
* gha: Grant id-token to the post-release call of release.yaml (Backport PR cilium/cilium#49317, Upstream PR cilium/cilium#49323, @aanm)
* gha: make external fake targets image configurable (Backport PR cilium/cilium#49189, Upstream PR cilium/cilium#48941, @giorio94)
* gha: Retry stalled kind image pulls before the install wait expires (Backport PR cilium/cilium#49336, Upstream PR cilium/cilium#48989, @aanm)
* gha: Skip the duplicate CI image build on push to main (Backport PR cilium/cilium#48986, Upstream PR cilium/cilium#48736, @aanm)
* gha: survive a GKE zone running out of capacity (Backport PR cilium/cilium#48986, Upstream PR cilium/cilium#48184, @aanm)
* gha: Tolerate cosign and SBOM failures on pull requests (Backport PR cilium/cilium#48986, Upstream PR cilium/cilium#48737, @aanm)
* ginkgo: remove `Test NodePort with L7 policy` tests (Backport PR cilium/cilium#49067, Upstream PR cilium/cilium#46499, @smagnani96)
* loadbalancer/tests: Fix the graceful termination test restart (Backport PR cilium/cilium#49317, Upstream PR cilium/cilium#48939, @aanm)
* Migrate Conformance Cluster Mesh workflow to use fake external targets (Backport PR cilium/cilium#48654, Upstream PR cilium/cilium#48250, @giorio94)
* nodeinit: wait for the kubelet wrapper before writing the bootstrap file (Backport PR cilium/cilium#49189, Upstream PR cilium/cilium#48739, @aanm)

**Misc Changes:**
* bpf: lxc: switch cilium_nodeport_nat_buffer to auxvar (Backport PR cilium/cilium#48741, Upstream PR cilium/cilium#48543, @julianwiedmann)
* build: handle git worktrees in documentation make targets (Backport PR cilium/cilium#49189, Upstream PR cilium/cilium#48966, @utaal)
* chore(deps): update all github action dependencies (v1.20) (cilium/cilium#48881, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.20) (cilium/cilium#49039, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.20) (cilium/cilium#49152, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.20) (cilium/cilium#49277, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.20) (cilium/cilium#48882, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.20) (cilium/cilium#49153, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.20) (cilium/cilium#49275, @cilium-renovate[bot])
* chore(deps): update base-images to v1.26.9 (v1.20) (cilium/cilium#49262, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.20.1 (v1.20) (cilium/cilium#48978, @cilium-renovate[bot])
* chore(deps): update dependency cilium/little-vm-helper to v0.0.31 (v1.20) (cilium/cilium#48788, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf to v36.2 (v1.20) (cilium/cilium#49038, @cilium-renovate[bot])
* chore(deps): update docker.io/library/busybox:1.38.0 docker digest to fd7dc98 (v1.20) (cilium/cilium#49035, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.26.8 docker digest to 0f063af (v1.20) (cilium/cilium#49149, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.26.8 docker digest to 6c2a553 (v1.20) (cilium/cilium#48879, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.26.9 docker digest to d772206 (v1.20) (cilium/cilium#49298, @cilium-renovate[bot])
* chore(deps): update gcr.io/etcd-development/etcd docker tag to v3.7.2 (v1.20) (cilium/cilium#49036, @cilium-renovate[bot])
* chore(deps): update helm/kind-action action to v1.15.1 (v1.20) (cilium/cilium#49289, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.38.4-1790671085-c3a2a1ff726f00f5b5c0886cab3ad345f97f35b9 (v1.20) (cilium/cilium#49111, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.38.5-1790882336-b64c7306085409b95fb5626db2d2bb7a200b9432 (v1.20) (cilium/cilium#49123, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.38.5-1791291190-5ec36181d464cd75b35b45395a722226cbdd2888 (v1.20) (cilium/cilium#49194, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.38.6-1791350265-ae0327a34850b7d1849e8332dbefd4d5bebabe10 (v1.20) (cilium/cilium#49216, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.38.6-1791537840-00e749f11f69334c625e53fc1ce2fc6c7f34a51f (v1.20) (cilium/cilium#49276, @cilium-renovate[bot])
* chore(deps): update security updates to v1.45.0 [security] (v1.20) (cilium/cilium#48814, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.20) (patch) (cilium/cilium#48880, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.20) (patch) (cilium/cilium#49037, @cilium-renovate[bot])
* ciliumendpointslice: Report no CID when the CEP has none (Backport PR cilium/cilium#49189, Upstream PR cilium/cilium#48933, @aanm)
* connectivity-check: move echo-b to the lower NodePort band (Backport PR cilium/cilium#49189, Upstream PR cilium/cilium#48926, @aanm)
* docs: note on eBPF ClusterIP translation vs Docker raw-table protection (Backport PR cilium/cilium#49189, Upstream PR cilium/cilium#47782, @Verbano-Tech)
* envoy: add standalone NPDS unsubscribe regression test (Backport PR cilium/cilium#48917, Upstream PR cilium/cilium#47818, @nezdolik)
* fix(deps): update k8s.io patch updates stable to v0.36.5 (v1.20) (cilium/cilium#49151, @cilium-renovate[bot])
* fix(deps): update module golang.org/x/net to v0.60.0 [security] (v1.20) (cilium/cilium#49253, @cilium-renovate[bot])
* fix(deps): update security updates [security] (v1.20) (cilium/cilium#48808, @cilium-renovate[bot])
* gateway-api: centralize Gateway validation (Backport PR cilium/cilium#48907, Upstream PR cilium/cilium#48602, @arybolovlev)
* loadbalancer/writer: add support for SetFrontendSourceRangesFunc (Backport PR cilium/cilium#49336, Upstream PR cilium/cilium#49068, @0xch4z)

**Other Changes:**
* [v1.20] deps: update gateway api to v1.6.3 (cilium/cilium#49305, @mhofstetter)
* [v1.20] node_neighbor_discovery: fix ID in delete query (cilium/cilium#48912, @nobleess)
* [v1.20] routing: fix dual-stack ENI router startup with native routing CIDRs (cilium/cilium#48709, @monta-riahi)
* install: Update image digests for v1.20.2 (cilium/cilium#48751, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.20.3@sha256:95cfa5c2427cc6b452c00908778d0566311f572589284af949d06a013db1a849`
`quay.io/cilium/cilium:stable@sha256:95cfa5c2427cc6b452c00908778d0566311f572589284af949d06a013db1a849`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.20.3@sha256:5c8dca0d0b77bb593df157be39f6c9c868dc08922bbd0540ac0a56815341b227`
`quay.io/cilium/clustermesh-apiserver:stable@sha256:5c8dca0d0b77bb593df157be39f6c9c868dc08922bbd0540ac0a56815341b227`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.20.3@sha256:c6f819d9c5e0b35ccac63b9f2f1ae213fd9be50588e15d5a444d5d305ad317b5`
`quay.io/cilium/hubble-relay:stable@sha256:c6f819d9c5e0b35ccac63b9f2f1ae213fd9be50588e15d5a444d5d305ad317b5`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.20.3@sha256:615f8c2995e437320571d6f61e623d6848ed3ea357cdaa886ac95bbff29a0b52`
`quay.io/cilium/operator-alibabacloud:stable@sha256:615f8c2995e437320571d6f61e623d6848ed3ea357cdaa886ac95bbff29a0b52`

### operator-aws

`quay.io/cilium/operator-aws:v1.20.3@sha256:49bdd1d54bdf3da2740848c4662854d0d41c0df25cffe8575d71723db08cc0d1`
`quay.io/cilium/operator-aws:stable@sha256:49bdd1d54bdf3da2740848c4662854d0d41c0df25cffe8575d71723db08cc0d1`

### operator-azure

`quay.io/cilium/operator-azure:v1.20.3@sha256:7132b3ff7e33a076ea9fadaa6e4f2b364937ed7b118b92928bdb4706921a2ffa`
`quay.io/cilium/operator-azure:stable@sha256:7132b3ff7e33a076ea9fadaa6e4f2b364937ed7b118b92928bdb4706921a2ffa`

### operator-generic

`quay.io/cilium/operator-generic:v1.20.3@sha256:efdd8d89d6d8f63d21a065fa2f9e17614a2b3ac9371b221af9355f63829e2dbc`
`quay.io/cilium/operator-generic:stable@sha256:efdd8d89d6d8f63d21a065fa2f9e17614a2b3ac9371b221af9355f63829e2dbc`

### operator

`quay.io/cilium/operator:v1.20.3@sha256:c40996c8a413f57db75715e683abc550e7849904aa20b8730822ba532f9b783c`
`quay.io/cilium/operator:stable@sha256:c40996c8a413f57db75715e683abc550e7849904aa20b8730822ba532f9b783c`

