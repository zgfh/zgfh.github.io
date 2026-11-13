来源: https://github.com/cilium/cilium/releases/tag/v1.18.15

# cilium/cilium v1.18.15 Release Notes

Published at: 2026-10-15T15:26:26Z

Summary of Changes
------------------

**Bugfixes:**
* Fix incorrect deletion of new endpoint during GC iteration when reusing ID from a previously GC'd endpoint (Backport PR cilium/cilium#49121, Upstream PR cilium/cilium#48905, @fristonio)
* Fix ip6tables chain rename errors being silently ignored during iptables rule reconciliation. (Backport PR cilium/cilium#49333, Upstream PR cilium/cilium#49024, @maxskokov)
* Fix restoration of terminating backends. If a terminating backend become active again during restart the backend was incorrectly kept as quarantined. (Backport PR cilium/cilium#48795, Upstream PR cilium/cilium#48763, @joamaki)

**CI Changes:**
* [ci] fix escaping in conformance ginkgo (Backport PR cilium/cilium#49121, Upstream PR cilium/cilium#48991, @nebril)
* ci: Add support for OIDC (Backport PR cilium/cilium#49315, Upstream PR cilium/cilium#49007, @aanm)
* ci: cleanup disk space in documentation workflow (Backport PR cilium/cilium#48909, Upstream PR cilium/cilium#48427, @tklauser)
* ci: Drop the empty floating tag line from CI image digests (Backport PR cilium/cilium#49121, Upstream PR cilium/cilium#49070, @aanm)
* ci: fix CNI setup and readiness checks in the kubespray job (Backport PR cilium/cilium#49333, Upstream PR cilium/cilium#48927, @aanm)
* ci: Give Envoy Embedded conformance a bigger runner (Backport PR cilium/cilium#49121, Upstream PR cilium/cilium#49018, @aanm)
* ci: login to docker registry for downgrade image wait (Backport PR cilium/cilium#49121, Upstream PR cilium/cilium#48983, @nebril)
* ci: Name runner variables after their Ubuntu release and let Renovate bump them (Backport PR cilium/cilium#49315, Upstream PR cilium/cilium#49065, @aanm)
* ci: Skip redundant setup when base images already exist (Backport PR cilium/cilium#49315, Upstream PR cilium/cilium#47209, @HadrienPatte)
* ci: Stop passing secrets to the base images workflow (Backport PR cilium/cilium#49315, Upstream PR cilium/cilium#49082, @aanm)
* gha: Derive the LVH package cache key once per run (Backport PR cilium/cilium#48988, Upstream PR cilium/cilium#48656, @aanm)
* gha: don't fail PR tests on reporting errors (Backport PR cilium/cilium#49315, Upstream PR cilium/cilium#48740, @aanm)
* gha: Grant id-token to the post-release call of release.yaml (Backport PR cilium/cilium#49315, Upstream PR cilium/cilium#49323, @aanm)
* gha: make external fake targets image configurable (Backport PR cilium/cilium#49121, Upstream PR cilium/cilium#48941, @giorio94)
* gha: Retry stalled kind image pulls before the install wait expires (Backport PR cilium/cilium#49333, Upstream PR cilium/cilium#48989, @aanm)
* gha: survive a GKE zone running out of capacity (Backport PR cilium/cilium#48988, Upstream PR cilium/cilium#48184, @aanm)

**Misc Changes:**
* [v1.18] Bump etcd and x/crypto module versions (cilium/cilium#48769, @ferozsalam)
* build: handle git worktrees in documentation make targets (Backport PR cilium/cilium#49121, Upstream PR cilium/cilium#48966, @utaal)
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#48890, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#49050, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#49163, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#49283, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.18) (cilium/cilium#48887, @cilium-renovate[bot])
* chore(deps): update auto-merge-trusted-deps (v1.18) (cilium/cilium#49321, @cilium-renovate[bot])
* chore(deps): update base-images (v1.18) (cilium/cilium#48889, @cilium-renovate[bot])
* chore(deps): update base-images to v1.26.9 (v1.18) (cilium/cilium#49263, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.20.1 (v1.18) (cilium/cilium#48980, @cilium-renovate[bot])
* chore(deps): update dependency cilium/little-vm-helper to v0.0.31 (v1.18) (cilium/cilium#48790, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf to v36.2 (v1.18) (cilium/cilium#49049, @cilium-renovate[bot])
* chore(deps): update docker.io/library/alpine docker tag to v3.22.6 (v1.18) (cilium/cilium#49047, @cilium-renovate[bot])
* chore(deps): update docker.io/library/busybox:1.37.0 docker digest to bdf57e5 (v1.18) (cilium/cilium#49046, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.26.8 docker digest to 0f063af (v1.18) (cilium/cilium#49159, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.26.9 docker digest to d772206 (v1.18) (cilium/cilium#49300, @cilium-renovate[bot])
* chore(deps): update docker.io/library/ubuntu:24.04 docker digest to 534baea (v1.18) (cilium/cilium#49160, @cilium-renovate[bot])
* chore(deps): update helm/kind-action action to v1.15.1 (v1.18) (cilium/cilium#49296, @cilium-renovate[bot])
* chore(deps): update module go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp to v1.45.0 [security] (v1.18) (cilium/cilium#48861, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.37.7-1790879678-3aca86e6e66670781346552575b4e4685c8b2469 (v1.18) (cilium/cilium#49128, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.37.7-1791018873-971395586d20dcc31cedc8fc9290cf91173014a2 (v1.18) (cilium/cilium#49161, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.38.5-1791291190-5ec36181d464cd75b35b45395a722226cbdd2888 (v1.18) (cilium/cilium#49196, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.38.6-1791350265-ae0327a34850b7d1849e8332dbefd4d5bebabe10 (v1.18) (cilium/cilium#49218, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.38.6-1791537840-00e749f11f69334c625e53fc1ce2fc6c7f34a51f (v1.18) (cilium/cilium#49281, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#48888, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#49048, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#49162, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#49282, @cilium-renovate[bot])
* connectivity-check: move echo-b to the lower NodePort band (Backport PR cilium/cilium#49121, Upstream PR cilium/cilium#48926, @aanm)
* fix(deps): update module golang.org/x/net to v0.60.0 [security] (v1.18) (cilium/cilium#49255, @cilium-renovate[bot])
* fix(deps): update security updates [security] (v1.18) (cilium/cilium#48810, @cilium-renovate[bot])

**Other Changes:**
* [v1.18] node_neighbor_discovery: fix ID in delete query (cilium/cilium#48872, @nobleess)
* install: Update image digests for v1.18.14 (cilium/cilium#48748, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.18.15@sha256:ab7ccf148b235887a7824313ddfa3edc10d76fcfb13a38e4d5dd213b08533f0a`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.18.15@sha256:865239e69ae0af2221de4d88b1316c311e26753be61caa2ee0f3b4308fa0b957`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.18.15@sha256:058e87c42b3d718f484030f7e2f4b94142d85dc62df5d5950922bf756ee2d286`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.18.15@sha256:718c43dbbf1fb7f3a8df54c3739d71657ebf9967232861b1c4c9d6295b23f1a3`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.18.15@sha256:f1946281b1427016a54caf5a221ce5bcf05835c73fa70c0bd18bfb9c232d2258`

### operator-aws

`quay.io/cilium/operator-aws:v1.18.15@sha256:171c0bfe52b2f96b170267c3117775c1bf2ef371a1e660d040b1842841bd5502`

### operator-azure

`quay.io/cilium/operator-azure:v1.18.15@sha256:0d9f38e41b90bea2f9934cf8c066d1894a518bf3176ff87953b4b82cdb81ee53`

### operator-generic

`quay.io/cilium/operator-generic:v1.18.15@sha256:9b0668bd849b58c01e51db43956f949b8b1b8c11c448c3572edcb8595132ebfb`

### operator

`quay.io/cilium/operator:v1.18.15@sha256:48a9053cc62d04ede83f5f0d8508e507e9e1cd0c3c7e06c719a07c3fc4b0a7be`

