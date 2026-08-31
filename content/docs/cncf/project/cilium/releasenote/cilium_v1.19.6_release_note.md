来源: https://github.com/cilium/cilium/releases/tag/v1.19.6

# cilium/cilium v1.19.6 Release Notes

Published at: 2026-07-16T22:52:21Z

Summary of Changes
------------------

**Minor Changes:**
* datapath/l2responder: use l3 sockets for solicited node multicast signaling (Backport PR cilium/cilium#46845, Upstream PR cilium/cilium#46332, @bersoare)
* gateway-api: add support for configuring Gateway access logs through the new `spec.telemetry.accessLogs` field in CiliumGatewayClassConfig. (Backport PR cilium/cilium#46933, Upstream PR cilium/cilium#46403, @arybolovlev)

**Bugfixes:**
* [v1.19] Fix policy service label selector handling (cilium/cilium#46946, @fristonio)
* bpf: fix ipv6 neighbor solicitation handling in host firewall (Backport PR cilium/cilium#46669, Upstream PR cilium/cilium#46325, @atykhyy)
* doublewrite: Don't run CRD backend with real handler when reading from KVStore (Backport PR cilium/cilium#47181, Upstream PR cilium/cilium#47144, @HadrienPatte)
* endpoint: Fix race when reading endpoint properties (Backport PR cilium/cilium#47181, Upstream PR cilium/cilium#46991, @gandro)
* Fix `cilium_operator_unmanaged_pods` gauge reporting 0 on reconcile cycles where an unmanaged pod is restarted. (Backport PR cilium/cilium#46975, Upstream PR cilium/cilium#46668, @Suyash1700)
* Fix a bug which could lead to stale hostport entries if a pod was deleted and immediately recreated in host network. (Backport PR cilium/cilium#46793, Upstream PR cilium/cilium#46747, @giorio94)
* Fix a regression that could cause established connections to a Pod to be briefly dropped during Cilium agent restart, upgrade, or downgrade, while the agent was restoring the Pod's network policy. (Backport PR cilium/cilium#46974, Upstream PR cilium/cilium#46927, @aanm)
* Fix allowedRoute namespace and kind restrictions on multi-listener Gateways. (Backport PR cilium/cilium#46826, Upstream PR cilium/cilium#45693, @eufriction)
* Fix bug that left the host firewall enabled in the live ConfigMap when disabling hostFirewall.enabled (toggling it from true to false) via Helm. (Backport PR cilium/cilium#46669, Upstream PR cilium/cilium#44748, @shibaPuppy)
* Fix ClusterMesh service affinity annotation `service.cilium.io/affinity: "none"` incorrectly dropping all remote backends, causing traffic blackhole when no local endpoints exist. (Backport PR cilium/cilium#46691, Upstream PR cilium/cilium#46635, @mkamadeus)
* Fix ctmap gc duration metric recording (Backport PR cilium/cilium#46975, Upstream PR cilium/cilium#46873, @fristonio)
* Fix incorrect policy denials for traffic to L7 load balanced services when remote identity changes (Backport PR cilium/cilium#47002, Upstream PR cilium/cilium#46821, @fristonio)
* Fix potential hangs caused by Netlink errors in filterAndDestroySockets. (Backport PR cilium/cilium#47181, Upstream PR cilium/cilium#46967, @ysksuzuki)
* Fix regression preventing Cilium from starting when configured in kvstore mode with KPR enabled, if etcd is behind a Kubernetes service (Backport PR cilium/cilium#47181, Upstream PR cilium/cilium#46444, @giorio94)
* Fix the UDP tunnel check in the BIG TCP probe. (Backport PR cilium/cilium#46793, Upstream PR cilium/cilium#46710, @gentoo-root)
* Fixes a bug where Hubble policy correlation does not work for port ranges. (Backport PR cilium/cilium#46793, Upstream PR cilium/cilium#46643, @squeed)
* gateway-api: Add Gateway check for when hostNetwork is enabled (Backport PR cilium/cilium#46837, Upstream PR cilium/cilium#46350, @xtineskim)
* gateway-api: Each HTTPS and TLS passthrough port now receives its own Envoy listener and RouteConfiguration. (Backport PR cilium/cilium#46826, Upstream PR cilium/cilium#44889, @eufriction)
* ipam/multi-pool: Do now wait for zero prealloc request (Backport PR cilium/cilium#47181, Upstream PR cilium/cilium#46867, @pippolo84)
* operator: Fix nil-pointer panic in CiliumNode GC (Backport PR cilium/cilium#47181, Upstream PR cilium/cilium#47127, @HadrienPatte)

**CI Changes:**
* .github: Generate CI binaries with correct module version (Backport PR cilium/cilium#47099, Upstream PR cilium/cilium#46742, @joestringer)
* chore: check-cilium-envoy-image.sh should get values from Makefile.va… (Backport PR cilium/cilium#46920, Upstream PR cilium/cilium#46840, @sekhar-isovalent)
* ci: Auth to image registry in clustermesh upgrade workflow (Backport PR cilium/cilium#46691, Upstream PR cilium/cilium#46632, @nebril)
* ci: Remove merge_group from tests-smoke-conformance.yaml (Backport PR cilium/cilium#46888, Upstream PR cilium/cilium#46451, @nebril)
* Fix workflow change detection for single-commit PRs to main (Backport PR cilium/cilium#46793, Upstream PR cilium/cilium#46684, @Demiserular)
* Further GC ratchet test fix races (Backport PR cilium/cilium#47224, Upstream PR cilium/cilium#43075, @tommyp1ckles)

**Misc Changes:**
* (minor) docs: update reference to aws-cli image (Backport PR cilium/cilium#46975, Upstream PR cilium/cilium#46923, @squeed)
* .github: allow fork PR checkout with actions/checkout v7 (Backport PR cilium/cilium#47135, Upstream PR cilium/cilium#47133, @aanm)
* [v1.19] - .github/workflows: unpin cilium/cilium self-references to track main (cilium/cilium#46613, @aanm)
* [v1.19] - Reapply ".github/workflows: do not use deployments for environments" (cilium/cilium#46574, @aanm)
* [v1.19] vendor: bump github.com/cilium/statedb to v0.5.9 (cilium/cilium#47083, @giorio94)
* bgp: fix status condition reporting: update reasons to accurately reflect current condition state (Backport PR cilium/cilium#46920, Upstream PR cilium/cilium#46383, @martonra)
* bpf: Condition ICMP SNAT on BPF masquerading and inter-cluster SNAT (Backport PR cilium/cilium#47181, Upstream PR cilium/cilium#47021, @pchaigno)
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#46658, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#46908, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.19) (cilium/cilium#47109, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.19) (cilium/cilium#46906, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.19) (cilium/cilium#47045, @cilium-renovate[bot])
* chore(deps): update aws-actions/configure-aws-credentials action to v6.2.2 (v1.19) (cilium/cilium#47124, @cilium-renovate[bot])
* chore(deps): update base-images (v1.19) (cilium/cilium#46774, @cilium-renovate[bot])
* chore(deps): update base-images to v1.25.12 (v1.19) (cilium/cilium#46982, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.19.5 (v1.19) (cilium/cilium#46726, @cilium-renovate[bot])
* chore(deps): update docker.io/library/alpine docker tag to v3.23.5 (v1.19) (cilium/cilium#46773, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.11 docker digest to 00feed3 (v1.19) (cilium/cilium#46657, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/certgen docker tag to v0.4.6 (v1.19) (cilium/cilium#47039, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.9-1782267392-edeb3f2af56c37c407efa1f63f0b32f595399bbc (v1.19) (cilium/cilium#46700, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/image-tester docker tag to v1783861476 (v1.19) (cilium/cilium#47122, @cilium-renovate[bot])
* chore: BYOCNI loopback for cilium (Backport PR cilium/cilium#46691, Upstream PR cilium/cilium#46646, @sekhar-isovalent)
* chore: optimize building gops and cni/loopback (Backport PR cilium/cilium#46845, Upstream PR cilium/cilium#46781, @sekhar-isovalent)
* ci: always set fail-fast to false on image builds (Backport PR cilium/cilium#47181, Upstream PR cilium/cilium#47064, @aanm)
* ci: remove non-ariane workflows from config (Backport PR cilium/cilium#46845, Upstream PR cilium/cilium#46787, @nebril)
* clustermesh: add reusable backend selector constructor (Backport PR cilium/cilium#46691, Upstream PR cilium/cilium#45648, @viktor-kurchenko)
* docs: clarify Hubble static/dynamic exporter file rotation settings (Backport PR cilium/cilium#47181, Upstream PR cilium/cilium#47026, @maksymbilokur-cisco)
* docs: fix note about ipv4-native-routing-cidr default value (Backport PR cilium/cilium#46793, Upstream PR cilium/cilium#46603, @rptaylor)
* Egress Gateway: handle nil events (Backport PR cilium/cilium#47181, Upstream PR cilium/cilium#46476, @tommyp1ckles)
* endpoint: reap restart-preserved policy map entries once ready (Backport PR cilium/cilium#47063, Upstream PR cilium/cilium#47062, @aanm)
* endpoint: sync desired policy before reload on the restore path (restore-path hardening) (Backport PR cilium/cilium#47076, Upstream PR cilium/cilium#47075, @aanm)
* Fix instance of cilium having incorrect specified policy_change_total failure label "failure" value which caused unnecessary warnings. (Backport PR cilium/cilium#46793, Upstream PR cilium/cilium#46388, @tommyp1ckles)
* Fix instance of cilium having incorrect specified policy_change_total failure label "failure" value which caused unnecessary warnings. (Backport PR cilium/cilium#46845, Upstream PR cilium/cilium#46388, @tommyp1ckles)
* fix(deps): update k8s.io/utils digest to be93311 (v1.19) (cilium/cilium#46907, @cilium-renovate[bot])
* fix(deps): update k8s.io/utils digest to cf1189d (v1.19) (cilium/cilium#47115, @cilium-renovate[bot])
* Fixed Gateway API reconciler incorrectly reporting "Accepted HTTPRoute" in the status condition message for GRPCRoute and TLSRoute resources. (Backport PR cilium/cilium#46826, Upstream PR cilium/cilium#44962, @eufriction)
* gateway-api: return model from Gateway API ingestion (Backport PR cilium/cilium#46933, Upstream PR cilium/cilium#46450, @arybolovlev)
* gha: fail fast in external-target provisioning scripts instead of swallowing failures (Backport PR cilium/cilium#47181, Upstream PR cilium/cilium#47085, @aanm)
* Improve cilium-dbg status output of module health (Backport PR cilium/cilium#46845, Upstream PR cilium/cilium#46739, @joestringer)
* loadbalancer: proxy ports are now resolved per frontend instead of per service, preventing one port from losing its L7 redirect when multiple listeners share a service. (Backport PR cilium/cilium#46826, Upstream PR cilium/cilium#45949, @eufriction)
* loadbalancer: validate DSR dispatch configuration globally (Backport PR cilium/cilium#46793, Upstream PR cilium/cilium#45545, @FelipeYepez)
* Makefile: Generate full Cilium version in worktree (Backport PR cilium/cilium#46793, Upstream PR cilium/cilium#46737, @joestringer)
* Revert restore-path policy map changes (#46927, #47062, #47075) (Backport PR cilium/cilium#47213, Upstream PR cilium/cilium#47202, @aanm)
* Upgraded cilium/ebpf to version v0.22.0 (Backport PR cilium/cilium#46845, Upstream PR cilium/cilium#46783, @dylandreimerink)

**Other Changes:**
* install: Update image digests for v1.19.5 (cilium/cilium#46593, @cilium-release-bot[bot])
* v1.19: gateway-api: fix sds secrets in golden tests (cilium/cilium#47229, @0xch4z)


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.19.6@sha256:0df5b2750b64c49843aba1d649e9eaf61467cb0645ad3171db6f6962c095ac92`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.19.6@sha256:accab5fe6ab7134fcd6f916acc9e4c785382a022128ae5495ec4a45fbe18c9a6`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.19.6@sha256:81a8d37e541edfff4016037373853e8e875f1ea0433c58b9ab54b314c305b9ec`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.19.6@sha256:6782a49e3f28eba015701c4410a5ec7fa096fe9a562f879b4372dbecd827ea44`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.19.6@sha256:031e332cdec61a9ebaca42f044e7e2f5b876ba96ac0ccf1d42acd5954779efaf`

### operator-aws

`quay.io/cilium/operator-aws:v1.19.6@sha256:546d13ac511cf82441b5e9e99e03d0e054b788513ceb1a883e620b8284d5ccc3`

### operator-azure

`quay.io/cilium/operator-azure:v1.19.6@sha256:e555430b7f5e4c407daab1afbec3c431ec016a53f1f1b848f67b9242cd3adedd`

### operator-generic

`quay.io/cilium/operator-generic:v1.19.6@sha256:0db4ca4e06969d8904ee036617795d0e9c3228cf7b8d902ba74fc2bb98d2d665`

### operator

`quay.io/cilium/operator:v1.19.6@sha256:37e36840be5a0882a9a065b2308859785e960a742aed0aeac794e0ac4aabdf90`

