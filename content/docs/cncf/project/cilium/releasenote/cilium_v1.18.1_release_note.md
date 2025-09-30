来源: https://github.com/cilium/cilium/releases/tag/v1.18.1

# cilium/cilium v1.18.1 Release Notes

Published at: 2025-08-15T13:47:08Z

Summary of Changes
------------------

**Minor Changes:**
* Add `kernel_version`, `endpoint_routes_enabled`, `strict_mode_enabled` and `kubernetes_version` feature metrics. (Backport PR cilium/cilium#41078, Upstream PR cilium/cilium#41003, @aanm)
* eni: improve logging and speed up ipam reconciliation in case of node scale-downs (Backport PR cilium/cilium#40979, Upstream PR cilium/cilium#40852, @marseel)
* kvstore: Cilium Agent no longer fails health-check if operator is unavailable (Backport PR cilium/cilium#40979, Upstream PR cilium/cilium#40920, @marseel)
* operator: CRDs are updated in series instead of in parallel now during Cilium upgrades. This should lower the pressure on the k8s control plane (Backport PR cilium/cilium#40847, Upstream PR cilium/cilium#40322, @marseel)

**Bugfixes:**
* Add missing safeguards to topology-aware routing: use all backends when no suitable one matching the zone hints are found or a backend exists without a zone hint. (cilium/cilium#41116, @joamaki)
* aws/eni: Don't use subnet tags to filter ENIs for GC (Backport PR cilium/cilium#40979, Upstream PR cilium/cilium#40656, @HadrienPatte)
* clustermesh: fix regression possibly causing cross-cluster connections disruption if the clustermesh-apiserver is restarted at the same time as Cilium agents. (Backport PR cilium/cilium#40979, Upstream PR cilium/cilium#40786, @giorio94)
* clustermesh: fix regression preventing global services with unnamed ports from including remote backends (Backport PR cilium/cilium#40865, Upstream PR cilium/cilium#40848, @giorio94)
* Fix bug where the presence of a label called "ingress" causes incorrect assignment of identities to workloads, affecting policy enforcement. (Backport PR cilium/cilium#40847, Upstream PR cilium/cilium#40791, @christarazi)
* Fix skipping of LoadBalancer services when IPMode is not set to VIP (KEP-1860) (Backport PR cilium/cilium#40979, Upstream PR cilium/cilium#40915, @joamaki)
* fix(GH-37724): Sync policies on startup (Backport PR cilium/cilium#40847, Upstream PR cilium/cilium#40357, @anubhabMajumdar)
* fix: create policy snapshot only for sdp (Backport PR cilium/cilium#40979, Upstream PR cilium/cilium#40785, @vipul-21)
* Fixes a bug where the Cilium agent may segfault when starting. (Backport PR cilium/cilium#40847, Upstream PR cilium/cilium#40824, @squeed)
* Fixes an error where the Ingress controller, when run in host network, created an invalid Service. (Backport PR cilium/cilium#41078, Upstream PR cilium/cilium#40232, @rtheobald)
* helm: Create envoy-config ConfigMap for preflight (Backport PR cilium/cilium#41078, Upstream PR cilium/cilium#40875, @sayboras)
* install/kubernetes: fix clustermesh-apiserver extraEnv (Backport PR cilium/cilium#41078, Upstream PR cilium/cilium#41021, @aanm)
* loadbalancer: Fix backend state in REST API (Backport PR cilium/cilium#40847, Upstream PR cilium/cilium#40780, @mhofstetter)

**CI Changes:**
* .github/actions: only upload files with features-tested prefix (Backport PR cilium/cilium#40979, Upstream PR cilium/cilium#40975, @aanm)
* Add TESTOWNERS file (cilium/cilium#40864, @joestringer)
* ci: Add Cleanup Disk space step into conformance-runtime (Backport PR cilium/cilium#40979, Upstream PR cilium/cilium#40973, @rastislavs)
* ci: Fix CI-Fuzz Build failures (Backport PR cilium/cilium#40979, Upstream PR cilium/cilium#40728, @lomackie)
* ci: Reuse connectivity test flags in proxy-embedded (Backport PR cilium/cilium#41078, Upstream PR cilium/cilium#41036, @joestringer)
* endpoint: Avoid unnecessarily logging a warning during endpoint deletion (Backport PR cilium/cilium#40979, Upstream PR cilium/cilium#40927, @christarazi)
* Fix GKE cluster creation failures when branch names exceed 63-byte label limit by implementing automatic truncation with hash-based uniqueness preservation. (Backport PR cilium/cilium#40847, Upstream PR cilium/cilium#40725, @pillai-ashwin)
* Improved test failure attribution on stable branches by using TESTOWNERS files to route failures to appropriate code quality teams rather than generic CI infrastructure teams. (Backport PR cilium/cilium#40847, Upstream PR cilium/cilium#40776, @pillai-ashwin)
* ipsec: fix privileged tests (Backport PR cilium/cilium#41078, Upstream PR cilium/cilium#41006, @smagnani96)
* tools/testowners: de-duplicate error logs (Backport PR cilium/cilium#40847, Upstream PR cilium/cilium#40778, @tklauser)
* workflows/ipsec: Fix leak detection for IPv6-only in e2e downgrade (Backport PR cilium/cilium#40979, Upstream PR cilium/cilium#40881, @smagnani96)

**Misc Changes:**
* .github/workflows: bump build-images-base timeout to 60 minutes (Backport PR cilium/cilium#40979, Upstream PR cilium/cilium#40919, @aanm)
* .github/workflows: print open file descriptors (Backport PR cilium/cilium#40979, Upstream PR cilium/cilium#40941, @aanm)
* .github: fix removal of all files in /mnt (Backport PR cilium/cilium#40847, Upstream PR cilium/cilium#40818, @aanm)
* .github: remove all contents of /mnt in build images CI (Backport PR cilium/cilium#40847, Upstream PR cilium/cilium#40814, @aanm)
* chore(deps): update actions/download-artifact action to v5 (v1.18) (cilium/cilium#41055, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#40901, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.18) (cilium/cilium#41056, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.18) (cilium/cilium#40900, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.18.6 (v1.18) (cilium/cilium#40898, @cilium-renovate[bot])
* chore(deps): update go to v1.24.6 (v1.18) (cilium/cilium#40993, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#40899, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.18) (patch) (cilium/cilium#41054, @cilium-renovate[bot])
* ci: add/change runner labels (Backport PR cilium/cilium#40979, Upstream PR cilium/cilium#40972, @Artyop)
* daemon/test: explicitly wait for identities synchronization (Backport PR cilium/cilium#40847, Upstream PR cilium/cilium#40811, @giorio94)
* docs: Remove references to v1.15 (Backport PR cilium/cilium#41078, Upstream PR cilium/cilium#41033, @joestringer)
* Fix loadbalancer handling of backends with ClusterID set (Backport PR cilium/cilium#41078, Upstream PR cilium/cilium#40968, @giorio94)
* Fix race condition issues (Backport PR cilium/cilium#40979, Upstream PR cilium/cilium#40949, @aanm)
* fix(deps): update module github.com/docker/docker to v28.3.3+incompatible [security] (v1.18) (cilium/cilium#40793, @cilium-renovate[bot])
* loadbalancer: Raise default retry duration to 1 second (Backport PR cilium/cilium#41078, Upstream PR cilium/cilium#40997, @joamaki)
* loadbalancer: Use unique for L3n4Addr (Backport PR cilium/cilium#40847, Upstream PR cilium/cilium#40633, @joamaki)
* Makefile: Fix multi codeowner detection (Backport PR cilium/cilium#40847, Upstream PR cilium/cilium#40923, @joestringer)
* Reduced memory usage by roughly 10% for large EndpointSlices by sharing identical objects. (Backport PR cilium/cilium#41078, Upstream PR cilium/cilium#40987, @joamaki)
* values(.yaml.tmpl): Add Geneve (Class Option) to dsrDispatch paramater (Backport PR cilium/cilium#40847, Upstream PR cilium/cilium#40625, @alagoutte)
* vendor: Bump to StateDB v0.4.5 (Backport PR cilium/cilium#40979, Upstream PR cilium/cilium#40783, @joamaki)

**Other Changes:**
* ci: reduce gke failures (cilium/cilium#41070, @brlbil)
* install: Update image digests for v1.18.0 (cilium/cilium#40782, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.18.1@sha256:65ab17c052d8758b2ad157ce766285e04173722df59bdee1ea6d5fda7149f0e9`
`quay.io/cilium/cilium:stable@sha256:65ab17c052d8758b2ad157ce766285e04173722df59bdee1ea6d5fda7149f0e9`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.18.1@sha256:87ab85f33dc7e895ed6257564bf1a255d12399d9e8a075a8fc400910ff94cbeb`
`quay.io/cilium/clustermesh-apiserver:stable@sha256:87ab85f33dc7e895ed6257564bf1a255d12399d9e8a075a8fc400910ff94cbeb`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.18.1@sha256:fb1c6ecb6dc180c97488b8ea45d81275237db14d50e22a1eff3dbfaf9f6f93f3`
`quay.io/cilium/docker-plugin:stable@sha256:fb1c6ecb6dc180c97488b8ea45d81275237db14d50e22a1eff3dbfaf9f6f93f3`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.18.1@sha256:7e2fd4877387c7e112689db7c2b153a4d5c77d125b8d50d472dbe81fc1b139b0`
`quay.io/cilium/hubble-relay:stable@sha256:7e2fd4877387c7e112689db7c2b153a4d5c77d125b8d50d472dbe81fc1b139b0`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.18.1@sha256:e2bdc8236acec0d1ef1552c831a7cd2277624031066fbdfac884a31a4126a32a`
`quay.io/cilium/operator-alibabacloud:stable@sha256:e2bdc8236acec0d1ef1552c831a7cd2277624031066fbdfac884a31a4126a32a`

### operator-aws

`quay.io/cilium/operator-aws:v1.18.1@sha256:de522223ecd73bc06b48042fa59f78f7b3b8f2fff4f8f30a61687516798c5042`
`quay.io/cilium/operator-aws:stable@sha256:de522223ecd73bc06b48042fa59f78f7b3b8f2fff4f8f30a61687516798c5042`

### operator-azure

`quay.io/cilium/operator-azure:v1.18.1@sha256:682058e6734e397e7939e92bb463da3c1b5d8b7a7ce408c3b7a62aadb9ce4f06`
`quay.io/cilium/operator-azure:stable@sha256:682058e6734e397e7939e92bb463da3c1b5d8b7a7ce408c3b7a62aadb9ce4f06`

### operator-generic

`quay.io/cilium/operator-generic:v1.18.1@sha256:97f4553afa443465bdfbc1cc4927c93f16ac5d78e4dd2706736e7395382201bc`
`quay.io/cilium/operator-generic:stable@sha256:97f4553afa443465bdfbc1cc4927c93f16ac5d78e4dd2706736e7395382201bc`

### operator

`quay.io/cilium/operator:v1.18.1@sha256:f3b8d90f945167c1ac4324a0f02a9d381f83076d5ce828fab452014f9335a47e`
`quay.io/cilium/operator:stable@sha256:f3b8d90f945167c1ac4324a0f02a9d381f83076d5ce828fab452014f9335a47e`

