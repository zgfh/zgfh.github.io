来源: https://github.com/cilium/cilium/releases/tag/v1.19.10

# cilium/cilium v1.19.10 Release Notes

Published at: 2026-10-23T14:51:33Z

Security patch release
----------------------

Out-of-band security patch release to fix CVE-2026-111943 ([golang/go#82345](https://github.com/golang/go/issues/82345)): upgrades Go to 1.26.10 so that the compromised eMudhra intermediate CA certificates are no longer trusted, and updates all dependencies to their latest patch versions.

Summary of Changes
------------------

**Bugfixes:**
* CiliumEnvoyConfig now only redirects Services in its own namespace, as documented; service references in CiliumClusterwideEnvoyConfig without a namespace default to "default" again. (Backport PR cilium/cilium#49475, Upstream PR cilium/cilium#49076, @maxskokov)

**CI Changes:**
* .github: Clear CI images on e2e patch downgrades (Backport PR cilium/cilium#49567, Upstream PR cilium/cilium#49566, @aanm)
* ci: Pass the auto-committer secrets to the base images workflow (Backport PR cilium/cilium#49415, Upstream PR cilium/cilium#49453, @aanm)
* renovate: Open one trusted PR per branch (Backport PR cilium/cilium#49415, Upstream PR cilium/cilium#49381, @aanm)

**Misc Changes:**
* chore(deps): update auto-merge-trusted-deps (v1.19) (cilium/cilium#49440, @cilium-renovate[bot])
* chore(deps): update auto-merge-trusted-deps (v1.19) (cilium/cilium#49529, @cilium-renovate[bot])
* chore(deps): update auto-merge-trusted-deps (v1.19) (cilium/cilium#49564, @cilium-renovate[bot])
* clarify co sign documentation to use minimum version to verify signing key (Backport PR cilium/cilium#49475, Upstream PR cilium/cilium#49401, @mfahlandt)
* Prepare for release v1.19.10 (cilium/cilium#49546, @cilium-release-bot[bot])
* Revert "Prepare for release v1.19.10" (cilium/cilium#49569, @aanm)

**Other Changes:**
* Gateway API: backport listener hostname, port and protocol conflict detection (cilium/cilium#49450, @asauber)
* install: Update image digests for v1.19.9 (cilium/cilium#49389, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.19.10@sha256:e86fb55fa703ada191fbd4489513daa19674952c8c3c4985dc3c77ce51ac4f27`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.19.10@sha256:1ddfab3ccd3dc372b190c1d48b8a0f9eba5a3436586dfb1b974a94f7dc07ab1a`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.19.10@sha256:318e6b9864a83d35b3fbfd245ba04c976d47f875b1eda4af4a59da3e8331a79a`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.19.10@sha256:93089f137c7a55c6550b547902e230827d26a2dc4cb396b65751e87e4206293a`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.19.10@sha256:618cfb4a601d2d70d6fa5ea0887099f9c8071d234e5567f52e3c8501a1b35114`

### operator-aws

`quay.io/cilium/operator-aws:v1.19.10@sha256:6d6eab4c1c808dbbfcd3d7028132f775ea513fcf1ea9f5f32d9b33518efd8087`

### operator-azure

`quay.io/cilium/operator-azure:v1.19.10@sha256:0069f45920ab88b8ea8b587879fdcbf150dd7d9843309e5d94b374bcab2020e4`

### operator-generic

`quay.io/cilium/operator-generic:v1.19.10@sha256:b3d1c26d4bc58e307282bad9639b4d598e73f91be1430028f36bc5fdce19a85c`

### operator

`quay.io/cilium/operator:v1.19.10@sha256:f9f4f8249c32c7a3c6b82e08ef456428095374c28f49df9a63badbaa290e7076`

