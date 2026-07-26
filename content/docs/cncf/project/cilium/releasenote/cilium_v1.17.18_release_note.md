来源: https://github.com/cilium/cilium/releases/tag/v1.17.18

# cilium/cilium v1.17.18 Release Notes

Published at: 2026-07-16T22:47:26Z

Summary of Changes
------------------

**Bugfixes:**
* Fix incorrect policy denials for traffic to L7 load balanced services when remote identity changes (Backport PR cilium/cilium#47006, Upstream PR cilium/cilium#46821, @fristonio)
* ipam/multi-pool: Do now wait for zero prealloc request (Backport PR cilium/cilium#47199, Upstream PR cilium/cilium#46867, @pippolo84)

**CI Changes:**
* .github: Generate CI binaries with correct module version (Backport PR cilium/cilium#47097, Upstream PR cilium/cilium#46742, @joestringer)
* chore: check-cilium-envoy-image.sh should get values from Makefile.va… (Backport PR cilium/cilium#46922, Upstream PR cilium/cilium#46840, @sekhar-isovalent)
* v1.17: ariane: Remove Conformance AKS (cilium/cilium#47145, @pchaigno)
* v1.17: workflows: Remove coverage for AKS (cilium/cilium#46998, @pchaigno)

**Misc Changes:**
* .github: allow fork PR checkout with actions/checkout v7 (Backport PR cilium/cilium#47137, Upstream PR cilium/cilium#47133, @aanm)
* [v1.17] - .github/workflows: unpin cilium/cilium self-references to track main (cilium/cilium#46611, @aanm)
* [v1.17] - Reapply ".github/workflows: do not use deployments for environments" (cilium/cilium#46576, @aanm)
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#46660, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#46778, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#46916, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#47113, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.17) (cilium/cilium#46913, @cilium-renovate[bot])
* chore(deps): update aws-actions/configure-aws-credentials action to v6.2.2 (v1.17) (cilium/cilium#47126, @cilium-renovate[bot])
* chore(deps): update base-images to v1.25.12 (v1.17) (cilium/cilium#46984, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.19.5 (v1.17) (cilium/cilium#46728, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.11 docker digest to 00feed3 (v1.17) (cilium/cilium#46661, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.11 docker digest to 995e25c (v1.17) (cilium/cilium#46777, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.11 docker digest to f188e8c (v1.17) (cilium/cilium#46914, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.12 docker digest to d7912ce (v1.17) (cilium/cilium#47112, @cilium-renovate[bot])
* chore(deps): update gcr.io/distroless/static:nonroot docker digest to d29e660 (v1.17) (cilium/cilium#47042, @cilium-renovate[bot])
* chore(deps): update google/cloud-sdk docker tag to v573 (v1.17) (cilium/cilium#46667, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/certgen docker tag to v0.4.6 (v1.17) (cilium/cilium#47043, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.9-1782267392-edeb3f2af56c37c407efa1f63f0b32f595399bbc (v1.17) (cilium/cilium#46702, @cilium-renovate[bot])
* chore: BYOCNI loopback for cilium (Backport PR cilium/cilium#46707, Upstream PR cilium/cilium#46646, @sekhar-isovalent)
* chore: optimize building gops and cni/loopback (Backport PR cilium/cilium#46847, Upstream PR cilium/cilium#46781, @sekhar-isovalent)
* ci: always set fail-fast to false on image builds (Backport PR cilium/cilium#47199, Upstream PR cilium/cilium#47064, @aanm)
* docs: fix note about ipv4-native-routing-cidr default value (Backport PR cilium/cilium#46795, Upstream PR cilium/cilium#46603, @rptaylor)
* Fix instance of cilium having incorrect specified policy_change_total failure label "failure" value which caused unnecessary warnings. (Backport PR cilium/cilium#46795, Upstream PR cilium/cilium#46388, @tommyp1ckles)
* fix(deps): update k8s.io/utils digest to be93311 (v1.17) (cilium/cilium#46915, @cilium-renovate[bot])
* fix(deps): update k8s.io/utils digest to cf1189d (v1.17) (cilium/cilium#47117, @cilium-renovate[bot])
* images ci: free preinstalled toolchains on tight runners before building (Backport PR cilium/cilium#47199, Upstream PR cilium/cilium#47141, @aanm)
* images: Only build `gops` for the relevant platform (Backport PR cilium/cilium#46707, Upstream PR cilium/cilium#41160, @HadrienPatte)
* Makefile: Generate full Cilium version in worktree (Backport PR cilium/cilium#46795, Upstream PR cilium/cilium#46737, @joestringer)

**Other Changes:**
* install: Update image digests for v1.17.17 (cilium/cilium#46591, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.17.18@sha256:2f2c611db8de2f9c4846ee80fa3371617218dcd0cce42cf0d7d40b4d06458a23`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.17.18@sha256:55d0c9c2f282c305bfa7476923e98863ea0a4d5b3f159bf4ece9d782275dd9a4`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.17.18@sha256:387ff37fcf944a167ae0fdde77449cf20fe5b6494046a33709974f32e6794619`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.17.18@sha256:b7b5bc482d0dd7087e044a6bedfbd9f1dc946b2bc41d4bc420715a0378d972cc`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.17.18@sha256:e3b0e541717591b2e92bbd129d1da8f4636ae2be148a52c275c1a6b2f080ac0a`

### operator-aws

`quay.io/cilium/operator-aws:v1.17.18@sha256:425a69265c17dc3482fce364ff7ea5e0d5fe721b5d439644b1bc6a8f148298fb`

### operator-azure

`quay.io/cilium/operator-azure:v1.17.18@sha256:b4dfc72d84942de62ccbbedfde4fb242a85026f4c724d43b5da03e9727aeaf4e`

### operator-generic

`quay.io/cilium/operator-generic:v1.17.18@sha256:ec68d574d2288f2d8cb0ae50778c1a0b08a6165cfcb6ba5bc5595d99ed3f7bda`

### operator

`quay.io/cilium/operator:v1.17.18@sha256:f460bbe0eebdb2e013ada724d1eb47ad7be260503d36eb110c7f26d8e740f31f`

