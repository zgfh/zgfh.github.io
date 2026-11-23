来源: https://github.com/cilium/cilium/releases/tag/v1.19.11

# cilium/cilium v1.19.11 Release Notes

Published at: 2026-11-17T09:53:38Z

Summary of Changes
------------------

**Minor Changes:**
* loadbalancer: Add metrics that provide visibility into the capacity and utilisation of ID allocators within the loadbalancer control plane. (Backport PR cilium/cilium#49923, Upstream PR cilium/cilium#47746, @ajmmm)

**Bugfixes:**
* clustermesh: fix ownerReferences check in MCS-API EndpointSlice mirror (cilium/cilium#50010, @brb)
* datapath/iptables: scope iptables rules for tunnel traffic (NOTRACK) to local node addresses by matching addrtype (Backport PR cilium/cilium#50041, Upstream PR cilium/cilium#49266, @bersoare)
* endpoint: use final regeneration error to resolve rollback state (Backport PR cilium/cilium#49680, Upstream PR cilium/cilium#49471, @jrajahalme)
* Fix agent bootstrap to order endpoint regeneration after DNS proxy initialization to prevent proxy port race. (Backport PR cilium/cilium#49805, Upstream PR cilium/cilium#49540, @jrajahalme)
* Fix egress policy rules that combine `toServices` with `toPorts` allowing traffic to any destination on those ports when the referenced Service doesn't exist or is selector-less with no backends. (Backport PR cilium/cilium#49637, Upstream PR cilium/cilium#49430, @christarazi)
* Fix HTTP URL query not being redacted in Hubble flows when the Envoy access log URL fails to parse. (Backport PR cilium/cilium#49805, Upstream PR cilium/cilium#49427, @sage-mode-hunter)
* Fix panic in agent when CiliumLocalRedirectPolicy `redirectBackend.toPorts` is declared as an empty array. The agent will now reject such a policy. (Backport PR cilium/cilium#49923, Upstream PR cilium/cilium#48491, @ajmmm)
* Fix pods failing to reach LoadBalancer VIPs and NodePorts of eTP=Local services via kube-proxy with BPF masquerade and KPR disabled. (Backport PR cilium/cilium#49923, Upstream PR cilium/cilium#49066, @maxskokov)
* Use the real IPsec config in nodeHandler, which restores the `--use-cilium-internal-ip-for-ipsec` behavior (Backport PR cilium/cilium#49839, Upstream PR cilium/cilium#49827, @vakalapa)

**CI Changes:**
* .github: Fix bugs caused by the Ubuntu 26.04 upgrade (Backport PR cilium/cilium#49781, Upstream PR cilium/cilium#49357, @aanm)
* auto-approve: Only approve trusted Renovate PRs (Backport PR cilium/cilium#49626, Upstream PR cilium/cilium#49464, @aanm)
* ci: Use the run's commit for trusted base and docs-builder checkouts (Backport PR cilium/cilium#49781, Upstream PR cilium/cilium#49803, @aanm)
* datapath/loader: parse stack depth for non net-next kernels (Backport PR cilium/cilium#49805, Upstream PR cilium/cilium#49610, @dylandreimerink)
* Fix smoke conformance workflows using the target branch's Helm chart instead of the PR's. (Backport PR cilium/cilium#49626, Upstream PR cilium/cilium#49502, @TheBeeZee)
* gha/setup-aks-cluster: Allow the runner's Actions range (Backport PR cilium/cilium#49707, Upstream PR cilium/cilium#49535, @aanm)
* gha/setup-gke-cluster: Allow the runner's Actions range (Backport PR cilium/cilium#49707, Upstream PR cilium/cilium#49421, @aanm)
* gha: Drop unused add-ons from the GKE and AKS CI clusters (Backport PR cilium/cilium#49781, Upstream PR cilium/cilium#49727, @aanm)
* Improve docs-builder dependency management (Backport PR cilium/cilium#49733, Upstream PR cilium/cilium#49482, @joestringer)
* loader: Improve verifier test debugging (Backport PR cilium/cilium#49805, Upstream PR cilium/cilium#48194, @pchaigno)
* loader: Support newer verifier logs (Backport PR cilium/cilium#49923, Upstream PR cilium/cilium#48207, @pchaigno)
* logging: Downgrade leader election lease conflict to info (Backport PR cilium/cilium#49976, Upstream PR cilium/cilium#46313, @christarazi)

**Misc Changes:**
* bpf: Recreate ingress CT entry if proxy_redirect is stale (Backport PR cilium/cilium#50041, Upstream PR cilium/cilium#49592, @christarazi)
* chore(deps): update all-dependencies (v1.19) (cilium/cilium#49439, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.19) (cilium/cilium#49901, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.19) (cilium/cilium#50032, @cilium-renovate[bot])
* chore(deps): update auto-merge-trusted-deps (v1.19) (cilium/cilium#49599, @cilium-renovate[bot])
* chore(deps): update auto-merge-trusted-deps (v1.19) (cilium/cilium#49697, @cilium-renovate[bot])
* chore(deps): update auto-merge-trusted-deps (v1.19) (cilium/cilium#49902, @cilium-renovate[bot])
* chore(deps): update auto-merge-trusted-deps (v1.19) (cilium/cilium#50025, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.20.2 (v1.19) (cilium/cilium#49918, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.20.3 (v1.19) (cilium/cilium#49998, @cilium-renovate[bot])
* chore(deps): update dependency cilium/little-vm-helper to v0.0.33 (v1.19) (cilium/cilium#49685, @cilium-renovate[bot])
* chore(deps): update gcr.io/distroless/static:nonroot docker digest to 25ac8f0 (v1.19) (cilium/cilium#49749, @cilium-renovate[bot])
* chore(deps): update module github.com/go-jose/go-jose/v4 to v4.1.6 [security] (v1.19) (cilium/cilium#49657, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/image-tester docker tag to v1793531520 (v1.19) (cilium/cilium#49757, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.19) (patch) (cilium/cilium#49155, @cilium-renovate[bot])
* ci: Build the docs-builder image for Renovate branches (Backport PR cilium/cilium#49781, Upstream PR cilium/cilium#49469, @aanm)
* docs: add note on wg port reservation (Backport PR cilium/cilium#50041, Upstream PR cilium/cilium#49961, @darox)
* docs: Add precision about rules DNS section for L3/DNS network policy documentation (Backport PR cilium/cilium#49733, Upstream PR cilium/cilium#44553, @Voldemat)
* docs: document Standalone DNS Proxy trust limitation (Backport PR cilium/cilium#49805, Upstream PR cilium/cilium#49691, @vipul-21)
* docs: document the IPv6 cluster-pool CIDR/mask-size constraint that causes "the node CIDR size is too big" errors (Backport PR cilium/cilium#49923, Upstream PR cilium/cilium#48313, @SatyamPandey-07)
* docs: Don't build docs-builder for cmdref (Backport PR cilium/cilium#49733, Upstream PR cilium/cilium#49590, @joestringer)
* docs: Make `render-docs` work on macOS. (Backport PR cilium/cilium#49733, Upstream PR cilium/cilium#47820, @eufriction)
* docs: Update min requirements (Backport PR cilium/cilium#49733, Upstream PR cilium/cilium#49496, @joestringer)
* Fix missing abbreviation in the TLS visibility documentation (Backport PR cilium/cilium#49805, Upstream PR cilium/cilium#49779, @KhooHaoYit)
* fix(deps): update k8s.io patch updates stable to v0.35.10 (v1.19) (cilium/cilium#49900, @cilium-renovate[bot])
* fix(deps): update k8s.io/utils digest to ca04ba5 (v1.19) (cilium/cilium#49750, @cilium-renovate[bot])
* fix(deps): update module github.com/gopacket/gopacket to v1.7.2 [security] (v1.19) (cilium/cilium#49953, @cilium-renovate[bot])
* fix(deps): update module golang.org/x/crypto to v0.59.0 [security] (v1.19) (cilium/cilium#49972, @cilium-renovate[bot])
* fix(deps): update module golang.org/x/net to v0.62.0 [security] (v1.19) (cilium/cilium#49679, @cilium-renovate[bot])
* fix(deps): update module k8s.io/apimachinery to v0.35.10 (v1.19) (cilium/cilium#49760, @cilium-renovate[bot])
* fix(deps): update security updates to v1.47.0 [security] (v1.19) (cilium/cilium#50019, @cilium-renovate[bot])

**Other Changes:**
* install: Update image digests for v1.19.10 (cilium/cilium#49576, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.19.11@sha256:645cc6f3bca651f48255c08aa235581ff39129c158c4d12af5f656e19995ca63`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.19.11@sha256:ebe57df4267c053aac94f7462dfe41eb56801b4127ff6520c8bc79f85d4dc8a7`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.19.11@sha256:a9aee887e87def16f50417f6df3102983811be4954cf707f527c74e7f9b6db63`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.19.11@sha256:9ce2e9f1084d873e9accdcde3b9381191e19a382a49d20afc3163659b97b1ec5`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.19.11@sha256:855eef99a16aa31b42d31037bc76002fa64273ecc3617cb5123cfa726cb983e4`

### operator-aws

`quay.io/cilium/operator-aws:v1.19.11@sha256:8f9e4f53a994f609249bbe412977b8523d5bdebd6a887666e91608cf63d298b5`

### operator-azure

`quay.io/cilium/operator-azure:v1.19.11@sha256:cd6c5a9a037b6512967fb41044761be30c9da76d2fdff46e7ee3ca60fb9a8372`

### operator-generic

`quay.io/cilium/operator-generic:v1.19.11@sha256:1844dfff32907db51b4dd929c2eea6612225f0fb5ce0394b511187f571c7e394`

### operator

`quay.io/cilium/operator:v1.19.11@sha256:f06085fe99985fced800ee85db595f4f1b54d41e5f7d23032f8979cc5fd5c330`

