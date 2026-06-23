来源: https://github.com/cilium/cilium/releases/tag/v1.19.5

# cilium/cilium v1.19.5 Release Notes

Published at: 2026-06-16T12:25:41Z

Summary of Changes
------------------

**Minor Changes:**
* Extend the information reported by the troubleshoot kvstore and clustermesh commands (Backport PR cilium/cilium#46554, Upstream PR cilium/cilium#46516, @giorio94)
* helm: Remove loadBalancer.standalone option (Backport PR cilium/cilium#46170, Upstream PR cilium/cilium#46070, @joestringer)
* wireguard:mtu: fix mtu calculation with potential padding (Backport PR cilium/cilium#46170, Upstream PR cilium/cilium#45940, @smagnani96)

**Bugfixes:**
* Always add cluster label to node when `nodeSelectorLabels` is enabled to fix CiliumNetworkPolicy with `fromNodes`/`toNodes` with  `policy-default-local-cluster` enabled (enabled by default in 1.19+) (Backport PR cilium/cilium#46170, Upstream PR cilium/cilium#46068, @MrFreezeex)
* azure: Fix public IP reassignment failure loop on operator restart (Backport PR cilium/cilium#46289, Upstream PR cilium/cilium#46240, @HadrienPatte)
* bgp: Don't provide default_gateway reconciler when disabled (Backport PR cilium/cilium#46024, Upstream PR cilium/cilium#45911, @YutaroHayakawa)
* bgp: Reduce amount of soft peer resets by service reconciliation and fix potentially missed incorrect metadata update upon failed reconciliation. (Backport PR cilium/cilium#46245, Upstream PR cilium/cilium#45927, @rastislavs)
* bpf: fix host proxy packet routing to pods (Backport PR cilium/cilium#46024, Upstream PR cilium/cilium#45916, @atykhyy)
* bug: fixed weighted backend traffic splitting for TLSRoute passthrough listeners in Gateway API (Backport PR cilium/cilium#46170, Upstream PR cilium/cilium#45937, @nickolaev)
* datapath/mtu: add altname to mark cilium owned interfaces and do skip changing MTU on interfaces not managed by cilium (Backport PR cilium/cilium#46028, Upstream PR cilium/cilium#45799, @bersoare)
* Fix a bug that causes the NamespaceSelector field in a CiliumEgressGatewayPolicy to be corrupted, and no longer effective. (Backport PR cilium/cilium#46024, Upstream PR cilium/cilium#45926, @julianwiedmann)
* Fix a rare bug in clustermesh-apiserver that triggers incorrect deletion of a valid endpoint entry from the etcd under high pod churn (Backport PR cilium/cilium#46170, Upstream PR cilium/cilium#45780, @adamwathieu)
* Fix BGP PeerConfig status cleanup so it no longer times out when there are no managed conditions to remove. (Backport PR cilium/cilium#46170, Upstream PR cilium/cilium#45967, @ysksuzuki)
* Fix bug that would disrupt node connectivity when ClusterIP/LoadBalancer VIPs overlapped with node-local IP addresses. (Backport PR cilium/cilium#46024, Upstream PR cilium/cilium#45572, @ajmmm)
* Fix TLS passthrough routes failing silently when a gateway has mixed HTTP, HTTPS, and TLS listeners and a TLSRoute with no sectionName. (Backport PR cilium/cilium#45966, Upstream PR cilium/cilium#45371, @syedazeez337)
* Fix wildcard namespace bypass for selectorless ipBlock rules (Backport PR cilium/cilium#46456, Upstream PR cilium/cilium#46305, @TheBeeZee)
* fix(gateway-api): Prevent controller panic during Gateway reconciliation when GatewayClass has an invalid or malformed spec.parametersRef. (Backport PR cilium/cilium#46400, Upstream PR cilium/cilium#46340, @arybolovlev)
* fix(gateway-api): set ready condition in endpointSlice to true (Backport PR cilium/cilium#46400, Upstream PR cilium/cilium#46237, @ulrichgiraud)
* fix: nil pointer dereference panic due to uninitialized logger (Backport PR cilium/cilium#46170, Upstream PR cilium/cilium#45782, @weizhoublue)
* Fixed a race where a reused endpoint ID could have its BPF state directory removed by the outgoing endpoint (Backport PR cilium/cilium#46554, Upstream PR cilium/cilium#46091, @eyupcanakman)
* Fixed unsolicited IPv6 L2 announcements ignored by receiving hosts, as not conformant to RFC 4861 (Backport PR cilium/cilium#46170, Upstream PR cilium/cilium#46079, @giorio94)
* Fixes a bug where policymap pressure was incorrectly being reported as 0. (Backport PR cilium/cilium#46024, Upstream PR cilium/cilium#45791, @squeed)
* gateway-api/ingress: set service label on EndpointSlices (Backport PR cilium/cilium#46400, Upstream PR cilium/cilium#46242, @mhofstetter)
* gateway-api: fix GatewayClass field index (Backport PR cilium/cilium#46289, Upstream PR cilium/cilium#46127, @thorn3r)
* gateway-api: prune stale Gateway API route parent statuses (Backport PR cilium/cilium#46400, Upstream PR cilium/cilium#46296, @mhofstetter)
* Improve robustness of kvstore keys construction to prevent possible surprising behavior in rare circumstances (Backport PR cilium/cilium#46554, Upstream PR cilium/cilium#46412, @giorio94)
* iptables: match wireguard packets by proto+port instead of packet mark (Backport PR cilium/cilium#46289, Upstream PR cilium/cilium#45974, @bersoare)
* multipool: Fix retries for CiliumNode Get errors (Backport PR cilium/cilium#46408, Upstream PR cilium/cilium#46124, @pippolo84)
* sockets: fix nil pointer dereference in filterAndDestroySockets (Backport PR cilium/cilium#46024, Upstream PR cilium/cilium#44843, @umut-polat)
* The internal representation of load-balancing backends has been refactored to efficiently support thousands of services referencing a shared backend. (cilium/cilium#46462, @joamaki)

**CI Changes:**
* chore(deps): update lvh-images for conformance-runtime (Backport PR cilium/cilium#46025, Upstream PR cilium/cilium#45922, @julianwiedmann)
* ci:bpftrace: fail curl with corrupted binary download (Backport PR cilium/cilium#46024, Upstream PR cilium/cilium#45948, @smagnani96)
* fix the race condition for the TestRouterIDAllocation bgp test case (Backport PR cilium/cilium#46289, Upstream PR cilium/cilium#44545, @liyihuang)
* gha: make conformance kubespray runner configurable (Backport PR cilium/cilium#46289, Upstream PR cilium/cilium#46171, @giorio94)
* helm: add tmpl files to .helmignore (Backport PR cilium/cilium#46554, Upstream PR cilium/cilium#46445, @sekhar-isovalent)
* helm: allow overriding of registry_prefix in charts (Backport PR cilium/cilium#46289, Upstream PR cilium/cilium#46217, @sekhar-isovalent)
* ipam: Deflake TestMarkForReleaseNoAllocate (Backport PR cilium/cilium#46289, Upstream PR cilium/cilium#46188, @pippolo84)
* Move `pull_request` triggered workflows to ariane (Backport PR cilium/cilium#46452, Upstream PR cilium/cilium#45363, @nebril)
* Reapply "ci: Log in for image registry pulls" (Backport PR cilium/cilium#46495, Upstream PR cilium/cilium#46376, @nebril)

**Misc Changes:**
* [v1.19] - chore(deps): update docker.io/library/ubuntu:24.04 docker digest to 7… (cilium/cilium#46578, @aanm)
* [v1.19] Backport health command fixes from 46102 (cilium/cilium#46250, @joamaki)
* [v1.19] deps: bump various go packages (cilium/cilium#46185, @ferozsalam)
* [v1.19] loadbalancer: return correct IP family for IPv6 ClusterIP addresses (cilium/cilium#46425, @tklauser)
* bpf: local_delivery: add CB flag for "use_redirect_peer" (Backport PR cilium/cilium#46204, Upstream PR cilium/cilium#46169, @julianwiedmann)
* bpf: local_delivery: condense usage of skb cb slots (Backport PR cilium/cilium#46204, Upstream PR cilium/cilium#46064, @julianwiedmann)
* bpf: local_delivery: use CB_DELIVERY_FLAGS to transfer proxy state (Backport PR cilium/cilium#46554, Upstream PR cilium/cilium#46291, @julianwiedmann)
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#45994, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#46016, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#46117, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#46268, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#46280, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#46395, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#46538, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.19) (cilium/cilium#45468, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.19) (cilium/cilium#46581, @cilium-renovate[bot])
* chore(deps): update base-images (v1.19) (cilium/cilium#45995, @cilium-renovate[bot])
* chore(deps): update base-images (v1.19) (cilium/cilium#46164, @cilium-renovate[bot])
* chore(deps): update base-images to v1.25.11 (v1.19) (cilium/cilium#46342, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to 0fc1dd3 (v1.19) (cilium/cilium#46153, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to 11ecd4e (v1.19) (cilium/cilium#46277, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to cd47774 (v1.19) (cilium/cilium#46137, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to e1b3ec8 (v1.19) (cilium/cilium#46007, @cilium-renovate[bot])
* chore(deps): update cilium/cilium-cli action to v0.19.3 (v1.19) (cilium/cilium#46120, @cilium-renovate[bot])
* chore(deps): update dependency bufbuild/buf to v1.70.0 (v1.19) (cilium/cilium#46267, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.19.4 (v1.19) (cilium/cilium#46150, @cilium-renovate[bot])
* chore(deps): update dependency cilium/little-vm-helper to v0.0.30 (v1.19) (cilium/cilium#46266, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf to v35.1 (v1.19) (cilium/cilium#46570, @cilium-renovate[bot])
* chore(deps): update docker.io/library/busybox:1.37.0 docker digest to 9532d8c (v1.19) (cilium/cilium#46535, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.10 docker digest to cd05a37 (v1.19) (cilium/cilium#46138, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.11 docker digest to 379065f (v1.19) (cilium/cilium#46536, @cilium-renovate[bot])
* chore(deps): update gcr.io/etcd-development/etcd docker tag to v3.6.12 (v1.19) (cilium/cilium#46560, @cilium-renovate[bot])
* chore(deps): update module sigs.k8s.io/kube-api-linter to v0.0.0-20260518104151-5ebe05f9440b (v1.19) (cilium/cilium#46139, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/certgen docker tag to v0.4.5 (v1.19) (cilium/cilium#46561, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.8-1781157951-a7f42a3390781539911b5b9107881b35ecc4e752 (v1.19) (cilium/cilium#46377, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.19) (patch) (cilium/cilium#45392, @cilium-renovate[bot])
* docs: Add caveats on Kubernetes versions when using host L7 DNS policies (Backport PR cilium/cilium#46289, Upstream PR cilium/cilium#45843, @atykhyy)
* docs: Document BTF as a requirement (Backport PR cilium/cilium#46289, Upstream PR cilium/cilium#46063, @pchaigno)
* docs: fix Markdown-style hyperlink in mutual-authentication.rst (Backport PR cilium/cilium#46024, Upstream PR cilium/cilium#45751, @bitflicker64)
* Fix broken gateway-api documentation links (Backport PR cilium/cilium#46554, Upstream PR cilium/cilium#46527, @0xch4z)
* Fix pointer-address comparison for Gateway API Route ParentReference status handling (Backport PR cilium/cilium#46400, Upstream PR cilium/cilium#46355, @weizhoublue)
* fix(deps): update k8s.io patch updates stable to v0.35.5 (v1.19) (cilium/cilium#46140, @cilium-renovate[bot])
* fix(deps): update k8s.io patch updates stable to v0.35.5 (v1.19) (patch) (cilium/cilium#46015, @cilium-renovate[bot])
* fix(deps): update k8s.io patch updates stable to v0.35.6 (v1.19) (cilium/cilium#46562, @cilium-renovate[bot])
* fix(deps): update k8s.io/utils digest to ff6756f (v1.19) (cilium/cilium#45996, @cilium-renovate[bot])
* fix(deps): update module k8s.io/apimachinery to v0.35.5 (v1.19) (cilium/cilium#45997, @cilium-renovate[bot])
* fix(deps): update module k8s.io/apimachinery to v0.35.6 (v1.19) (cilium/cilium#46537, @cilium-renovate[bot])
* Miscellaneous improvements to the fake client (Backport PR cilium/cilium#46024, Upstream PR cilium/cilium#45784, @giorio94)
* operator: miscellaneous improvements to the troubleshoot clustermesh command (Backport PR cilium/cilium#46554, Upstream PR cilium/cilium#46502, @giorio94)
* Remove defunct `l2podAnnouncements.interface` Helm value that rendered a configmap key the agent no longer recognises, causing crash-loops when L2 pod announcements were enabled. Users must use `l2podAnnouncements.interfacePattern` instead. (Backport PR cilium/cilium#46170, Upstream PR cilium/cilium#46093, @salamidrus)
* Revert ".github/workflows: do not use deployments for environments" (Backport PR cilium/cilium#46400, Upstream PR cilium/cilium#46348, @aanm)

**Other Changes:**
* [v1.19] proxy: Bump upstream version to v1.37.x (cilium/cilium#46439, @sayboras)
* install: Update image digests for v1.19.4 (cilium/cilium#45961, @cilium-release-bot[bot])
* v1.19: kvstore: Don't set fake pod CIDRs for remote nodes (cilium/cilium#46361, @pchaigno)
* vendor: bump statedb to v0.5.8 (cilium/cilium#46505, @giorio94)


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.19.5@sha256:20fbbc14ac20b55a292c0dcda5571bf31cde30a7dbc68c29db3e709390ab0732`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.19.5@sha256:5ed9334b2254315740f9e2a8b6645bf69920f79ef14f436931579d2038784f9b`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.19.5@sha256:4006d5558390120774a5a903a706dfd64089082bd653b7cb45e9e5a93ff4efea`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.19.5@sha256:24409bfa1bca075c92acb26ba4b49cd573d99d68d5370f7cc825078185222a0c`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.19.5@sha256:c9706343dde700804c2f50c09a2f8291797c707d1747fd50f70c939c23747c16`

### operator-aws

`quay.io/cilium/operator-aws:v1.19.5@sha256:b8473618e8d2bf8a610da445c8c37e1d1e8221aecd05989456d87a7588d66707`

### operator-azure

`quay.io/cilium/operator-azure:v1.19.5@sha256:8600299cb121f9df00fd32b93fa74de89ed49dd3a67e3d7301c07325c04c77f8`

### operator-generic

`quay.io/cilium/operator-generic:v1.19.5@sha256:be848a365776e07d0c5a895eda7aec928ddc52a5a1fa2f432fd7a286609e1db4`

### operator

`quay.io/cilium/operator:v1.19.5@sha256:07a25f6a248d77f0c8417d21b5ea5424a81fe551421e4baf04dc79b1360e832e`

