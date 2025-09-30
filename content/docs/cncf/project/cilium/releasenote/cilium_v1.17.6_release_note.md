来源: https://github.com/cilium/cilium/releases/tag/v1.17.6

# cilium/cilium v1.17.6 Release Notes

Published at: 2025-07-16T11:55:29Z

Summary of Changes
------------------

**Minor Changes:**
* helm: KPR subflag changes (Backport PR cilium/cilium#40222, Upstream PR cilium/cilium#39721, @brb)

**Bugfixes:**
* Deny policies are now synced to Envoy so that they can be enforced for Ingress policies. (Backport PR cilium/cilium#40187, Upstream PR cilium/cilium#39736, @jrajahalme)
* Do not fail the agent startup in case IPv6 support is enabled and the node does not have an IPv6 address assigned yet (Backport PR cilium/cilium#40205, Upstream PR cilium/cilium#40143, @pippolo84)
* Fix bug preventing a global service from including remote backends, if the local service has no selector, and the remote one gets removed and then added again. (cilium/cilium#40361, @giorio94)
* Fix data race involving DumpReliablyWithCallback map operation. (Backport PR cilium/cilium#40094, Upstream PR cilium/cilium#38590, @aditighag)
* Fix IPAM IP release racing condition when IP reassigned back to ENI (Backport PR cilium/cilium#40289, Upstream PR cilium/cilium#40019, @victorcq)
* hubble automatically pick the `hubble-prefer-ipv6` to `true` if ipv4 not enabled (Backport PR cilium/cilium#40289, Upstream PR cilium/cilium#40210, @chengjoey)
* LBIPAM: Fix deletion of CiliumLoadBalancerIPPool with multiple IP blocks that led to an operator crash (Backport PR cilium/cilium#40094, Upstream PR cilium/cilium#40013, @pippolo84)
* pkg/egressgateway: ensure gateway IP is IPv4 (Backport PR cilium/cilium#40332, Upstream PR cilium/cilium#40209, @rgo3)
* policy: fix error handling for selector policy resolution (cilium/cilium#40404, @fristonio)

**CI Changes:**
* ci: do not run north-south conn disrupt tests for 5.4 kernels (cilium/cilium#39443, @ldelossa)
* ci: fix north-south conn disrupt for 5.4 kernel (cilium/cilium#40434, @smagnani96)

**Misc Changes:**
* .github/workflows: remove reviewers if ciliumbot approved PR (Backport PR cilium/cilium#40094, Upstream PR cilium/cilium#39989, @aanm)
* auto-approve: add repository as part command (Backport PR cilium/cilium#40094, Upstream PR cilium/cilium#40050, @aanm)
* auto-approve: add repository as part command (Backport PR cilium/cilium#40332, Upstream PR cilium/cilium#40089, @aanm)
* chore(deps): update all github action dependencies (v1.17) (cilium/cilium#40158, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.17) (cilium/cilium#40044, @cilium-renovate[bot])
* chore(deps): update all-dependencies (v1.17) (cilium/cilium#40458, @cilium-renovate[bot])
* chore(deps): update dependency cilium/cilium-cli to v0.18.5 (v1.17) (cilium/cilium#39948, @cilium-renovate[bot])
* chore(deps): update go to v1.24.5 (v1.17) (cilium/cilium#40424, @cilium-renovate[bot])
* chore(deps): update quay.io/cilium/cilium-envoy docker tag to v1.33.4-1752151664-7c2edb0b44cf95f326d628b837fcdd845102ba68 (v1.17) (cilium/cilium#40466, @cilium-renovate[bot])
* chore(deps): update stable lvh-images (v1.17) (patch) (cilium/cilium#40157, @cilium-renovate[bot])
* cilium: fix socket termination for v4-in-v6 clients (Backport PR cilium/cilium#40295, Upstream PR cilium/cilium#39994, @borkmann)
* contrib/git: add merge drivers to automate post-merge commands (Backport PR cilium/cilium#40289, Upstream PR cilium/cilium#40189, @aanm)
* disk-cleanup: parallelize cleanup process to speed up step (Backport PR cilium/cilium#40094, Upstream PR cilium/cilium#40054, @aanm)
* doc:ipsec:kvstore: explicit limitations that could lead to staling XFRM states and no connectivity (Backport PR cilium/cilium#40176, Upstream PR cilium/cilium#39719, @smagnani96)
* docs/ipsec: Fix incorrect statement on hostns encryption (Backport PR cilium/cilium#40176, Upstream PR cilium/cilium#40133, @pchaigno)
* Makefile: Require API generation commands to succeed (Backport PR cilium/cilium#40205, Upstream PR cilium/cilium#40199, @joestringer)
* operator/secretsync: silence reconciliation logs (Backport PR cilium/cilium#40289, Upstream PR cilium/cilium#40217, @tklauser)
* proxy: Use upstream envoy control plane API (Backport PR cilium/cilium#40216, Upstream PR cilium/cilium#39672, @sayboras)
* v1.17: helm: Restore hostPort.enabled flag (cilium/cilium#40480, @brb)

**Other Changes:**
* [v1.17] deps: Update cilium-envoy image to 1.33.x (cilium/cilium#40088, @sayboras)
* Backport: kube-proxy-healthz to return 503 if node terminating (cilium/cilium#40317, @tamilmani1989)
* Bpf datapath TCP conntrack entries are (re)created only in the forward direction, solving an issue with freezing proxy connections when backend connection is re-opened. (cilium/cilium#40448, @jrajahalme)
* envoy: Bump cilium-envoy to the latest v1.33.x (cilium/cilium#40368, @sayboras)
* install: Update image digests for v1.17.5 (cilium/cilium#40117, @cilium-release-bot[bot])
* proxy: Bump envoy version to the latest v1.33.x (cilium/cilium#40181, @sayboras)
* v1.17: docs: Document encapsulation options (cilium/cilium#40471, @pchaigno)


## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.17.6@sha256:544de3d4fed7acba72758413812780a4972d47c39035f2a06d6145d8644a3353`
`quay.io/cilium/cilium:stable@sha256:544de3d4fed7acba72758413812780a4972d47c39035f2a06d6145d8644a3353`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.17.6@sha256:f619e97432db427e1511bf91af3be8ded418c53a353a09629e04c5880659d1df`
`quay.io/cilium/clustermesh-apiserver:stable@sha256:f619e97432db427e1511bf91af3be8ded418c53a353a09629e04c5880659d1df`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.17.6@sha256:2d6175582c036dde241448b2b937353ce304d7a30eec9b66e96279b4b39c4f36`
`quay.io/cilium/docker-plugin:stable@sha256:2d6175582c036dde241448b2b937353ce304d7a30eec9b66e96279b4b39c4f36`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.17.6@sha256:7d17ec10b3d37341c18ca56165b2f29a715cb8ee81311fd07088d8bf68c01e60`
`quay.io/cilium/hubble-relay:stable@sha256:7d17ec10b3d37341c18ca56165b2f29a715cb8ee81311fd07088d8bf68c01e60`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.17.6@sha256:5352e670719dc61f059c1e1a04bc0563c2144738386fa7236dc167ff3fef4c64`
`quay.io/cilium/operator-alibabacloud:stable@sha256:5352e670719dc61f059c1e1a04bc0563c2144738386fa7236dc167ff3fef4c64`

### operator-aws

`quay.io/cilium/operator-aws:v1.17.6@sha256:24db5c811e24e51e7ce166e8e056967875bf3544cc2ead6984f34f705fe71847`
`quay.io/cilium/operator-aws:stable@sha256:24db5c811e24e51e7ce166e8e056967875bf3544cc2ead6984f34f705fe71847`

### operator-azure

`quay.io/cilium/operator-azure:v1.17.6@sha256:1b7e193ccbc718f723993a0f11eb8fbf16376e822fe8c4dc792d7696701d57c8`
`quay.io/cilium/operator-azure:stable@sha256:1b7e193ccbc718f723993a0f11eb8fbf16376e822fe8c4dc792d7696701d57c8`

### operator-generic

`quay.io/cilium/operator-generic:v1.17.6@sha256:91ac3bf7be7bed30e90218f219d4f3062a63377689ee7246062fa0cc3839d096`
`quay.io/cilium/operator-generic:stable@sha256:91ac3bf7be7bed30e90218f219d4f3062a63377689ee7246062fa0cc3839d096`

### operator

`quay.io/cilium/operator:v1.17.6@sha256:e7b41cdba20875f8a6595eca1baf1cff1b8367417cffa99be7b1b9b0a11ab677`
`quay.io/cilium/operator:stable@sha256:e7b41cdba20875f8a6595eca1baf1cff1b8367417cffa99be7b1b9b0a11ab677`

