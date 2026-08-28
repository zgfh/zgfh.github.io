来源: https://github.com/cilium/cilium/releases/tag/v1.19.7

# cilium/cilium v1.19.7 Release Notes

Published at: 2026-08-18T10:35:54Z

Summary of Changes
------------------

**Bugfixes:**
* envoy: restore http-idle-timeout as the route idle timeout source (Backport PR cilium/cilium#47688, Upstream PR cilium/cilium#47583, @aanm)
* Fix a BPF verifier reject on pre-v5.12 kernels, when IPv6 is enabled. (Backport PR cilium/cilium#47723, Upstream PR cilium/cilium#47765, @julianwiedmann)
* Fix a spurious "unable to find ifindex for interface MAC" agent warning on EKS ENI IPAM by waiting for the ENI netlink interface before configuring ingress routes and rules. (Backport PR cilium/cilium#47545, Upstream PR cilium/cilium#47295, @aanm)
* Fix abnormal ip allocation caused by hostnetwork pod (Backport PR cilium/cilium#47688, Upstream PR cilium/cilium#47552, @haozhangami)
* Fix BPF LB map key collision where HostPort/NodePort expansion could overwrite a LoadBalancer frontend when the node IP matches the LoadBalancer external IP (e.g. k3s/RKE2 L2 ServiceLB). Also fix a ~30-minute NodePort outage that occurred after deleting a LoadBalancer whose external IP was a node address with a port in the NodePort range. (Backport PR cilium/cilium#47414, Upstream PR cilium/cilium#45314, @syedazeez337)
* Fix bug causing Cilium to intercept traffic towards LoadBalancer VIPs when KPR is disabled, when the traffic should be delegated to kube-proxy. (Backport PR cilium/cilium#47414, Upstream PR cilium/cilium#47204, @ajmmm)
* Fix redirection of egressing traffic that falls in scope of a CiliumEgressGatewayPolicy, when the initial interface is a L3 interface. (Backport PR cilium/cilium#47757, Upstream PR cilium/cilium#45703, @julianwiedmann)
* Fix: Cilium Ingress now automatically reallocates ports and retries when cilium-envoy fails to bind due to port conflicts (Backport PR cilium/cilium#47410, Upstream PR cilium/cilium#42859, @inerplat)
* Fixes an issue where invalid regex on an HTTPRoute or GRPCRoute matcher is accepted but causes Envoy to NACK (Backport PR cilium/cilium#47468, Upstream PR cilium/cilium#47005, @0xch4z)
* fqdn/service: prune SDP identity->IP mapping on delete using newID (Backport PR cilium/cilium#47545, Upstream PR cilium/cilium#47100, @vipul-21)
* gateway-api: GAMMA Routes are now filtered correctly before being passed to model ingestion. (Backport PR cilium/cilium#47468, Upstream PR cilium/cilium#45294, @youngnick)
* ipcache: fix CIDR reference counter to use canonical prefixes (Backport PR cilium/cilium#47886, Upstream PR cilium/cilium#47208, @iwanhae)
* lbipam: prevent reassigning Service LoadBalancer IPs on operator restart when the existing IP belongs to a compatible sharing key group. (Backport PR cilium/cilium#46559, Upstream PR cilium/cilium#46262, @ieth0)
* Resolve a endpoint manager crash for restored endpoints with verbose policy logging enabled. (Backport PR cilium/cilium#47886, Upstream PR cilium/cilium#47844, @bimmlerd)
* wireguard: Unsubscribe node handler on shutdown (Backport PR cilium/cilium#47804, Upstream PR cilium/cilium#47614, @HadrienPatte)

**CI Changes:**
* .github: fail smoke IPv6 closed when the test job does not succeed (Backport PR cilium/cilium#47545, Upstream PR cilium/cilium#47441, @aanm)
* .github: retry CLI and binary downloads over transient network errors (Backport PR cilium/cilium#47290, Upstream PR cilium/cilium#47167, @aanm)
* .github: Run envoy image check against PR content (Backport PR cilium/cilium#47886, Upstream PR cilium/cilium#47792, @joestringer)
* .github: Simplify permissions for image linter workflow (Backport PR cilium/cilium#47804, Upstream PR cilium/cilium#47753, @joestringer)
* .github: suppress spurious encryption leak reports for node-to-pod DNS requests going through proxy (Backport PR cilium/cilium#47688, Upstream PR cilium/cilium#47470, @atykhyy)
* [v1.19] ariane: remove reference to the non-existing lint-ariane-config workflow (cilium/cilium#47701, @giorio94)
* ariane: move kind-proxy-embedded and kubespray workflows to /test (Backport PR cilium/cilium#47804, Upstream PR cilium/cilium#47743, @giorio94)
* bpf/tests: support pkt sizes 1036-1518 bytes (Backport PR cilium/cilium#47443, Upstream PR cilium/cilium#44314, @msune)
* chore: use GH_RUNNER_CILIUM_BASE_AMD64/ARM64 vars for integration-test runners (Backport PR cilium/cilium#47545, Upstream PR cilium/cilium#47182, @bogdankrasko)
* ci: build race images on push events so conformance-race works on stable branches (Backport PR cilium/cilium#47610, Upstream PR cilium/cilium#47608, @aanm)
* ci: build race images on push in the stable image builders (Backport PR cilium/cilium#47610, Upstream PR cilium/cilium#47616, @aanm)
* ci: draft renovate PRs until ciliumbot auto-approval (Backport PR cilium/cilium#47804, Upstream PR cilium/cilium#47364, @mhofstetter)
* ci: fix filtering out md files in bpf checks (Backport PR cilium/cilium#47688, Upstream PR cilium/cilium#47605, @nebril)
* ci: fix three renovate-PR CI flakes (kubectl download retry, merge-upload ref, EKS pool zones) (Backport PR cilium/cilium#47541, Upstream PR cilium/cilium#47357, @aanm)
* CI: fixed external-target readiness gating and ensured sig-network E2E JUnit reports are uploaded on failure. (Backport PR cilium/cilium#47290, Upstream PR cilium/cilium#46860, @aanm)
* ci: migrate set-commit-status to cilium/actions (Backport PR cilium/cilium#47804, Upstream PR cilium/cilium#47771, @bogdankrasko)
* ci: skip etcd log fetch when kvstore was never started (Backport PR cilium/cilium#47886, Upstream PR cilium/cilium#47801, @aanm)
* Collect /proc/net/softnet_stat, /proc/net/snmp and /proc/net/netstat in sysdumps to help diagnose host-level packet drops. (Backport PR cilium/cilium#47290, Upstream PR cilium/cilium#46985, @aanm)
* complexity-diff: Compute percentages of diffs against original values (Backport PR cilium/cilium#47836, Upstream PR cilium/cilium#45657, @pchaigno)
* complexity-diff: Display results on scheduled runs (Backport PR cilium/cilium#47721, Upstream PR cilium/cilium#45595, @pchaigno)
* conformance-aws-cni: skip l7 and fqdn tests by name on chaining mode (Backport PR cilium/cilium#47290, Upstream PR cilium/cilium#47269, @aanm)
* datapath/loader: Fix stack depth parsing for programs with functions (Backport PR cilium/cilium#47814, Upstream PR cilium/cilium#44963, @dylandreimerink)
* Decrease CI costs on AWS (Backport PR cilium/cilium#47290, Upstream PR cilium/cilium#46615, @aanm)
* Fix stack depth reporting in verifier test (Backport PR cilium/cilium#47836, Upstream PR cilium/cilium#46182, @pchaigno)
* gateway-api: fix gatewayclassconfig-nodeport test (Backport PR cilium/cilium#47468, Upstream PR cilium/cilium#47255, @0xch4z)
* gha/e2e: cover etcd behind a service (Backport PR cilium/cilium#47410, Upstream PR cilium/cilium#47235, @giorio94)
* gha/kubespray: run on schedule, rather than on every push (Backport PR cilium/cilium#47734, Upstream PR cilium/cilium#47719, @giorio94)
* gha/lvh-kind: respect Kind image version also when config is provided (Backport PR cilium/cilium#47734, Upstream PR cilium/cilium#47703, @giorio94)
* gha: don't install LLVM and Clang in integration tests workflow (Backport PR cilium/cilium#47734, Upstream PR cilium/cilium#47717, @giorio94)
* gha: dump nodegroup CloudFormation failure events on create failure (Backport PR cilium/cilium#47410, Upstream PR cilium/cilium#47298, @aanm)
* gha: fix checkout of trusted branch in smoke and k8s-kind workflows (Backport PR cilium/cilium#47734, Upstream PR cilium/cilium#47724, @giorio94)
* gha: stop scheduled runs emitting spurious artifact warnings (Backport PR cilium/cilium#47290, Upstream PR cilium/cilium#46989, @aanm)
* images/scripts: Validate Envoy image vars against sed injection (Backport PR cilium/cilium#47804, Upstream PR cilium/cilium#47205, @MasloMaslane)
* Increase the timeout for the kvstore readiness wait in kind-based CI to avoid flakes on slow etcd image pulls. (Backport PR cilium/cilium#47290, Upstream PR cilium/cilium#46882, @aanm)
* loader: Reduce number of permutations for load-time configs (Backport PR cilium/cilium#47721, Upstream PR cilium/cilium#44409, @pchaigno)
* loader: Support max stack depth in verifier logs (Backport PR cilium/cilium#47836, Upstream PR cilium/cilium#46109, @pchaigno)
* loader: Support newer verifier logs (Backport PR cilium/cilium#47836, Upstream PR cilium/cilium#45880, @pchaigno)
* pkg/loadbalancer: fix loadbalancer nodeport collision test (Backport PR cilium/cilium#47414, Upstream PR cilium/cilium#46087, @ajmmm)
* pkg/rate: fix TestMaxParallelRequests flake under CI load (Backport PR cilium/cilium#47290, Upstream PR cilium/cilium#46856, @aanm)
* Revert "gha: don't install LLVM and Clang in integration tests workflow" (Backport PR cilium/cilium#47886, Upstream PR cilium/cilium#47780, @giorio94)
* test/cyclonus: capture logs of every job pod so a runner crash is diagnosable (Backport PR cilium/cilium#47290, Upstream PR cilium/cilium#46980, @aanm)
* test/cyclonus: drop --fail-fast so a policy failure can't crash the run (Backport PR cilium/cilium#47410, Upstream PR cilium/cilium#47272, @aanm)
* test/cyclonus: log the JUnit XML instead of copying it from a dead pod (Backport PR cilium/cilium#47804, Upstream PR cilium/cilium#47725, @aanm)
* workflows/verifier: Fail on high complexity, stack depth or map count (Backport PR cilium/cilium#47721, Upstream PR cilium/cilium#45659, @pchaigno)
* workflows/verifier: Fix again always-passing workflow status (Backport PR cilium/cilium#47721, Upstream PR cilium/cilium#45899, @pchaigno)
* workflows/verifier: Fix always-passing workflow status (Backport PR cilium/cilium#47721, Upstream PR cilium/cilium#45835, @pchaigno)
* workflows/verifier: Fix commit status (Backport PR cilium/cilium#47721, Upstream PR cilium/cilium#46382, @pchaigno)
* workflows/verifier: Wait for `complexity-diff` to set workflow status (Backport PR cilium/cilium#47721, Upstream PR cilium/cilium#45681, @pchaigno)

**Misc Changes:**
* allocator: fix flake in TestWatchRemoteKVStore (Backport PR cilium/cilium#47688, Upstream PR cilium/cilium#47455, @giorio94)
* bpf, testing: define scapy buffers as canonical C variables. (Backport PR cilium/cilium#47443, Upstream PR cilium/cilium#44893, @ldelossa)
* bpf/analyze: Always visit global functions (Backport PR cilium/cilium#47804, Upstream PR cilium/cilium#45917, @pchaigno)
* bpf/lxc: Never allocate `ct_buffers` on stack (Backport PR cilium/cilium#47723, Upstream PR cilium/cilium#45603, @pchaigno)
* bpf/nat: Move IPv6 nat entry to map (Backport PR cilium/cilium#47723, Upstream PR cilium/cilium#47762, @pchaigno)
* bpf: conntrack: Reduce stack usage of `ct_create{4,6}` (Backport PR cilium/cilium#47723, Upstream PR cilium/cilium#47582, @dylandreimerink)
* bpf: encap: move & use DSR-GENEVE helpers (Backport PR cilium/cilium#47460, Upstream PR cilium/cilium#45526, @julianwiedmann)
* bpf: Make `ipv6_hdrlen_with_fraginfo` function global (Backport PR cilium/cilium#47723, Upstream PR cilium/cilium#46295, @pchaigno)
* bpf: Never allocate `ct_buffers` on the stack (Backport PR cilium/cilium#47723, Upstream PR cilium/cilium#45589, @pchaigno)
* bpf: Reduce stack size for `tail_handle_snat_fwd_ipv6` (Backport PR cilium/cilium#47723, Upstream PR cilium/cilium#46360, @pchaigno)
* bpf: rename `aux.h` to avoid malformed file path error upon `go get` (Backport PR cilium/cilium#47723, Upstream PR cilium/cilium#45804, @tklauser)
* bugtool: collect snmp6 and dev_snmp6 for IPv6 host packet drops (Backport PR cilium/cilium#47410, Upstream PR cilium/cilium#47353, @aanm)
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#47324, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#47490, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#47867, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#47993, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#48009, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.19) (cilium/cilium#47679, @cilium-renovate[bot])
* chore(deps): update base-images (v1.19) (cilium/cilium#47489, @cilium-renovate[bot])
* chore(deps): update base-images (v1.19) (cilium/cilium#47950, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.19.6 (v1.19) (cilium/cilium#47340, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.19.7 (v1.19) (cilium/cilium#47577, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.12 docker digest to d2e20dc (v1.19) (cilium/cilium#47321, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.12 docker digest to fe5d57d (v1.19) (cilium/cilium#47866, @cilium-renovate[bot])
* chore(deps): update gcr.io/distroless/static:nonroot docker digest to f7f8f72 (v1.19) (cilium/cilium#47322, @cilium-renovate[bot])
* chore(deps): update github/codeql-action action to v4.37.2 (v1.19) (cilium/cilium#47504, @cilium-renovate[bot])
* chore(deps): update google/cloud-sdk docker tag to v577 (v1.19) (cilium/cilium#47511, @cilium-renovate[bot])
* chore(deps): update module sigs.k8s.io/kube-api-linter to v0.0.0-20260716143926-092fe0c72997 (v1.19) (cilium/cilium#47487, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/certgen docker tag to v0.4.8 (v1.19) (cilium/cilium#47323, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.9-1784803288-cf56df1cccc09d7afde2847ff9e6e853dde50b77 (v1.19) (cilium/cilium#47488, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.9-1786864149-07e8503ff34b9190d7bbe4e57d4e185c4ef8b1de (v1.19) (cilium/cilium#48000, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.19) (patch) (cilium/cilium#46316, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.19) (patch) (cilium/cilium#47868, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.19) (patch) (cilium/cilium#47992, @cilium-renovate[bot])
* docs/clustermesh: remove obsolete reference to service cache (Backport PR cilium/cilium#47410, Upstream PR cilium/cilium#47195, @giorio94)
* docs: add context on recommended CEC and CCEC permissions (Backport PR cilium/cilium#47545, Upstream PR cilium/cilium#45056, @ferozsalam)
* docs: Fix DOCS_BUILDER_REPO env variable for BSD sed compatibility (Backport PR cilium/cilium#47829, Upstream PR cilium/cilium#46033, @arybolovlev)
* docs: Update docs-builder for Makefile usage (Backport PR cilium/cilium#47829, Upstream PR cilium/cilium#45774, @joestringer)
* fix(deps): update k8s.io patch updates stable to v0.35.7 (v1.19) (cilium/cilium#47521, @cilium-renovate[bot])
* fix(deps): update module k8s.io/apimachinery to v0.35.7 (v1.19) (cilium/cilium#47474, @cilium-renovate[bot])
* Fixed the conformance-ginkgo feature status report not being uploaded as an artifact. (Backport PR cilium/cilium#47541, Upstream PR cilium/cilium#47174, @aanm)
* gateway-api: remove SetAllParentCondition route helpers (Backport PR cilium/cilium#47468, Upstream PR cilium/cilium#47086, @0xch4z)
* gha: capture per-pod diagnostics for sig-network conntrack UDP NodePort failures (Backport PR cilium/cilium#47290, Upstream PR cilium/cilium#47140, @aanm)
* gha: let auto-approve match on re-runs (Backport PR cilium/cilium#47290, Upstream PR cilium/cilium#46832, @aanm)
* images ci: free preinstalled toolchains on tight runners before building (Backport PR cilium/cilium#47290, Upstream PR cilium/cilium#47141, @aanm)
* Introduce BPF auxiliary variables (Backport PR cilium/cilium#47723, Upstream PR cilium/cilium#45081, @dylandreimerink)
* policy/k8s: record processing start time for k8s NetworkPolicy updates (Backport PR cilium/cilium#47290, Upstream PR cilium/cilium#46979, @aanm)
* Update all github action dependencies (v1.19) (cilium/cilium#47661, @cilium-renovate[bot])
* Update all github action dependencies (v1.19) (cilium/cilium#47676, @cilium-renovate[bot])
* Update docker.io/library/busybox:1.37.0 Docker digest to 9db7b59 (v1.19) (cilium/cilium#47660, @cilium-renovate[bot])
* Update documentation dependencies (Backport PR cilium/cilium#47829, Upstream PR cilium/cilium#47750, @joestringer)
* Update quay.io/cilium/certgen Docker tag to v0.4.9 (v1.19) (cilium/cilium#47662, @cilium-renovate[bot])
* Update quay.io/cilium/image-tester Docker tag to v1785158849 (v1.19) (cilium/cilium#47663, @cilium-renovate[bot])

**Other Changes:**
* [v1.19] Add DNS request checking prior to qname extraction (cilium/cilium#47383, @ferozsalam)
* install: Update image digests for v1.19.6 (cilium/cilium#47252, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.19.7@sha256:1b58bcb81c723cf130a0dd2fb2e1132c57f8fbc2ef7bdb85519cfcc36111c77e`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.19.7@sha256:17186e4639900fcaa7c38260bb8ac622ee56b3b805e2452f24b824e84db9e5e6`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.19.7@sha256:1b29323ca48d785946a16c312c983d41bb058e6ebd1e3172f45b25051c1254e7`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.19.7@sha256:db4b384d0f6aba261e809d58bee54885c70a7e958173a125ebb215391af55e74`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.19.7@sha256:22f36b3bf2ec9ae0bdd2ca943f7a18b8a36704dce6959d2ac0eef6527ec3b400`

### operator-aws

`quay.io/cilium/operator-aws:v1.19.7@sha256:7218d710e1b3dbc2039cb3bcf285d3cdd7a89ca482f8be0c868362d14824dd3e`

### operator-azure

`quay.io/cilium/operator-azure:v1.19.7@sha256:572f7f69b470fda8ce068a5acb0961b29b8754bb35f95f27f7f2d838b08c3971`

### operator-generic

`quay.io/cilium/operator-generic:v1.19.7@sha256:61e773bfc25a448f1ad3ead605af94b3ef176ba2925cf4bd1b11e09794b72bed`

### operator

`quay.io/cilium/operator:v1.19.7@sha256:283dddce1845b4375e4a733494ae742acd85fef4d4b1b303338b21898a6e386e`

