来源: https://github.com/cilium/cilium/releases/tag/v1.18.2

# cilium/cilium v1.18.2 Release Notes

Published at: 2025-09-17T16:15:56Z

Summary of Changes
------------------

**Minor Changes:**
* Fix validation bug where namespaced CiliumNetworkPolicies with nodeSelector in specs array were silently accepted but ignored. Now properly rejected with validation error. (Backport PR cilium/cilium#41365, Upstream PR cilium/cilium#40702, @pillai-ashwin)
* lbipam: do not reallocate IPs in LB IPAM on operator restart (Backport PR cilium/cilium#41267, Upstream PR cilium/cilium#41147, @marseel)
* lbipam: widening CIDR range or updating selector of CiliumLoadBalancerIPPool does no longer reassign IPs (Backport PR cilium/cilium#41267, Upstream PR cilium/cilium#41122, @marseel)

**Bugfixes:**
* Add option to configure BGP origin attribute for LoadBalancer IPs in BGP Control Plane v2, allowing smoother migration from MetalLB integration. (Backport PR cilium/cilium#41479, Upstream PR cilium/cilium#41231, @hanapedia)
* Add toleration for 'node.cloudprovider.kubernetes.io/uninitialized' to Cilium Operator (Backport PR cilium/cilium#41267, Upstream PR cilium/cilium#41098, @guettli)
* bgpv2: Avoid modifying CiliumBGPPeerConfig in resource store (Backport PR cilium/cilium#41267, Upstream PR cilium/cilium#41088, @rastislavs)
* bpf: add support for delinearized ARP packets (Backport PR cilium/cilium#41365, Upstream PR cilium/cilium#41233, @vsinitsyn)
* ctmap/gc: continue interval time on partial GC pass. (Backport PR cilium/cilium#41591, Upstream PR cilium/cilium#41258, @tommyp1ckles)
* Disable unnecessary headless service watching to reduce API server load in clusters not using the Gateway API or Ingress features. (Backport PR cilium/cilium#41479, Upstream PR cilium/cilium#40844, @moscicky)
* Fix "Error while correcting L4 checksum" dropped packets for ICMP destination unreachable error packets. (Backport PR cilium/cilium#41591, Upstream PR cilium/cilium#40194, @br4243)
* Fix "No mapping for NAT masquerade" flakes in the CI, make NAT LRU fallbacks more robust. (Backport PR cilium/cilium#41365, Upstream PR cilium/cilium#40971, @gentoo-root)
* Fix --exclude-local-address with eBPF Host-Routing (Backport PR cilium/cilium#41365, Upstream PR cilium/cilium#41275, @antonipp)
* Fix a BGP bug where the routerID specified in a CiliumBGPNodeConfigOverride was not correctly updated in RouterIDIPPool mode. (Backport PR cilium/cilium#41267, Upstream PR cilium/cilium#40340, @liyihuang)
* Fix a bug that would cause NodePort requests to be sent to the wrong backends when using KPR and Clustermesh with two identical, non-global NodePort services on different clusters. (Backport PR cilium/cilium#41591, Upstream PR cilium/cilium#41337, @pchaigno)
* Fix a bug where cilium-agent would report "Link not found" for an endpoint deleted during state restore after cilium-agent restart. (Backport PR cilium/cilium#41267, Upstream PR cilium/cilium#40568, @fristonio)
* Fix a regression where enabling unknown Hubble metrics would crash the cilium agent (Backport PR cilium/cilium#41479, Upstream PR cilium/cilium#41368, @devodev)
* Fix agent config initContainer unable to hit apiservers in apiServerURLs by passing as container arg (Backport PR cilium/cilium#41267, Upstream PR cilium/cilium#41110, @JJGadgets)
* Fix bug that would cause error messages when disabling agent health checks (Backport PR cilium/cilium#41479, Upstream PR cilium/cilium#41297, @HadrienPatte)
* Fix issue in Local Redirect Policies where traffic was dropped when no local pods were available to be redirected to. In these scenarios the traffic should have been processed as if the Local Redirect Policy did not exist. (Backport PR cilium/cilium#41591, Upstream PR cilium/cilium#41463, @joamaki)
* Fix issue where Local Redirect Policy (LRP) services with a single named port did not create a local redirect service entry. (Backport PR cilium/cilium#41591, Upstream PR cilium/cilium#41534, @aditighag)
* Fix the bug local redirect policy not doing filter based destination port (Backport PR cilium/cilium#41479, Upstream PR cilium/cilium#41411, @liyihuang)
* Fixes a cosmetic bug where the cilium_bpf_map_ops_total error count was incorrectly being incremented for map cilium_lb_affinity_match. (Backport PR cilium/cilium#41479, Upstream PR cilium/cilium#41378, @squeed)
* Fixes an issue in NodeManager where restored cluster nodes can be pruned before the initial node listing completes. (Backport PR cilium/cilium#41267, Upstream PR cilium/cilium#41039, @0xch4z)
* Helm: Ensure consistent default labels for all ServiceMonitor resources (Backport PR cilium/cilium#41267, Upstream PR cilium/cilium#41240, @baurmatt)
* iptables: Fix IPv6 SNAT for L7 proxy upstream traffic (Backport PR cilium/cilium#41249, Upstream PR cilium/cilium#41034, @gentoo-root)
* loadbalancer/writer: add support for SetIsServiceHealthCheckedFunc (Backport PR cilium/cilium#41267, Upstream PR cilium/cilium#41092, @mhofstetter)
* neighbor: Fix bug where neighbor discovery subsystem reports unhealthy when it is healthy (Backport PR cilium/cilium#41365, Upstream PR cilium/cilium#41186, @mhofstetter)
* pkg/ipam: fix nil dereference during pool shrink operation (Backport PR cilium/cilium#41365, Upstream PR cilium/cilium#41198, @alimehrabikoshki)
* policy: fix agent crash due to policy cache update-delete race (Backport PR cilium/cilium#41267, Upstream PR cilium/cilium#41079, @fristonio)

**CI Changes:**
* .github/actions: fix boolean condition check in post-logic action (Backport PR cilium/cilium#41479, Upstream PR cilium/cilium#41395, @aanm)
* .github/worfklows: copy cilium-cli binary from container (Backport PR cilium/cilium#41591, Upstream PR cilium/cilium#41524, @aanm)
* .github/workflows: add proper suffix for scale-test-egw (Backport PR cilium/cilium#41591, Upstream PR cilium/cilium#41477, @aanm)
* .github/workflows: add timeout to Install node local DNS step (Backport PR cilium/cilium#41267, Upstream PR cilium/cilium#41120, @aanm)
* .github/workflows: separate feature json files in different dirs (Backport PR cilium/cilium#41479, Upstream PR cilium/cilium#41403, @aanm)
* .github/workflows: simplify ginkgo workflow (Backport PR cilium/cilium#41479, Upstream PR cilium/cilium#41396, @aanm)
* .github/workflows: simplify ginkgo workflow (Backport PR cilium/cilium#41591, Upstream PR cilium/cilium#41396, @aanm)
* .github: fix upload artifacts for features.json (Backport PR cilium/cilium#41365, Upstream PR cilium/cilium#41119, @aanm)
* add missing extraArgs in CI (Backport PR cilium/cilium#41365, Upstream PR cilium/cilium#41005, @aanm)
* checkpatch: bump checkpatch version, and minor adaptations (Backport PR cilium/cilium#41365, Upstream PR cilium/cilium#41290, @giorio94)
* ci: Re-enable go caches for privileged tests (Backport PR cilium/cilium#41267, Upstream PR cilium/cilium#41102, @rastislavs)
* ci: simplify scheduled test (Backport PR cilium/cilium#41262, Upstream PR cilium/cilium#41261, @brlbil)
* Fix multiple workflows with missing features and steps (Backport PR cilium/cilium#41479, Upstream PR cilium/cilium#41398, @aanm)
* gh: e2e-upgrade: skip even more steps when not downgrading (Backport PR cilium/cilium#41591, Upstream PR cilium/cilium#41468, @julianwiedmann)
* gha: run checkpatch check only on PR events (Backport PR cilium/cilium#41365, Upstream PR cilium/cilium#41308, @giorio94)
* ipsec: fix xfrm privileged tests (Backport PR cilium/cilium#41365, Upstream PR cilium/cilium#41279, @smagnani96)
* node:tests: fix privileged (cilium/cilium#41281, @smagnani96)
* operator/bgpv2: Avoid race in TestRouterIDAllocation test (Backport PR cilium/cilium#41591, Upstream PR cilium/cilium#41499, @rastislavs)
* pkg/metrics: define default CIDR policies values (Backport PR cilium/cilium#41479, Upstream PR cilium/cilium#41422, @aanm)
* testutils: differentiate {Test,Benchmark}Privileged and fix benchmarks (Backport PR cilium/cilium#41267, Upstream PR cilium/cilium#41007, @smagnani96)
* workflows/ipsec: yet another fix for downgrade (Backport PR cilium/cilium#41365, Upstream PR cilium/cilium#41260, @smagnani96)

**Misc Changes:**
* .github/workflows: add step 5 as part of the image build process (Backport PR cilium/cilium#41177, Upstream PR cilium/cilium#41113, @aanm)
* bpf: fix svc annotation handling (Backport PR cilium/cilium#41365, Upstream PR cilium/cilium#41310, @borkmann)
* bpf: wireguard: re-add IPv6 fragment check in from-wireguard (Backport PR cilium/cilium#41479, Upstream PR cilium/cilium#41451, @julianwiedmann)
* build-images-release: specify main branch on reusable jobs (Backport PR cilium/cilium#41177, Upstream PR cilium/cilium#41530, @aanm)
* checkpatch: Update image digest (Backport PR cilium/cilium#41479, Upstream PR cilium/cilium#41360, @HadrienPatte)
* chore(deps): update actions/labeler action to v6.0.1 (v1.18) (cilium/cilium#41565, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#41351, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#41660, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.18) (cilium/cilium#41126, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.18) (cilium/cilium#41350, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.18) (cilium/cilium#41439, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.18) (cilium/cilium#41509, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.18) (cilium/cilium#41612, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf to v32.1 (v1.18) (cilium/cilium#41659, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.24.6 docker digest to 714ad64 (v1.18) (cilium/cilium#41349, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.24.6 docker digest to 8d9e57c (v1.18) (cilium/cilium#41437, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.24.7 docker digest to 5e9d14d (v1.18) (cilium/cilium#41656, @cilium-renovate[bot])
* chore(deps): update go to v1.24.7 (v1.18) (cilium/cilium#41566, @cilium-renovate[bot])
* chore(deps): update module github.com/go-viper/mapstructure/v2 to v2.4.0 [security] (v1.18) (cilium/cilium#41319, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.34.6-1756960514-59def10827e2fdea04b289bb00128526bde9d3c1 (v1.18) (cilium/cilium#41516, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.34.6-1757072375-ebd79127b3d1f27212d5426619daccdd15ad9e28 (v1.18) (cilium/cilium#41567, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.34.7-1757592137-1a52bb680a956879722f48c591a2ca90f7791324 (v1.18) (cilium/cilium#41657, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#41438, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#41658, @cilium-renovate[bot])
* ci: Update workflow permissions (Backport PR cilium/cilium#41479, Upstream PR cilium/cilium#41383, @kyle-c-simmons)
* doc: use correct policy-default-local-cluster inspect command in example (Backport PR cilium/cilium#41365, Upstream PR cilium/cilium#41118, @Preisschild)
* docs: Add missing dsrDispatch parameter to annotation-based DSR examples (Backport PR cilium/cilium#41479, Upstream PR cilium/cilium#40873, @gitsofaryan)
* docs: add table DSR Dispatch Mode following Routing Mode (Backport PR cilium/cilium#41591, Upstream PR cilium/cilium#41431, @alagoutte)
* docs: document portmap binary requirements (Backport PR cilium/cilium#41365, Upstream PR cilium/cilium#41300, @nbusseneau)
* Fix release script steps (Backport PR cilium/cilium#41177, Upstream PR cilium/cilium#41502, @aanm)
* Helm: Only insert nodePort for cilium-ingress-service if specified (Backport PR cilium/cilium#41267, Upstream PR cilium/cilium#41107, @baurmatt)
* install: bump startup script version (Backport PR cilium/cilium#41365, Upstream PR cilium/cilium#41299, @Artyop)
* kvstore: fix overly verbose debug log and error message (Backport PR cilium/cilium#41267, Upstream PR cilium/cilium#41148, @giorio94)
* loadbalancer: Fixes to test flakes (Backport PR cilium/cilium#41267, Upstream PR cilium/cilium#41085, @joamaki)
* Log kube-proxy replacement config before starting kube-proxy replacement (Backport PR cilium/cilium#41479, Upstream PR cilium/cilium#41133, @liyihuang)
* lower log severity for stale metadata to avoid CI issue (Backport PR cilium/cilium#41479, Upstream PR cilium/cilium#41389, @liyihuang)
* metrics/features: Fix counter metrics to use Set() instead of Add() (Backport PR cilium/cilium#41479, Upstream PR cilium/cilium#41382, @aanm)
* metrics/features: remove aws-vpc-cni (Backport PR cilium/cilium#41591, Upstream PR cilium/cilium#41498, @aanm)
* node/manager: Do not prune the local node on restart (Backport PR cilium/cilium#41591, Upstream PR cilium/cilium#41544, @joamaki)
* Prevent `cilium-dbg` from panicing when `/sys` is not mounted (Backport PR cilium/cilium#41365, Upstream PR cilium/cilium#41287, @HadrienPatte)
* Support extending cilium-agent dnsPolicy as a downstream packager (Backport PR cilium/cilium#41267, Upstream PR cilium/cilium#41010, @devodev)
* Update all github action dependencies (v1.18) (cilium/cilium#41216, @cilium-renovate[bot])
* Update dependency protocolbuffers/protobuf to v32 (v1.18) (cilium/cilium#41217, @cilium-renovate[bot])
* Update docker.io/library/golang:1.24.6 Docker digest to a18e9e0 (v1.18) (cilium/cilium#41214, @cilium-renovate[bot])
* Update stable lvh-images (v1.18) (patch) (cilium/cilium#41215, @cilium-renovate[bot])
* workflows/conformance-ginkgo: fix steps for stable branches (Backport PR cilium/cilium#41591, Upstream PR cilium/cilium#41599, @aanm)
* xds: fix NACK logging after slog migration (Backport PR cilium/cilium#41267, Upstream PR cilium/cilium#41171, @mhofstetter)

**Other Changes:**
* [v1.18] envoy: Start serving listeners only after clusters have been ACKed (cilium/cilium#41605, @jrajahalme)
* docs: Add new IAM permissions requirements to upgrade notes (cilium/cilium#41374, @HadrienPatte)
* install: Update image digests for v1.18.1 (cilium/cilium#41182, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.18.2@sha256:858f807ea4e20e85e3ea3240a762e1f4b29f1cb5bbd0463b8aa77e7b097c0667`
`quay.io/cilium/cilium:stable@sha256:858f807ea4e20e85e3ea3240a762e1f4b29f1cb5bbd0463b8aa77e7b097c0667`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.18.2@sha256:cd689a07bfc7622e812fef023cb277fdc695b60a960d36f32f93614177a7a0f6`
`quay.io/cilium/clustermesh-apiserver:stable@sha256:cd689a07bfc7622e812fef023cb277fdc695b60a960d36f32f93614177a7a0f6`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.18.2@sha256:be578aaae7274ef7155bd0a6d2f7c2d91085642aea4fdb24451ee9cab4ca2e5d`
`quay.io/cilium/docker-plugin:stable@sha256:be578aaae7274ef7155bd0a6d2f7c2d91085642aea4fdb24451ee9cab4ca2e5d`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.18.2@sha256:6079308ee15e44dff476fb522612732f7c5c4407a1017bc3470916242b0405ac`
`quay.io/cilium/hubble-relay:stable@sha256:6079308ee15e44dff476fb522612732f7c5c4407a1017bc3470916242b0405ac`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.18.2@sha256:612b1d94c179cd8ae239e571e96ebd95662bb5cccb62aacfdf79355aa9cdddc8`
`quay.io/cilium/operator-alibabacloud:stable@sha256:612b1d94c179cd8ae239e571e96ebd95662bb5cccb62aacfdf79355aa9cdddc8`

### operator-aws

`quay.io/cilium/operator-aws:v1.18.2@sha256:1cb856fbe265dfbcfe816bd6aa4acaf006ecbb22dcc989116a1a81bb269ea328`
`quay.io/cilium/operator-aws:stable@sha256:1cb856fbe265dfbcfe816bd6aa4acaf006ecbb22dcc989116a1a81bb269ea328`

### operator-azure

`quay.io/cilium/operator-azure:v1.18.2@sha256:9696e9b8219b9a5c16987e072eda2da378d42a32f9305375e56d7380a0c2ba8e`
`quay.io/cilium/operator-azure:stable@sha256:9696e9b8219b9a5c16987e072eda2da378d42a32f9305375e56d7380a0c2ba8e`

### operator-generic

`quay.io/cilium/operator-generic:v1.18.2@sha256:cb4e4ffc5789fd5ff6a534e3b1460623df61cba00f5ea1c7b40153b5efb81805`
`quay.io/cilium/operator-generic:stable@sha256:cb4e4ffc5789fd5ff6a534e3b1460623df61cba00f5ea1c7b40153b5efb81805`

### operator

`quay.io/cilium/operator:v1.18.2@sha256:0f234ce2ab0f30c09f4f9fe1b9c6323f0c6b66d789bef5e958fce7cff85960f3`
`quay.io/cilium/operator:stable@sha256:0f234ce2ab0f30c09f4f9fe1b9c6323f0c6b66d789bef5e958fce7cff85960f3`

