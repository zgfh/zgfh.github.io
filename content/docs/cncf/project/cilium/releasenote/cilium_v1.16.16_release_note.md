来源: https://github.com/cilium/cilium/releases/tag/v1.16.16

# cilium/cilium v1.16.16 Release Notes

Published at: 2025-10-24T14:25:38Z

Summary of Changes
------------------

:information_source: The images in this release were signed with cosign v3. Please use cosign v3 tooling to validate signatures with the following command syntax:

```
cosign verify --certificate-github-workflow-repository cilium/cilium --certificate-oidc-issuer https://token.actions.githubusercontent.com --certificate-github-workflow-name 'Image Release Build' --certificate-github-workflow-ref refs/tags/v1.16.16 --certificate-identity https://github.com/cilium/cilium/.github/workflows/build-images-releases.yaml@refs/tags/v1.16.16 quay.io/cilium/operator-aws:v1.16.16 | jq -r '.[].critical.image'
```

**Bugfixes:**
* bpf:tests:egressgw: fix metrics count (Backport PR cilium/cilium#41824, Upstream PR cilium/cilium#40338, @smagnani96)
* Cilium now configures Envoy to allow websocket connections to be passed through with HTTP policies. (Backport PR cilium/cilium#41830, Upstream PR cilium/cilium#41729, @jrajahalme)
* operator/pkg/lbipam: fix LoadBalancerIPPool conditions update logic (Backport PR cilium/cilium#41830, Upstream PR cilium/cilium#41322, @alimehrabikoshki)
* xds: Fix a case in which after cilium-agent we were not sending updated resources to Envoy (Backport PR cilium/cilium#41993, Upstream PR cilium/cilium#38654, @marseel)

**CI Changes:**
* .actions/cilium-config: add missing extraEnv in GH action (Backport PR cilium/cilium#41830, Upstream PR cilium/cilium#41420, @aanm)
* .github/workflows: add variable for renovate bot username (Backport PR cilium/cilium#41845, Upstream PR cilium/cilium#41818, @aanm)
* .github/workflows: automatically add /test for renovate PRs (Backport PR cilium/cilium#41845, Upstream PR cilium/cilium#41770, @aanm)
* .github/workflows: do not wait on linters form forks (Backport PR cilium/cilium#41830, Upstream PR cilium/cilium#41822, @aanm)
* .github/workflows: remove reviewers requested by auto-committer[bot] (Backport PR cilium/cilium#41830, Upstream PR cilium/cilium#41759, @aanm)
* ginkgo: add test ownership for ginkgo tests (Backport PR cilium/cilium#42057, Upstream PR cilium/cilium#41950, @aanm)
* workflows: fix GCP OIDC authentication's project ID (cilium/cilium#42175, @nbusseneau)

**Misc Changes:**
* .github/workflows: stop build CI images until base images are built (Backport PR cilium/cilium#41830, Upstream PR cilium/cilium#41681, @aanm)
* chore(deps): update all github action dependencies (v1.16) (cilium/cilium#41799, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.16) (cilium/cilium#42034, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.16) (cilium/cilium#42140, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.16) (cilium/cilium#42270, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.16) (cilium/cilium#42032, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.16) (cilium/cilium#42118, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.16) (cilium/cilium#42234, @cilium-renovate[bot])
* chore(deps): update dependency cilium/little-vm-helper to v0.0.27 (v1.16) (cilium/cilium#42269, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf to v33 (v1.16) (cilium/cilium#42271, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.24.7 docker digest to 2c5f7a0 (v1.16) (cilium/cilium#42033, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.24.9 docker digest to 02ce1d7 (v1.16) (cilium/cilium#42255, @cilium-renovate[bot])
* chore(deps): update go to v1.24.8 (v1.16) (cilium/cilium#42064, @cilium-renovate[bot])
* chore(deps): update go to v1.24.9 (v1.16) (cilium/cilium#42168, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.33.9-1759146487-8a1d7d426318c207eba89819cfdc1c4aaa1d5b5f (v1.16) (cilium/cilium#41798, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.34.10-1760767433-887ebe7d6ccc2a9dc8c73f6ae4927283283b507e (v1.16) (cilium/cilium#42250, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.34.8-1760431956-5396abb8b954867b98828b5af2b1f23bcc05f9dc (v1.16) (cilium/cilium#42165, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.16) (patch) (cilium/cilium#41732, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.16) (patch) (cilium/cilium#42139, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.16) (patch) (cilium/cilium#42302, @cilium-renovate[bot])
* docs: fix broken Chainguard SBOM link (Backport PR cilium/cilium#41830, Upstream PR cilium/cilium#41719, @yashisrani)
* docs: Update iproute2 compile steps in reference guide. (Backport PR cilium/cilium#41830, Upstream PR cilium/cilium#41638, @dkanaliev)
* Update `checkpatch` and `startup-script` image digest (Backport PR cilium/cilium#41830, Upstream PR cilium/cilium#41710, @HadrienPatte)

**Other Changes:**
* [v1.16] bpf:tests:egressgw: fix metrics count (part 2) (cilium/cilium#42207, @julianwiedmann)
* [v1.16] proxy: Bump envoy version to 1.34.x (cilium/cilium#42096, @sayboras)
* gh: ipsec-upgrade: fix patch-level upgrade from v1.16.14 (cilium/cilium#41776, @julianwiedmann)
* install: Update image digests for v1.16.15 (cilium/cilium#41817, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.16.16@sha256:201acb2c6ab85221f067b1867fa727676b7acdbdfd641f5b1db12cf246d65668`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.16.16@sha256:b5cafba73ae0276a81022e2efe20badc2d2ec2183abb3a5f08794dcfef3d09b6`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.16.16@sha256:e8b4a4c17bd338ee282c73a945a335331a7e4580a086675737ce5c92b5337fb6`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.16.16@sha256:a8adcd27fbe2cb5f103c05521c406d9dc48a211c1b53ffce02352b8de0cbfe1d`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.16.16@sha256:fbb4ac3ba1e57324a9211dbe77cdf4080db867255b8c0585b0ab11bdda8754d6`

### operator-aws

`quay.io/cilium/operator-aws:v1.16.16@sha256:236098b0829dc3efaaf34742ddfef8ea8eda183c1203cb333de08309460c5cca`

### operator-azure

`quay.io/cilium/operator-azure:v1.16.16@sha256:e07597b849f33db0daa726f5c76fff0524ccfe68abdcea1d2bd9b9e726df5453`

### operator-generic

`quay.io/cilium/operator-generic:v1.16.16@sha256:d37c99a2c87be522bc5ab271a8bd72d45b7a4096b73253f932009e5a7d682a99`

### operator

`quay.io/cilium/operator:v1.16.16@sha256:d5cf570bbe21c0cd7562b258ec3033840ea930707bc204522fa1e14ebd0cd01f`

