来源: https://github.com/cilium/cilium/releases/tag/v1.17.13

# cilium/cilium v1.17.13 Release Notes

Published at: 2026-02-13T19:56:43Z

Summary of Changes
------------------

**Minor Changes:**
* runtime: Add libatomic1 for cilium-envoy dependency (Backport PR cilium/cilium#43926, Upstream PR cilium/cilium#43292, @sayboras)

**CI Changes:**
* gh: ariane: don't run cloud workflows for LVH kernel updates (Backport PR cilium/cilium#44152, Upstream PR cilium/cilium#44109, @julianwiedmann)
* gh: ariane: skip more workflows for LVH kernel updates (Backport PR cilium/cilium#44152, Upstream PR cilium/cilium#44115, @julianwiedmann)
* gha: let CiliumEndpointSlice migration be run nightly on stable branches (Backport PR cilium/cilium#44005, Upstream PR cilium/cilium#43921, @giorio94)

**Misc Changes:**
* .github/workflows: use proper directory structure for GH actions (cilium/cilium#43761, @aanm)
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#43852, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#43989, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#44102, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#44259, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.17) (cilium/cilium#43846, @cilium-renovate[bot])
* chore(deps): update base-images (v1.17) (cilium/cilium#43847, @cilium-renovate[bot])
* chore(deps): update base-images (v1.17) (cilium/cilium#44256, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.19.0 (v1.17) (cilium/cilium#43851, @cilium-renovate[bot])
* chore(deps): update dependency protocolbuffers/protobuf to v33.5 (v1.17) (cilium/cilium#44101, @cilium-renovate[bot])
* chore(deps): update docker.io/library/busybox:1.37.0 docker digest to b3255e7 (v1.17) (cilium/cilium#44254, @cilium-renovate[bot])
* chore(deps): update docker.io/library/busybox:1.37.0 docker digest to e226d63 (v1.17) (cilium/cilium#43985, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.24.12 docker digest to c213114 (v1.17) (cilium/cilium#43986, @cilium-renovate[bot])
* chore(deps): update docker.io/library/ubuntu:24.04 docker digest to cd1dba6 (v1.17) (cilium/cilium#43987, @cilium-renovate[bot])
* chore(deps): update gcr.io/distroless/static:nonroot docker digest to f9f84bd (v1.17) (cilium/cilium#44255, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/certgen docker tag to v0.3.2 (v1.17) (cilium/cilium#43848, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.34.12-1768563234-33034fa55d3270872c9e2b24285bfaad20a90a54 (v1.17) (cilium/cilium#43849, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.35.9-1768828720-c6e4827ebca9c47af2a3a6540c563c30947bae29 (v1.17) (cilium/cilium#43988, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.35.9-1770265024-9828c064a10df81f1939b692b01203d88bb439e4 (v1.17) (cilium/cilium#44257, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.35.9-1770554954-8ce3bb4eca04188f4a0a1bfbd0a06a40f90883de (v1.17) (cilium/cilium#44261, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.17) (patch) (cilium/cilium#43850, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.17) (patch) (cilium/cilium#44100, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.17) (patch) (cilium/cilium#44258, @cilium-renovate[bot])
* docs: adjust URL to latest stable Hubble CLI version (Backport PR cilium/cilium#43778, Upstream PR cilium/cilium#43745, @tklauser)
* docs: Document hubble requirement on kernels with BPF_EVENTS compiled in (Backport PR cilium/cilium#44057, Upstream PR cilium/cilium#44042, @EmilyShepherd)
* docs: Update docsearch to v4.5.4 (Backport PR cilium/cilium#44274, Upstream PR cilium/cilium#44233, @joestringer)
* gitattributes: make install/kubernetes driver match more specific. (Backport PR cilium/cilium#44057, Upstream PR cilium/cilium#43943, @tommyp1ckles)
* workflows: Add id-token permission to call-publish-helm job (Backport PR cilium/cilium#43778, Upstream PR cilium/cilium#43717, @aanm)

**Other Changes:**
* [v1.17] Backport setup gke cluster (cilium/cilium#43795, @Artyop)
* install: Update image digests for v1.17.12 (cilium/cilium#43713, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.17.13@sha256:1e3907ba8815e2e474ea8da25876911af2da0ae07c04eaa87a326ba4343aa539`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.17.13@sha256:3aeee4e88b68934f45faf211a1e6b1b7310ac31b2dda448f5df77860c57a71fa`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.17.13@sha256:a37e314f585cb57165605c50449ed9fb4458d766689a328405644920ae6de6ee`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.17.13@sha256:0c49b7363157849623099de9fc9378da7146f49e7d5f602d113223542b789ace`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.17.13@sha256:a383d4c3896d150aad8e6f1d54df942e98e83033f381e5b9a7f424d1caf77471`

### operator-aws

`quay.io/cilium/operator-aws:v1.17.13@sha256:8c6faae3a985690d35f77309a1300f4dd0e8f11544537e2589ffa3c0132d978a`

### operator-azure

`quay.io/cilium/operator-azure:v1.17.13@sha256:4ad4c0cc236efe751f33fb1449a056af10654bc9cb7407862d412bc065ba6185`

### operator-generic

`quay.io/cilium/operator-generic:v1.17.13@sha256:c2582d9eaeec598de9cd8815a3ed20caade17c26858eea672cff3240b0970983`

### operator

`quay.io/cilium/operator:v1.17.13@sha256:581d5d54e5993be947cbce34fd5cb3401d124e2859dad0c947272f911b9b0d16`

