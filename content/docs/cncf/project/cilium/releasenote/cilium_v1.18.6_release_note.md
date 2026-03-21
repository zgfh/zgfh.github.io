来源: https://github.com/cilium/cilium/releases/tag/v1.18.6

# cilium/cilium v1.18.6 Release Notes

Published at: 2026-01-13T19:27:32Z

Summary of Changes
------------------

**Major Changes:**
* Publish Helm charts to OCI registries (Backport PR cilium/cilium#43689, Upstream PR cilium/cilium#43624, @aanm)

**Minor Changes:**
* Cilium Preflight check no longer includes Envoy Configmaps, making it easier to correctly run. (Backport PR cilium/cilium#43290, Upstream PR cilium/cilium#43153, @youngnick)
* runtime: Add libatomic1 for cilium-envoy dependency (Backport PR cilium/cilium#43642, Upstream PR cilium/cilium#43292, @sayboras)

**Bugfixes:**
* bpf:wireguard: delivery host packets to bpf_host for ingress policies (Backport PR cilium/cilium#43690, Upstream PR cilium/cilium#42892, @smagnani96)
* cgroup: don't start watch if KPRConfig.EnableSocketLB is disabled (Backport PR cilium/cilium#43290, Upstream PR cilium/cilium#43256, @mhofstetter)
* Fix a bug with local redirect service entries being created when backend pods weren't ready. (Backport PR cilium/cilium#43425, Upstream PR cilium/cilium#43095, @aditighag)
* Fix an issue in proxy NOTRACK iptables rule for aws-cni chaining mode which causes proxy->upstream(outside cluster) traffic not being SNAT'd. (Backport PR cilium/cilium#43676, Upstream PR cilium/cilium#43566, @fristonio)
* Fix GC of possible duplicated identities in kvstore mode (Backport PR cilium/cilium#43425, Upstream PR cilium/cilium#43287, @giorio94)
* Fixes a deadlock that was causing endpoint to be stuck without progressing with any updates. (Backport PR cilium/cilium#43290, Upstream PR cilium/cilium#43242, @marseel)
* gateway-api: correctly handle CiliumGatewayClassConfig as a namespaced resource. (Backport PR cilium/cilium#43290, Upstream PR cilium/cilium#43254, @youngnick)
* xds: fix nil-pointer in `processRequestStream` (Backport PR cilium/cilium#43612, Upstream PR cilium/cilium#43609, @mhofstetter)

**CI Changes:**
* bpf: tests: egressgw: enable HostFW (Backport PR cilium/cilium#43337, Upstream PR cilium/cilium#42955, @julianwiedmann)
* bpf: tests: egressgw: install ipcache_v6_add_world_entry() (Backport PR cilium/cilium#43337, Upstream PR cilium/cilium#42988, @julianwiedmann)
* chore: comment job to use generated token instead of PAT (Backport PR cilium/cilium#43612, Upstream PR cilium/cilium#43148, @sekhar-isovalent)
* ci: Use newer lvh image for privileged tests (Backport PR cilium/cilium#43490, Upstream PR cilium/cilium#41082, @rastislavs)

**Misc Changes:**
* .github/workflows: remove auto-requested reviewers (Backport PR cilium/cilium#43425, Upstream PR cilium/cilium#42952, @aanm)
* Add documentation and examples for using the egressDeny field in CiliumNetworkPolicy (Backport PR cilium/cilium#43425, Upstream PR cilium/cilium#40272, @syedazeez337)
* bpf: clear mark content before storing the cluster ID (Backport PR cilium/cilium#43290, Upstream PR cilium/cilium#43159, @giorio94)
* bpf: prevent cluster ID from being incorrectly retrieved from mark when aliased (Backport PR cilium/cilium#43290, Upstream PR cilium/cilium#43258, @giorio94)
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#43467, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#43665, @cilium-renovate[bot])
* chore(deps): update anchore/sbom-action action to v0.21.0 (v1.18) (cilium/cilium#43512, @cilium-renovate[bot])
* chore(deps): update base-images (v1.18) (cilium/cilium#43543, @cilium-renovate[bot])
* chore(deps): update base-images (v1.18) (cilium/cilium#43664, @cilium-renovate[bot])
* chore(deps): update docker.io/library/busybox:1.37.0 docker digest to 2383baa (v1.18) (cilium/cilium#43662, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.24.11 docker digest to 54528d1 (v1.18) (cilium/cilium#43464, @cilium-renovate[bot])
* chore(deps): update gcr.io/etcd-development/etcd docker tag to v3.6.7 (v1.18) (cilium/cilium#43465, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.34.12-1767177245-7935d4d711cb6f8020385a50c996b90896e16a71 (v1.18) (cilium/cilium#43539, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.35.9-1767794330-db497dd19e346b39d81d7b5c0dedf6c812bcc5c9 (v1.18) (cilium/cilium#43638, @cilium-renovate[bot])
* chore(deps): update rhysd/actionlint docker tag to v1.7.10 (v1.18) (cilium/cilium#43541, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#43466, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#43542, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#43571, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#43663, @cilium-renovate[bot])
* cmapisrv/test: miscellaneous fixes to the ciliumidentities script test (Backport PR cilium/cilium#43425, Upstream PR cilium/cilium#43372, @giorio94)
* docs: Add missing IPv6 fragmentation BPF map reference (Backport PR cilium/cilium#43290, Upstream PR cilium/cilium#43161, @doniacld)
* Fix a regression in the new services control plane where loadBalancerSourceRanges was applied by default to all service types. (Backport PR cilium/cilium#43575, Upstream PR cilium/cilium#42351, @borkmann)
* operator: the K8s Secret synchronization process now resynchronizes after an hour for synced Secrets. (Backport PR cilium/cilium#43425, Upstream PR cilium/cilium#42414, @youngnick)
* release: change OCI registry (Backport PR cilium/cilium#43689, Upstream PR cilium/cilium#43646, @aanm)
* route: install ingress proxy routes with WireGuard and L7Proxy (Backport PR cilium/cilium#43434, Upstream PR cilium/cilium#42835, @smagnani96)

**Other Changes:**
* [v1.18] bpf:hubble: support policy verdict from L3 devices (cilium/cilium#43381, @smagnani96)
* [v1.18] deps: bump CNI plugins version to v1.9.0 (cilium/cilium#43593, @diyi0926)
* install: Update image digests for v1.18.5 (cilium/cilium#43400, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.18.6@sha256:42ec562a5ff6c8a860c0639f5a7611685e253fd9eb2d2fcdade693724c9166a4`
`quay.io/cilium/cilium:stable@sha256:42ec562a5ff6c8a860c0639f5a7611685e253fd9eb2d2fcdade693724c9166a4`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.18.6@sha256:8ee142912a0e261850c0802d9256ddbe3729e1cd35c6bea2d93077f334c3cf3b`
`quay.io/cilium/clustermesh-apiserver:stable@sha256:8ee142912a0e261850c0802d9256ddbe3729e1cd35c6bea2d93077f334c3cf3b`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.18.6@sha256:7931555ad713a48a28e4bf097402e0e398461dbf51b81cb8192558c5cb0dc48f`
`quay.io/cilium/docker-plugin:stable@sha256:7931555ad713a48a28e4bf097402e0e398461dbf51b81cb8192558c5cb0dc48f`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.18.6@sha256:fb6135e34c31e5f175cb5e75f86cea52ef2ff12b49bcefb7088ed93f5009eb8e`
`quay.io/cilium/hubble-relay:stable@sha256:fb6135e34c31e5f175cb5e75f86cea52ef2ff12b49bcefb7088ed93f5009eb8e`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.18.6@sha256:212c4cbe27da3772bcb952b8f8cbaa0b0eef72488b52edf90ad2b32072a3ca4c`
`quay.io/cilium/operator-alibabacloud:stable@sha256:212c4cbe27da3772bcb952b8f8cbaa0b0eef72488b52edf90ad2b32072a3ca4c`

### operator-aws

`quay.io/cilium/operator-aws:v1.18.6@sha256:47dbc1a5bd483fec170dab7fb0bf2cca3585a4893675b0324d41d97bac8be5eb`
`quay.io/cilium/operator-aws:stable@sha256:47dbc1a5bd483fec170dab7fb0bf2cca3585a4893675b0324d41d97bac8be5eb`

### operator-azure

`quay.io/cilium/operator-azure:v1.18.6@sha256:a57aff47aeb32eccfedaa2a49d1af984d996d6d6de79609c232e0c4cf9ce97a1`
`quay.io/cilium/operator-azure:stable@sha256:a57aff47aeb32eccfedaa2a49d1af984d996d6d6de79609c232e0c4cf9ce97a1`

### operator-generic

`quay.io/cilium/operator-generic:v1.18.6@sha256:34a827ce9ed021c8adf8f0feca131f53b3c54a3ef529053d871d0347ec4d69af`
`quay.io/cilium/operator-generic:stable@sha256:34a827ce9ed021c8adf8f0feca131f53b3c54a3ef529053d871d0347ec4d69af`

### operator

`quay.io/cilium/operator:v1.18.6@sha256:0e8903aa092025918761d24ae9a91af35baa5b6910b5d0e3feac91ab8a2bc65b`
`quay.io/cilium/operator:stable@sha256:0e8903aa092025918761d24ae9a91af35baa5b6910b5d0e3feac91ab8a2bc65b`

