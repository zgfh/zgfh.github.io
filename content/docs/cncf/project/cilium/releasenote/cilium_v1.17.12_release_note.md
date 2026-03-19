来源: https://github.com/cilium/cilium/releases/tag/v1.17.12

# cilium/cilium v1.17.12 Release Notes

Published at: 2026-01-13T19:27:49Z

Summary of Changes
------------------

**Major Changes:**
* Publish Helm charts to OCI registries (Backport PR cilium/cilium#43687, Upstream PR cilium/cilium#43624, @aanm)

**Bugfixes:**
* Fix an issue in proxy NOTRACK iptables rule for aws-cni chaining mode which causes proxy->upstream(outside cluster) traffic not being SNAT'd. (Backport PR cilium/cilium#43677, Upstream PR cilium/cilium#43566, @fristonio)
* ipcache: Fix leak in CIDR metadata consolidation logic (Backport PR cilium/cilium#43426, Upstream PR cilium/cilium#43074, @christarazi)
* iptables: Fix IPv6 SNAT for L7 proxy upstream traffic (Backport PR cilium/cilium#43677, Upstream PR cilium/cilium#41034, @gentoo-root)
* xds: fix nil-pointer in `processRequestStream` (Backport PR cilium/cilium#43613, Upstream PR cilium/cilium#43609, @mhofstetter)

**CI Changes:**
* chore: comment job to use generated token instead of PAT (Backport PR cilium/cilium#43613, Upstream PR cilium/cilium#43148, @sekhar-isovalent)
* ci: Use newer lvh image for privileged tests (Backport PR cilium/cilium#43489, Upstream PR cilium/cilium#41082, @rastislavs)
* workflows/eks: Reduce test concurrency to 2 (cilium/cilium#43223, @smagnani96)

**Misc Changes:**
* Add documentation and examples for using the egressDeny field in CiliumNetworkPolicy (Backport PR cilium/cilium#43426, Upstream PR cilium/cilium#40272, @syedazeez337)
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#43469, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#43669, @cilium-renovate[bot])
* chore(deps): update anchore/sbom-action action to v0.21.0 (v1.17) (cilium/cilium#43513, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.18.9 (v1.17) (cilium/cilium#43186, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf to v33.3 (v1.17) (cilium/cilium#43668, @cilium-renovate[bot])
* chore(deps): update docker.io/library/busybox:1.37.0 docker digest to 2383baa (v1.17) (cilium/cilium#43666, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.24.11 docker digest to 54528d1 (v1.17) (cilium/cilium#43417, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.24.11 docker digest to a61b432 (v1.17) (cilium/cilium#43544, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.34.12-1767177245-7935d4d711cb6f8020385a50c996b90896e16a71 (v1.17) (cilium/cilium#43545, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.17) (patch) (cilium/cilium#43468, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.17) (patch) (cilium/cilium#43547, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.17) (patch) (cilium/cilium#43572, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.17) (patch) (cilium/cilium#43667, @cilium-renovate[bot])
* release: change OCI registry (Backport PR cilium/cilium#43687, Upstream PR cilium/cilium#43646, @aanm)
* route: install ingress proxy routes with WireGuard and L7Proxy (Backport PR cilium/cilium#43435, Upstream PR cilium/cilium#42835, @smagnani96)

**Other Changes:**
* [v1.17] bpf:hubble: support policy verdict from L3 devices (cilium/cilium#43382, @smagnani96)
* [v1.17] deps: bump CNI plugins version to v1.9.0 (cilium/cilium#43592, @diyi0926)
* [v1.17] ipcache: Fix leak in CIDR metadata consolidation logic (cilium/cilium#43355, @christarazi)
* install: Update image digests for v1.17.11 (cilium/cilium#43399, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.17.12@sha256:f525e12698149b3958024599493d9cc56fadbc46c9250cbced8016e9b9b679e5`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.17.12@sha256:4c26ba1e62c44df28d58fc5bd8e1a87aa1d442aa081ff3e170e122f0106cd006`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.17.12@sha256:4a17b4cfa041a0206242b2ead6c83598c2aec34c4d470c614d673840427f04e0`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.17.12@sha256:ef2a294e81f91c74b729794f7098d61ee21b4c2efa11461c4e62623f5b5c240c`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.17.12@sha256:fda5705cb82d601172b25f098031960bf79cad86a43acc180e7176be001b263f`

### operator-aws

`quay.io/cilium/operator-aws:v1.17.12@sha256:9b9aebf43f6ddd59a2db05a523422842d69c88662a901effabda8bca242136be`

### operator-azure

`quay.io/cilium/operator-azure:v1.17.12@sha256:69c9aea1b3d41017fc5f0066b818d4b8c123067f53feef4d855baad9daeb6515`

### operator-generic

`quay.io/cilium/operator-generic:v1.17.12@sha256:0b675406b1e43b198962d4f9c3a5ba6bb68fc98836cba05b224860109112f6d9`

### operator

`quay.io/cilium/operator:v1.17.12@sha256:42d19b80461bad1d0f4f0f08aa23ff5a5e3950ef516c1c514cb053144da336b8`

