来源: https://github.com/cilium/cilium/releases/tag/v1.17.17

# cilium/cilium v1.17.17 Release Notes

Published at: 2026-06-16T12:22:05Z

Summary of Changes
------------------

**Minor Changes:**
* Extend the information reported by the troubleshoot kvstore and clustermesh commands (Backport PR cilium/cilium#46556, Upstream PR cilium/cilium#46516, @giorio94)

**Bugfixes:**
* multipool: Fix retries for CiliumNode Get errors (Backport PR cilium/cilium#46413, Upstream PR cilium/cilium#46124, @pippolo84)

**CI Changes:**
* chore(deps): update lvh-images for conformance-runtime (Backport PR cilium/cilium#46027, Upstream PR cilium/cilium#45922, @julianwiedmann)
* ci:bpftrace: fail curl with corrupted binary download (Backport PR cilium/cilium#46030, Upstream PR cilium/cilium#45948, @smagnani96)
* helm: add tmpl files to .helmignore (Backport PR cilium/cilium#46556, Upstream PR cilium/cilium#46445, @sekhar-isovalent)
* helm: allow overriding of registry_prefix in charts (Backport PR cilium/cilium#46294, Upstream PR cilium/cilium#46217, @sekhar-isovalent)

**Misc Changes:**
* [v1.17] - chore(deps): update docker.io/library/ubuntu:24.04 docker digest to 7… (cilium/cilium#46580, @aanm)
* [v1.17] deps: bump various Go packages (cilium/cilium#46187, @ferozsalam)
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#46002, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#46018, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#46119, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#46272, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#46397, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#46545, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.17) (cilium/cilium#46146, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.17) (cilium/cilium#46583, @cilium-renovate[bot])
* chore(deps): update aws-actions/configure-aws-credentials action to v6.1.2 (v1.17) (cilium/cilium#46286, @cilium-renovate[bot])
* chore(deps): update base-images (v1.17) (cilium/cilium#46003, @cilium-renovate[bot])
* chore(deps): update base-images (v1.17) (cilium/cilium#46166, @cilium-renovate[bot])
* chore(deps): update base-images to v1.25.11 (v1.17) (cilium/cilium#46344, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to 0fc1dd3 (v1.17) (cilium/cilium#46155, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to 6c42236 (v1.17) (cilium/cilium#46551, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to 81d4870 (v1.17) (cilium/cilium#46279, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to 8bdfad4 (v1.17) (cilium/cilium#46567, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to cd47774 (v1.17) (cilium/cilium#46147, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to e1b3ec8 (v1.17) (cilium/cilium#46009, @cilium-renovate[bot])
* chore(deps): update cilium/cilium-cli action to v0.19.3 (v1.17) (cilium/cilium#46149, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.19.4 (v1.17) (cilium/cilium#46158, @cilium-renovate[bot])
* chore(deps): update dependency cilium/little-vm-helper to v0.0.30 (v1.17) (cilium/cilium#46273, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf to v35.1 (v1.17) (cilium/cilium#46569, @cilium-renovate[bot])
* chore(deps): update docker.io/library/busybox:1.37.0 docker digest to 9532d8c (v1.17) (cilium/cilium#46543, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.10 docker digest to cd05a37 (v1.17) (cilium/cilium#46148, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.11 docker digest to 379065f (v1.17) (cilium/cilium#46544, @cilium-renovate[bot])
* chore(deps): update golangci/golangci-lint docker tag to v2.12.1 (v1.17) (cilium/cilium#45876, @cilium-renovate[bot])
* chore(deps): update google/cloud-sdk docker tag to v569 (v1.17) (cilium/cilium#46161, @cilium-renovate[bot])
* chore(deps): update google/cloud-sdk docker tag to v572 (v1.17) (cilium/cilium#46550, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/certgen docker tag to v0.4.5 (v1.17) (cilium/cilium#46568, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.8-1781157951-a7f42a3390781539911b5b9107881b35ecc4e752 (v1.17) (cilium/cilium#46379, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.17) (patch) (cilium/cilium#45394, @cilium-renovate[bot])
* docs: fix Markdown-style hyperlink in mutual-authentication.rst (Backport PR cilium/cilium#46030, Upstream PR cilium/cilium#45751, @bitflicker64)
* fix(deps): update k8s.io/utils digest to ff6756f (v1.17) (cilium/cilium#46004, @cilium-renovate[bot])
* Revert ".github/workflows: do not use deployments for environments" (Backport PR cilium/cilium#46405, Upstream PR cilium/cilium#46348, @aanm)

**Other Changes:**
* [v1.17] proxy: Bump upstream version to v1.37.x (cilium/cilium#46441, @sayboras)
* install: Update image digests for v1.17.16 (cilium/cilium#45960, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.17.17@sha256:fcda42ceafa241f6745e3a619a6a923b449262fae33fdb76a4a797c9e9266116`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.17.17@sha256:94e755ab3ee0093f18f36351aaa7d6d432d2c367b9f2911c4416a60bba2e5292`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.17.17@sha256:9a59d840b0d317ab51734a59d6dc95b97265097caabeeb0e41b440939ac1c0f5`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.17.17@sha256:65e69affbbdcba5a372fa6dd078d79e83c9c94b2e5d060bbb142b7163c7c5004`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.17.17@sha256:76670fb93f6a554462dc458ab4f1920c3a5061a565f5cf8361dd650a0c711f7d`

### operator-aws

`quay.io/cilium/operator-aws:v1.17.17@sha256:d5e9ecf45c104f3b03f11aab84a71d3a96e312acdfe4485adee70426eb2003c4`

### operator-azure

`quay.io/cilium/operator-azure:v1.17.17@sha256:8182836c57d3bc65abf8be077cf7d58dfb6de5ec098d670742b3a843ff11bf11`

### operator-generic

`quay.io/cilium/operator-generic:v1.17.17@sha256:062146cfdedd27e09281741bc8b79bf3c269851382e7dc2bbd937639843fd53c`

### operator

`quay.io/cilium/operator:v1.17.17@sha256:01a72d3c1283c40aba8e2e01b244f77f2292ec375c07368dbce9b54071c60daf`

