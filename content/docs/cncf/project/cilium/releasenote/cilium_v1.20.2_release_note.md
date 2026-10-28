来源: https://github.com/cilium/cilium/releases/tag/v1.20.2

# cilium/cilium v1.20.2 Release Notes

Published at: 2026-09-16T01:53:22Z

Summary of Changes
------------------

**Minor Changes:**
* gateway-api: node label selector for when hostNetwork is enabled (Backport PR cilium/cilium#48636, Upstream PR cilium/cilium#47463, @xtineskim)

**Bugfixes:**
* aws/ipam: Fixed a bug where the operator in ENI IPAM mode would try to release prefix IPs as individual IPs even when they were in use. (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#48125, @41ks)
* aws/ipam: Fixed a bug where the operator would fail to allocate new IPs to nodes with prefix delegation enabled on subnets that ran out of prefixes. (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#48193, @41ks)
* bpf: Fix agent crash when dumping map events (Backport PR cilium/cilium#48378, Upstream PR cilium/cilium#48273, @joestringer)
* bpf: Fixed a bug where enabling policy-deny-response: icmp would cause metrics for policy denied drops on egress to stop getting reported. (Backport PR cilium/cilium#48550, Upstream PR cilium/cilium#48407, @41ks)
* Cluster Mesh: fix extremely rare race condition that may cause a removed remote cluster to not be correctly disconnected (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#48262, @giorio94)
* datapath/linux/config: fix IPV4_DIRECT_ROUTING selection on lo device (Backport PR cilium/cilium#48550, Upstream PR cilium/cilium#46861, @fdomain)
* endpoint: preserve concurrent policy updates for new endpoints (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#48195, @jrajahalme)
* ENI IPv6: Fix IPv6 routing for health check endpoint, ingress address and for IPSec on ENI interfaces. (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#47034, @41ks)
* Fix a pod created immediately after a network policy change reporting a stale policy revision for up to two minutes. (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#47642, @aanm)
* Fix agent crash on startup in ENI IPAM mode when ipv4NativeRoutingCIDR is set to a secondary VPC CIDR association (Backport PR cilium/cilium#48024, Upstream PR cilium/cilium#47874, @bryanhorstmann)
* Fix BGP `defaultGateway` peer auto-discovery selecting a default route from a non-main routing table, such as the `default via cilium_host` route Cilium installs in the from-proxy table, instead of the node's real default gateway. (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#47971, @ecbaldwin)
* Fix bug where identities may linger for double the amount of the expected time (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#48032, @christarazi)
* Fix dropping traffic L2Announcement with externalTrafficPolicy: Local (Backport PR cilium/cilium#48550, Upstream PR cilium/cilium#46399, @yuito-it)
* Fix Gateway API static IPv6 addresses being reported as unusable when the Gateway and Service use different textual representations of the same address. (Backport PR cilium/cilium#48017, Upstream PR cilium/cilium#47943, @taaahaaa)
* Fix HTTPRoute ExternalAuth to fail closed when its backend reference is invalid or cannot be resolved. (Backport PR cilium/cilium#48017, Upstream PR cilium/cilium#47929, @shreyasrajiv327)
* Fix Hubble Relay remains running during termination (Backport PR cilium/cilium#48550, Upstream PR cilium/cilium#47942, @xandau)
* Fix ICMP error packet handling by adding the missing checksum recalculation performed during NAT for SNATed load-balanced traffic. (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#48086, @julianwiedmann)
* Fix IPv6 Router Solicitations and Router Advertisements being dropped with "Unsupported protocol for NAT masquerade" on nodes whose BPF masquerade address is a link-local address. (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#48094, @ecbaldwin)
* Fix missing config setup for 'enable-non-default-deny-policies' flag (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#48391, @fristonio)
* Fix multiple regressions in Cilium LocalRedirectPolicy (Backport PR cilium/cilium#48634, Upstream PR cilium/cilium#46638, @ajmmm)
* Fix node-init startup on GKE 1.36.2-gke.2064000 nodes by detecting GKE from the kubelet path instead of container runtime configuration. (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#47945, @dlanov)
* Fix nodeport egress tuple reuse for closed connections (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#48306, @fristonio)
* Fix restored ENI endpoints routing rule configuration when masquerading config changes (cilium/cilium#48417, @fristonio)
* fix(envoyconfig): retry port allocation on duplicate-address rejections (Backport PR cilium/cilium#48735, Upstream PR cilium/cilium#48624, @kokhlo)
* Fixed a bug that caused the clustermesh-apiserver etcd users managements logic to not revoke stale roles upon configuration change; users leveraging the configuration provided by the Cilium helm chart are not affected, as the target etcd role is never changed. (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#47915, @giorio94)
* Fixed a cilium-agent crash (`fatal error: concurrent map iteration and map write`) when an endpoint's policy was recomputed while incremental policy map changes were applied concurrently. Most commonly triggered by named-port policies under pod churn. (Backport PR cilium/cilium#48735, Upstream PR cilium/cilium#48098, @nashant)
* Fixed five configuration options that were accepted but silently ignored: `vtep-sync-interval`, `enable-xt-socket-fallback`, `eni-delete-on-termination` with a custom CNI configuration, the `enableIdentityMark` Helm value outside CNI chaining mode, and `lb-retry-backoff-max`. (Backport PR cilium/cilium#48434, Upstream PR cilium/cilium#47635, @aanm)
* Fixes a bug where clusters originally created in v1.15 or earlier failed to upgrade due to dropping the CRD version CiliumNodeConfig v2alpha1. (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#48087, @squeed)
* Fragmented UDP packets were potentially mis-classified as Cilium Wireguard traffic. (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#48139, @julianwiedmann)
* gateway-api: fix listener programmed status update (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#48013, @mhofstetter)
* gateway-api: propgate listenerset status update errors (Backport PR cilium/cilium#48581, Upstream PR cilium/cilium#48130, @mhofstetter)
* hubble: fix four config knobs that never reach their sink (Backport PR cilium/cilium#48434, Upstream PR cilium/cilium#47637, @aanm)
* Improve reliability for fast recovery of disrupted TCP connections that access a DSR-enabled Service. (Backport PR cilium/cilium#48465, Upstream PR cilium/cilium#48254, @julianwiedmann)
* lb (fix): require active state for backend when using topology hints (Backport PR cilium/cilium#48550, Upstream PR cilium/cilium#47054, @CarrySauce)
* nodediscovery: Reduced EC2 IMDS load and made ENI node registration more resilient by fetching the instance metadata once instead of on every CiliumNode update. (Backport PR cilium/cilium#48603, Upstream PR cilium/cilium#48218, @41ks)
* operator/ipam: Restore fatal exit when the IPAM node watcher fails (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#47778, @HadrienPatte)
* Strengthen the validation when ingesting service backends from Cluster Mesh to prevent issues in case of specially crafted values (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#48015, @giorio94)
* The BPF NAT engine now drops ICMP error packets which contain a fragmented TCP/UDP/SCTP packet. (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#48174, @julianwiedmann)
* When using DSR with --bpf-lb-dsr-dispatch set to "opt" or "geneve" in combination with --enable-pmtu-discovery, fix the outer source IP of the ICMP error message which is generated when a forwarded DSR request exceeds the network interface's MTU. (Backport PR cilium/cilium#48114, Upstream PR cilium/cilium#48053, @julianwiedmann)

**CI Changes:**
* [v1.20] golangci-lint: Do not run the modernize linter (cilium/cilium#48398, @aanm)
* .github: Bump cilium/reusable-workflows to v0.1.1 (Backport PR cilium/cilium#48550, Upstream PR cilium/cilium#48462, @joestringer)
* BPF: Refactor nat tests to use scapy fixtures and add checksum coverage (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#47222, @tommyp1ckles)
* bpf: tests: fix up prog type in ipv6_test (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#47736, @julianwiedmann)
* bpf: tests: use PROG_TYPE (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#47714, @julianwiedmann)
* bpf: tests: validate CT entry for DSR connection (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#48219, @julianwiedmann)
* ci: replace unsupported LLVM installation action (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#47776, @bogdankrasko)
* ci: resolve renovate PR metadata in base image workflows (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#47964, @mhofstetter)
* ci: stop asking a PHP app for the AKS runner IP (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#48371, @aanm)
* ci: use GitHub App client ID in v1.20 image workflow (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#47787, @bogdankrasko)
* datapath/loader: fix missing complexity coverage for enable_identity_mark (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#48037, @tklauser)
* gh: verifier: test PR branch before base branch (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#47928, @julianwiedmann)
* gha/conformance-aks: add a timeout to the cluster create step (Backport PR cilium/cilium#48550, Upstream PR cilium/cilium#48545, @aanm)
* gha/conformance-aks: give the nodes a 64 GiB OS disk (Backport PR cilium/cilium#48550, Upstream PR cilium/cilium#48481, @aanm)
* gha/kubespray: don't wait for CoreDNS before Cilium is installed (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#48048, @aanm)
* gha: bound the LLVM prereq apt step with a 5m timeout (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#48069, @aanm)
* gha: compute the ginkgo cache key once, before the matrix (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#48127, @aanm)
* gha: move GCP auth pin past the STS token exchange retry fix (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#48352, @aanm)
* gha: publish the external target hostnames as FQDNs (Backport PR cilium/cilium#48550, Upstream PR cilium/cilium#48478, @aanm)
* gha: stop JUnit reports being destroyed by same-name legs (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#48203, @aanm)
* logging: downgrade canceled response-body reads to info (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#48202, @aanm)
* Makefile: Order the bpf codegen ahead of the Go builds (Backport PR cilium/cilium#48735, Upstream PR cilium/cilium#48644, @aanm)
* Revert 48441 - disable local accounts on AKS clusters (cilium/cilium#48524, @aanm)
* test(bpf): parallelize eBPF test execution (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#47427, @lconnery)
* test/k8s: wait for the L7 visibility policy to be realized (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#48365, @aanm)
* test: fix the never-taken retry on a partially read JSON line (Backport PR cilium/cilium#48634, Upstream PR cilium/cilium#48190, @aanm)
* tools: complexity: de-couple StackDepth from kernel version (Backport PR cilium/cilium#48200, Upstream PR cilium/cilium#48236, @julianwiedmann)
* workflows: disable local accounts on AKS clusters (cilium/cilium#48441, @nbusseneau)

**Misc Changes:**
* Add extension points for cilium-envoy Daemonset readiness, liveness and startup probes (Backport PR cilium/cilium#48634, Upstream PR cilium/cilium#48421, @0xch4z)
* bpf/lib/nat: rename icmpoff (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#47797, @tommyp1ckles)
* bpf: dsr: use eth_store_proto() in dsr_reply_icmp*() (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#47392, @julianwiedmann)
* bpf: icmp*: fix up sample length (Backport PR cilium/cilium#48114, Upstream PR cilium/cilium#48020, @julianwiedmann)
* bpf: misc cleanups (Backport PR cilium/cilium#48350, Upstream PR cilium/cilium#47879, @julianwiedmann)
* bpf: nodeport: remove Ingress HostFW Policy between RevSNAT and RevDNAT (Backport PR cilium/cilium#48284, Upstream PR cilium/cilium#46232, @julianwiedmann)
* bpf: Reduce stack usage of send_trace_notify (Backport PR cilium/cilium#48350, Upstream PR cilium/cilium#47911, @joamaki)
* chore(deps): update all external docker images dependencies (v1.20) (patch) (cilium/cilium#48147, @cilium-renovate[bot])
* chore(deps): update all external docker images dependencies to v0.13.6 (v1.20) (cilium/cilium#48673, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.20) (cilium/cilium#48326, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.20) (cilium/cilium#48506, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.20) (cilium/cilium#48677, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.20) (cilium/cilium#48149, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.20) (cilium/cilium#48325, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.20) (cilium/cilium#48619, @cilium-renovate[bot])
* chore(deps): update base-images (v1.20) (cilium/cilium#48327, @cilium-renovate[bot])
* chore(deps): update base-images (v1.20) (cilium/cilium#48672, @cilium-renovate[bot])
* chore(deps): update dependency bufbuild/buf to v1.73.0 (v1.20) (cilium/cilium#48729, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.20.0 (v1.20) (cilium/cilium#48344, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf to v36.1 (v1.20) (cilium/cilium#48505, @cilium-renovate[bot])
* chore(deps): update dependency semver to v3.1.0 (v1.20) (cilium/cilium#48730, @cilium-renovate[bot])
* chore(deps): update docker/setup-qemu-action action to v4.3.0 (v1.20) (cilium/cilium#48517, @cilium-renovate[bot])
* chore(deps): update google/cloud-sdk docker tag to v581 (v1.20) (cilium/cilium#48150, @cilium-renovate[bot])
* chore(deps): update helm/kind-action action to v1.15.0 (v1.20) (cilium/cilium#48591, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.37.6-1787987562-ac0b61a4c0a45670a3654448d53bd6416b948f62 (v1.20) (cilium/cilium#48323, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.37.6-1788432471-d053be1912db91dc0e031d7676a7cbbf31b67fe2 (v1.20) (cilium/cilium#48451, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.37.6-1789133542-cbec91f666af0bf742da986d43832932dbb26b82 (v1.20) (cilium/cilium#48674, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.20) (patch) (cilium/cilium#48148, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.20) (patch) (cilium/cilium#48324, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.20) (patch) (cilium/cilium#48504, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.20) (patch) (cilium/cilium#48675, @cilium-renovate[bot])
* ci: disable TCP/UDPRouteWeightedRouting gateway-api conformance tests (Backport PR cilium/cilium#48550, Upstream PR cilium/cilium#48375, @0xch4z)
* datapath: move some feature probes into BPF (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#47737, @julianwiedmann)
* docs: fix extra closing parenthesis in hive.rst (Backport PR cilium/cilium#48634, Upstream PR cilium/cilium#48541, @logi74123)
* docs: Improve build process (Backport PR cilium/cilium#48550, Upstream PR cilium/cilium#47751, @joestringer)
* docs: remove outdated tip about disabling hubble before enabling UI (Backport PR cilium/cilium#48634, Upstream PR cilium/cilium#48487, @ekoops)
* docs: Remove v1.18 ipsec documentation (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#48224, @joestringer)
* docs: Update kernel config requirements (Backport PR cilium/cilium#48634, Upstream PR cilium/cilium#48594, @pchaigno)
* Document that Gateway API needs iptables and the netfilter TPROXY modules on nodes when bpf.tproxy is disabled (the default). (Backport PR cilium/cilium#48550, Upstream PR cilium/cilium#48428, @marcus-chae)
* Documentation: document mesh security model (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#47912, @bimmlerd)
* envoy: Clarify legacy UpdateEnvoyResources (Backport PR cilium/cilium#48213, Upstream PR cilium/cilium#48066, @jrajahalme)
* Fix (eBPF): Pointer-to-Pointer Misuse in IPv6 Trace Notifications (Backport PR cilium/cilium#48350, Upstream PR cilium/cilium#47908, @weizhoublue)
* Fix Component Overview doc link rendering (Backport PR cilium/cilium#48634, Upstream PR cilium/cilium#48537, @eneiss)
* fix(deps): update k8s.io patch updates stable to v0.36.4 (v1.20) (cilium/cilium#48118, @cilium-renovate[bot])
* fix(deps): update module google.golang.org/grpc to v1.83.1 [security] (v1.20) (cilium/cilium#48388, @cilium-renovate[bot])
* fix(deps): update module sigs.k8s.io/gateway-api/conformance to v1.6.2 (v1.20) (cilium/cilium#48676, @cilium-renovate[bot])
* Fixed broken Slack link on Community page. (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#48021, @ps-mir)
* Fixes: Update node-cache image version to 1.26.5 (Backport PR cilium/cilium#48634, Upstream PR cilium/cilium#48270, @zyue110026)
* gateway-api: avoid logging missing GatewayClass as error (Backport PR cilium/cilium#48581, Upstream PR cilium/cilium#48529, @mhofstetter)
* gateway-api: deduplicate condition merge helpers (Backport PR cilium/cilium#48581, Upstream PR cilium/cilium#48122, @mhofstetter)
* gateway-api: extract BackendTLSPolicy status handling into BackendTLSPolicyStatusManager (Backport PR cilium/cilium#48581, Upstream PR cilium/cilium#48068, @mhofstetter)
* gateway-api: extract gateway address status handling (Backport PR cilium/cilium#48581, Upstream PR cilium/cilium#48129, @mhofstetter)
* gateway-api: extract index & load functionality from controller / reconcile (Backport PR cilium/cilium#48581, Upstream PR cilium/cilium#47837, @mhofstetter)
* gateway-api: extract listener status handling (Backport PR cilium/cilium#48581, Upstream PR cilium/cilium#48103, @mhofstetter)
* gateway-api: extract route status handling into RouteStatusManager (Backport PR cilium/cilium#48581, Upstream PR cilium/cilium#48023, @mhofstetter)
* gateway-api: make gateway-api reconciler client and scheme fields private (Backport PR cilium/cilium#48581, Upstream PR cilium/cilium#48191, @mhofstetter)
* gateway-api: only load referenced services & serviceimports (Backport PR cilium/cilium#48581, Upstream PR cilium/cilium#48469, @mhofstetter)
* gateway-api: put ctx first in route status API (Backport PR cilium/cilium#48581, Upstream PR cilium/cilium#48074, @mhofstetter)
* gateway-api: remove duplicate gateway reconcile error logs (Backport PR cilium/cilium#48581, Upstream PR cilium/cilium#48186, @mhofstetter)
* gateway-api: remove Gateway LBIPAM annotation warning (Backport PR cilium/cilium#48581, Upstream PR cilium/cilium#48187, @mhofstetter)
* gateway-api: remove pre-filtered namespaces concept (Backport PR cilium/cilium#48581, Upstream PR cilium/cilium#47685, @asauber)
* gha/lint-ariane-config: let Renovate manage the Go version (Backport PR cilium/cilium#48550, Upstream PR cilium/cilium#48467, @aanm)
* gha: authenticate release images with OIDC (Backport PR cilium/cilium#48599, Upstream PR cilium/cilium#48062, @aanm)
* gha: authenticate stable Image CI to quay.io with OIDC (Backport PR cilium/cilium#48060, Upstream PR cilium/cilium#48061, @aanm)
* gha: correct and move the OIDC subject comments (Backport PR cilium/cilium#48060, Upstream PR cilium/cilium#48370, @aanm)
* gha: raise the Docker Hub OIDC token lifetime for release builds (Backport PR cilium/cilium#48599, Upstream PR cilium/cilium#48535, @aanm)
* helm: add general busybox image values for substitution (Backport PR cilium/cilium#48418, Upstream PR cilium/cilium#47973, @0xch4z)
* vendor: Bump StateDB to v0.8.4 (cilium/cilium#48248, @joamaki)

**Other Changes:**
* [v1.20] bpf: Force-align IPv4 CT tuples used by revSNAT memcpy() (cilium/cilium#48395, @julianwiedmann)
* install: Update image digests for v1.20.1 (cilium/cilium#48039, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.20.2@sha256:2939231d0d3e3ebddcd80fffa168b7ddcc78fdf0dc864d1c8c126ff523c54f01`
`quay.io/cilium/cilium:stable@sha256:2939231d0d3e3ebddcd80fffa168b7ddcc78fdf0dc864d1c8c126ff523c54f01`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.20.2@sha256:e9ffc79baf76bb98efb87c01be3bca8da998779f4ccdafc97c74132b307305ce`
`quay.io/cilium/clustermesh-apiserver:stable@sha256:e9ffc79baf76bb98efb87c01be3bca8da998779f4ccdafc97c74132b307305ce`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.20.2@sha256:d309c977870e9dbede7122a10eee09a4c9d66685e8d52af62d9c3c113f815b0f`
`quay.io/cilium/hubble-relay:stable@sha256:d309c977870e9dbede7122a10eee09a4c9d66685e8d52af62d9c3c113f815b0f`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.20.2@sha256:3c1536f099595c3d967d17d7f2ce290c6adea93777a514081e84a9d82e271e38`
`quay.io/cilium/operator-alibabacloud:stable@sha256:3c1536f099595c3d967d17d7f2ce290c6adea93777a514081e84a9d82e271e38`

### operator-aws

`quay.io/cilium/operator-aws:v1.20.2@sha256:0df92d10d2ec548052678b67809c1e613429931b2d5c1d6741fcef096bb0d2a3`
`quay.io/cilium/operator-aws:stable@sha256:0df92d10d2ec548052678b67809c1e613429931b2d5c1d6741fcef096bb0d2a3`

### operator-azure

`quay.io/cilium/operator-azure:v1.20.2@sha256:b304dc1ad8dd06abb2103bdb91c87dcc302d904e1e4cbe0afd231885d1f0194a`
`quay.io/cilium/operator-azure:stable@sha256:b304dc1ad8dd06abb2103bdb91c87dcc302d904e1e4cbe0afd231885d1f0194a`

### operator-generic

`quay.io/cilium/operator-generic:v1.20.2@sha256:64d8798350e8569b8e7622563fed6e44dce2625f311e4651b774816516c744fc`
`quay.io/cilium/operator-generic:stable@sha256:64d8798350e8569b8e7622563fed6e44dce2625f311e4651b774816516c744fc`

### operator

`quay.io/cilium/operator:v1.20.2@sha256:3ca39a5cb69798d8ffcdea3615cb396074b34b9013799685724b00ab4bf26a0c`
`quay.io/cilium/operator:stable@sha256:3ca39a5cb69798d8ffcdea3615cb396074b34b9013799685724b00ab4bf26a0c`

