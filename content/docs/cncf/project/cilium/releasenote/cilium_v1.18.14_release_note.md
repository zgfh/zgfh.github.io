来源: https://github.com/cilium/cilium/releases/tag/v1.18.14

# cilium/cilium v1.18.14 Release Notes

Published at: 2026-09-16T01:53:07Z

Summary of Changes
------------------

**Bugfixes:**
* aws/ipam: Fixed a bug where the operator would fail to allocate new IPs to nodes with prefix delegation enabled on subnets that ran out of prefixes. (Backport PR cilium/cilium#48607, Upstream PR cilium/cilium#48193, @41ks)
* bpf: Fix agent crash when dumping map events (Backport PR cilium/cilium#48380, Upstream PR cilium/cilium#48273, @joestringer)
* datapath/linux/config: fix IPV4_DIRECT_ROUTING selection on lo device (Backport PR cilium/cilium#48554, Upstream PR cilium/cilium#46861, @fdomain)
* Fix Hubble Relay remains running during termination (Backport PR cilium/cilium#48554, Upstream PR cilium/cilium#47942, @xandau)
* Fix missing config setup for 'enable-non-default-deny-policies' flag (Backport PR cilium/cilium#48554, Upstream PR cilium/cilium#48391, @fristonio)
* Fix nodeport egress tuple reuse for closed connections (Backport PR cilium/cilium#48406, Upstream PR cilium/cilium#48306, @fristonio)
* Fix restored ENI endpoints routing rule configuration when masquerading config changes (cilium/cilium#48423, @fristonio)
* fix(socketlb): only detach Cilium-owned cgroup programs (Backport PR cilium/cilium#48554, Upstream PR cilium/cilium#44066, @puwun)
* Fixed a bug that caused the clustermesh-apiserver etcd users managements logic to not revoke stale roles upon configuration change; users leveraging the configuration provided by the Cilium helm chart are not affected, as the target etcd role is never changed. (Backport PR cilium/cilium#48216, Upstream PR cilium/cilium#47915, @giorio94)
* Fixed five configuration options that were accepted but silently ignored: `vtep-sync-interval`, `enable-xt-socket-fallback`, `eni-delete-on-termination` with a custom CNI configuration, the `enableIdentityMark` Helm value outside CNI chaining mode, and `lb-retry-backoff-max`. (Backport PR cilium/cilium#48432, Upstream PR cilium/cilium#47635, @aanm)
* hubble: fix four config knobs that never reach their sink (Backport PR cilium/cilium#48432, Upstream PR cilium/cilium#47637, @aanm)
* operator: Emit startup logs in the configured log format (Backport PR cilium/cilium#48019, Upstream PR cilium/cilium#47890, @HadrienPatte)
* Strengthen the validation when ingesting service backends from Cluster Mesh to prevent issues in case of specially crafted values (Backport PR cilium/cilium#48216, Upstream PR cilium/cilium#48015, @giorio94)

**CI Changes:**
* .github: Bump cilium/reusable-workflows to v0.1.1 (Backport PR cilium/cilium#48554, Upstream PR cilium/cilium#48462, @joestringer)
* ci: replace unsupported LLVM installation action (Backport PR cilium/cilium#48406, Upstream PR cilium/cilium#47776, @bogdankrasko)
* ci: resolve renovate PR metadata in base image workflows (Backport PR cilium/cilium#48216, Upstream PR cilium/cilium#47964, @mhofstetter)
* ci: use GitHub App client ID in v1.18 image workflow (Backport PR cilium/cilium#48216, Upstream PR cilium/cilium#47785, @bogdankrasko)
* Further GC ratchet test fix races (Backport PR cilium/cilium#48019, Upstream PR cilium/cilium#43075, @tommyp1ckles)
* gha/conformance-aks: add a timeout to the cluster create step (Backport PR cilium/cilium#48554, Upstream PR cilium/cilium#48545, @aanm)
* gha/conformance-aks: give the nodes a 64 GiB OS disk (Backport PR cilium/cilium#48554, Upstream PR cilium/cilium#48481, @aanm)
* gha/kubespray: don't wait for CoreDNS before Cilium is installed (Backport PR cilium/cilium#48216, Upstream PR cilium/cilium#48048, @aanm)
* gha: bound the LLVM prereq apt step with a 5m timeout (Backport PR cilium/cilium#48216, Upstream PR cilium/cilium#48069, @aanm)
* gha: compute the ginkgo cache key once, before the matrix (Backport PR cilium/cilium#48216, Upstream PR cilium/cilium#48127, @aanm)
* gha: move GCP auth pin past the STS token exchange retry fix (Backport PR cilium/cilium#48406, Upstream PR cilium/cilium#48352, @aanm)
* gha: publish the external target hostnames as FQDNs (Backport PR cilium/cilium#48554, Upstream PR cilium/cilium#48478, @aanm)
* gha: stop JUnit reports being destroyed by same-name legs (Backport PR cilium/cilium#48432, Upstream PR cilium/cilium#48203, @aanm)
* Migrate Conformance Cluster Mesh workflow to use fake external targets (Backport PR cilium/cilium#48659, Upstream PR cilium/cilium#48250, @giorio94)
* Revert 48443 - disable local accounts on AKS clusters (cilium/cilium#48526, @aanm)
* test/k8s: wait for the L7 visibility policy to be realized (Backport PR cilium/cilium#48406, Upstream PR cilium/cilium#48365, @aanm)
* test: fix the never-taken retry on a partially read JSON line (Backport PR cilium/cilium#48632, Upstream PR cilium/cilium#48190, @aanm)
* workflows: disable local accounts on AKS clusters (cilium/cilium#48443, @nbusseneau)

**Misc Changes:**
* Add extension points for cilium-envoy Daemonset readiness, liveness and startup probes (Backport PR cilium/cilium#48632, Upstream PR cilium/cilium#48421, @0xch4z)
* bpf: nodeport: remove Ingress HostFW Policy between RevSNAT and RevDNAT (Backport PR cilium/cilium#48295, Upstream PR cilium/cilium#46232, @julianwiedmann)
* chore(deps): update all external docker images dependencies to v0.13.6 (v1.18) (cilium/cilium#48683, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#48161, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#48337, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#48512, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#48685, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.18) (cilium/cilium#48157, @cilium-renovate[bot])
* chore(deps): update base-images to v1.26.8 (v1.18) (cilium/cilium#48734, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.20.0 (v1.18) (cilium/cilium#48346, @cilium-renovate[bot])
* chore(deps): update dependency go to v1.25.14 (v1.18) (cilium/cilium#48209, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf to v36 (v1.18) (cilium/cilium#48338, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf to v36.1 (v1.18) (cilium/cilium#48511, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang docker tag to v1.25.14 (v1.18) (cilium/cilium#48158, @cilium-renovate[bot])
* chore(deps): update docker.io/library/ubuntu:24.04 docker digest to 224a186 (v1.18) (cilium/cilium#48682, @cilium-renovate[bot])
* chore(deps): update docker/setup-qemu-action action to v4.3.0 (v1.18) (cilium/cilium#48519, @cilium-renovate[bot])
* chore(deps): update gcr.io/distroless/static:nonroot docker digest to e2e927e (v1.18) (cilium/cilium#48700, @cilium-renovate[bot])
* chore(deps): update golangci/golangci-lint docker tag to v2.13.1 (v1.18) (cilium/cilium#48336, @cilium-renovate[bot])
* chore(deps): update golangci/golangci-lint docker tag to v2.13.2 (v1.18) (cilium/cilium#48733, @cilium-renovate[bot])
* chore(deps): update helm/kind-action action to v1.15.0 (v1.18) (cilium/cilium#48593, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/certgen docker tag to v0.4.11 (v1.18) (cilium/cilium#48159, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.10-1787983435-8f34575affde33ad364d1e669b953993bf1f4125 (v1.18) (cilium/cilium#48334, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.37.6-1788432471-d053be1912db91dc0e031d7676a7cbbf31b67fe2 (v1.18) (cilium/cilium#48453, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.37.6-1789133542-cbec91f666af0bf742da986d43832932dbb26b82 (v1.18) (cilium/cilium#48684, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#48160, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#48335, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#48510, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#48515, @cilium-renovate[bot])
* docs: remove outdated tip about disabling hubble before enabling UI (Backport PR cilium/cilium#48632, Upstream PR cilium/cilium#48487, @ekoops)
* docs: Remove v1.18 ipsec documentation (Backport PR cilium/cilium#48406, Upstream PR cilium/cilium#48224, @joestringer)
* Document that Gateway API needs iptables and the netfilter TPROXY modules on nodes when bpf.tproxy is disabled (the default). (Backport PR cilium/cilium#48554, Upstream PR cilium/cilium#48428, @marcus-chae)
* Documentation: document mesh security model (Backport PR cilium/cilium#48217, Upstream PR cilium/cilium#47912, @bimmlerd)
* Fix Component Overview doc link rendering (Backport PR cilium/cilium#48632, Upstream PR cilium/cilium#48537, @eneiss)
* fix(deps): update module google.golang.org/grpc to v1.83.1 [security] (v1.18) (cilium/cilium#48389, @cilium-renovate[bot])
* fix(deps): update module google.golang.org/grpc to v1.83.2 [security] (v1.18) (cilium/cilium#48576, @cilium-renovate[bot])
* Fixed broken Slack link on Community page. (Backport PR cilium/cilium#48406, Upstream PR cilium/cilium#48021, @ps-mir)
* Fixes: Update node-cache image version to 1.26.5 (Backport PR cilium/cilium#48632, Upstream PR cilium/cilium#48270, @zyue110026)
* gha: authenticate release images with OIDC (Backport PR cilium/cilium#48597, Upstream PR cilium/cilium#48062, @aanm)
* gha: authenticate stable Image CI to quay.io with OIDC (Backport PR cilium/cilium#48058, Upstream PR cilium/cilium#48061, @aanm)
* gha: correct and move the OIDC subject comments (Backport PR cilium/cilium#48058, Upstream PR cilium/cilium#48370, @aanm)
* gha: raise the Docker Hub OIDC token lifetime for release builds (Backport PR cilium/cilium#48597, Upstream PR cilium/cilium#48535, @aanm)
* helm: add general busybox image values for substitution (Backport PR cilium/cilium#48406, Upstream PR cilium/cilium#47973, @0xch4z)

**Other Changes:**
* [v1.18] cilium: revert have_set_retval fix and probe it differently, v2 (cilium/cilium#48405, @borkmann)
* [v1.18] proxy: Bump envoy to v1.37.x (cilium/cilium#48312, @sayboras)
* Fix verifier error "detect support for FnSetRetval for program type CGroupSock" during feature probing (cilium/cilium#48381, @borkmann)
* install: Update image digests for v1.18.13 (cilium/cilium#48038, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.18.14@sha256:0e65a0910d74be4d56ebc8f8a010b566f9177444667dbb8eb5b2d8d840ea5406`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.18.14@sha256:fc776419ff39e6f384fbddb0db1c603458601277225b3ae6b609219214ad1255`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.18.14@sha256:75277ec46be1543ca62ff5ee998b5681420fcd01f855f27d4f3288802264f343`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.18.14@sha256:828c22fcde4c0f7317ad5bb0f73c42294c6b3e2be286bb9374cf66cea930fb5d`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.18.14@sha256:6790a4c3cd39412e02563534e7ab42cc211d14ea74e997b8cddd14425c709291`

### operator-aws

`quay.io/cilium/operator-aws:v1.18.14@sha256:ba1996d44f0c17cdd03ba903f874b97f543314673c5af980fb1af3313ea542ac`

### operator-azure

`quay.io/cilium/operator-azure:v1.18.14@sha256:38e802744945d9861b74cd9812250d5dbc2d6a4a24d08571b45cae71418b1c71`

### operator-generic

`quay.io/cilium/operator-generic:v1.18.14@sha256:6a77082c3938edad0433f53c46a90b8da08c9e4a9a255e51a1c2ff410db60104`

### operator

`quay.io/cilium/operator:v1.18.14@sha256:5709d0b8c44f23a528b90833444159eaed8a5f757ec07530fc5f693c3f969ecc`

