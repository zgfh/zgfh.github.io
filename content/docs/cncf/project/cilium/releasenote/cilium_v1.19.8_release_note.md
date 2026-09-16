来源: https://github.com/cilium/cilium/releases/tag/v1.19.8

# cilium/cilium v1.19.8 Release Notes

Published at: 2026-09-16T01:53:16Z

Summary of Changes
------------------

**Bugfixes:**
* aws/ipam: Fixed a bug where the operator would fail to allocate new IPs to nodes with prefix delegation enabled on subnets that ran out of prefixes. (Backport PR cilium/cilium#48604, Upstream PR cilium/cilium#48193, @41ks)
* bpf: Fix agent crash when dumping map events (Backport PR cilium/cilium#48379, Upstream PR cilium/cilium#48273, @joestringer)
* bpf: hostfw: tolerate unknown CT protocols and rely on policies (Backport PR cilium/cilium#47620, Upstream PR cilium/cilium#47343, @smagnani96)
* datapath/linux/config: fix IPV4_DIRECT_ROUTING selection on lo device (Backport PR cilium/cilium#48552, Upstream PR cilium/cilium#46861, @fdomain)
* Fix Hubble Relay remains running during termination (Backport PR cilium/cilium#48552, Upstream PR cilium/cilium#47942, @xandau)
* Fix missing config setup for 'enable-non-default-deny-policies' flag (Backport PR cilium/cilium#48552, Upstream PR cilium/cilium#48391, @fristonio)
* Fix nodeport egress tuple reuse for closed connections (Backport PR cilium/cilium#48413, Upstream PR cilium/cilium#48306, @fristonio)
* Fix restored ENI endpoints routing rule configuration when masquerading config changes (cilium/cilium#48422, @fristonio)
* fix(socketlb): only detach Cilium-owned cgroup programs (Backport PR cilium/cilium#48552, Upstream PR cilium/cilium#44066, @puwun)
* Fixed a bug that caused the clustermesh-apiserver etcd users managements logic to not revoke stale roles upon configuration change; users leveraging the configuration provided by the Cilium helm chart are not affected, as the target etcd role is never changed. (Backport PR cilium/cilium#48214, Upstream PR cilium/cilium#47915, @giorio94)
* Fixed five configuration options that were accepted but silently ignored: `vtep-sync-interval`, `enable-xt-socket-fallback`, `eni-delete-on-termination` with a custom CNI configuration, the `enableIdentityMark` Helm value outside CNI chaining mode, and `lb-retry-backoff-max`. (Backport PR cilium/cilium#48433, Upstream PR cilium/cilium#47635, @aanm)
* hubble: fix four config knobs that never reach their sink (Backport PR cilium/cilium#48433, Upstream PR cilium/cilium#47637, @aanm)
* operator: Emit startup logs in the configured log format (Backport PR cilium/cilium#48018, Upstream PR cilium/cilium#47890, @HadrienPatte)
* standalone-dns-proxy: return an error when no endpoint is found (Backport PR cilium/cilium#48018, Upstream PR cilium/cilium#47791, @vipul-21)
* Strengthen the validation when ingesting service backends from Cluster Mesh to prevent issues in case of specially crafted values (Backport PR cilium/cilium#48413, Upstream PR cilium/cilium#48015, @giorio94)

**CI Changes:**
* [v1.19] golangci-lint: Do not run the modernize linter (cilium/cilium#48399, @aanm)
* .github: Bump cilium/reusable-workflows to v0.1.1 (Backport PR cilium/cilium#48552, Upstream PR cilium/cilium#48462, @joestringer)
* BPF: Refactor nat tests to use scapy fixtures and add checksum coverage (Backport PR cilium/cilium#48123, Upstream PR cilium/cilium#47222, @tommyp1ckles)
* bpf: tests: collapse more tests (Backport PR cilium/cilium#48063, Upstream PR cilium/cilium#46374, @julianwiedmann)
* bpf: tests: collapse XDP DSR tests (Backport PR cilium/cilium#48063, Upstream PR cilium/cilium#46174, @julianwiedmann)
* bpf: tests: condense a bunch of LB tests (Backport PR cilium/cilium#48063, Upstream PR cilium/cilium#46358, @julianwiedmann)
* ci: replace unsupported LLVM installation action (Backport PR cilium/cilium#48413, Upstream PR cilium/cilium#47776, @bogdankrasko)
* ci: resolve renovate PR metadata in base image workflows (Backport PR cilium/cilium#48214, Upstream PR cilium/cilium#47964, @mhofstetter)
* ci: stop asking a PHP app for the AKS runner IP (Backport PR cilium/cilium#48552, Upstream PR cilium/cilium#48371, @aanm)
* ci: use GitHub App client ID in v1.19 image workflow (Backport PR cilium/cilium#48214, Upstream PR cilium/cilium#47786, @bogdankrasko)
* gha/conformance-aks: add a timeout to the cluster create step (Backport PR cilium/cilium#48552, Upstream PR cilium/cilium#48545, @aanm)
* gha/conformance-aks: give the nodes a 64 GiB OS disk (Backport PR cilium/cilium#48552, Upstream PR cilium/cilium#48481, @aanm)
* gha/kubespray: don't wait for CoreDNS before Cilium is installed (Backport PR cilium/cilium#48214, Upstream PR cilium/cilium#48048, @aanm)
* gha: bound the LLVM prereq apt step with a 5m timeout (Backport PR cilium/cilium#48214, Upstream PR cilium/cilium#48069, @aanm)
* gha: compute the ginkgo cache key once, before the matrix (Backport PR cilium/cilium#48214, Upstream PR cilium/cilium#48127, @aanm)
* gha: move GCP auth pin past the STS token exchange retry fix (Backport PR cilium/cilium#48413, Upstream PR cilium/cilium#48352, @aanm)
* gha: publish the external target hostnames as FQDNs (Backport PR cilium/cilium#48552, Upstream PR cilium/cilium#48478, @aanm)
* gha: stop JUnit reports being destroyed by same-name legs (Backport PR cilium/cilium#48433, Upstream PR cilium/cilium#48203, @aanm)
* Migrate Conformance Cluster Mesh workflow to use fake external targets (Backport PR cilium/cilium#48655, Upstream PR cilium/cilium#48250, @giorio94)
* Revert 48442 - disable local accounts on AKS clusters (cilium/cilium#48525, @aanm)
* test(bpf): parallelize eBPF test execution (Backport PR cilium/cilium#48214, Upstream PR cilium/cilium#47427, @lconnery)
* test/k8s: wait for the L7 visibility policy to be realized (Backport PR cilium/cilium#48413, Upstream PR cilium/cilium#48365, @aanm)
* test: fix the never-taken retry on a partially read JSON line (Backport PR cilium/cilium#48633, Upstream PR cilium/cilium#48190, @aanm)
* tools: complexity: de-couple StackDepth from kernel version (Backport PR cilium/cilium#48266, Upstream PR cilium/cilium#48236, @julianwiedmann)
* workflows: disable local accounts on AKS clusters (cilium/cilium#48442, @nbusseneau)

**Misc Changes:**
* Add extension points for cilium-envoy Daemonset readiness, liveness and startup probes (Backport PR cilium/cilium#48633, Upstream PR cilium/cilium#48421, @0xch4z)
* bpf: nodeport: remove Ingress HostFW Policy between RevSNAT and RevDNAT (Backport PR cilium/cilium#48285, Upstream PR cilium/cilium#46232, @julianwiedmann)
* chore(deps): update all external docker images dependencies to v0.13.6 (v1.19) (cilium/cilium#48678, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#48332, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#48509, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#48681, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.19) (cilium/cilium#48155, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.19) (cilium/cilium#48331, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.19) (cilium/cilium#48620, @cilium-renovate[bot])
* chore(deps): update base-images (v1.19) (cilium/cilium#48151, @cilium-renovate[bot])
* chore(deps): update base-images to v1.26.8 (v1.19) (cilium/cilium#48731, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.20.0 (v1.19) (cilium/cilium#48345, @cilium-renovate[bot])
* chore(deps): update dependency go to v1.25.14 (v1.19) (cilium/cilium#48208, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf to v36 (v1.19) (cilium/cilium#48333, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf to v36.1 (v1.19) (cilium/cilium#48508, @cilium-renovate[bot])
* chore(deps): update docker/setup-qemu-action action to v4.3.0 (v1.19) (cilium/cilium#48518, @cilium-renovate[bot])
* chore(deps): update golangci/golangci-lint docker tag to v2.13.2 (v1.19) (cilium/cilium#48732, @cilium-renovate[bot])
* chore(deps): update google/cloud-sdk docker tag to v581 (v1.19) (cilium/cilium#48156, @cilium-renovate[bot])
* chore(deps): update helm/kind-action action to v1.15.0 (v1.19) (cilium/cilium#48592, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/certgen docker tag to v0.4.11 (v1.19) (cilium/cilium#48152, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.10-1787983435-8f34575affde33ad364d1e669b953993bf1f4125 (v1.19) (cilium/cilium#48328, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.37.6-1788432471-d053be1912db91dc0e031d7676a7cbbf31b67fe2 (v1.19) (cilium/cilium#48452, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.37.6-1789133542-cbec91f666af0bf742da986d43832932dbb26b82 (v1.19) (cilium/cilium#48679, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.19) (patch) (cilium/cilium#48153, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.19) (patch) (cilium/cilium#48329, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.19) (patch) (cilium/cilium#48507, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.19) (patch) (cilium/cilium#48680, @cilium-renovate[bot])
* docs: Improve build process (Backport PR cilium/cilium#48552, Upstream PR cilium/cilium#47751, @joestringer)
* docs: remove outdated tip about disabling hubble before enabling UI (Backport PR cilium/cilium#48633, Upstream PR cilium/cilium#48487, @ekoops)
* docs: Remove v1.18 ipsec documentation (Backport PR cilium/cilium#48413, Upstream PR cilium/cilium#48224, @joestringer)
* Document that Gateway API needs iptables and the netfilter TPROXY modules on nodes when bpf.tproxy is disabled (the default). (Backport PR cilium/cilium#48552, Upstream PR cilium/cilium#48428, @marcus-chae)
* Documentation: document mesh security model (Backport PR cilium/cilium#48413, Upstream PR cilium/cilium#47912, @bimmlerd)
* Fix byte ordering of TCP fields in BPF integration tests. (Backport PR cilium/cilium#48063, Upstream PR cilium/cilium#44336, @ajmmm)
* Fix Component Overview doc link rendering (Backport PR cilium/cilium#48633, Upstream PR cilium/cilium#48537, @eneiss)
* fix(deps): update k8s.io patch updates stable to v0.35.8 (v1.19) (cilium/cilium#48330, @cilium-renovate[bot])
* fix(deps): update module k8s.io/apimachinery to v0.35.8 (v1.19) (cilium/cilium#48154, @cilium-renovate[bot])
* Fixed broken Slack link on Community page. (Backport PR cilium/cilium#48413, Upstream PR cilium/cilium#48021, @ps-mir)
* Fixes: Update node-cache image version to 1.26.5 (Backport PR cilium/cilium#48633, Upstream PR cilium/cilium#48270, @zyue110026)
* gha: authenticate release images with OIDC (Backport PR cilium/cilium#48598, Upstream PR cilium/cilium#48062, @aanm)
* gha: authenticate stable Image CI to quay.io with OIDC (Backport PR cilium/cilium#48059, Upstream PR cilium/cilium#48061, @aanm)
* gha: correct and move the OIDC subject comments (Backport PR cilium/cilium#48059, Upstream PR cilium/cilium#48370, @aanm)
* gha: raise the Docker Hub OIDC token lifetime for release builds (Backport PR cilium/cilium#48598, Upstream PR cilium/cilium#48535, @aanm)
* helm: add general busybox image values for substitution (Backport PR cilium/cilium#48413, Upstream PR cilium/cilium#47973, @0xch4z)
* vendor: Bump StateDB to v0.5.10 (cilium/cilium#48247, @joamaki)

**Other Changes:**
* Fix verifier error "detect support for FnSetRetval for program type CGroupSock" during feature probing (cilium/cilium#48376, @borkmann)
* install: Update image digests for v1.19.7 (cilium/cilium#48040, @cilium-release-bot[bot])
* proxy: Bump envoy to v1.37.x (cilium/cilium#48310, @sayboras)


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.19.8@sha256:e9f7ee1f2f3a41e44339612e3b6b88170bdde7679c9c9461f287bb27702a8ecf`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.19.8@sha256:9c44205b9e6eafed719803682669f63e0a68c549025344c0af520a94b2f3e4bc`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.19.8@sha256:e876814edd154a8f4a2a8a8ac47a10614f7bb9a717d8cee9df352d060242e3a4`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.19.8@sha256:f78768be216b5c00137c7d4da440724d0b49986805d361e7458cc8fe9ff976ff`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.19.8@sha256:cb4a8685fc74fef8f3e97c3370faf338ba1a8b29a7d5cdc718f3926ae0093b99`

### operator-aws

`quay.io/cilium/operator-aws:v1.19.8@sha256:de1cfe6e9962664e69e021f1cc07ea3b4f973d4ce341d7aebabf97616dd27982`

### operator-azure

`quay.io/cilium/operator-azure:v1.19.8@sha256:b67fcc053fe8caa5ae5f12158c8dc568b3d16201cdea17bb78f3b61b7c1f02d7`

### operator-generic

`quay.io/cilium/operator-generic:v1.19.8@sha256:786ec9bb1a9344435e3e3f994bc4ed3a4a85afa6a314e98681af241f8be79833`

### operator

`quay.io/cilium/operator:v1.19.8@sha256:618fe8acacaa682509b19670b1228fd8184c2c4c1478e23d505ba6502e8bcf3a`

