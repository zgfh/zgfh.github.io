来源: https://github.com/cilium/cilium/releases/tag/v1.18.11

# cilium/cilium v1.18.11 Release Notes

Published at: 2026-06-16T12:22:23Z

Summary of Changes
------------------

**Minor Changes:**
* Extend the information reported by the troubleshoot kvstore and clustermesh commands (Backport PR cilium/cilium#46555, Upstream PR cilium/cilium#46516, @giorio94)

**Bugfixes:**
* bug: fixed weighted backend traffic splitting for TLSRoute passthrough listeners in Gateway API (Backport PR cilium/cilium#46249, Upstream PR cilium/cilium#45937, @nickolaev)
* datapath/mtu: add altname to mark cilium owned interfaces and do skip changing MTU on interfaces not managed by cilium (Backport PR cilium/cilium#46085, Upstream PR cilium/cilium#45799, @bersoare)
* Fix memory leak issue with reusing a watch channel hash map from very large StateDB transactions (cilium/cilium#46498, @joamaki)
* Fix TLS passthrough routes failing silently when a gateway has mixed HTTP, HTTPS, and TLS listeners and a TLSRoute with no sectionName. (Backport PR cilium/cilium#46234, Upstream PR cilium/cilium#45371, @syedazeez337)
* multipool: Fix retries for CiliumNode Get errors (Backport PR cilium/cilium#46410, Upstream PR cilium/cilium#46124, @pippolo84)
* sockets: fix nil pointer dereference in filterAndDestroySockets (Backport PR cilium/cilium#46029, Upstream PR cilium/cilium#44843, @umut-polat)

**CI Changes:**
* chore(deps): update lvh-images for conformance-runtime (Backport PR cilium/cilium#46026, Upstream PR cilium/cilium#45922, @julianwiedmann)
* ci:bpftrace: fail curl with corrupted binary download (Backport PR cilium/cilium#46029, Upstream PR cilium/cilium#45948, @smagnani96)
* Fixed an issue where privileged tests failed locally (Backport PR cilium/cilium#46029, Upstream PR cilium/cilium#40150, @AritraDey-Dev)
* gha: make conformance kubespray runner configurable (Backport PR cilium/cilium#46292, Upstream PR cilium/cilium#46171, @giorio94)
* helm: add tmpl files to .helmignore (Backport PR cilium/cilium#46555, Upstream PR cilium/cilium#46445, @sekhar-isovalent)
* helm: allow overriding of registry_prefix in charts (Backport PR cilium/cilium#46292, Upstream PR cilium/cilium#46217, @sekhar-isovalent)

**Misc Changes:**
* [v1.18] - chore(deps): update docker.io/library/ubuntu:24.04 docker digest to 7… (cilium/cilium#46579, @aanm)
* [v1.18] - Reapply ".github/workflows: do not use deployments for environments" (cilium/cilium#46575, @aanm)
* [v1.18] deps: bump various Go packages (cilium/cilium#46186, @ferozsalam)
* [v1.18] loadbalancer: return correct IP family for IPv6 ClusterIP addresses (cilium/cilium#46426, @tklauser)
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#45998, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#46020, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#46118, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#46271, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#46396, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#46542, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.18) (cilium/cilium#46141, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.18) (cilium/cilium#46582, @cilium-renovate[bot])
* chore(deps): update aws-actions/configure-aws-credentials action to v6.1.2 (v1.18) (cilium/cilium#46285, @cilium-renovate[bot])
* chore(deps): update base-images (v1.18) (cilium/cilium#45999, @cilium-renovate[bot])
* chore(deps): update base-images (v1.18) (cilium/cilium#46165, @cilium-renovate[bot])
* chore(deps): update base-images to v1.25.11 (v1.18) (cilium/cilium#46343, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to 0fc1dd3 (v1.18) (cilium/cilium#46154, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to 11ecd4e (v1.18) (cilium/cilium#46278, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to 81d4870 (v1.18) (cilium/cilium#46281, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to af87cb7 (v1.18) (cilium/cilium#46151, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to cd47774 (v1.18) (cilium/cilium#46142, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to e1b3ec8 (v1.18) (cilium/cilium#46008, @cilium-renovate[bot])
* chore(deps): update cilium/cilium-cli action to v0.19.3 (v1.18) (cilium/cilium#46144, @cilium-renovate[bot])
* chore(deps): update dependency bufbuild/buf to v1.70.0 (v1.18) (cilium/cilium#46270, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.19.4 (v1.18) (cilium/cilium#46157, @cilium-renovate[bot])
* chore(deps): update dependency cilium/little-vm-helper to v0.0.30 (v1.18) (cilium/cilium#46269, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf to v35.1 (v1.18) (cilium/cilium#46566, @cilium-renovate[bot])
* chore(deps): update docker.io/library/busybox:1.37.0 docker digest to 9532d8c (v1.18) (cilium/cilium#46539, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.10 docker digest to cd05a37 (v1.18) (cilium/cilium#46143, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.11 docker digest to 379065f (v1.18) (cilium/cilium#46540, @cilium-renovate[bot])
* chore(deps): update gcr.io/etcd-development/etcd docker tag to v3.6.12 (v1.18) (cilium/cilium#46563, @cilium-renovate[bot])
* chore(deps): update golangci/golangci-lint docker tag to v2.12.1 (v1.18) (cilium/cilium#45831, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/certgen docker tag to v0.4.5 (v1.18) (cilium/cilium#46564, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.8-1781157951-a7f42a3390781539911b5b9107881b35ecc4e752 (v1.18) (cilium/cilium#46378, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#45393, @cilium-renovate[bot])
* docs: fix Markdown-style hyperlink in mutual-authentication.rst (Backport PR cilium/cilium#46029, Upstream PR cilium/cilium#45751, @bitflicker64)
* fix(deps): update k8s.io patch updates stable to v0.33.12 (v1.18) (cilium/cilium#46145, @cilium-renovate[bot])
* fix(deps): update k8s.io patch updates stable to v0.33.12 (v1.18) (patch) (cilium/cilium#46017, @cilium-renovate[bot])
* fix(deps): update k8s.io patch updates stable to v0.33.12 (v1.18) (patch) (cilium/cilium#46019, @cilium-renovate[bot])
* fix(deps): update k8s.io patch updates stable to v0.33.13 (v1.18) (cilium/cilium#46565, @cilium-renovate[bot])
* fix(deps): update k8s.io/utils digest to ff6756f (v1.18) (cilium/cilium#46000, @cilium-renovate[bot])
* fix(deps): update module k8s.io/apimachinery to v0.33.12 (v1.18) (cilium/cilium#46001, @cilium-renovate[bot])
* fix(deps): update module k8s.io/apimachinery to v0.33.13 (v1.18) (cilium/cilium#46541, @cilium-renovate[bot])
* Revert ".github/workflows: do not use deployments for environments" (Backport PR cilium/cilium#46404, Upstream PR cilium/cilium#46348, @aanm)

**Other Changes:**
* [v1.18] proxy: Bump upstream version to v1.37.x (cilium/cilium#46440, @sayboras)
* install: Update image digests for v1.18.10 (cilium/cilium#45963, @cilium-release-bot[bot])
* v1.18: kvstore: Don't set fake pod CIDRs for remote nodes (cilium/cilium#46321, @pchaigno)


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.18.11@sha256:e6945db60ad6d3b384e06ed678dbcee65f57f2f9fdcc64e976e7319f3db2b485`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.18.11@sha256:c78852680bab64e114fe3b89c8025f57e0a5ad3a302cd43fc4eb7e013f30cd05`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.18.11@sha256:506f2d535290e0b95d6cbee4a3fe03d96b73b20cbd5a12d2849b159be51e3236`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.18.11@sha256:6ec25d68c8cc0bf9c5d2f321149016eaa7d4a371475805b0b7fb61bcebad972c`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.18.11@sha256:b30b486ea7eb23a37c947e4606ccb1bc484ea31e9a236363fe696de0f174e1fb`

### operator-aws

`quay.io/cilium/operator-aws:v1.18.11@sha256:75803337f8aa78caa543404775ec4fcdc55d6e856fedbacf1ade9e105f80fe00`

### operator-azure

`quay.io/cilium/operator-azure:v1.18.11@sha256:c520cddc03a0ad7a4f5e45be644ebb29eb28fce1efdb373952c045f7dab9232c`

### operator-generic

`quay.io/cilium/operator-generic:v1.18.11@sha256:00d6032de7b3e6ff8a1a990d29beaef5f9d01e40e87dc49b6c9b6c1fe080a327`

### operator

`quay.io/cilium/operator:v1.18.11@sha256:b420faa2524b3753336d00c546a70d723a60ad1723a33ee06ad3c1b4e2d2f106`

