来源: https://github.com/cilium/cilium/releases/tag/v1.20.1

# cilium/cilium v1.20.1 Release Notes

Published at: 2026-08-18T10:36:16Z

Summary of Changes
------------------

**Major Changes:**
* docs/clustermesh: overhaul Cluster Mesh documentation with a new introduction, improved load-balancing guidance, and Helm-first setup and certificate configuration instructions (Backport PR cilium/cilium#47615, Upstream PR cilium/cilium#47351, @MrFreezeex)

**Minor Changes:**
* envoy: demote stale ADS endpoint warning (Backport PR cilium/cilium#47805, Upstream PR cilium/cilium#47148, @nezdolik)
* Speed up recovery time for disrupted TCP connections that access a DSR-enabled Service. (Backport PR cilium/cilium#47881, Upstream PR cilium/cilium#47529, @julianwiedmann)

**Bugfixes:**
* azure: Stop issuing redundant CiliumNode status updates on every IPAM sync when the node's Azure interfaces are unchanged. (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#47449, @jaredledvina)
* bpf: dsr: don't look for TCP header on fragmented packets (Backport PR cilium/cilium#47881, Upstream PR cilium/cilium#47640, @julianwiedmann)
* bpf: hostfw: tolerate unknown CT protocols and rely on policies (Backport PR cilium/cilium#47621, Upstream PR cilium/cilium#47343, @smagnani96)
* clustermesh: fix MCS-API CRD install/upgrade when clustermesh-apiserver is started before the CRD version is actually installed (Backport PR cilium/cilium#47885, Upstream PR cilium/cilium#47824, @MrFreezeex)
* datapath: turn ARP off on the base devices before bringing them up (Backport PR cilium/cilium#47885, Upstream PR cilium/cilium#47838, @aanm)
* endpoint/watchdog: Avoid warning about endpoints being deleted (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#47625, @christarazi)
* endpoint: Fix silent CIDR policy bypass and traffic drops after agent restart (Backport PR cilium/cilium#47954, Upstream PR cilium/cilium#47880, @weizhoublue)
* envoy.httpUpstreamLingerTimeout accepts `0` as a chart value and templates into configmap. (Backport PR cilium/cilium#47885, Upstream PR cilium/cilium#47741, @jdw6359)
* envoy: restore http-idle-timeout as the route idle timeout source (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#47583, @aanm)
* Fix a BPF verifier reject on pre-v5.12 kernels, when IPv6 is enabled. (Backport PR cilium/cilium#47805, Upstream PR cilium/cilium#47765, @julianwiedmann)
* Fix a deadlock in the shutdown of Cilium operator related to CiliumEndpointSlices. (Backport PR cilium/cilium#47967, Upstream PR cilium/cilium#47802, @bimmlerd)
* Fix a NetworkPolicy update being ignored for up to two minutes when it arrived while an endpoint was waiting for its security identity to be resolved after a pod relabel. (Backport PR cilium/cilium#47805, Upstream PR cilium/cilium#47727, @aanm)
* Fix a spurious "unable to find ifindex for interface MAC" agent warning on EKS ENI IPAM by waiting for the ENI netlink interface before configuring ingress routes and rules. (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#47295, @aanm)
* Fix abnormal ip allocation caused by hostnetwork pod (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#47552, @haozhangami)
* Fix unintended RevDNAT for client-to-pod TCP connections, when an identical connection was previously established through a DSR Service. (Backport PR cilium/cilium#47881, Upstream PR cilium/cilium#47593, @julianwiedmann)
* fix: allow setting endpointPolicyUpdateTimeoutDuration in helm (Backport PR cilium/cilium#47885, Upstream PR cilium/cilium#47754, @weizhoublue)
* Fixed an issue where an HTTPRoute referencing a Gateway with mixed listener protocols (e.g. HTTP and TCP) was incorrectly rejected with `NotAllowedByListeners` when the TCP listener had an explicit `AllowedRoutes.Kinds` restriction. (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#46842, @pidreher)
* gateway-api/gamma: refresh CEC owner refs on route recreation (Backport PR cilium/cilium#47954, Upstream PR cilium/cilium#47840, @mhofstetter)
* gateway-api: mark unresolved backend service ports in route status (Backport PR cilium/cilium#47885, Upstream PR cilium/cilium#47766, @mhofstetter)
* gateway-api: preserve duplicate HTTPRoute rule precedence (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#46696, @thorn3r)
* gateway-api: prevent conflicted listeners from reaching ingestion (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#47457, @asauber)
* gateway-api: requeue L4/TLS routes on ServiceImport updates (Backport PR cilium/cilium#47805, Upstream PR cilium/cilium#47702, @mhofstetter)
* gateway-api: sync ListenerSet TLS secrets on ListenerSet events (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#47627, @mhofstetter)
* ipcache: fix CIDR reference counter to use canonical prefixes (Backport PR cilium/cilium#47885, Upstream PR cilium/cilium#47208, @iwanhae)
* l2announcer: re-evaluate services on frontend changes (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#47579, @mhofstetter)
* Log the correct route kind when the Gateway API operator fails to list TLSRoutes for a backend Service (Backport PR cilium/cilium#47954, Upstream PR cilium/cilium#47826, @mehrdadbn9)
* operator: Emit startup logs in the configured log format (Backport PR cilium/cilium#47954, Upstream PR cilium/cilium#47890, @HadrienPatte)
* Resolve a endpoint manager crash for restored endpoints with verbose policy logging enabled. (Backport PR cilium/cilium#47885, Upstream PR cilium/cilium#47844, @bimmlerd)
* standalone-dns-proxy: return an error when no endpoint is found (Backport PR cilium/cilium#47954, Upstream PR cilium/cilium#47791, @vipul-21)
* wireguard: Unsubscribe node handler on shutdown (Backport PR cilium/cilium#47805, Upstream PR cilium/cilium#47614, @HadrienPatte)

**CI Changes:**
* .github: add python3-scapy for BPF unit tests (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#47535, @msune)
* .github: run all quarantined EKS tests in a single tolerated step (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#47534, @aanm)
* .github: Run envoy image check against PR content (Backport PR cilium/cilium#47805, Upstream PR cilium/cilium#47792, @joestringer)
* .github: Simplify permissions for image linter workflow (Backport PR cilium/cilium#47805, Upstream PR cilium/cilium#47753, @joestringer)
* .github: suppress spurious encryption leak reports for node-to-pod DNS requests going through proxy (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#47470, @atykhyy)
* .github: test the default ENI behaviour on the EKS pull request leg (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#47569, @aanm)
* ariane: move kind-proxy-embedded and kubespray workflows to /test (Backport PR cilium/cilium#47805, Upstream PR cilium/cilium#47743, @giorio94)
* bpf/complexity-tests: Cover L7 LB (Backport PR cilium/cilium#47805, Upstream PR cilium/cilium#47060, @pchaigno)
* ci: build race images on push events so conformance-race works on stable branches (Backport PR cilium/cilium#47609, Upstream PR cilium/cilium#47608, @aanm)
* ci: build race images on push in the stable image builders (Backport PR cilium/cilium#47609, Upstream PR cilium/cilium#47616, @aanm)
* ci: draft renovate PRs until ciliumbot auto-approval (Backport PR cilium/cilium#47805, Upstream PR cilium/cilium#47364, @mhofstetter)
* ci: fix filtering out md files in bpf checks (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#47605, @nebril)
* ci: migrate set-commit-status to cilium/actions (Backport PR cilium/cilium#47805, Upstream PR cilium/cilium#47771, @bogdankrasko)
* ci: skip etcd log fetch when kvstore was never started (Backport PR cilium/cilium#47885, Upstream PR cilium/cilium#47801, @aanm)
* Fix missing `events_map_rate_limit` complexity coverage (Backport PR cilium/cilium#47805, Upstream PR cilium/cilium#47691, @pchaigno)
* gha/kubespray: run on schedule, rather than on every push (Backport PR cilium/cilium#47731, Upstream PR cilium/cilium#47719, @giorio94)
* gha/lvh-kind: respect Kind image version also when config is provided (Backport PR cilium/cilium#47731, Upstream PR cilium/cilium#47703, @giorio94)
* gha: don't install LLVM and Clang in integration tests workflow (Backport PR cilium/cilium#47731, Upstream PR cilium/cilium#47717, @giorio94)
* gha: fix checkout of trusted branch in smoke and k8s-kind workflows (Backport PR cilium/cilium#47731, Upstream PR cilium/cilium#47724, @giorio94)
* images/scripts: Validate Envoy image vars against sed injection (Backport PR cilium/cilium#47805, Upstream PR cilium/cilium#47205, @MasloMaslane)
* Revert "gha: don't install LLVM and Clang in integration tests workflow" (Backport PR cilium/cilium#47885, Upstream PR cilium/cilium#47780, @giorio94)
* test(bpf): parallelize eBPF test compilation (Backport PR cilium/cilium#47954, Upstream PR cilium/cilium#47426, @lconnery)
* test/cyclonus: log the JUnit XML instead of copying it from a dead pod (Backport PR cilium/cilium#47805, Upstream PR cilium/cilium#47725, @aanm)
* test: allowlist the leader election read timeout in ginkgo log check (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#47612, @aanm)

**Misc Changes:**
* Added documentation for running Cilium in CNI chaining mode on Oracle Kubernetes Engine (OKE) with VCN-Native Pod Networking. (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#46116, @amaanx86)
* allocator: fix flake in TestWatchRemoteKVStore (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#47455, @giorio94)
* bpf/nat: Move IPv6 nat entry to map (Backport PR cilium/cilium#47805, Upstream PR cilium/cilium#47762, @pchaigno)
* bpf: conntrack: Reduce stack usage of `ct_create{4,6}` (Backport PR cilium/cilium#47805, Upstream PR cilium/cilium#47582, @dylandreimerink)
* bpf: dsr: only require DSR-info on SYN packet (Backport PR cilium/cilium#47881, Upstream PR cilium/cilium#47592, @julianwiedmann)
* bpf: dsr: re-use TCP SYN flag from CT lookup in remote-backend path (Backport PR cilium/cilium#47881, Upstream PR cilium/cilium#47388, @julianwiedmann)
* bpf: lb: use dedicated new_backend bool (Backport PR cilium/cilium#47881, Upstream PR cilium/cilium#47841, @julianwiedmann)
* chore(deps): update all github action dependencies (v1.20) (cilium/cilium#47991, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.20) (cilium/cilium#48008, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.20) (cilium/cilium#47678, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.19.7 (v1.20) (cilium/cilium#47576, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf-go to v1.36.12 (v1.20) (cilium/cilium#47988, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.26.5 docker digest to 705e964 (v1.20) (cilium/cilium#47949, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.26.5 docker digest to 7caba52 (v1.20) (cilium/cilium#47864, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.37.5-1786449955-8e46c97d1cecc0ba6af6c0c7018a8f18ec93e70d (v1.20) (cilium/cilium#47899, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.37.5-1786810558-766ccfb37260a43e9d228837aa84ce3faf9f64e7 (v1.20) (cilium/cilium#47989, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.20) (patch) (cilium/cilium#47865, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.20) (patch) (cilium/cilium#47990, @cilium-renovate[bot])
* clustermesh/endpointslices: explicitly limit maximum decoder memory (Backport PR cilium/cilium#47962, Upstream PR cilium/cilium#47932, @giorio94)
* docs: clarify GAMMA DROP_EP_NOT_READY events (Backport PR cilium/cilium#47885, Upstream PR cilium/cilium#47587, @thorn3r)
* docs: Fix a bug that caused all versions to be treated as pre-release and rendering previous releases in the upgrade guide. (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#47600, @41ks)
* docs: Remove "not stable" installation instructions (Backport PR cilium/cilium#47798, Upstream PR cilium/cilium#47646, @joestringer)
* docs: update Gateway API conformance badge (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#47581, @arybolovlev)
* docs: Update Gateway API installation guide (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#47446, @arybolovlev)
* Gateway API: the Gateway address status no longer reports a bogus "<nil>" address when a Node's first status address is not an IP literal (e.g. a Hostname entry). (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#47466, @locker95)
* gateway-api: remove unnecessary TLSRoute support checks (Backport PR cilium/cilium#47885, Upstream PR cilium/cilium#47758, @mhofstetter)
* gateway-api: report invalid HTTPRoute header modifiers in status (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#47599, @mhofstetter)
* gateway-api: return route check errors directly (Backport PR cilium/cilium#47805, Upstream PR cilium/cilium#47607, @mhofstetter)
* gateway-api: unify Gateway API listener parentRef matching (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#46670, @arybolovlev)
* gateway-api: validate gRPCRoute header modifiers in status (Backport PR cilium/cilium#47805, Upstream PR cilium/cilium#47606, @mhofstetter)
* operator: Replace `reflect.DeepEqual` with `assert.Equal` in tests (Backport PR cilium/cilium#47690, Upstream PR cilium/cilium#47424, @HadrienPatte)
* Update all github action dependencies (v1.20) (cilium/cilium#47656, @cilium-renovate[bot])
* Update all github action dependencies (v1.20) (cilium/cilium#47675, @cilium-renovate[bot])
* Update docker.io/library/busybox:1.38.0 Docker digest to dc2d74b (v1.20) (cilium/cilium#47655, @cilium-renovate[bot])
* Update documentation dependencies (Backport PR cilium/cilium#47798, Upstream PR cilium/cilium#47750, @joestringer)
* Update quay.io/cilium/certgen Docker tag to v0.4.9 (v1.20) (cilium/cilium#47657, @cilium-renovate[bot])
* Update quay.io/cilium/image-tester Docker tag to v1785158849 (v1.20) (cilium/cilium#47659, @cilium-renovate[bot])
* Update quay.io/lvh-images/kind Docker tag to v6.18-20260720.023802 (v1.20) (cilium/cilium#47658, @cilium-renovate[bot])

**Other Changes:**
* install: Update image digests for v1.20.0 (cilium/cilium#47584, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.20.1@sha256:ae9ea21f7427fe24bc6ea7247eb552157a1b0a431744045d3f641545ca71d11b`
`quay.io/cilium/cilium:stable@sha256:ae9ea21f7427fe24bc6ea7247eb552157a1b0a431744045d3f641545ca71d11b`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.20.1@sha256:d905d614a332b2058cb81c193e481d1f460902b903f4eb57cc9764640b750fb5`
`quay.io/cilium/clustermesh-apiserver:stable@sha256:d905d614a332b2058cb81c193e481d1f460902b903f4eb57cc9764640b750fb5`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.20.1@sha256:59be0ae7d475ab9011a5e954618c0f27b5778b17140381425b308b55ba4917f4`
`quay.io/cilium/hubble-relay:stable@sha256:59be0ae7d475ab9011a5e954618c0f27b5778b17140381425b308b55ba4917f4`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.20.1@sha256:2af5dd3d85649ea36d365363b8eca82ad06116c6259c4aace700a7c036348e4c`
`quay.io/cilium/operator-alibabacloud:stable@sha256:2af5dd3d85649ea36d365363b8eca82ad06116c6259c4aace700a7c036348e4c`

### operator-aws

`quay.io/cilium/operator-aws:v1.20.1@sha256:7cf0cb0e6584f72ca8de951a1be03829f69fcaeba69dc6c7856fc4470545acd7`
`quay.io/cilium/operator-aws:stable@sha256:7cf0cb0e6584f72ca8de951a1be03829f69fcaeba69dc6c7856fc4470545acd7`

### operator-azure

`quay.io/cilium/operator-azure:v1.20.1@sha256:13746a479ca60395df8d83580b49464c6c975cca6fdb21ba4791a076ab01b031`
`quay.io/cilium/operator-azure:stable@sha256:13746a479ca60395df8d83580b49464c6c975cca6fdb21ba4791a076ab01b031`

### operator-generic

`quay.io/cilium/operator-generic:v1.20.1@sha256:6c3885fc7b629099fdbe2a5c87869c86feb825fa18fae299eac0f61918d16ecf`
`quay.io/cilium/operator-generic:stable@sha256:6c3885fc7b629099fdbe2a5c87869c86feb825fa18fae299eac0f61918d16ecf`

### operator

`quay.io/cilium/operator:v1.20.1@sha256:67adaf5575902dcce31dc36ba5b5acad397a8b40ec986b55696c94f80b6d861d`
`quay.io/cilium/operator:stable@sha256:67adaf5575902dcce31dc36ba5b5acad397a8b40ec986b55696c94f80b6d861d`

