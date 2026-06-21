来源: https://github.com/cilium/cilium/releases/tag/v1.17.16

# cilium/cilium v1.17.16 Release Notes

Published at: 2026-05-13T18:43:36Z

Summary of Changes
------------------

**Bugfixes:**
* CiliumLocalRedirectPolicy addressMatcher now refuses to override an existing Service's frontend (prevents cross-namespace traffic hijacking and service-map corruption on policy delete); set `--enable-lrp-address-matcher-override=true` to restore the legacy behavior. (cilium/cilium#45412, @ysksuzuki)
* fix(ipsec): panic in parseSPI on malformed input (Backport PR cilium/cilium#45506, Upstream PR cilium/cilium#44815, @isoyuki)
* Register cluster-pool IPAM metrics related to CiliumNode synchronization with k8s (Backport PR cilium/cilium#45931, Upstream PR cilium/cilium#41531, @pippolo84)

**CI Changes:**
* [v1.17] ipam: fix data race in MultiPoolManager node update (cilium/cilium#45383, @Kunalbehbud)
* gha/clustermesh: use OCI registry for cert-manager (Backport PR cilium/cilium#45350, Upstream PR cilium/cilium#45326, @giorio94)
* Use extra power github runner if available for multi-pool CI workflow (Backport PR cilium/cilium#45675, Upstream PR cilium/cilium#45555, @fristonio)

**Misc Changes:**
* [v1.17] deps: bump go.opentelemetry.io/otel to 1.41.0 (cilium/cilium#45936, @ferozsalam)
* Add documentation and warnings on DNS interception (Backport PR cilium/cilium#45890, Upstream PR cilium/cilium#45525, @ferozsalam)
* chore(deps): update all external docker images dependencies to v0.13.5 (v1.17) (patch) (cilium/cilium#45476, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#45478, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#45734, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#45744, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#45875, @cilium-renovate[bot])
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#45884, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.17) (cilium/cilium#45735, @cilium-renovate[bot])
* chore(deps): update base-images to v1.25.10 (v1.17) (cilium/cilium#45905, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to 354584b (v1.17) (cilium/cilium#45618, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to 62bccde (v1.17) (cilium/cilium#45483, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to 6663075 (v1.17) (cilium/cilium#45482, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to 6e3229e (v1.17) (cilium/cilium#45622, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to b782452 (v1.17) (cilium/cilium#45490, @cilium-renovate[bot])
* chore(deps): update cilium/cilium digest to e7d728c (v1.17) (cilium/cilium#45749, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.9 docker digest to 3760478 (v1.17) (cilium/cilium#45475, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.9 docker digest to 8a7adc2 (v1.17) (cilium/cilium#45736, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.25.9 docker digest to 8cd78ec (v1.17) (cilium/cilium#45619, @cilium-renovate[bot])
* chore(deps): update module github.com/moby/spdystream to v0.5.1 [security] (v1.17) (cilium/cilium#45433, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/certgen docker tag to v0.4.2 (v1.17) (cilium/cilium#45503, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/certgen docker tag to v0.4.3 (v1.17) (cilium/cilium#45518, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.36.6-1776352947-78da350f53f63526ff6487f2e1f3b14d2062ce17 (v1.17) (cilium/cilium#45477, @cilium-renovate[bot])
* ci: make registry configurable (cilium/cilium#45439, @Artyop)
* helm: allow overriding of external images in charts (Backport PR cilium/cilium#45633, Upstream PR cilium/cilium#45597, @sekhar-isovalent)

**Other Changes:**
* [v1.17] deps: bump x/net to v0.53 (cilium/cilium#45939, @thorn3r)
* chore(deps): update quay.io/cilium/cilium-envoy (cilium/cilium#45910, @sayboras)
* ci: Switch catchpoint/workflow-telemetry-action to our fork (cilium/cilium#45405, @YutaroHayakawa)
* Fix endpoint identity resolution for static pods whose CNI pod UID differs from the Kubernetes mirror pod UID. (cilium/cilium#45886, @aaroniscode)
* install: Update image digests for v1.17.15 (cilium/cilium#45399, @cilium-release-bot[bot])


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.17.16@sha256:4efb37b791561bc5a2c6d746bdd6f52a9c393623d2426e8c0877cc389610477c`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.17.16@sha256:711d6a7746289d8fef380d5fba1fae1a5c40c87fe63aac06e45484dc7c1e4084`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.17.16@sha256:85bec0d5245a4c129121d71fae65b2440886f764653b0955f64d51d2834850f8`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.17.16@sha256:e2314ec4e63f1d3947cf36f734912ef325d11a5e3b7be8f4d6434baeeceed8bf`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.17.16@sha256:e1540a6ce637e8683c3dffd71eb43a0f224486459592ddf4342e9671626325e0`

### operator-aws

`quay.io/cilium/operator-aws:v1.17.16@sha256:6ead6172bc731fbb1b503440676b86ff66d1573c8fc9d94928634a3014a9882f`

### operator-azure

`quay.io/cilium/operator-azure:v1.17.16@sha256:c5c05fc27993f7d6e0c4e9f7086c3ea6dc82477afb8d573881b7ca65e27246d3`

### operator-generic

`quay.io/cilium/operator-generic:v1.17.16@sha256:42955931dd62c9c2ea906d78eed0b651b22e70d59cd4877381f57bb98e4a09ae`

### operator

`quay.io/cilium/operator:v1.17.16@sha256:ddfb52577a9d33ba78ee4b414d799507b92f6f5a655376db979e332656282e3f`

