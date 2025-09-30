来源: https://github.com/cilium/cilium/releases/tag/v1.16.12

# cilium/cilium v1.16.12 Release Notes

Published at: 2025-07-16T11:55:19Z

Summary of Changes
------------------

**Bugfixes:**
* Fix CIDRGroupRef handling in cilium network policy rule spec. (cilium/cilium#40139, @fristonio)
* LBIPAM: Fix deletion of CiliumLoadBalancerIPPool with multiple IP blocks that led to an operator crash (Backport PR cilium/cilium#40093, Upstream PR cilium/cilium#40013, @pippolo84)
* pkg/egressgateway: ensure gateway IP is IPv4 (Backport PR cilium/cilium#40331, Upstream PR cilium/cilium#40209, @rgo3)

**CI Changes:**
* Backported setting egressMasqueradeInterfaces and concurrent test runs to fix ci-eks workflow. (cilium/cilium#40468, @jrajahalme)

**Misc Changes:**
* .github/workflows: remove reviewers if ciliumbot approved PR (Backport PR cilium/cilium#40093, Upstream PR cilium/cilium#39989, @aanm)
* auto-approve: add repository as part command (Backport PR cilium/cilium#40093, Upstream PR cilium/cilium#40050, @aanm)
* auto-approve: add repository as part command (Backport PR cilium/cilium#40331, Upstream PR cilium/cilium#40089, @aanm)
* chore(deps): update all-dependencies (v1.16) (cilium/cilium#40159, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.16) (cilium/cilium#40370, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.18.5 (v1.16) (cilium/cilium#40327, @cilium-renovate[bot])
* chore(deps): update dependency go to v1.24.5 (v1.16) (cilium/cilium#40425, @cilium-renovate[bot])
* chore(deps): update docker.io/library/golang:1.24.4 docker digest to 20a022e (v1.16) (cilium/cilium#40160, @cilium-renovate[bot])
* contrib/git: add merge drivers to automate post-merge commands (Backport PR cilium/cilium#40292, Upstream PR cilium/cilium#40189, @aanm)
* disk-cleanup: parallelize cleanup process to speed up step (Backport PR cilium/cilium#40093, Upstream PR cilium/cilium#40054, @aanm)
* docs/ipsec: Fix incorrect statement on hostns encryption (Backport PR cilium/cilium#40173, Upstream PR cilium/cilium#40133, @pchaigno)
* Makefile: Require API generation commands to succeed (Backport PR cilium/cilium#40206, Upstream PR cilium/cilium#40199, @joestringer)
* operator/secretsync: silence reconciliation logs (Backport PR cilium/cilium#40226, Upstream PR cilium/cilium#40217, @tklauser)
* proxy: Use upstream envoy control plane API (Backport PR cilium/cilium#40242, Upstream PR cilium/cilium#39672, @sayboras)

**Other Changes:**
* [v1.16] deps: Update cilium-envoy image to 1.33.x (cilium/cilium#40163, @sayboras)
* Bpf datapath TCP conntrack entries are (re)created only in the forward direction, solving an issue with freezing proxy connections when backend connection is re-opened. (cilium/cilium#40449, @jrajahalme)
* install: Update image digests for v1.16.11 (cilium/cilium#40115, @cilium-release-bot[bot])
* v1.16: docs: Document encapsulation options (cilium/cilium#40472, @pchaigno)


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.16.12@sha256:2474c606db9ac02ffad692a5115f48cdf1a6eb1856c312b2b08d2dd3ce3e9317`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.16.12@sha256:6e4d3ea9c9cca18e90a542b717fec447a9bdf927de2013f4541818227f53754a`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.16.12@sha256:20c8f247b0ebf1211166435ca4c22249964106d0653d88bf70219341c972d39d`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.16.12@sha256:56a9eaf18788a8ee7b952c86f535b5484a6ac102dde6c26e5aa3242f01190e80`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.16.12@sha256:9ce7167bfb474f50a2c2951ddb9c0594609c6e1f6a15da22a2b23b7cc3eb6c5b`

### operator-aws

`quay.io/cilium/operator-aws:v1.16.12@sha256:819b328ad2486e2f8b50d9b0d0d2dfc9f576cacdd12134737dacde0f69715d95`

### operator-azure

`quay.io/cilium/operator-azure:v1.16.12@sha256:0825386e3411ca37f1bbd4d986c815a99b58f478bd5e1751b930065140694af8`

### operator-generic

`quay.io/cilium/operator-generic:v1.16.12@sha256:aafeefcc7f219fd4b6da8402c910fcf343c926383b351cb3fb911f7671e32c64`

### operator

`quay.io/cilium/operator:v1.16.12@sha256:c35873321886d8d05abf1a52598b7cd06c74e0cc367737cd763b56c42d0f6662`

