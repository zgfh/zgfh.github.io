来源: https://github.com/cilium/cilium/releases/tag/v1.18.10

# cilium/cilium v1.18.10 Release Notes

Published at: 2026-05-13T18:43:12Z

Summary of Changes
------------------

**Bugfixes:**
* Fix cilium-agent crash when a transient network error occurs during CiliumNode update. The agent now retries instead of calling Fatal. (Backport PR cilium/cilium#45753, Upstream PR cilium/cilium#44526, @nebojsaj1726)
* Fix CiliumLocalRedirectPolicy addressMatcher overriding an existing Service's frontend when its backend pods are not yet Ready. (Backport PR cilium/cilium#45585, Upstream PR cilium/cilium#45522, @ysksuzuki)
* Fix missing global service backends in Cluster Mesh when multiple service ports point to the same target port. (Backport PR cilium/cilium#45354, Upstream PR cilium/cilium#45179, @RiccardoAtzori91)
* fix(egressGateway): skip unmatched gateways when using multiple gateway (Backport PR cilium/cilium#45631, Upstream PR cilium/cilium#44705, @ieth0)
* fix(ipsec): panic in parseSPI on malformed input (Backport PR cilium/cilium#45498, Upstream PR cilium/cilium#44815, @isoyuki)

**CI Changes:**
* egressgw: add test helpers with explicit reconciliation (Backport PR cilium/cilium#45631, Upstream PR cilium/cilium#41475, @julianwiedmann)
* gha/clustermesh: use OCI registry for cert-manager (Backport PR cilium/cilium#45354, Upstream PR cilium/cilium#45326, @giorio94)
* Use extra power github runner if available for multi-pool CI workflow (Backport PR cilium/cilium#45674, Upstream PR cilium/cilium#45555, @fristonio)

**Misc Changes:**
* Add documentation and warnings on DNS interception (Backport PR cilium/cilium#45889, Upstream PR cilium/cilium#45525, @ferozsalam)
* chore(deps): update all external docker images dependencies to v0.13.5 (v1.18) (patch) (cilium/cilium#45470, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#45474, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#45731, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#45743, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#45873, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#45883, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.18) (cilium/cilium#45732, @cilium-renovate[bot])
* chore(deps): update base-images (v1.18) (cilium/cilium#45473, @cilium-renovate[bot])
* chore(deps): update base-images (v1.18) (cilium/cilium#45617, @cilium-renovate[bot])
* chore(deps): update base-images (v1.18) (cilium/cilium#45733, @cilium-renovate[bot])
* chore(deps): update base-images to v1.25.10 (v1.18) (cilium/cilium#45903, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to 354584b (v1.18) (cilium/cilium#45616, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to 44f0fdb (v1.18) (cilium/cilium#45479, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to 6e3229e (v1.18) (cilium/cilium#45621, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to b782452 (v1.18) (cilium/cilium#45489, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to e7d728c (v1.18) (cilium/cilium#45748, @cilium-renovate[bot])
* chore(deps): update dependency bufbuild/buf to v1.69.0 (v1.18) (cilium/cilium#45874, @cilium-renovate[bot])
* chore(deps): update gcr.io/etcd-development/etcd docker tag to v3.6.11 (v1.18) (cilium/cilium#45904, @cilium-renovate[bot])
* chore(deps): update module github.com/moby/spdystream to v0.5.1 [security] (v1.18) (cilium/cilium#45432, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/certgen docker tag to v0.4.2 (v1.18) (cilium/cilium#45502, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/certgen docker tag to v0.4.3 (v1.18) (cilium/cilium#45517, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.6-1776352947-78da350f53f63526ff6487f2e1f3b14d2062ce17 (v1.18) (cilium/cilium#45471, @cilium-renovate[bot])
* ci: make registry configurable (cilium/cilium#45438, @Artyop)
* docs: add small CiliumCIDRGroup scalability callout (Backport PR cilium/cilium#45889, Upstream PR cilium/cilium#45763, @squeed)
* fix(deps): update k8s.io patch updates stable to v0.33.11 (v1.18) (patch) (cilium/cilium#45472, @cilium-renovate[bot])
* helm: allow overriding of external images in charts (Backport PR cilium/cilium#45631, Upstream PR cilium/cilium#45597, @sekhar-isovalent)
* test/operator: fix TestUpdateUsedCIDIsReverted flakiness (Backport PR cilium/cilium#45631, Upstream PR cilium/cilium#41739, @giorio94)

**Other Changes:**
* [v1.18] deps: bump x/net to v0.53 (cilium/cilium#45938, @thorn3r)
* [v1.18] ipam: fix data race in MultiPoolManager node update (cilium/cilium#45520, @Kunalbehbud)
* chore(deps): update quay.io/cilium/cilium-envoy (cilium/cilium#45909, @sayboras)
* ci: conformance gke using extended channels (cilium/cilium#44557, @Artyop)
* ci: fix gke matrix (cilium/cilium#45655, @Artyop)
* install: Update image digests for v1.18.9 (cilium/cilium#45400, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.18.10@sha256:dd573bc2f7213dbd978e564a363ecaad060e9578ed557b92b53e42eeeb0f2294`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.18.10@sha256:59f806137c7b153504d4352254e48a03714e924e797c89a7e6f18c6f9c39f80a`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.18.10@sha256:5602ac037c5541e1999808f9195913de848b9b1b8b863434b89fd2d5d9c7f27c`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.18.10@sha256:6f320095640b8e7bb4c1c9efdd0ed46302d0d684c3ea04eb341ca7e0618ef740`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.18.10@sha256:ed72bbf23849ea772acda3960d060200d7893b41c2228b2805706a608e0e2ee9`

### operator-aws

`quay.io/cilium/operator-aws:v1.18.10@sha256:9bb1f11266ee9ee85a218206c47bc180a62c168ea295834149c05f54b76a44c1`

### operator-azure

`quay.io/cilium/operator-azure:v1.18.10@sha256:997ffc723ab7a542e86558721de8167a24e7a45a6c9caba9a74ab3b427620562`

### operator-generic

`quay.io/cilium/operator-generic:v1.18.10@sha256:ab08d58fd12e98d9a9601d4b52beee839ff2537fba73d262aabad222454a16b3`

### operator

`quay.io/cilium/operator:v1.18.10@sha256:a62e6af4e3d0a57998ea76c398f6eaba0f0b6502de0cadd7a4153bf81f96102d`

