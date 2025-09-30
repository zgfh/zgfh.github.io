来源: https://github.com/cilium/cilium/releases/tag/v1.16.15

# cilium/cilium v1.16.15 Release Notes

Published at: 2025-09-23T08:17:07Z

:warning: :warning: :warning: :warning: 
**The v1.16.14 was never released due to a release process bug after tagging. The following summary of changes are based on the v1.16.13.**
:warning: :warning: :warning: :warning: 


Summary of Changes
------------------

**CI Changes:**
* .github/workflows: simplify ginkgo workflow (Backport PR cilium/cilium#41619, Upstream PR cilium/cilium#41396, @aanm)
* .github: Don't overwrite junit results (Backport PR cilium/cilium#41042, Upstream PR cilium/cilium#39159, @joestringer)
* .github: fix upload artifacts for features.json (Backport PR cilium/cilium#41372, Upstream PR cilium/cilium#41119, @aanm)
* .github: Run final steps when tests aren't skipped (Backport PR cilium/cilium#41042, Upstream PR cilium/cilium#40180, @joestringer)
* [v1.16] images: update cilium-{runtime,builder} (cilium/cilium#41696, @tklauser)
* add missing extraArgs in CI (Backport PR cilium/cilium#41372, Upstream PR cilium/cilium#41005, @aanm)
* builder: Add tparse,junit tooling (Backport PR cilium/cilium#41042, Upstream PR cilium/cilium#39092, @joestringer)
* Centralize dynamic test ownership configuration (Backport PR cilium/cilium#41042, Upstream PR cilium/cilium#38045, @joestringer)
* checkpatch: bump checkpatch version, and minor adaptations (Backport PR cilium/cilium#41372, Upstream PR cilium/cilium#41290, @giorio94)
* CI: Add merge and upload composite action (Backport PR cilium/cilium#41042, Upstream PR cilium/cilium#35355, @brlbil)
* ci: simplify scheduled test (Backport PR cilium/cilium#41264, Upstream PR cilium/cilium#41261, @brlbil)
* CLI: Attribute tests to codeowners (Backport PR cilium/cilium#41042, Upstream PR cilium/cilium#37027, @joestringer)
* Emit junit output from BPF unit tests (Backport PR cilium/cilium#41042, Upstream PR cilium/cilium#39099, @joestringer)
* gha: run checkpatch check only on PR events (Backport PR cilium/cilium#41372, Upstream PR cilium/cilium#41308, @giorio94)
* Improved test failure attribution on stable branches by using TESTOWNERS files to route failures to appropriate code quality teams rather than generic CI infrastructure teams. (Backport PR cilium/cilium#41042, Upstream PR cilium/cilium#40776, @pillai-ashwin)
* pkg/metrics: define default CIDR policies values (Backport PR cilium/cilium#41473, Upstream PR cilium/cilium#41422, @aanm)
* TESTOWNERS: Import cilium-cli owners from main (cilium/cilium#41375, @joestringer)
* Upload junit results for Go unit test runs (Backport PR cilium/cilium#41042, Upstream PR cilium/cilium#39015, @joestringer)

**Misc Changes:**
* .github/workflows: add step 5 as part of the image build process (Backport PR cilium/cilium#41179, Upstream PR cilium/cilium#41113, @aanm)
* build-images-release: specify main branch on reusable jobs (Backport PR cilium/cilium#41179, Upstream PR cilium/cilium#41530, @aanm)
* checkpatch: Update image digest (Backport PR cilium/cilium#41473, Upstream PR cilium/cilium#41360, @HadrienPatte)
* chore(deps): update all github action dependencies (v1.16) (cilium/cilium#41355, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.16) (cilium/cilium#41445, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.16) (cilium/cilium#41571, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.16) (cilium/cilium#41670, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.16) (cilium/cilium#41342, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.16) (cilium/cilium#41442, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.16) (cilium/cilium#41511, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.16) (cilium/cilium#41614, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.16) (cilium/cilium#41718, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf to v32 (v1.16) (cilium/cilium#41225, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf to v32.1 (v1.16) (cilium/cilium#41669, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.24.6 docker digest to 714ad64 (v1.16) (cilium/cilium#41354, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.24.6 docker digest to 8d9e57c (v1.16) (cilium/cilium#41443, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.24.7 docker digest to 5e9d14d (v1.16) (cilium/cilium#41666, @cilium-renovate[bot])
* chore(deps): update go to v1.24.7 (v1.16) (cilium/cilium#41570, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.33.7-1756004918-79963736ba1b039ff10f7dcb65fa43c5dd6556ed (v1.16) (cilium/cilium#41359, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.33.9-1757593597-298d4cf0a4058d027aa846ef3647123e8411d2b0 (v1.16) (cilium/cilium#41667, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.16) (patch) (cilium/cilium#41444, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.16) (patch) (cilium/cilium#41668, @cilium-renovate[bot])
* cli: Load code owners dynamically via --code-owners (Backport PR cilium/cilium#41042, Upstream PR cilium/cilium#38044, @joestringer)
* cli: Support filtering --log-code-owners (Backport PR cilium/cilium#41042, Upstream PR cilium/cilium#37905, @joestringer)
* docs: document portmap binary requirements (Backport PR cilium/cilium#41372, Upstream PR cilium/cilium#41300, @nbusseneau)
* Fix release script steps (Backport PR cilium/cilium#41179, Upstream PR cilium/cilium#41502, @aanm)
* install: bump startup script version (Backport PR cilium/cilium#41372, Upstream PR cilium/cilium#41299, @Artyop)
* lower log severity for stale metadata to avoid CI issue (Backport PR cilium/cilium#41473, Upstream PR cilium/cilium#41389, @liyihuang)
* Makefile: Fix multi codeowner detection (Backport PR cilium/cilium#41042, Upstream PR cilium/cilium#40923, @joestringer)
* Makefile: Improve tparse,junit output handling (Backport PR cilium/cilium#41042, Upstream PR cilium/cilium#39098, @joestringer)
* metrics/features: remove aws-vpc-cni (Backport PR cilium/cilium#41593, Upstream PR cilium/cilium#41498, @aanm)
* Prepare for release v1.16.14 (cilium/cilium#41723, @cilium-release-bot[bot])
* tools: Move codeowners library from cilium-cli dir (Backport PR cilium/cilium#41042, Upstream PR cilium/cilium#40253, @joestringer)
* Update all github action dependencies (v1.16) (cilium/cilium#41224, @cilium-renovate[bot])
* Update all-dependencies (v1.16) (cilium/cilium#41128, @cilium-renovate[bot])
* Update docker.io/library/golang:1.24.6 Docker digest to e155b51 (v1.16) (cilium/cilium#41222, @cilium-renovate[bot])
* Update stable lvh-images (v1.16) (patch) (cilium/cilium#41223, @cilium-renovate[bot])

**Other Changes:**
* [v1.16] envoy: Start serving listeners only after clusters have been ACKed (cilium/cilium#41607, @jrajahalme)
* [v1.16] Pr/jrajahalme/41721 backport 1.16 (cilium/cilium#41735, @jrajahalme)
* CI: Fix junit upload for v1.16 (cilium/cilium#41686, @joestringer)
* Fix a bug that caused the kernel verifier on pre-v5.7 kernels to reject the bpf_sock program with "invalid func unknown#122" when the LocalRedirectPolicy feature is enabled. (cilium/cilium#41457, @julianwiedmann)
* install: Update image digests for v1.16.13 (cilium/cilium#41180, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.16.15@sha256:c0fa87d70a7ba624fbe581d40a7b7e9e8773a6efd4bb17d0bd14ff854039ec75`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.16.15@sha256:7b44efa93e0428511341005e493efb8aa88efd369901c07f8832dc5b3d669a2d`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.16.15@sha256:13023f0825ef3df62e3f108480fab6f3539bcde05a51c435bf79985eea816a33`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.16.15@sha256:713f46f45f5e5c67c0f3e25c98669760f05b7f22b4a6a2b0b9934839a833618d`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.16.15@sha256:26b6da245ec124a7d5c12a0d05de75e0da272a67f802e59ebb95d328255232b3`

### operator-aws

`quay.io/cilium/operator-aws:v1.16.15@sha256:bb914f013c4a2548ff6028af63fb8bcf730c173d5bf8a57efef150da2614a6ac`

### operator-azure

`quay.io/cilium/operator-azure:v1.16.15@sha256:41ba9911403a151e79aa5544949e40839019ba0fa4600f366b4c3a544ae572eb`

### operator-generic

`quay.io/cilium/operator-generic:v1.16.15@sha256:fea37022f858272c27cefe6b4959d45e2ca03d957decbfa210ce35931f346ecd`

### operator

`quay.io/cilium/operator:v1.16.15@sha256:aadf3c529e7838c8a7de5ad196ccdd6d5797664e1afd5ddefd7830ae28835cf5`

