来源: https://github.com/cilium/cilium/releases/tag/v1.17.8

# cilium/cilium v1.17.8 Release Notes

Published at: 2025-09-22T16:22:25Z

Summary of Changes
------------------

**Bugfixes:**
* Fix "No mapping for NAT masquerade" flakes in the CI, make NAT LRU fallbacks more robust. (Backport PR cilium/cilium#41369, Upstream PR cilium/cilium#40971, @gentoo-root)

**CI Changes:**
* .github/worfklows: copy cilium-cli binary from container (Backport PR cilium/cilium#41618, Upstream PR cilium/cilium#41524, @aanm)
* .github/workflows: add timeout to Install node local DNS step (Backport PR cilium/cilium#41266, Upstream PR cilium/cilium#41120, @aanm)
* .github/workflows: simplify ginkgo workflow (Backport PR cilium/cilium#41618, Upstream PR cilium/cilium#41396, @aanm)
* .github: fix upload artifacts for features.json (Backport PR cilium/cilium#41369, Upstream PR cilium/cilium#41119, @aanm)
* add missing extraArgs in CI (Backport PR cilium/cilium#41369, Upstream PR cilium/cilium#41005, @aanm)
* checkpatch: bump checkpatch version, and minor adaptations (Backport PR cilium/cilium#41369, Upstream PR cilium/cilium#41290, @giorio94)
* ci-aks: Fix concurrency for ipsec tests (cilium/cilium#41161, @joestringer)
* ci: Fix Scheduled Test (cilium/cilium#41235, @brlbil)
* ci: simplify scheduled test (Backport PR cilium/cilium#41265, Upstream PR cilium/cilium#41261, @brlbil)
* gha: run checkpatch check only on PR events (Backport PR cilium/cilium#41369, Upstream PR cilium/cilium#41308, @giorio94)
* pkg/metrics: define default CIDR policies values (Backport PR cilium/cilium#41476, Upstream PR cilium/cilium#41422, @aanm)

**Misc Changes:**
* .github/workflows: add step 5 as part of the image build process (Backport PR cilium/cilium#41178, Upstream PR cilium/cilium#41113, @aanm)
* build-images-release: specify main branch on reusable jobs (Backport PR cilium/cilium#41178, Upstream PR cilium/cilium#41530, @aanm)
* checkpatch: Update image digest (Backport PR cilium/cilium#41476, Upstream PR cilium/cilium#41360, @HadrienPatte)
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#41569, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.17) (cilium/cilium#41127, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.17) (cilium/cilium#41341, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.17) (cilium/cilium#41440, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.17) (cilium/cilium#41510, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.17) (cilium/cilium#41613, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.17) (cilium/cilium#41717, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf to v32 (v1.17) (cilium/cilium#41221, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf to v32.1 (v1.17) (cilium/cilium#41664, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.24.6 docker digest to 8d9e57c (v1.17) (cilium/cilium#41352, @cilium-renovate[bot])
* chore(deps): update go to v1.24.7 (v1.17) (cilium/cilium#41568, @cilium-renovate[bot])
* chore(deps): update google/cloud-sdk docker tag to v535 (v1.17) (cilium/cilium#41353, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.33.7-1756004918-79963736ba1b039ff10f7dcb65fa43c5dd6556ed (v1.17) (cilium/cilium#41377, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.33.8-1756960543-c60e96750d287b709de24243dd71a769147da7d1 (v1.17) (cilium/cilium#41517, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.33.9-1757593597-298d4cf0a4058d027aa846ef3647123e8411d2b0 (v1.17) (cilium/cilium#41662, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-llvm docker tag to v1755973935 (v1.17) (cilium/cilium#41356, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.17) (patch) (cilium/cilium#41441, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.17) (patch) (cilium/cilium#41663, @cilium-renovate[bot])
* ci: Update workflow permissions (Backport PR cilium/cilium#41476, Upstream PR cilium/cilium#41383, @kyle-c-simmons)
* docs: document portmap binary requirements (Backport PR cilium/cilium#41369, Upstream PR cilium/cilium#41300, @nbusseneau)
* Fix release script steps (Backport PR cilium/cilium#41178, Upstream PR cilium/cilium#41502, @aanm)
* install: bump startup script version (Backport PR cilium/cilium#41369, Upstream PR cilium/cilium#41299, @Artyop)
* lower log severity for stale metadata to avoid CI issue (Backport PR cilium/cilium#41476, Upstream PR cilium/cilium#41389, @liyihuang)
* metrics/features: remove aws-vpc-cni (Backport PR cilium/cilium#41624, Upstream PR cilium/cilium#41498, @aanm)
* Support extending cilium-agent dnsPolicy as a downstream packager (Backport PR cilium/cilium#41266, Upstream PR cilium/cilium#41010, @devodev)
* Update all github action dependencies (v1.17) (cilium/cilium#41220, @cilium-renovate[bot])
* Update docker.io/library/golang:1.24.6 Docker digest to e155b51 (v1.17) (cilium/cilium#41218, @cilium-renovate[bot])
* Update stable lvh-images (v1.17) (patch) (cilium/cilium#41219, @cilium-renovate[bot])
* workflows/conformance-ginkgo: fix steps for stable branches (Backport PR cilium/cilium#41618, Upstream PR cilium/cilium#41599, @aanm)

**Other Changes:**
* [v1.17] envoy: Start serving listeners only after clusters have been ACKed (cilium/cilium#41606, @jrajahalme)
* [v1.17] workflows/release: add secrets for step 4 and 5 (cilium/cilium#41734, @jrajahalme)
* Fix a bug that caused the kernel verifier on pre-v5.7 kernels to reject the bpf_sock program with "invalid func unknown#122" when the LocalRedirectPolicy feature is enabled. (cilium/cilium#41449, @julianwiedmann)
* GAMMA reconciler now supports attaching multiple HTTPRoutes to the same Service. (cilium/cilium#41257, @youngnick)
* install: Update image digests for v1.17.7 (cilium/cilium#41181, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.17.8@sha256:6d7ea72ed311eeca4c75a1f17617a3d596fb6038d30d00799090679f82a01636`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.17.8@sha256:3ac210d94d37a77ec010f9ac4c705edc8f15f22afa2b9a6f0e2a7d64d2360586`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.17.8@sha256:0c06b8bfa91d0fe79f7ad0e1bc30b910d530a6d36a977571b6038c7b12b9e7c1`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.17.8@sha256:2e576bf7a02291c07bffbc1ca0a66a6c70f4c3eb155480e5b3ac027bedd2858b`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.17.8@sha256:72c25a405ad8e58d2cf03f7ea2b6696ed1edcfb51716b5f85e45c6c4fcaa6056`

### operator-aws

`quay.io/cilium/operator-aws:v1.17.8@sha256:28012f7d0f4f23e9f6c7d6a5dd931afa326bbac3e8103f3f6f22b9670847dffa`

### operator-azure

`quay.io/cilium/operator-azure:v1.17.8@sha256:619f9febf3efef2724a26522b253e4595cd33c274f5f49925e29a795fdc2d2d7`

### operator-generic

`quay.io/cilium/operator-generic:v1.17.8@sha256:5468807b9c31997f3a1a14558ec7c20c5b962a2df6db633b7afbe2f45a15da1c`

### operator

`quay.io/cilium/operator:v1.17.8@sha256:31ff7c28d2cc96f97c5246fa03d4e31a089600f0d896e7e16a48e83090ee83bc`

