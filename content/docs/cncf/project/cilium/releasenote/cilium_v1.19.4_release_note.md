来源: https://github.com/cilium/cilium/releases/tag/v1.19.4

# cilium/cilium v1.19.4 Release Notes

Published at: 2026-05-13T18:44:03Z

Summary of Changes
------------------

**Minor Changes:**
* cilium-agent: when `--k8s-service-proxy-name` is set, `EndpointSlices` are now filtered by the `service.kubernetes.io/service-proxy-name` label at the watch level, matching how `Services` are already filtered, operators with hand-managed `EndpointSlices` must stamp the matching label on those slices. (Backport PR cilium/cilium#45755, Upstream PR cilium/cilium#45504, @HadrienPatte)
* iptables-based masquerading: Ensure iptables rules respect longest prefix match by sorting routes by mask length when enable-masquerade-to-route-source is enabled (Backport PR cilium/cilium#45630, Upstream PR cilium/cilium#45192, @liyihuang)
* operator/spire: make SPIRE client configurable for ztunnel (Backport PR cilium/cilium#45356, Upstream PR cilium/cilium#44136, @nddq)
* pkg/endpoint: skip logger rebuild on policy revision updates (Backport PR cilium/cilium#45630, Upstream PR cilium/cilium#45533, @sjohnsonpal)

**Bugfixes:**
* bpf: egressgw: respect egress ifindex during FIB lookup (Backport PR cilium/cilium#45695, Upstream PR cilium/cilium#45661, @julianwiedmann)
* bpf: host: fix source identity for IPsec trace in to-netdev (Backport PR cilium/cilium#45594, Upstream PR cilium/cilium#45588, @julianwiedmann)
* cilium-dbg: `cilium map list` now displays "unknown" instead of 0 for maps that do not support cache-based entry counting. (Backport PR cilium/cilium#45888, Upstream PR cilium/cilium#44951, @skymensch)
* cilium: Fix incorrect IPv6 BIG TCP display (Backport PR cilium/cilium#45630, Upstream PR cilium/cilium#45529, @pchaigno)
* clustermesh: fails gracefully instead of crashing when EndpointSliceSync is not able to setup the EndpointSlice watch (Backport PR cilium/cilium#45496, Upstream PR cilium/cilium#45402, @MrFreezeex)
* clustermesh: Fix Helm typo preventing to add annotations when setting `clustermesh.apiserver.tls.auto.method: certmanager` (Backport PR cilium/cilium#45630, Upstream PR cilium/cilium#45576, @owayss)
* Fix cilium-agent crash when a transient network error occurs during CiliumNode update. The agent now retries instead of calling Fatal. (Backport PR cilium/cilium#45673, Upstream PR cilium/cilium#44526, @nebojsaj1726)
* Fix CiliumLocalRedirectPolicy addressMatcher overriding an existing Service's frontend when its backend pods are not yet Ready. (Backport PR cilium/cilium#45584, Upstream PR cilium/cilium#45522, @ysksuzuki)
* Fix dedicated Ingress reconciliation panic on invalid TLS passthrough rules (Backport PR cilium/cilium#45888, Upstream PR cilium/cilium#45737, @weizhoublue)
* Fix host L7 policy operation (Backport PR cilium/cilium#45496, Upstream PR cilium/cilium#45030, @atykhyy)
* Fix IPsec packet drops during rolling restart with key rotation by deferring SPI advertisement until XFRM states are ready (Backport PR cilium/cilium#45630, Upstream PR cilium/cilium#44701, @hbangT)
* Fix issue where datapath reinitialization may get stuck when triggered from the local API (Backport PR cilium/cilium#45630, Upstream PR cilium/cilium#45557, @jrife)
* Fix missing global service backends in Cluster Mesh when multiple service ports point to the same target port. (Backport PR cilium/cilium#45356, Upstream PR cilium/cilium#45179, @RiccardoAtzori91)
* fix(egressGateway): skip unmatched gateways when using multiple gateway (Backport PR cilium/cilium#45630, Upstream PR cilium/cilium#44705, @ieth0)
* fix(gateway-api): prevent silent disable on CRD discovery timeout (Backport PR cilium/cilium#45630, Upstream PR cilium/cilium#44662, @aslafy-z)
* fix(ipsec): panic in parseSPI on malformed input (Backport PR cilium/cilium#45496, Upstream PR cilium/cilium#44815, @isoyuki)
* Fixed intermittent ARP failures for LoadBalancer services caused by pointer reuse during BPF map iteration in the L2 responder reconciler. (Backport PR cilium/cilium#45673, Upstream PR cilium/cilium#45197, @Krishnachaitanyakc)
* Fixed SocketLB returning EPERM instead of EHOSTUNREACH when a Service has no backends. (Backport PR cilium/cilium#45673, Upstream PR cilium/cilium#45185, @chez-shanpu)
* Fixes an issue where L7 LoadBalancer and Ingress traffic would be dropped on certain kernel versions when Cilium is attached to a bridge network device. (Backport PR cilium/cilium#45755, Upstream PR cilium/cilium#45582, @liyihuang)
* Fixes dropped packets on ingress when full header not in linear skb area (Backport PR cilium/cilium#45496, Upstream PR cilium/cilium#45195, @javiercardona-work)
* hubble-relay: fix TLS config variable shadowing preventing cleanup on shutdown (Backport PR cilium/cilium#45630, Upstream PR cilium/cilium#45085, @Aprazor)
* policy: Fix CCG matching for duplicate label keys (Backport PR cilium/cilium#45356, Upstream PR cilium/cilium#45225, @christarazi)
* Respect backends for BGP only when they are in state: active (Backport PR cilium/cilium#45673, Upstream PR cilium/cilium#45286, @CallMeFoxie)
* secretsync recreate synced secret when source secret type changes (Backport PR cilium/cilium#45888, Upstream PR cilium/cilium#45721, @ssam18)
* wireguard: clamp cilium_wg0 MTU to IPV6_MIN_MTU (1280) when IPv6 is enabled, preventing silent packet loss in tunnel+encryption mode with constrained path MTU (Backport PR cilium/cilium#45496, Upstream PR cilium/cilium#45425, @tibrezus)

**CI Changes:**
* .github/workflows: skip full test suite for workflow_dispatch on dev … (Backport PR cilium/cilium#45356, Upstream PR cilium/cilium#45285, @aanm)
* complexity-diff: Small improvements (Backport PR cilium/cilium#45673, Upstream PR cilium/cilium#45556, @pchaigno)
* contrib: fix typo in identity_is_node.cocci (Backport PR cilium/cilium#45630, Upstream PR cilium/cilium#45505, @julianwiedmann)
* datapath/loader: Add map count to verifier complexity records (Backport PR cilium/cilium#45673, Upstream PR cilium/cilium#44652, @dylandreimerink)
* gha/clustermesh: use OCI registry for cert-manager (Backport PR cilium/cilium#45356, Upstream PR cilium/cilium#45326, @giorio94)
* logging: Update leader election log level override (Backport PR cilium/cilium#45496, Upstream PR cilium/cilium#45358, @joamaki)
* Use extra power github runner if available for multi-pool CI workflow (Backport PR cilium/cilium#45673, Upstream PR cilium/cilium#45555, @fristonio)

**Misc Changes:**
* [v1.19] deps: bump x/net to v0.53 (cilium/cilium#45935, @ferozsalam)
* Add documentation and warnings on DNS interception (Backport PR cilium/cilium#45888, Upstream PR cilium/cilium#45525, @ferozsalam)
* chore(deps): update all external docker images dependencies to v0.13.5 (v1.19) (patch) (cilium/cilium#45462, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#45467, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#45728, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#45747, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#45870, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#45882, @cilium-renovate[bot])
* chore(deps): update base-images (v1.19) (cilium/cilium#45466, @cilium-renovate[bot])
* chore(deps): update base-images (v1.19) (cilium/cilium#45615, @cilium-renovate[bot])
* chore(deps): update base-images (v1.19) (cilium/cilium#45729, @cilium-renovate[bot])
* chore(deps): update base-images to v1.25.10 (v1.19) (cilium/cilium#45902, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to 354584b (v1.19) (cilium/cilium#45614, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to 6663075 (v1.19) (cilium/cilium#45481, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to 6e3229e (v1.19) (cilium/cilium#45620, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to b782452 (v1.19) (cilium/cilium#45488, @cilium-renovate[bot])
* chore(deps): update dependency bufbuild/buf to v1.69.0 (v1.19) (cilium/cilium#45872, @cilium-renovate[bot])
* chore(deps): update module github.com/moby/spdystream to v0.5.1 [security] (v1.19) (cilium/cilium#45431, @cilium-renovate[bot])
* chore(deps): update module sigs.k8s.io/kube-api-linter to v0.0.0-20260416084302-2b3d1fe14578 (v1.19) (cilium/cilium#45463, @cilium-renovate[bot])
* chore(deps): update module sigs.k8s.io/kube-api-linter to v0.0.0-20260423112246-3fa174937a6b (v1.19) (cilium/cilium#45730, @cilium-renovate[bot])
* chore(deps): update module sigs.k8s.io/kube-api-linter to v0.0.0-20260505141229-de8f85687fd2 (v1.19) (cilium/cilium#45881, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/certgen docker tag to v0.4.3 (v1.19) (cilium/cilium#45501, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.6-1776352947-78da350f53f63526ff6487f2e1f3b14d2062ce17 (v1.19) (cilium/cilium#45464, @cilium-renovate[bot])
* ci: make registry configurable (cilium/cilium#45437, @Artyop)
* docs(policy): update namespace label support (Backport PR cilium/cilium#45630, Upstream PR cilium/cilium#44922, @lconnery)
* docs: add small CiliumCIDRGroup scalability callout (Backport PR cilium/cilium#45888, Upstream PR cilium/cilium#45763, @squeed)
* Fail hive health tree script command if no status is found for filter (Backport PR cilium/cilium#45888, Upstream PR cilium/cilium#45554, @fristonio)
* Fix Endpoint regeneration health reporting (Backport PR cilium/cilium#45630, Upstream PR cilium/cilium#45011, @fristonio)
* fix(deps): update k8s.io patch updates stable to v0.35.4 (v1.19) (patch) (cilium/cilium#45465, @cilium-renovate[bot])
* helm: allow overriding of external images in charts (Backport PR cilium/cilium#45634, Upstream PR cilium/cilium#45597, @sekhar-isovalent)
* helm: do not set operator health port as hostPort when hostNetwork is disabled (Backport PR cilium/cilium#45673, Upstream PR cilium/cilium#45386, @robinelfrink)
* loadbalancer/reflectors: Filter `EndpointSlice` watch by service labels (Backport PR cilium/cilium#45755, Upstream PR cilium/cilium#45528, @HadrienPatte)

**Other Changes:**
* [v1.19] ipam: fix data race in MultiPoolManager node update (cilium/cilium#45521, @Kunalbehbud)
* chore(deps): update quay.io/cilium/cilium-envoy (cilium/cilium#45908, @sayboras)
* install: Restore RBAC for ciliumbgppeeringpolicies to allow for gradual upgrade of Cilium pods from `v1.18` to `v1.19`. (cilium/cilium#45829, @rastislavs)
* install: Update image digests for v1.19.3 (cilium/cilium#45401, @cilium-release-bot[bot])
* v1.19: bpf: Reduce stack usage and complexity of `tail_handle_snat_fwd_ipv6` (cilium/cilium#45360, @pchaigno)


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.19.4@sha256:2eb67991eaa9368ba199c2fac2c573cb0ffdeb79184533344f42fc9a7ff6af3c`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.19.4@sha256:9e40006b2e2b6e66d047f9af52577a93b39d9532958ec6d88d46820bb59ab643`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.19.4@sha256:720dc5839de8c30acf655ad790866cf89b7691047a020e7b4a4bd66883fbf4d1`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.19.4@sha256:59af8c0d561e560c2a042e7600a3496bc0367df8fbf868aa68d5834c8ec1a431`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.19.4@sha256:693b1e61f22beaa9a0f68aa4056ba873465da96da6382f3276978d01544450dd`

### operator-aws

`quay.io/cilium/operator-aws:v1.19.4@sha256:9e41b3959d941a0b60ba187f5a2572305846248efb89ac59c18fd25a032f568d`

### operator-azure

`quay.io/cilium/operator-azure:v1.19.4@sha256:8203f4e5e65c658fe2367a570c7bba5779859982bd3cc263662e35e690be3417`

### operator-generic

`quay.io/cilium/operator-generic:v1.19.4@sha256:1aa2b62735e7d8ab49ee840ae59c346932024c88901579121395c1271b435f71`

### operator

`quay.io/cilium/operator:v1.19.4@sha256:7edc61725901e32a13e180c5290d43df5292f5f49c6d654c94a0be2faf52e71e`

