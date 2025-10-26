来源: https://github.com/cilium/cilium/releases/tag/v1.17.9

# cilium/cilium v1.17.9 Release Notes

Published at: 2025-10-24T14:24:49Z

Summary of Changes
------------------

:information_source: The images in this release were signed with cosign v3. Please use cosign v3 tooling to validate signatures with the following command syntax:

```
cosign verify --certificate-github-workflow-repository cilium/cilium --certificate-oidc-issuer https://token.actions.githubusercontent.com --certificate-github-workflow-name 'Image Release Build' --certificate-github-workflow-ref refs/tags/v1.17.9 --certificate-identity https://github.com/cilium/cilium/.github/workflows/build-images-releases.yaml@refs/tags/v1.17.9 quay.io/cilium/operator-aws:v1.17.9 | jq -r '.[].critical.image'
```

**Bugfixes:**
* bpf:tests:egressgw: fix metrics count (Backport PR cilium/cilium#41823, Upstream PR cilium/cilium#40338, @smagnani96)
* Cilium now configures Envoy to allow websocket connections to be passed through with HTTP policies. (Backport PR cilium/cilium#41829, Upstream PR cilium/cilium#41729, @jrajahalme)
* Fix a bug that was preventing Cilium to delete stale pod CIDRs routes when changing routing mode to native (Backport PR cilium/cilium#41983, Upstream PR cilium/cilium#41819, @pippolo84)
* Fix a bug where cilium-agent would report "Link not found" for an endpoint deleted during state restore after cilium-agent restart. (Backport PR cilium/cilium#42203, Upstream PR cilium/cilium#40568, @fristonio)
* Fix bug where configuring Cilium with bpfClockProbe=true would fail during BPF compilation (cilium/cilium#42244, @joestringer)
* fix(GH-37724): Sync policies on startup (Backport PR cilium/cilium#41971, Upstream PR cilium/cilium#40357, @anubhabMajumdar)
* Fixes a rare bug where endpoints may have incomplete policies in large clusters. (Backport PR cilium/cilium#42154, Upstream PR cilium/cilium#42049, @squeed)
* operator/pkg/lbipam: fix LoadBalancerIPPool conditions update logic (Backport PR cilium/cilium#41829, Upstream PR cilium/cilium#41322, @alimehrabikoshki)
* policy: Fix a bug where transient errors in endpoint regeneration lead to broken connectivity. (Backport PR cilium/cilium#41971, Upstream PR cilium/cilium#40696, @jrife)

**CI Changes:**
* .actions/cilium-config: add missing extraEnv in GH action (Backport PR cilium/cilium#41829, Upstream PR cilium/cilium#41420, @aanm)
* .github/workflows: add variable for renovate bot username (Backport PR cilium/cilium#41844, Upstream PR cilium/cilium#41818, @aanm)
* .github/workflows: automatically add /test for renovate PRs (Backport PR cilium/cilium#41844, Upstream PR cilium/cilium#41770, @aanm)
* .github/workflows: do not wait on linters form forks (Backport PR cilium/cilium#41829, Upstream PR cilium/cilium#41822, @aanm)
* .github/workflows: remove reviewers requested by auto-committer[bot] (Backport PR cilium/cilium#41829, Upstream PR cilium/cilium#41759, @aanm)
* cli: Fix unreliable tests due to error emitted in Cilium logs "retrieving device lxc*: Link not found" (Backport PR cilium/cilium#42203, Upstream PR cilium/cilium#42146, @fristonio)
* gha: Correct k8s version for f12-datapath-service-ns-misc (Backport PR cilium/cilium#41757, Upstream PR cilium/cilium#41753, @sayboras)
* ginkgo: add test ownership for ginkgo tests (Backport PR cilium/cilium#42056, Upstream PR cilium/cilium#41950, @aanm)

**Misc Changes:**
* .github/workflows: stop build CI images until base images are built (Backport PR cilium/cilium#41829, Upstream PR cilium/cilium#41681, @aanm)
* bpf: Only send fillup signal to agent on ENOMEM error (Backport PR cilium/cilium#41983, Upstream PR cilium/cilium#41864, @borkmann)
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#41665, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#42031, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#42138, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#42267, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.17) (cilium/cilium#42029, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.17) (cilium/cilium#42117, @cilium-renovate[bot])
* chore(deps): update dependency cilium/little-vm-helper to v0.0.27 (v1.17) (cilium/cilium#42266, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf to v33 (v1.17) (cilium/cilium#42268, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.24.7 docker digest to 2c5f7a0 (v1.17) (cilium/cilium#42030, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.24.9 docker digest to 02ce1d7 (v1.17) (cilium/cilium#42254, @cilium-renovate[bot])
* chore(deps): update go to v1.24.8 (v1.17) (cilium/cilium#42063, @cilium-renovate[bot])
* chore(deps): update go to v1.24.9 (v1.17) (cilium/cilium#42167, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.33.9-1759146487-8a1d7d426318c207eba89819cfdc1c4aaa1d5b5f (v1.17) (cilium/cilium#41796, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.34.10-1760767433-887ebe7d6ccc2a9dc8c73f6ae4927283283b507e (v1.17) (cilium/cilium#42249, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.17) (patch) (cilium/cilium#41731, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.17) (patch) (cilium/cilium#42137, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.17) (patch) (cilium/cilium#42301, @cilium-renovate[bot])
* docs: fix broken Chainguard SBOM link (Backport PR cilium/cilium#41829, Upstream PR cilium/cilium#41719, @yashisrani)
* docs: Update iproute2 compile steps in reference guide. (Backport PR cilium/cilium#41829, Upstream PR cilium/cilium#41638, @dkanaliev)
* endpoint: reduce missed-policy-update log severity for restoring eps (Backport PR cilium/cilium#42056, Upstream PR cilium/cilium#41095, @fristonio)
* Update `checkpatch` and `startup-script` image digest (Backport PR cilium/cilium#41829, Upstream PR cilium/cilium#41710, @HadrienPatte)

**Other Changes:**
* [v1.17] proxy: Bump envoy version to 1.34.x (cilium/cilium#42095, @sayboras)
* install: Update image digests for v1.17.8 (cilium/cilium#41816, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.17.9@sha256:6792747da10f8daf2ae7f028713bc4f4cff335451fa70bfb211557e95cb1e6a5`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.17.9@sha256:30d2661aac69fff5efb4270b46f91de68da3586c1eb80c879474cbdddf4361d5`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.17.9@sha256:ac3078839d9aa1bd9c86792ff1d36fbeade439e7c7bf02b7c8d6801ffa4b17f0`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.17.9@sha256:9bcd61931abe81202d52c3757f00fa229cd93f7e9d571409975d01278ab6feb0`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.17.9@sha256:fafc062fedc3d0b0c8bdebb1c3156261cd70aa2bf38110c9fd9ae214172462b3`

### operator-aws

`quay.io/cilium/operator-aws:v1.17.9@sha256:2f01e0f4c19289aefa02458667d179481a164dd6ee2e6ad67ff0f5c4d6b8dc88`

### operator-azure

`quay.io/cilium/operator-azure:v1.17.9@sha256:317896087d29ef4b8fd5e51fb18a3a03307af1ec57a0ca9c82415ea5a6a87c23`

### operator-generic

`quay.io/cilium/operator-generic:v1.17.9@sha256:f6efc077c738e28973d66c5c1d361a9f385c6323fec49518f565c7267a1b7d3a`

### operator

`quay.io/cilium/operator:v1.17.9@sha256:15d1b5379344f68a57c6b69ce102029144dfbc3f95db78142f01a3f91259227b`

