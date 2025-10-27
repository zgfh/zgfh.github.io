来源: https://github.com/cilium/cilium/releases/tag/v1.18.3

# cilium/cilium v1.18.3 Release Notes

Published at: 2025-10-24T14:20:17Z

Summary of Changes
------------------

:information_source: The images in this release were signed with cosign v3. Please use cosign v3 tooling to validate signatures with the following command syntax:

```
cosign verify --certificate-github-workflow-repository cilium/cilium --certificate-oidc-issuer https://token.actions.githubusercontent.com --certificate-github-workflow-name 'Image Release Build' --certificate-github-workflow-ref refs/tags/v1.18.3 --certificate-identity https://github.com/cilium/cilium/.github/workflows/build-images-releases.yaml@refs/tags/v1.18.3 quay.io/cilium/operator-aws:v1.18.3 | jq -r '.[].critical.image'
```

**Minor Changes:**
* Fix a complexity issue for the bpf_xdp program (Backport PR cilium/cilium#42198, Upstream PR cilium/cilium#42193, @aspsk)
* hubble: mark kafka l7 visibility as deprecated (Backport PR cilium/cilium#41968, Upstream PR cilium/cilium#41072, @kaworu)

**Bugfixes:**
* add the port name for address based LRP so frontend can pick the right backend (Backport PR cilium/cilium#41828, Upstream PR cilium/cilium#41602, @liyihuang)
* Avoid scenario where ENI device configuration can be skipped. (Backport PR cilium/cilium#41968, Upstream PR cilium/cilium#41760, @jasonaliyetti)
* Cilium now configures Envoy to allow websocket connections to be passed through with HTTP policies. (Backport PR cilium/cilium#41828, Upstream PR cilium/cilium#41729, @jrajahalme)
* Fix a bug that was preventing Cilium to delete stale pod CIDRs routes when changing routing mode to native (Backport PR cilium/cilium#41968, Upstream PR cilium/cilium#41819, @pippolo84)
* Fix a fatal error when accessing multicast map using cilium-dbg bpf multicast (Backport PR cilium/cilium#42151, Upstream PR cilium/cilium#42080, @tklauser)
* Fix BGP auto discovery not sending community info (Backport PR cilium/cilium#41968, Upstream PR cilium/cilium#41920, @jiashengz)
* Fix bug in ENI routing where Cilium would chose the wrong subnet for routing traffic on secondary interfaces (Backport PR cilium/cilium#41828, Upstream PR cilium/cilium#40860, @liyihuang)
* Fix bug that could cause ICMP error packets to have an incorrect inner IP checksum when KPR is enabled. (Backport PR cilium/cilium#41828, Upstream PR cilium/cilium#41551, @yushoyamaguchi)
* Fix bug with delegated IPAM where IPv6 traffic was routed via the wrong interface (Backport PR cilium/cilium#41968, Upstream PR cilium/cilium#41598, @NihaNallappagari)
* Fix failing node health check on dual stack cluster if NodeInternalIPs are not configured for both families. (Backport PR cilium/cilium#42055, Upstream PR cilium/cilium#41633, @Dennor)
* Fix increase in memory usage when service names are looked up at high rate during Hubble flow creation (Backport PR cilium/cilium#42151, Upstream PR cilium/cilium#41965, @joamaki)
* Fix panic at startup in IPsec subsystem with Multi-Pool IPAM mode (cilium/cilium#41725, @pippolo84)
* Fix race condition preventing the skiplbmap BPF map from sometimes being pruned after restart. (Backport PR cilium/cilium#41828, Upstream PR cilium/cilium#41529, @joamaki)
* Fixes a rare bug where endpoints may have incomplete policies in large clusters. (Backport PR cilium/cilium#42151, Upstream PR cilium/cilium#42049, @squeed)
* hostfw: also exclude non-transparent proxy traffic when BPF masq is enabled (Backport PR cilium/cilium#41989, Upstream PR cilium/cilium#41915, @julianwiedmann)
* Ignore expected error in neighbor reconciliation (Backport PR cilium/cilium#41968, Upstream PR cilium/cilium#41815, @dylandreimerink)
* loadbalancer: allow HostPort for multiple protos on same port (Backport PR cilium/cilium#41913, Upstream PR cilium/cilium#41521, @bersoare)
* operator/pkg/lbipam: fix LoadBalancerIPPool conditions update logic (Backport PR cilium/cilium#41828, Upstream PR cilium/cilium#41322, @alimehrabikoshki)

**CI Changes:**
* .actions/cilium-config: add missing extraEnv in GH action (Backport PR cilium/cilium#41828, Upstream PR cilium/cilium#41420, @aanm)
* .github/workflows: add variable for renovate bot username (Backport PR cilium/cilium#41843, Upstream PR cilium/cilium#41818, @aanm)
* .github/workflows: automatically add /test for renovate PRs (Backport PR cilium/cilium#41843, Upstream PR cilium/cilium#41770, @aanm)
* .github/workflows: do not wait on linters form forks (Backport PR cilium/cilium#41828, Upstream PR cilium/cilium#41822, @aanm)
* .github/workflows: remove reviewers requested by auto-committer[bot] (Backport PR cilium/cilium#41828, Upstream PR cilium/cilium#41759, @aanm)
* cli: Fix unreliable tests due to error emitted in Cilium logs "retrieving device lxc*: Link not found" (Backport PR cilium/cilium#42200, Upstream PR cilium/cilium#42146, @fristonio)
* gha: Correct k8s version for f12-datapath-service-ns-misc (Backport PR cilium/cilium#41756, Upstream PR cilium/cilium#41753, @sayboras)
* ginkgo: add test ownership for ginkgo tests (Backport PR cilium/cilium#42055, Upstream PR cilium/cilium#41950, @aanm)
* Streamline ci-multi-pool workflow (Backport PR cilium/cilium#41631, Upstream PR cilium/cilium#40658, @pippolo84)
* workflows: fix GCP OIDC authentication's project ID (cilium/cilium#42173, @nbusseneau)

**Misc Changes:**
* .github/workflows: stop build CI images until base images are built (Backport PR cilium/cilium#41828, Upstream PR cilium/cilium#41681, @aanm)
* agent: Add Cilium health config cell (Backport PR cilium/cilium#42055, Upstream PR cilium/cilium#41627, @aditighag)
* bpf/nat: Move `ipv6_nat_entry` to map (Backport PR cilium/cilium#41968, Upstream PR cilium/cilium#41902, @pchaigno)
* bpf: hostfw: have from-host always pass the ipcache-based src identity (Backport PR cilium/cilium#42113, Upstream PR cilium/cilium#42093, @julianwiedmann)
* bpf: Only send fillup signal to agent on ENOMEM error (Backport PR cilium/cilium#41968, Upstream PR cilium/cilium#41864, @borkmann)
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#41795, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#41931, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#42028, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#42136, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#42264, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.18) (cilium/cilium#41716, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.18) (cilium/cilium#41793, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.18) (cilium/cilium#42035, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.18) (cilium/cilium#42116, @cilium-renovate[bot])
* chore(deps): update dependency cilium/little-vm-helper to v0.0.27 (v1.18) (cilium/cilium#42263, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf to v33 (v1.18) (cilium/cilium#42265, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.24.7 docker digest to 2c5f7a0 (v1.18) (cilium/cilium#42026, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.24.7 docker digest to 87916ac (v1.18) (cilium/cilium#41792, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.24.9 docker digest to 02ce1d7 (v1.18) (cilium/cilium#42253, @cilium-renovate[bot])
* chore(deps): update go to v1.24.8 (v1.18) (cilium/cilium#42062, @cilium-renovate[bot])
* chore(deps): update go to v1.24.9 (v1.18) (cilium/cilium#42166, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.34.7-1759058812-49b096a457d6e7f6d650229cbf95c63d59759331 (v1.18) (cilium/cilium#41933, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#41730, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#41794, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#41930, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#42027, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#42135, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#42300, @cilium-renovate[bot])
* doc: add note on hostfw and ipsec interaction (Backport PR cilium/cilium#41968, Upstream PR cilium/cilium#41810, @darox)
* docs/dsr: Remove IPIP example configuration (Backport PR cilium/cilium#41828, Upstream PR cilium/cilium#41701, @pchaigno)
* docs: Clarify list of capabilities in threat model (Backport PR cilium/cilium#41828, Upstream PR cilium/cilium#41682, @joestringer)
* docs: fix broken Chainguard SBOM link (Backport PR cilium/cilium#41828, Upstream PR cilium/cilium#41719, @yashisrani)
* docs: remove stale kernel requirements (Backport PR cilium/cilium#42151, Upstream PR cilium/cilium#42081, @julianwiedmann)
* docs: Update iproute2 compile steps in reference guide. (Backport PR cilium/cilium#41828, Upstream PR cilium/cilium#41638, @dkanaliev)
* endpoint: reduce missed-policy-update log severity for restoring eps (Backport PR cilium/cilium#42055, Upstream PR cilium/cilium#41095, @fristonio)
* endpointsynchronizer: suppress warning log when endpoint is terminating (Backport PR cilium/cilium#41828, Upstream PR cilium/cilium#41755, @giorio94)
* gateway-api: Fix incorrect `Owns` call in refactor (Backport PR cilium/cilium#41968, Upstream PR cilium/cilium#41807, @youngnick)
* hubble: allow overrrides if building from outside the tree (Backport PR cilium/cilium#41828, Upstream PR cilium/cilium#41726, @tklauser)
* ipsec: add support for using remote PodCIDR entries (Backport PR cilium/cilium#42073, Upstream PR cilium/cilium#41519, @julianwiedmann)
* Make kubeProxyReplacement available in the reference and documentation (Backport PR cilium/cilium#41968, Upstream PR cilium/cilium#41535, @liyihuang)
* redirectpolicy: Always OpenOrCreate SkipLB map to avoid loader race (Backport PR cilium/cilium#41968, Upstream PR cilium/cilium#41707, @joamaki)
* redirectpolicy: Fix comparison of BackendParams (Backport PR cilium/cilium#41848, Upstream PR cilium/cilium#41705, @joamaki)
* Remove kiam documentation from Local Redirect Policy (Backport PR cilium/cilium#41968, Upstream PR cilium/cilium#41644, @liyihuang)
* Update `checkpatch` and `startup-script` image digest (Backport PR cilium/cilium#41828, Upstream PR cilium/cilium#41710, @HadrienPatte)

**Other Changes:**
* [v1.18] gateway-api: Refactor Gateway API reconciler (cilium/cilium#41720, @youngnick)
* [v1.18] workflows/release: add secrets for step 4 and 5 (cilium/cilium#41733, @jrajahalme)
* install: Update image digests for v1.18.2 (cilium/cilium#41722, @cilium-release-bot[bot])
* proxy: Bump cilium-envoy to 1.34.10 (cilium/cilium#42251, @sayboras)


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.18.3@sha256:5649db451c88d928ea585514746d50d91e6210801b300c897283ea319d68de15`
`quay.io/cilium/cilium:stable@sha256:5649db451c88d928ea585514746d50d91e6210801b300c897283ea319d68de15`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.18.3@sha256:0d15efc992a85003759232598bf05fb1a4cd3c9fa28fb96bee1789ffe27cc50d`
`quay.io/cilium/clustermesh-apiserver:stable@sha256:0d15efc992a85003759232598bf05fb1a4cd3c9fa28fb96bee1789ffe27cc50d`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.18.3@sha256:996d9fa5747175b1806ce01dd90dc586a5f52a32b7da409937a1f42714827d67`
`quay.io/cilium/docker-plugin:stable@sha256:996d9fa5747175b1806ce01dd90dc586a5f52a32b7da409937a1f42714827d67`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.18.3@sha256:e53e00c47fe4ffb9c086bad0c1c77f23cb968be4385881160683d9e15aa34dc3`
`quay.io/cilium/hubble-relay:stable@sha256:e53e00c47fe4ffb9c086bad0c1c77f23cb968be4385881160683d9e15aa34dc3`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.18.3@sha256:df8b6830ef0545199cffc5fb9fbf14c9dc8d92093b0e6355d8659705227f89ef`
`quay.io/cilium/operator-alibabacloud:stable@sha256:df8b6830ef0545199cffc5fb9fbf14c9dc8d92093b0e6355d8659705227f89ef`

### operator-aws

`quay.io/cilium/operator-aws:v1.18.3@sha256:ef39d61183b3bdf0e235650461b6c4d9ec7aa5f61a6c770f33c47a6bc5165e24`
`quay.io/cilium/operator-aws:stable@sha256:ef39d61183b3bdf0e235650461b6c4d9ec7aa5f61a6c770f33c47a6bc5165e24`

### operator-azure

`quay.io/cilium/operator-azure:v1.18.3@sha256:10a8a83ca6f0b02432c1ca0e67af98a48fdbefb684af44a399f58184ab174143`
`quay.io/cilium/operator-azure:stable@sha256:10a8a83ca6f0b02432c1ca0e67af98a48fdbefb684af44a399f58184ab174143`

### operator-generic

`quay.io/cilium/operator-generic:v1.18.3@sha256:b5a0138e1a38e4437c5215257ff4e35373619501f4877dbaf92c89ecfad81797`
`quay.io/cilium/operator-generic:stable@sha256:b5a0138e1a38e4437c5215257ff4e35373619501f4877dbaf92c89ecfad81797`

### operator

`quay.io/cilium/operator:v1.18.3@sha256:e350cea751afeae2f226a1bc275649c77a04a1e1ff50e61d782a371eae6fb2ff`
`quay.io/cilium/operator:stable@sha256:e350cea751afeae2f226a1bc275649c77a04a1e1ff50e61d782a371eae6fb2ff`

