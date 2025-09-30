来源: https://github.com/cilium/cilium/releases/tag/v1.17.7

# cilium/cilium v1.17.7 Release Notes

Published at: 2025-08-15T13:46:52Z

Summary of Changes
------------------

**Minor Changes:**
* Add `kernel_version`, `endpoint_routes_enabled`, `strict_mode_enabled` and `kubernetes_version` feature metrics. (Backport PR cilium/cilium#41074, Upstream PR cilium/cilium#41003, @aanm)

**Bugfixes:**
* Added cleanup of deprecated cilium_policy_v1 maps (Backport PR cilium/cilium#40578, Upstream PR cilium/cilium#39400, @pasteley)
* bgp: Use private fork of the GoBGP to fix BGP MD5 auth (Backport PR cilium/cilium#40578, Upstream PR cilium/cilium#40566, @YutaroHayakawa)
* bpf/nat: fix header offset while reverse nat-ing icmp6 pkt too big. (Backport PR cilium/cilium#40387, Upstream PR cilium/cilium#40002, @tommyp1ckles)
* Enable protocol differentiation by default on the operator, matching the agent (cilium/cilium#40643, @dylandreimerink)
* Fix a bug where Cilium leaks stale routes when IPsec is enabled. (Backport PR cilium/cilium#40664, Upstream PR cilium/cilium#40653, @pippolo84)
* fix(helm): fix values.schema.json types for bpf.events.default.{rateLimit,burstLimit} (Backport PR cilium/cilium#40578, Upstream PR cilium/cilium#40543, @vchirikov)
* fix: kube-proxy healthz panic on port 10256 (cilium/cilium#40590, @tamilmani1989)
* Helm: Correct seccompProfile for cilium-agent pods (Backport PR cilium/cilium#40578, Upstream PR cilium/cilium#40476, @jcpunk)
* install/kubernetes: fix clustermesh-apiserver extraEnv (Backport PR cilium/cilium#41074, Upstream PR cilium/cilium#41021, @aanm)
* pkg/ipam: fix multi-pool allocator not releasing un-used /32 and /128 CIDRs (Backport PR cilium/cilium#40578, Upstream PR cilium/cilium#40393, @alimehrabikoshki)
* service: Only set algorithm annotation when requested (cilium/cilium#40845, @tsotne95)

**CI Changes:**
* .github/actions: only upload files with features-tested prefix (Backport PR cilium/cilium#40988, Upstream PR cilium/cilium#40975, @aanm)
* .github: Don't overwrite junit results (Backport PR cilium/cilium#41014, Upstream PR cilium/cilium#39159, @joestringer)
* .github: Run final steps when tests aren't skipped (Backport PR cilium/cilium#41014, Upstream PR cilium/cilium#40180, @joestringer)
* [v1.17] .github: Remove use of cosign attest --recursive (cilium/cilium#40699, @YutaroHayakawa)
* [v1.17] ci: Revert build_commits runner to ubuntu-22.04 (cilium/cilium#40837, @rastislavs)
* builder: Add tparse,junit tooling (Backport PR cilium/cilium#41014, Upstream PR cilium/cilium#39092, @joestringer)
* Centralize dynamic test ownership configuration (Backport PR cilium/cilium#41014, Upstream PR cilium/cilium#38045, @joestringer)
* ci: conformance-eks token extended to 8h (Backport PR cilium/cilium#40578, Upstream PR cilium/cilium#40474, @mathpl)
* ci: more powerful runners for go linting (Backport PR cilium/cilium#40765, Upstream PR cilium/cilium#40582, @mathpl)
* CLI: Attribute tests to codeowners (Backport PR cilium/cilium#41014, Upstream PR cilium/cilium#37027, @joestringer)
* Emit junit output from BPF unit tests (Backport PR cilium/cilium#41014, Upstream PR cilium/cilium#39099, @joestringer)
* Fix GKE cluster creation failures when branch names exceed 63-byte label limit by implementing automatic truncation with hash-based uniqueness preservation. (Backport PR cilium/cilium#40849, Upstream PR cilium/cilium#40725, @pillai-ashwin)
* Improved test failure attribution on stable branches by using TESTOWNERS files to route failures to appropriate code quality teams rather than generic CI infrastructure teams. (Backport PR cilium/cilium#41014, Upstream PR cilium/cilium#40776, @pillai-ashwin)
* pkg/egw: Add missing waitForReconciliationRun (Backport PR cilium/cilium#40578, Upstream PR cilium/cilium#40355, @aditighag)
* spire: Fix unreliable test (Backport PR cilium/cilium#40664, Upstream PR cilium/cilium#40561, @joestringer)
* tools/testowners: de-duplicate error logs (Backport PR cilium/cilium#41074, Upstream PR cilium/cilium#40778, @tklauser)
* Upload junit results for Go unit test runs (Backport PR cilium/cilium#41014, Upstream PR cilium/cilium#39015, @joestringer)

**Misc Changes:**
* .github/workflows: bump build-images-base timeout to 60 minutes (Backport PR cilium/cilium#40988, Upstream PR cilium/cilium#40919, @aanm)
* .github: fix removal of all files in /mnt (Backport PR cilium/cilium#40849, Upstream PR cilium/cilium#40818, @aanm)
* .github: fix upload artifacts for features.json (cilium/cilium#41091, @aanm)
* .github: remove all contents of /mnt in build images CI (Backport PR cilium/cilium#40849, Upstream PR cilium/cilium#40814, @aanm)
* .github: remove stable tag from v1.17 branches (cilium/cilium#40772, @aanm)
* certloader: Add client variants of watched TLS configs (Backport PR cilium/cilium#40624, Upstream PR cilium/cilium#40399, @devodev)
* chore(deps): update actions/download-artifact action to v5 (v1.17) (cilium/cilium#41058, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#40746, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#40905, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#41059, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.17) (cilium/cilium#40744, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.17) (cilium/cilium#40984, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.18.6 (v1.17) (cilium/cilium#40902, @cilium-renovate[bot])
* chore(deps): update dependency cilium/little-vm-helper to v0.0.26 (v1.17) (cilium/cilium#40646, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.24.5 docker digest to ef5b4be (v1.17) (cilium/cilium#40745, @cilium-renovate[bot])
* chore(deps): update go to v1.24.6 (v1.17) (cilium/cilium#40994, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.33.6-1753919866-df8077dbd3932edccb59f1c5c70e01f2c1f63741 (v1.17) (cilium/cilium#40903, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.17) (patch) (cilium/cilium#40673, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.17) (patch) (cilium/cilium#40904, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.17) (patch) (cilium/cilium#41057, @cilium-renovate[bot])
* ci: add/change runner labels (Backport PR cilium/cilium#40988, Upstream PR cilium/cilium#40972, @Artyop)
* cli: Load code owners dynamically via --code-owners (Backport PR cilium/cilium#41014, Upstream PR cilium/cilium#38044, @joestringer)
* daemon/test: explicitly wait for identities synchronization (Backport PR cilium/cilium#40849, Upstream PR cilium/cilium#40811, @giorio94)
* doc:monitor: clarify direction traced with default aggregation level (Backport PR cilium/cilium#40578, Upstream PR cilium/cilium#40398, @smagnani96)
* docs: Add missing IPAM modes to configuration page (Backport PR cilium/cilium#40664, Upstream PR cilium/cilium#40540, @RayyanSeliya)
* docs: Add warning about changing an IP pool (Backport PR cilium/cilium#40664, Upstream PR cilium/cilium#40567, @sorrison)
* docs: remove l7 EnableDefaultDeny callout (Backport PR cilium/cilium#40578, Upstream PR cilium/cilium#40441, @squeed)
* Fix race condition issues (Backport PR cilium/cilium#40988, Upstream PR cilium/cilium#40949, @aanm)
* Makefile: Fix multi codeowner detection (Backport PR cilium/cilium#41014, Upstream PR cilium/cilium#40923, @joestringer)
* Makefile: Improve tparse,junit output handling (Backport PR cilium/cilium#41014, Upstream PR cilium/cilium#39098, @joestringer)
* Support extending cilium-agent volumes as a downstream packager (Backport PR cilium/cilium#40578, Upstream PR cilium/cilium#40401, @devodev)
* tools: Move codeowners library from cilium-cli dir (Backport PR cilium/cilium#41014, Upstream PR cilium/cilium#40253, @joestringer)

**Other Changes:**
* Fix bug where LocalRedirectPolicy forwarding would break if you enable `bpf-lb-algorithm-annotation` (cilium/cilium#40246, @tarabrind)
* images: update cilium-{runtime,builder} (cilium/cilium#40839, @aanm)
* install: Update image digests for v1.17.6 (cilium/cilium#40546, @cilium-release-bot[bot])
* vendor: Bump to StateDB v0.4.5 (cilium/cilium#40850, @joamaki)


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.17.7@sha256:b22440f49c61195171aca585c7a57c6a8867271e43a5abc38f2a2f561436ff86`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.17.7@sha256:2852feca0d0d936ed0333cd64859f3c5ece2db582ba5fed848f57aff786be4a6`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.17.7@sha256:1b7c8d64f01b309521f13ab2a15239a688b9f545bb97058d383ad3bb55e42e67`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.17.7@sha256:9394312ce65c3c253a8c26a6c292f58736e75c78d1446ecfcd244f1418bebe77`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.17.7@sha256:271e64d6c91019a1a4815b4c78294962bf51c9f764c680fdfacb2adb6e9d0c4d`

### operator-aws

`quay.io/cilium/operator-aws:v1.17.7@sha256:ce37d2ccf921761a4171a507748a06a204592890e6f8cf7d1c354648e098c830`

### operator-azure

`quay.io/cilium/operator-azure:v1.17.7@sha256:9c1db11de2e0cdcaba522c8f396b9a643738f3d3f958fa9b4d62f57bac5daafb`

### operator-generic

`quay.io/cilium/operator-generic:v1.17.7@sha256:a610be2562d0f5a8945a27df7d5681711263ce92e09947e867fc37fc9ab08788`

### operator

`quay.io/cilium/operator:v1.17.7@sha256:122e49fce82df90693f8981e5d9013b6a9248284db17226259e39364ba9a211d`

