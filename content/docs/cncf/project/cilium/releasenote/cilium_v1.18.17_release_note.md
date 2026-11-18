来源: https://github.com/cilium/cilium/releases/tag/v1.18.17

# cilium/cilium v1.18.17 Release Notes

Published at: 2026-11-17T09:53:36Z

Summary of Changes
------------------

**Bugfixes:**
* clustermesh: fix ownerReferences check in MCS-API EndpointSlice mirror (cilium/cilium#50011, @brb)
* Fix egress policy rules that combine `toServices` with `toPorts` allowing traffic to any destination on those ports when the referenced Service doesn't exist or is selector-less with no backends. (Backport PR cilium/cilium#49636, Upstream PR cilium/cilium#49430, @christarazi)
* Fix HTTP URL query not being redacted in Hubble flows when the Envoy access log URL fails to parse. (Backport PR cilium/cilium#49806, Upstream PR cilium/cilium#49427, @sage-mode-hunter)
* Fix panic in agent when CiliumLocalRedirectPolicy `redirectBackend.toPorts` is declared as an empty array. The agent will now reject such a policy. (Backport PR cilium/cilium#49929, Upstream PR cilium/cilium#48491, @ajmmm)

**CI Changes:**
* .github: Fix bugs caused by the Ubuntu 26.04 upgrade (Backport PR cilium/cilium#49780, Upstream PR cilium/cilium#49357, @aanm)
* [v1.18] ci: Fix the chart organization in the printed helm commands (cilium/cilium#49811, @aanm)
* auto-approve: Only approve trusted Renovate PRs (Backport PR cilium/cilium#49627, Upstream PR cilium/cilium#49464, @aanm)
* ci: Use the run's commit for trusted base and docs-builder checkouts (Backport PR cilium/cilium#49780, Upstream PR cilium/cilium#49803, @aanm)
* Improve docs-builder dependency management (Backport PR cilium/cilium#49735, Upstream PR cilium/cilium#49482, @joestringer)

**Misc Changes:**
* bpf: Recreate ingress CT entry if proxy_redirect is stale (Backport PR cilium/cilium#50042, Upstream PR cilium/cilium#49592, @christarazi)
* chore(deps): update all-dependencies (v1.18) (cilium/cilium#49753, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.18) (cilium/cilium#49904, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.18) (cilium/cilium#50033, @cilium-renovate[bot])
* chore(deps): update auto-merge-trusted-deps (v1.18) (cilium/cilium#49600, @cilium-renovate[bot])
* chore(deps): update auto-merge-trusted-deps (v1.18) (cilium/cilium#49698, @cilium-renovate[bot])
* chore(deps): update auto-merge-trusted-deps (v1.18) (cilium/cilium#49905, @cilium-renovate[bot])
* chore(deps): update auto-merge-trusted-deps (v1.18) (cilium/cilium#50026, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.20.3 (v1.18) (cilium/cilium#49903, @cilium-renovate[bot])
* chore(deps): update dependency cilium/little-vm-helper to v0.0.33 (v1.18) (cilium/cilium#49686, @cilium-renovate[bot])
* chore(deps): update gcr.io/distroless/static:nonroot docker digest to 25ac8f0 (v1.18) (cilium/cilium#49751, @cilium-renovate[bot])
* chore(deps): update module github.com/go-jose/go-jose/v4 to v4.1.6 [security] (v1.18) (cilium/cilium#49658, @cilium-renovate[bot])
* ci: Build the docs-builder image for Renovate branches (Backport PR cilium/cilium#49780, Upstream PR cilium/cilium#49469, @aanm)
* docs: add note on wg port reservation (Backport PR cilium/cilium#50042, Upstream PR cilium/cilium#49961, @darox)
* docs: Add precision about rules DNS section for L3/DNS network policy documentation (Backport PR cilium/cilium#49735, Upstream PR cilium/cilium#44553, @Voldemat)
* docs: document the IPv6 cluster-pool CIDR/mask-size constraint that causes "the node CIDR size is too big" errors (Backport PR cilium/cilium#49929, Upstream PR cilium/cilium#48313, @SatyamPandey-07)
* docs: Don't build docs-builder for cmdref (Backport PR cilium/cilium#49735, Upstream PR cilium/cilium#49590, @joestringer)
* docs: Make `render-docs` work on macOS. (Backport PR cilium/cilium#49735, Upstream PR cilium/cilium#47820, @eufriction)
* docs: Update min requirements (Backport PR cilium/cilium#49735, Upstream PR cilium/cilium#49496, @joestringer)
* Fix missing abbreviation in the TLS visibility documentation (Backport PR cilium/cilium#49806, Upstream PR cilium/cilium#49779, @KhooHaoYit)
* fix(deps): update k8s.io/utils digest to ca04ba5 (v1.18) (cilium/cilium#49752, @cilium-renovate[bot])
* fix(deps): update module github.com/gopacket/gopacket to v1.7.2 [security] (v1.18) (cilium/cilium#49954, @cilium-renovate[bot])
* fix(deps): update module golang.org/x/crypto to v0.59.0 [security] (v1.18) (cilium/cilium#49973, @cilium-renovate[bot])
* fix(deps): update module golang.org/x/net to v0.62.0 [security] (v1.18) (cilium/cilium#49674, @cilium-renovate[bot])
* fix(deps): update security updates to v1.47.0 [security] (v1.18) (cilium/cilium#50020, @cilium-renovate[bot])

**Other Changes:**
* install: Update image digests for v1.18.16 (cilium/cilium#49577, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.18.17@sha256:510ff1e3974c6bdd50919fed77082724f70f7d31f0f4b8d4885d757b95679c4e`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.18.17@sha256:9b96a713b1bf5befe7ebf25f06c832ca4afadbc28897e513762f96b990a5bc93`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.18.17@sha256:a86e19638d7dac5e2f49ae7ccaab57161c797f64d430f2fc9c2310d4805db65d`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.18.17@sha256:fa7143db5ecb22d9943f84742cd1236c0d853c198d71f6acd6d491881e8d8067`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.18.17@sha256:271f1668d77f8c9e8365184f91c660c0a69acd6ee6a0ebfaeb17af7c5d2cf094`

### operator-aws

`quay.io/cilium/operator-aws:v1.18.17@sha256:01366414af64026d0e9d401b54b77538f45d77f3a3e4cedff07067572b005af9`

### operator-azure

`quay.io/cilium/operator-azure:v1.18.17@sha256:8182c2769ba13ea3901a87c7852fa9fcbca99e4c754e779cc0c6acce19508f65`

### operator-generic

`quay.io/cilium/operator-generic:v1.18.17@sha256:43f34439c9d847a02632e954aba3ded1293ed0d312dbf4b82ae74bd5659040d3`

### operator

`quay.io/cilium/operator:v1.18.17@sha256:ab238b050f3d415503f609da72dc1238fcb7cb477a7c7867b871dfbb6f64babf`

