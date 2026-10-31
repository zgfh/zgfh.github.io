来源: https://github.com/cilium/cilium/releases/tag/v1.19.9

# cilium/cilium v1.19.9 Release Notes

Published at: 2026-10-15T15:26:28Z

Summary of Changes
------------------

**Bugfixes:**
* endpoint/restore: skip cleanup for reserved internal endpoints (Backport PR cilium/cilium#49000, Upstream PR cilium/cilium#48272, @fristonio)
* Fix incorrect deletion of new endpoint during GC iteration when reusing ID from a previously GC'd endpoint (Backport PR cilium/cilium#49176, Upstream PR cilium/cilium#48905, @fristonio)
* Fix ip6tables chain rename errors being silently ignored during iptables rule reconciliation. (Backport PR cilium/cilium#49334, Upstream PR cilium/cilium#49024, @maxskokov)
* Fix rare data race in selector cache that could lead to agent panic (Backport PR cilium/cilium#49176, Upstream PR cilium/cilium#47733, @odinuge)
* Fix restoration of terminating backends. If a terminating backend become active again during restart the backend was incorrectly kept as quarantined. (Backport PR cilium/cilium#48796, Upstream PR cilium/cilium#48763, @joamaki)
* gateway-api: filter CEC controls from infrastructure metadata (Backport PR cilium/cilium#48985, Upstream PR cilium/cilium#47732, @nezdolik)
* L7 conformance CI fixes (Backport PR cilium/cilium#49000, Upstream PR cilium/cilium#47517, @fristonio)
* operator: Do not emit warning when deleting already deleted unmanaged pod (Backport PR cilium/cilium#48908, Upstream PR cilium/cilium#48765, @gandro)

**CI Changes:**
* [ci] fix escaping in conformance ginkgo (Backport PR cilium/cilium#49176, Upstream PR cilium/cilium#48991, @nebril)
* [v1.19] .github: Remove the EKS cluster pool workflows (cilium/cilium#49085, @aanm)
* ci: Add support for OIDC (Backport PR cilium/cilium#49316, Upstream PR cilium/cilium#49007, @aanm)
* ci: cleanup disk space in documentation workflow (Backport PR cilium/cilium#48908, Upstream PR cilium/cilium#48427, @tklauser)
* ci: Drop the empty floating tag line from CI image digests (Backport PR cilium/cilium#49176, Upstream PR cilium/cilium#49070, @aanm)
* ci: fix CNI setup and readiness checks in the kubespray job (Backport PR cilium/cilium#49334, Upstream PR cilium/cilium#48927, @aanm)
* ci: Give Envoy Embedded conformance a bigger runner (Backport PR cilium/cilium#49176, Upstream PR cilium/cilium#49018, @aanm)
* ci: login to docker registry for downgrade image wait (Backport PR cilium/cilium#49176, Upstream PR cilium/cilium#48983, @nebril)
* ci: Name runner variables after their Ubuntu release and let Renovate bump them (Backport PR cilium/cilium#49316, Upstream PR cilium/cilium#49065, @aanm)
* ci: Skip redundant setup when base images already exist (Backport PR cilium/cilium#49316, Upstream PR cilium/cilium#47209, @HadrienPatte)
* ci: Stop passing secrets to the base images workflow (Backport PR cilium/cilium#49316, Upstream PR cilium/cilium#49082, @aanm)
* gha/conformance-multi-pool: use the local fake external targets (Backport PR cilium/cilium#48987, Upstream PR cilium/cilium#48558, @aanm)
* gha/setup-aks-cluster: Retry a create that never starts (Backport PR cilium/cilium#49316, Upstream PR cilium/cilium#48924, @aanm)
* gha: Derive the LVH package cache key once per run (Backport PR cilium/cilium#48987, Upstream PR cilium/cilium#48656, @aanm)
* gha: don't fail PR tests on reporting errors (Backport PR cilium/cilium#49316, Upstream PR cilium/cilium#48740, @aanm)
* gha: Grant id-token to the post-release call of release.yaml (Backport PR cilium/cilium#49316, Upstream PR cilium/cilium#49323, @aanm)
* gha: make external fake targets image configurable (Backport PR cilium/cilium#49176, Upstream PR cilium/cilium#48941, @giorio94)
* gha: Retry stalled kind image pulls before the install wait expires (Backport PR cilium/cilium#49334, Upstream PR cilium/cilium#48989, @aanm)
* gha: Skip the duplicate CI image build on push to main (Backport PR cilium/cilium#48987, Upstream PR cilium/cilium#48736, @aanm)
* gha: survive a GKE zone running out of capacity (Backport PR cilium/cilium#48987, Upstream PR cilium/cilium#48184, @aanm)
* gha: Tolerate cosign and SBOM failures on pull requests (Backport PR cilium/cilium#48987, Upstream PR cilium/cilium#48737, @aanm)
* loadbalancer/tests: Fix the graceful termination test restart (Backport PR cilium/cilium#49316, Upstream PR cilium/cilium#48939, @aanm)

**Misc Changes:**
* [v1.19] Bump various go modules (cilium/cilium#48768, @ferozsalam)
* build: handle git worktrees in documentation make targets (Backport PR cilium/cilium#49176, Upstream PR cilium/cilium#48966, @utaal)
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#48885, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#49045, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#49157, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#49279, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.19) (cilium/cilium#48886, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.19) (cilium/cilium#49158, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.19) (cilium/cilium#49280, @cilium-renovate[bot])
* chore(deps): update auto-merge-trusted-deps (v1.19) (cilium/cilium#49320, @cilium-renovate[bot])
* chore(deps): update base-images (v1.19) (cilium/cilium#48884, @cilium-renovate[bot])
* chore(deps): update base-images to v1.26.9 (v1.19) (cilium/cilium#49154, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.20.1 (v1.19) (cilium/cilium#48979, @cilium-renovate[bot])
* chore(deps): update dependency cilium/little-vm-helper to v0.0.31 (v1.19) (cilium/cilium#48789, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf to v36.2 (v1.19) (cilium/cilium#49044, @cilium-renovate[bot])
* chore(deps): update docker.io/library/alpine docker tag to v3.23.6 (v1.19) (cilium/cilium#49041, @cilium-renovate[bot])
* chore(deps): update docker.io/library/busybox:1.37.0 docker digest to bdf57e5 (v1.19) (cilium/cilium#49040, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.26.9 docker digest to d772206 (v1.19) - abandoned (cilium/cilium#49299, @cilium-renovate[bot])
* chore(deps): update helm/kind-action action to v1.15.1 (v1.19) (cilium/cilium#49295, @cilium-renovate[bot])
* chore(deps): update module go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp to v1.45.0 [security] (v1.19) (cilium/cilium#48815, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.38.5-1790882336-b64c7306085409b95fb5626db2d2bb7a200b9432 (v1.19) (cilium/cilium#49127, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.38.5-1791291190-5ec36181d464cd75b35b45395a722226cbdd2888 (v1.19) (cilium/cilium#49195, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.38.6-1791350265-ae0327a34850b7d1849e8332dbefd4d5bebabe10 (v1.19) (cilium/cilium#49217, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.38.6-1791537840-00e749f11f69334c625e53fc1ce2fc6c7f34a51f (v1.19) (cilium/cilium#49278, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.19) (patch) (cilium/cilium#48883, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.19) (patch) (cilium/cilium#49042, @cilium-renovate[bot])
* connectivity-check: move echo-b to the lower NodePort band (Backport PR cilium/cilium#49176, Upstream PR cilium/cilium#48926, @aanm)
* fix(deps): update k8s.io patch updates stable to v0.35.9 (v1.19) (cilium/cilium#49156, @cilium-renovate[bot])
* fix(deps): update module golang.org/x/net to v0.60.0 [security] (v1.19) (cilium/cilium#49254, @cilium-renovate[bot])
* fix(deps): update module k8s.io/apimachinery to v0.35.9 (v1.19) (cilium/cilium#49043, @cilium-renovate[bot])
* fix(deps): update security updates [security] (v1.19) (cilium/cilium#48809, @cilium-renovate[bot])

**Other Changes:**
* [v1.19] node_neighbor_discovery: fix ID in delete query (cilium/cilium#48871, @nobleess)
* install: Update image digests for v1.19.8 (cilium/cilium#48752, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.19.9@sha256:f3014d42121a04272cb4a5f4f96dbe7836c9a7919990f17e9b6838e8fd4aa33a`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.19.9@sha256:032d6fc085cfaccfb02813b9854e8685c5b0da63e0e03b5019f3e6381fe8669d`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.19.9@sha256:bfa40f426c154d7f558ea19d76153af043ab3cbc477b04645130b6f533311f4e`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.19.9@sha256:ec58f6bc69df817c8d78ffd9eb88aa7e10f551e2bba71b4ad03fbdb6e1bc8bd5`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.19.9@sha256:58a411031bf31b77e9abf2e35ab2417929375f526a71e6359c20caa8f52006d5`

### operator-aws

`quay.io/cilium/operator-aws:v1.19.9@sha256:cd089a3ff79042257f5050d0ffc7d36dc340b028106afbcaa7a4f4614a4e80ad`

### operator-azure

`quay.io/cilium/operator-azure:v1.19.9@sha256:32adcdc31885911d5afd6265ef0e450a399c83c130bea11ede53f951b37ab54c`

### operator-generic

`quay.io/cilium/operator-generic:v1.19.9@sha256:a234406be11ad1bb1d41b111fba2cfe81a099b6c26b2634af95f42f295d35655`

### operator

`quay.io/cilium/operator:v1.19.9@sha256:cf7322f7ee9a1395bbb7562d424cb440c1bd15e70b1640e4abc13d3f70255ffe`

