来源: https://github.com/cilium/cilium/releases/tag/v1.16.13

# cilium/cilium v1.16.13 Release Notes

Published at: 2025-08-15T13:46:43Z

Summary of Changes
------------------

**Minor Changes:**
* Add `kernel_version`, `endpoint_routes_enabled`, `strict_mode_enabled` and `kubernetes_version` feature metrics. (Backport PR cilium/cilium#41073, Upstream PR cilium/cilium#41003, @aanm)

**Bugfixes:**
* bgp: Use private fork of the GoBGP to fix BGP MD5 auth (Backport PR cilium/cilium#40579, Upstream PR cilium/cilium#40566, @YutaroHayakawa)
* Helm: Correct seccompProfile for cilium-agent pods (Backport PR cilium/cilium#40579, Upstream PR cilium/cilium#40476, @jcpunk)
* install/kubernetes: fix clustermesh-apiserver extraEnv (Backport PR cilium/cilium#41073, Upstream PR cilium/cilium#41021, @aanm)

**CI Changes:**
* .github/actions: only upload files with features-tested prefix (Backport PR cilium/cilium#40989, Upstream PR cilium/cilium#40975, @aanm)
* [v1.16] .github: Remove use of cosign attest --recursive (cilium/cilium#40700, @YutaroHayakawa)
* [v1.16] ci: Revert build_commits runner to ubuntu-22.04 (cilium/cilium#40867, @rastislavs)
* ci: conformance-eks token extended to 8h (Backport PR cilium/cilium#40579, Upstream PR cilium/cilium#40474, @mathpl)
* ci: more powerful runners for go linting (Backport PR cilium/cilium#40764, Upstream PR cilium/cilium#40582, @mathpl)
* Fix GKE cluster creation failures when branch names exceed 63-byte label limit by implementing automatic truncation with hash-based uniqueness preservation. (Backport PR cilium/cilium#40851, Upstream PR cilium/cilium#40725, @pillai-ashwin)
* spire: Fix unreliable test (Backport PR cilium/cilium#40663, Upstream PR cilium/cilium#40561, @joestringer)

**Misc Changes:**
* .github/workflows: bump build-images-base timeout to 60 minutes (Backport PR cilium/cilium#40989, Upstream PR cilium/cilium#40919, @aanm)
* .github: fix removal of all files in /mnt (Backport PR cilium/cilium#40851, Upstream PR cilium/cilium#40818, @aanm)
* .github: fix upload artifacts for features.json (cilium/cilium#41089, @aanm)
* .github: remove all contents of /mnt in build images CI (Backport PR cilium/cilium#40851, Upstream PR cilium/cilium#40814, @aanm)
* chore(deps): update actions/download-artifact action to v5 (v1.16) (cilium/cilium#41061, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.16) (cilium/cilium#40750, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.16) (cilium/cilium#40909, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.16) (cilium/cilium#41062, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.16) (cilium/cilium#40747, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.16) (cilium/cilium#40985, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.18.6 (v1.16) (cilium/cilium#40906, @cilium-renovate[bot])
* chore(deps): update dependency cilium/little-vm-helper to v0.0.26 (v1.16) (cilium/cilium#40647, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf to v31.1 (v1.16) (cilium/cilium#40749, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang docker tag to v1.24.5 (v1.16) (cilium/cilium#40748, @cilium-renovate[bot])
* chore(deps): update go to v1.24.6 (v1.16) (cilium/cilium#40995, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.33.6-1753919866-df8077dbd3932edccb59f1c5c70e01f2c1f63741 (v1.16) (cilium/cilium#40907, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.16) (patch) (cilium/cilium#40674, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.16) (patch) (cilium/cilium#40908, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.16) (patch) (cilium/cilium#41060, @cilium-renovate[bot])
* ci: add/change runner labels (Backport PR cilium/cilium#40989, Upstream PR cilium/cilium#40972, @Artyop)
* daemon/test: explicitly wait for identities synchronization (Backport PR cilium/cilium#40851, Upstream PR cilium/cilium#40811, @giorio94)
* doc:monitor: clarify direction traced with default aggregation level (Backport PR cilium/cilium#40580, Upstream PR cilium/cilium#40398, @smagnani96)
* docs: Add missing IPAM modes to configuration page (Backport PR cilium/cilium#40663, Upstream PR cilium/cilium#40540, @RayyanSeliya)
* docs: Add warning about changing an IP pool (Backport PR cilium/cilium#40663, Upstream PR cilium/cilium#40567, @sorrison)
* docs: Extend Hubble Performance Tuning Documentation (Backport PR cilium/cilium#40580, Upstream PR cilium/cilium#34665, @glrf)
* docs: remove l7 EnableDefaultDeny callout (Backport PR cilium/cilium#40579, Upstream PR cilium/cilium#40441, @squeed)
* policy: redact sensitive tls context properties for logging (Backport PR cilium/cilium#40579, Upstream PR cilium/cilium#40417, @fristonio)

**Other Changes:**
* images: update cilium-{runtime,builder} (cilium/cilium#40840, @aanm)
* install: Update image digests for v1.16.12 (cilium/cilium#40545, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.16.13@sha256:ea59f51ba72cded67e6d2161192db680f422f0a3abfb1b8c37d0c3f1d5a934fd`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.16.13@sha256:c42f514226a7942d1ad0e24737f4af3e51f03cb5ebe8de3731b6ae204768edff`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.16.13@sha256:6e5bb7438f26268a9b9a4ded53a4d2df7324f40dfe212f2d7bba4a8bb6d0b4e4`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.16.13@sha256:55f659befd04e576348fbe6e06e52679dab4ae719301d22ce8cb131c4076e885`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.16.13@sha256:dd7721dbeaeb1cf7caf3345c28530ab3e9b8df7726d535e5753f3c87fe1df762`

### operator-aws

`quay.io/cilium/operator-aws:v1.16.13@sha256:ffda94d43189a8c336dc018580703dad0b7b09e0f7d2b26b7633b08c2ebe78b8`

### operator-azure

`quay.io/cilium/operator-azure:v1.16.13@sha256:e1ab6a0aecb8a9d9b7fcc36b3c7a568ae4fdf13ffab45e8eaaf76673cce8cf3e`

### operator-generic

`quay.io/cilium/operator-generic:v1.16.13@sha256:94d0bed62d981b9ebd8d5041206705a92c49e7b3cfdabca9c4611f04ac82abc2`

### operator

`quay.io/cilium/operator:v1.16.13@sha256:cad7dba55e741da80f7ae6cae745713b5945448a1bae63c9b1fe06ca25d664c9`

