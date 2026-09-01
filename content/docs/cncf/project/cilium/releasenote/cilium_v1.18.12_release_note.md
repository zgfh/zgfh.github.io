来源: https://github.com/cilium/cilium/releases/tag/v1.18.12

# cilium/cilium v1.18.12 Release Notes

Published at: 2026-07-16T22:47:50Z

Summary of Changes
------------------

**Minor Changes:**
* gateway-api: add support for configuring Gateway access logs through the new `spec.telemetry.accessLogs` field in CiliumGatewayClassConfig. (Backport PR cilium/cilium#47016, Upstream PR cilium/cilium#46403, @arybolovlev)

**Bugfixes:**
* Fix incorrect policy denials for traffic to L7 load balanced services when remote identity changes (Backport PR cilium/cilium#47003, Upstream PR cilium/cilium#46821, @fristonio)
* Fix regression preventing Cilium from starting when configured in kvstore mode with KPR enabled, if etcd is behind a Kubernetes service (Backport PR cilium/cilium#47196, Upstream PR cilium/cilium#46444, @giorio94)
* gateway-api: Add Gateway check for when hostNetwork is enabled (Backport PR cilium/cilium#46838, Upstream PR cilium/cilium#46350, @xtineskim)
* ipam/multi-pool: Do now wait for zero prealloc request (Backport PR cilium/cilium#47196, Upstream PR cilium/cilium#46867, @pippolo84)

**CI Changes:**
* .github: Generate CI binaries with correct module version (Backport PR cilium/cilium#47098, Upstream PR cilium/cilium#46742, @joestringer)
* chore: check-cilium-envoy-image.sh should get values from Makefile.va… (Backport PR cilium/cilium#46921, Upstream PR cilium/cilium#46840, @sekhar-isovalent)

**Misc Changes:**
* .github: allow fork PR checkout with actions/checkout v7 (Backport PR cilium/cilium#47136, Upstream PR cilium/cilium#47133, @aanm)
* [v1.18] - .github/workflows: unpin cilium/cilium self-references to track main (cilium/cilium#46612, @aanm)
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#46912, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#47111, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.18) (cilium/cilium#46909, @cilium-renovate[bot])
* chore(deps): update aws-actions/configure-aws-credentials action to v6.2.2 (v1.18) (cilium/cilium#47125, @cilium-renovate[bot])
* chore(deps): update base-images (v1.18) (cilium/cilium#46776, @cilium-renovate[bot])
* chore(deps): update base-images to v1.25.12 (v1.18) (cilium/cilium#46983, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.19.5 (v1.18) (cilium/cilium#46727, @cilium-renovate[bot])
* chore(deps): update docker.io/library/alpine docker tag to v3.22.5 (v1.18) (cilium/cilium#46775, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.11 docker digest to 00feed3 (v1.18) (cilium/cilium#46659, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.11 docker digest to f188e8c (v1.18) (cilium/cilium#46910, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.12 docker digest to d7912ce (v1.18) (cilium/cilium#47110, @cilium-renovate[bot])
* chore(deps): update gcr.io/distroless/static:nonroot docker digest to d29e660 (v1.18) (cilium/cilium#47040, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/certgen docker tag to v0.4.6 (v1.18) (cilium/cilium#47041, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.9-1782267392-edeb3f2af56c37c407efa1f63f0b32f595399bbc (v1.18) (cilium/cilium#46701, @cilium-renovate[bot])
* chore: BYOCNI loopback for cilium (Backport PR cilium/cilium#46706, Upstream PR cilium/cilium#46646, @sekhar-isovalent)
* chore: optimize building gops and cni/loopback (Backport PR cilium/cilium#46846, Upstream PR cilium/cilium#46781, @sekhar-isovalent)
* ci: always set fail-fast to false on image builds (Backport PR cilium/cilium#47196, Upstream PR cilium/cilium#47064, @aanm)
* docs: clarify Hubble static/dynamic exporter file rotation settings (Backport PR cilium/cilium#47196, Upstream PR cilium/cilium#47026, @maksymbilokur-cisco)
* docs: fix note about ipv4-native-routing-cidr default value (Backport PR cilium/cilium#46794, Upstream PR cilium/cilium#46603, @rptaylor)
* Fix instance of cilium having incorrect specified policy_change_total failure label "failure" value which caused unnecessary warnings. (Backport PR cilium/cilium#46794, Upstream PR cilium/cilium#46388, @tommyp1ckles)
* fix(deps): update k8s.io/utils digest to be93311 (v1.18) (cilium/cilium#46911, @cilium-renovate[bot])
* fix(deps): update k8s.io/utils digest to cf1189d (v1.18) (cilium/cilium#47116, @cilium-renovate[bot])
* gateway-api: return model from Gateway API ingestion (Backport PR cilium/cilium#47016, Upstream PR cilium/cilium#46450, @arybolovlev)
* gha: fail fast in external-target provisioning scripts instead of swallowing failures (Backport PR cilium/cilium#47196, Upstream PR cilium/cilium#47085, @aanm)
* images ci: free preinstalled toolchains on tight runners before building (Backport PR cilium/cilium#47196, Upstream PR cilium/cilium#47141, @aanm)
* images: Only build `gops` for the relevant platform (Backport PR cilium/cilium#46706, Upstream PR cilium/cilium#41160, @HadrienPatte)
* Makefile: Generate full Cilium version in worktree (Backport PR cilium/cilium#46794, Upstream PR cilium/cilium#46737, @joestringer)

**Other Changes:**
* install: Update image digests for v1.18.11 (cilium/cilium#46592, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.18.12@sha256:94149589d9b77fe3a78f900121b36fab51b1ede0c4190924e2328facc37de210`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.18.12@sha256:29ae8a306bfa644b5a5e305a50dc54d7461ae173a3361d1b1ab6c2aade346a71`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.18.12@sha256:cf931f0713ba15696553b71e4aae719747a6f137631e41760f5b0ac83ebd5b58`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.18.12@sha256:308b186791faf8a8a9322ce64d2e12f66fa82a3f4659e7a79b31829b6195df61`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.18.12@sha256:c2b3ed511cd5193f51888cc36ec699151685d92b28c9bcd975ec1c1011653f37`

### operator-aws

`quay.io/cilium/operator-aws:v1.18.12@sha256:da54cc50e76e6439205c2816b29a791c09584de5f60a39ae2821d471eabe78f8`

### operator-azure

`quay.io/cilium/operator-azure:v1.18.12@sha256:b435e3e41629ffea2687e58c7be6dfb29b4862ca0b517990ae40fe1effb36044`

### operator-generic

`quay.io/cilium/operator-generic:v1.18.12@sha256:86899c73438812b2761ac6fa435ea4e65f68e70d1ae54ac806fec8805d1ce011`

### operator

`quay.io/cilium/operator:v1.18.12@sha256:2ad7a424177b025f011d60fa279ce9bd6b3fe471626656cde0e9de126ae38cc1`

