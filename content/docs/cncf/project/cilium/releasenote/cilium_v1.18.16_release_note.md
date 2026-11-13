来源: https://github.com/cilium/cilium/releases/tag/v1.18.16

# cilium/cilium v1.18.16 Release Notes

Published at: 2026-10-23T14:51:27Z

Security patch release
----------------------

Out-of-band security patch release to fix CVE-2026-111943 ([golang/go#82345](https://github.com/golang/go/issues/82345)): upgrades Go to 1.26.10 so that the compromised eMudhra intermediate CA certificates are no longer trusted, and updates all dependencies to their latest patch versions.

Summary of Changes
------------------

**Bugfixes:**
* CiliumEnvoyConfig now only redirects Services in its own namespace, as documented; service references in CiliumClusterwideEnvoyConfig without a namespace default to "default" again. (Backport PR cilium/cilium#49476, Upstream PR cilium/cilium#49076, @maxskokov)

**CI Changes:**
* ci: Pass the auto-committer secrets to the base images workflow (Backport PR cilium/cilium#49414, Upstream PR cilium/cilium#49453, @aanm)
* renovate: Open one trusted PR per branch (Backport PR cilium/cilium#49414, Upstream PR cilium/cilium#49381, @aanm)

**Misc Changes:**
* chore(deps): update auto-merge-trusted-deps (v1.18) (cilium/cilium#49443, @cilium-renovate[bot])
* chore(deps): update auto-merge-trusted-deps (v1.18) (cilium/cilium#49530, @cilium-renovate[bot])
* chore(deps): update auto-merge-trusted-deps (v1.18) (cilium/cilium#49565, @cilium-renovate[bot])
* chore(deps): update dependency sphinxcontrib-openapi to v0.10.0 (v1.18) (cilium/cilium#49441, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#49442, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#49531, @cilium-renovate[bot])
* clarify co sign documentation to use minimum version to verify signing key (Backport PR cilium/cilium#49476, Upstream PR cilium/cilium#49401, @mfahlandt)
* Prepare for release v1.18.16 (cilium/cilium#49545, @cilium-release-bot[bot])
* Revert "Prepare for release v1.18.16" (cilium/cilium#49570, @aanm)

**Other Changes:**
* install: Update image digests for v1.18.15 (cilium/cilium#49388, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.18.16@sha256:7e101fc20997b226330dadc1142849a6bf42745fb8f892adfa49b80a078d23b9`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.18.16@sha256:f67a6f55cce5d067b21aeae46448e3177e34924dfe543619ef512937d042e5cf`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.18.16@sha256:0de458d3a8f43271f7ee3fd5eb362175751ea5083be9275d8bce30337d89ff5d`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.18.16@sha256:312eda66f166d7e327056dc8d412a2c65936765fbd02688260397f183b822bb4`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.18.16@sha256:3fa6217e48617f88d17d021edad2024c17f59937695b017791764da95e6dd9db`

### operator-aws

`quay.io/cilium/operator-aws:v1.18.16@sha256:18f8e70e3e1b8cb5fca2cac09841320f548665e1f04783768584d8a165bba80b`

### operator-azure

`quay.io/cilium/operator-azure:v1.18.16@sha256:2afbb41907fd49cfbcfdbb0f6c5c2ad0a026e44741c832ef3228f8bc2697f171`

### operator-generic

`quay.io/cilium/operator-generic:v1.18.16@sha256:d1d8f4193220d5741788a1d2b1671ba6f3b3dd44098374be530c103d54ab93f1`

### operator

`quay.io/cilium/operator:v1.18.16@sha256:8f65b93e079716e811b6a6241364412bb542b37122ef846fb082ae2e0435d696`

