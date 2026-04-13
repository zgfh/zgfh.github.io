来源: https://github.com/cilium/cilium/releases/tag/v1.18.7

# cilium/cilium v1.18.7 Release Notes

Published at: 2026-02-13T19:57:26Z

Summary of Changes
------------------

**Minor Changes:**
* Exclude topology.kubernetes.io labels from security labels by default (Backport PR cilium/cilium#43777, Upstream PR cilium/cilium#43725, @moscicky)
* hubble-relay: Add `hubble.relay.logOptions.format` and `hubble.relay.logOptions.level` Helm values to configure log format (text, text-ts, json, json-ts) and level (debug, info, warn, error) (Backport PR cilium/cilium#44004, Upstream PR cilium/cilium#43644, @puwun)

**Bugfixes:**
* Add permissions to the cilium-operator so that it can create EndpointSlices when the admission plugin OwnerReferencesPermissionEnforcement is activated (Backport PR cilium/cilium#44034, Upstream PR cilium/cilium#43912, @fgiloux)
* bpf: Correct refinement of inner packet L4 checksum detection (Backport PR cilium/cilium#43923, Upstream PR cilium/cilium#43868, @br4243)
* bpf: Fix marker to skip nodeport when punting to proxy (Backport PR cilium/cilium#43886, Upstream PR cilium/cilium#43069, @borkmann)
* clustermesh: correctly phase out not ready/not service endpoints from global services (Backport PR cilium/cilium#44056, Upstream PR cilium/cilium#43807, @MrFreezeex)
* Fix a bug with local redirect service entries being created when backend pods weren't ready. (Backport PR cilium/cilium#43756, Upstream PR cilium/cilium#43095, @aditighag)
* Fix ICMP error packet handling by adding the missing checksum recalculation performed during RevNAT for SNATed load-balanced traffic. (Backport PR cilium/cilium#43861, Upstream PR cilium/cilium#43196, @yushoyamaguchi)
* Grant permissions to the cilium-operator so that it can reconcile ingresses when the when the admission plugin OwnerReferencesPermissionEnforcement is activated (Backport PR cilium/cilium#44034, Upstream PR cilium/cilium#43949, @giorio94)
* helm: Fixed RBAC errors with `operator.enabled=false` by aligning cilium-tlsinterception-secrets Role/RoleBinding conditionals (Backport PR cilium/cilium#44281, Upstream PR cilium/cilium#44159, @puwun)
* loadbalancer: Fix GetInstancesOfService to avoid removing an endpoint from Service A causes all requests to Service B to fail if the name of Service A is the prefix of Service B (Backport PR cilium/cilium#43777, Upstream PR cilium/cilium#43620, @imroc)
* Reduces rtnl_mutex contention on SR-IOV nodes by not requesting VF information in netlink RTM_GETLINK operations (Backport PR cilium/cilium#44281, Upstream PR cilium/cilium#43517, @pasteley)

**CI Changes:**
* fix(ctmap/gc): fix race conditions and flakiness in TestGCEnableRatchet (Backport PR cilium/cilium#44056, Upstream PR cilium/cilium#42009, @AritraDey-Dev)
* gh: ariane: don't run cloud workflows for LVH kernel updates (Backport PR cilium/cilium#44148, Upstream PR cilium/cilium#44109, @julianwiedmann)
* gh: ariane: skip more workflows for LVH kernel updates (Backport PR cilium/cilium#44148, Upstream PR cilium/cilium#44115, @julianwiedmann)
* gha: let CiliumEndpointSlice migration be run nightly on stable branches (Backport PR cilium/cilium#44004, Upstream PR cilium/cilium#43921, @giorio94)
* gke: lower scope of ESP firewall rule (Backport PR cilium/cilium#43865, Upstream PR cilium/cilium#43691, @marseel)

**Misc Changes:**
* .github/workflows: use proper directory structure for GH actions (cilium/cilium#43760, @aanm)
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#43845, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#43984, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#44099, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#44253, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.18) (cilium/cilium#43839, @cilium-renovate[bot])
* chore(deps): update base-images (v1.18) (cilium/cilium#43840, @cilium-renovate[bot])
* chore(deps): update base-images (v1.18) (cilium/cilium#43983, @cilium-renovate[bot])
* chore(deps): update base-images (v1.18) (cilium/cilium#44098, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.19.0 (v1.18) (cilium/cilium#43844, @cilium-renovate[bot])
* chore(deps): update docker.io/library/alpine docker tag to v3.22.3 (v1.18) (cilium/cilium#44096, @cilium-renovate[bot])
* chore(deps): update docker.io/library/busybox:1.37.0 docker digest to b3255e7 (v1.18) (cilium/cilium#44249, @cilium-renovate[bot])
* chore(deps): update docker.io/library/busybox:1.37.0 docker digest to e226d63 (v1.18) (cilium/cilium#43979, @cilium-renovate[bot])
* chore(deps): update docker.io/library/ubuntu:24.04 docker digest to cd1dba6 (v1.18) (cilium/cilium#43980, @cilium-renovate[bot])
* chore(deps): update gcr.io/distroless/static:nonroot docker digest to f9f84bd (v1.18) (cilium/cilium#44250, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/certgen docker tag to v0.3.2 (v1.18) (cilium/cilium#43841, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.35.9-1768610924-2528359430c6adba1ab20fc8396b4effe491ed96 (v1.18) (cilium/cilium#43842, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.35.9-1768828720-c6e4827ebca9c47af2a3a6540c563c30947bae29 (v1.18) (cilium/cilium#43981, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.35.9-1770265024-9828c064a10df81f1939b692b01203d88bb439e4 (v1.18) (cilium/cilium#44251, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.35.9-1770554954-8ce3bb4eca04188f4a0a1bfbd0a06a40f90883de (v1.18) (cilium/cilium#44260, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#43843, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#43982, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#44097, @cilium-renovate[bot])
* docs: add helm underlayProtocol value to documentation (Backport PR cilium/cilium#44056, Upstream PR cilium/cilium#43934, @aanm)
* docs: adjust URL to latest stable Hubble CLI version (Backport PR cilium/cilium#43777, Upstream PR cilium/cilium#43745, @tklauser)
* docs: Document hubble requirement on kernels with BPF_EVENTS compiled in (Backport PR cilium/cilium#44056, Upstream PR cilium/cilium#44042, @EmilyShepherd)
* docs: Update docsearch to v4.5.4 (Backport PR cilium/cilium#44273, Upstream PR cilium/cilium#44233, @joestringer)
* Documentation: Added Helm configuration instructions for enabling and customizing metrics. (Backport PR cilium/cilium#44056, Upstream PR cilium/cilium#43481, @suunj)
* gitattributes: make install/kubernetes driver match more specific. (Backport PR cilium/cilium#44056, Upstream PR cilium/cilium#43943, @tommyp1ckles)
* multicast: fix nil assignment to node configuration cell.Out map (Backport PR cilium/cilium#43865, Upstream PR cilium/cilium#40859, @ldelossa)
* workflows: Add id-token permission to call-publish-helm job (Backport PR cilium/cilium#43777, Upstream PR cilium/cilium#43717, @aanm)

**Other Changes:**
* .github/workflows: remove stable from v1.18 branch (cilium/cilium#44153, @aanm)
* [v1.18] Backport setup gke cluster (cilium/cilium#43793, @Artyop)
* install: Update image digests for v1.18.6 (cilium/cilium#43714, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.18.7@sha256:99b029a0a7c2224dac8c1cc3b6b3ba52af00e2ff981d927e84260ee781e9753c`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.18.7@sha256:3d4512153afc5d8ceda3517f9b243619b55a67f9abaebcc92c4be2df94d43cfa`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.18.7@sha256:e9f15016c7247dffeb2a9216cccc2ab6d36345a2504d34e319c6e9a7873bf3e9`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.18.7@sha256:9bb9b2b1a4f4bef12a77738756cfbf970daa701e536e42f0a9c64a621bc7c9d5`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.18.7@sha256:ca3f0dd26a4b447524dce51ee8ef82485a08187b840c21ce4a1398c02b5174a0`

### operator-aws

`quay.io/cilium/operator-aws:v1.18.7@sha256:fe56a6289afea7f6420f8de0218710ccaaa7af891df5fc180ddd33e6c7509b45`

### operator-azure

`quay.io/cilium/operator-azure:v1.18.7@sha256:5fb753344c84ab0989d525f789738c874f3fa8f07fbb5cfce06034d027c9728f`

### operator-generic

`quay.io/cilium/operator-generic:v1.18.7@sha256:244306c5e7c6b73dc7193424f46ed8a0530767b03f03baac80dd717a3a3f0ad7`

### operator

`quay.io/cilium/operator:v1.18.7@sha256:8aa2bb32df776b8e8f6cfb57ab3eaed5a451bc9f20f1d62a2393840fc072678f`

