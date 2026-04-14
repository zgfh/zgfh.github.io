来源: https://github.com/cilium/cilium/releases/tag/v1.19.0

# cilium/cilium v1.19.0 Release Notes

Published at: 2026-02-04T15:58:29Z

🎉 **Release Announcement** 🎉: We are excited to announce the [Cilium 1.19.0](https://github.com/cilium/cilium/releases/tag/v1.19.0) release!

A total of **2934 new commits** have been contributed to this release by a growing community of over **1010 developers** and over **23,600 GitHub stars**! 🤩

⚠️ You may need to take action during upgrade to Cilium v1.19 if you use Network Policies, Cluster Mesh, LoadBalancer IPAM or BGP. See the [Upgrade Guide](https://docs.cilium.io/en/v1.19/operations/upgrade/#upgrade-notes) for more details.

The full changelog can be found [here](https://github.com/cilium/cilium/blob/v1.19/CHANGELOG.md).

Here are some of the highlights:

* 🛡️ **Network Policy**
    * 🃏 **Multi-Level DNS Matches**: DNS Policies match pattern now support a wildcard prefix(*`**.`*) to match multilevel subdomain as pattern prefix. ([cilium/cilium#43420](https://github.com/cilium/cilium/pull/43420), @fristonio)
    * 📡 **Match New Protocols**: You can now match VRRP and IGMP protocols in host firewall rules. ([cilium/cilium#39872](https://github.com/cilium/cilium/pull/39872), @aditighag; [cilium/cilium#41949](https://github.com/cilium/cilium/pull/41949), @kyounghunJang)
    * ⛔ **Actively Deny Connections**: When Network Policies deny a connection, Cilium can return ICMPv4 "Destination unreachable" messages for a friendlier deny. ([cilium/cilium#41406](https://github.com/cilium/cilium/pull/41406), @antonipp)
    * 🌐 **Select Clusters Explicitly**: When network policy selectors don't explicitly define a cluster for communication to be allowed, they will now default to only allowing the local cluster. ([cilium/cilium#40609](https://github.com/cilium/cilium/pull/40609), @MrFreezeex)
    * 🔧 **Unlock Future Work**: This release brings several internal improvements to the network policy engine in preparation for features planned in the next Cilium minor release ([cilium/cilium#39906](https://github.com/cilium/cilium/pull/39906), @vipul-21; [cilium/cilium#42784](https://github.com/cilium/cilium/pull/42784), [cilium/cilium#42896](https://github.com/cilium/cilium/pull/42896), @jrajahalme)
    * ⚠️ **Deprecate underutilized features**: To focus on solving common problems Cilium users face, this release deprecates the Kafka protocol match fields (beta), as well as the `ToRequires` and `FromRequires` policy fields. ([cilium/cilium#43167](https://github.com/cilium/cilium/pull/43167), @sayboras; [cilium/cilium#40967](https://github.com/cilium/cilium/pull/40967), @TheBeeZee)


* 🔒 **Encryption & Authentication**
    * 🔐 **Encryption Strict Modes**: Both IPsec and WireGuard transparent encryption modes now support a "strict mode" to require traffic to be encrypted between nodes. Unencrypted traffic will be dropped in this mode. ([cilium/cilium#39239](https://github.com/cilium/cilium/pull/39239), [cilium/cilium#42115](https://github.com/cilium/cilium/pull/42115), @rgo3, @julianwiedmann)
    * 🚇 **Ztunnel Beta**: You can enroll namespaces into Ztunnel, which enables TCP connections between workloads to be transparently encrypted and authenticated. ([cilium/cilium#42766](https://github.com/cilium/cilium/pull/42766), [cilium/cilium#42819](https://github.com/cilium/cilium/pull/42819), [cilium/cilium#43227](https://github.com/cilium/cilium/pull/43227) and others,  @ldelossa, @rgo3, @nddq)
    * 👥 **Mutual Authentication**: The out-of-band [Mutual Authentication](https://docs.cilium.io/en/v1.19/network/servicemesh/mutual-authentication/mutual-authentication/) feature is now disabled by default, pending community feedback. If you have a requirement for mTLS, consider trying the new Ztunnel integration. ([cilium/cilium#42665](https://github.com/cilium/cilium/pull/42665), @christarazi)
    * ↪️ **Accelerate IPsec**: The IPsec encryption mode now supports BPF Host Routing for faster route lookups ([cilium/cilium#41997](https://github.com/cilium/cilium/pull/41997), @pchaigno)


* 🚠 **Networking**
    * 🚀  **BIG TCP in Tunnels**: Leverage upcoming Linux support for BIG TCP when communicating over UDP-based tunnels such as VXLAN and Geneve. ([cilium/cilium#43416](https://github.com/cilium/cilium/pull/43416), @gentoo-root)
    * 🥌 **Packetization-Layer Path MTU Discovery**: Detect maximum transmission unit (MTU) sizes for network paths using TCP. ([cilium/cilium#42012](https://github.com/cilium/cilium/pull/42012), [cilium/cilium#43710](https://github.com/cilium/cilium/pull/43710), @tommyp1ckles)
    * 🚆 **IPv6 Underlay**: You can now choose IPv6 for the tunnel underlay address family on dual-stack clusters. ([cilium/cilium#40324](https://github.com/cilium/cilium/pull/40324), @pchaigno)
    * 🏷️ **Multi-Pool IPAM is ready for wider use**: Update the Multi-Pool IPAM feature to work with IPsec and direct routing modes, and promote it from Beta to Stable. ([cilium/cilium#40460](https://github.com/cilium/cilium/pull/40460), [cilium/cilium#42191](https://github.com/cilium/cilium/pull/42191), @pippolo84)
    * 🎭 **More Configurable Masquerade**: IP Masquerade configuration can now be customized for traffic sent to nodes in other IP subnets, and addresses in IPAM pools can be excluded from masquerade ([cilium/cilium#37568](https://github.com/cilium/cilium/pull/37568), @behzad-mir; [cilium/cilium#43380](https://github.com/cilium/cilium/pull/43380), @alimehrabikoshki)


* 🕸️ **Services and Service Mesh**
    * 📣 **Layer-2 Announcements**: Add support for Neighbor Discovery Advertisements for IPv6 Layer-2 Announcements. ([cilium/cilium#39648](https://github.com/cilium/cilium/pull/39648), @msune)
    * 🔁 **IPv6 Service Loopback**: Pods can now connect to themselves via a Kubernetes "loopback service" using IPv6. ([cilium/cilium#39594](https://github.com/cilium/cilium/pull/39594), @saiaunghlyanhtet)
    * ⛩️ **Gateway API Enhancements**: Cilium's GAMMA support now includes support for using GRPCRoute as well as HTTPRoute. ([cilium/cilium#41936](https://github.com/cilium/cilium/pull/41936), @youngnick)


* 🛣️ **Border Gateway Protocol (BGP)**
    * 🔌 **Advertise Addresses from Interfaces**: There's a new Interface BGP advertisement type that allows advertisement of IPs assigned on local interfaces. This can be useful for example in multi-homing setups, where a common node's loopback address can be advertised via multiple BGP sessions over different network interfaces. ([cilium/cilium#42469](https://github.com/cilium/cilium/pull/42469), @rastislavs)
    * ✉️ **Override Source IP addresses**: You can override the auto-generated BGP session source IP with the IP address applied on the configured `sourceInterface` to allow binding the BGP connection to the loopback address which is not tied to the specific physical interface's lifecycle ([cilium/cilium#42583](https://github.com/cilium/cilium/pull/42583), @rastislavs)
    * 🔁 **Withdraw Empty Routes**: Optionally withdraw BGP routes when a service has 0 endpoints, to allow balancing to a different DC/cluster with `externalTrafficPolicy=Cluster` ([cilium/cilium#40717](https://github.com/cilium/cilium/pull/40717), @oblazek)
    * ⚠️ **Move to `cilium.io/v2` API**: The support for the older `CiliumBGPPeeringPolicy` v1 API is now removed and should be replaced with v2 APIs. ([cilium/cilium#42278](https://github.com/cilium/cilium/pull/42278), @rastislavs)


* 🛰️ **Observability**
    * 🔬 **Trace IP Options**: Configure Cilium and Hubble to trace specific packets through the cluster using IP Options. ([cilium/cilium#41306](https://github.com/cilium/cilium/pull/41306), @Bigdelle)
    * 🚩 **Filter Encrypted Flows**: Filter flows when using the `hubble` command line to understand the encryption status of the traffic, either `--encrypted` or `--unencrypted`. ([cilium/cilium#43096](https://github.com/cilium/cilium/pull/43096), @SRodi)
    * 🔖 **Tag Drops with Policy Names**: Hubble v1.Events drop messages now include which Network Policy caused the drop. ([cilium/cilium#41693](https://github.com/cilium/cilium/pull/41693), @41ks)


* 🌅 **Performance and Scale**
    * ⚡ **Faster Network Policy Computation**: Improve Cilium resource usage for handling selectors in network policies. ([cilium/cilium#42008](https://github.com/cilium/cilium/pull/42008), @jrajahalme; [cilium/cilium#42580](https://github.com/cilium/cilium/pull/42580), @odinuge)
    * 🔌 **More Efficient Connection Tracking**: Several improvements have been made to reduce the number of connections being tracked by Cilium, particularly when using Geneve, VXLAN or WireGuard. ([cilium/cilium#38782](https://github.com/cilium/cilium/pull/38782), @BenoitKnecht; [cilium/cilium#41990](https://github.com/cilium/cilium/pull/41990), @bersoare)
    * 💾 **Better Scale in AWS**: Reduce memory usage for cilium-operator in large AWS environments with many resources. ([cilium/cilium#42529](https://github.com/cilium/cilium/pull/42529), @liyihuang)


* ⚙️ **Operations**
    * 📦 **Access Helm charts via Registry**: Helm charts are also available under `quay.io/cilium/charts/cilium` ([cilium/cilium#43624](https://github.com/cilium/cilium/pull/43624), @aanm)
    * 📊 **Metrics Encryption**: Add TLS/mTLS support for Prometheus metrics exposed by the Cilium Operator. ([cilium/cilium#42077](https://github.com/cilium/cilium/pull/42077), @phuhung273)
    * 🤖 **Easier Multi-Cluster install**: There's now support for auto-installing the Custom Resource Definitions (CRDs) for Multi-Cluster  Services (MCS). ([cilium/cilium#40729](https://github.com/cilium/cilium/pull/40729), @MrFreezeex)
    * 📜 **Simpler Certificate Management**: Streamline Cluster Mesh and Hubble certificate generation when using GitOps approaches. ([cilium/cilium#42298](https://github.com/cilium/cilium/pull/42298), @MrFreezeex)
    * 🛠️ **Cilium dependencies** were updated to Kubernetes v1.35, Envoy v1.35, Gateway API v1.4, and GoBGP v3.37. ([cilium/cilium#43422](https://github.com/cilium/cilium/pull/43422), @aanm; [cilium/cilium#40569](https://github.com/cilium/cilium/pull/40569), @sayboras; [cilium/cilium#41936](https://github.com/cilium/cilium/pull/41936), @youngnick; [cilium/cilium#42824](https://github.com/cilium/cilium/pull/42824), @rastislavs).


* 🏠 **Community**
    * ❤️ **Production Case Studies**: Many end-users have stepped forward to tell their stories running Cilium in production. If your company wants to submit their case studies let us know. We would love to hear your feedback!
    * 📰 See studies with [Airbnb](https://youtu.be/7KHenRXNGAw?si=ldTS-X_W0svxo429&t=546), [Cloudera](https://aws.amazon.com/blogs/migration-and-modernization/scaling-clouderas-development-environment-leveraging-amazon-eks-karpenter-bottlerocket-and-cilium-for-hybrid-cloud/),[ Cybozu](https://www.cncf.io/case-studies/cybozu/), [ESnet](https://www.cncf.io/case-studies/esnet/),[ Nutanix](https://www.cncf.io/case-studies/nutanix/), [OVHcloud](https://corporate.ovhcloud.com/en-gb/newsroom/news/ovhcloud-managed-kubernetes-service-standard-3az/), [TikTok](https://www.youtube.com/watch?v=y0qlhiKtDGo), [University of Wisconsin–Madison](https://www.cncf.io/case-studies/university-of-wisconsin-madison/).
    * 🇺🇸 **Atlanta Events**: The community gathered at [CiliumCon](https://www.youtube.com/playlist?list=PLDg_GiBbAx-mOnWuzd_NXoRfuW9HZAxeZ) and the [Cilium Developer Summit](https://github.com/cilium/dev-summits/blob/main/2025-NA/README.md) in Atlanta.
    * 🇳🇱 **Amsterdam Events**: Meet us at the upcoming [CiliumCon](https://events.linuxfoundation.org/kubecon-cloudnativecon-europe/co-located-events/ciliumcon/) and [Cilium Developer Summit](https://github.com/cilium/dev-summits/tree/main/2026-EU) in Amsterdam, March 23-27. [Read more](https://cilium.io/blog/2026/01/23/cilium-at-kubecon-eu-2026/) about where to find Cilium during the show.
    * 🔟 **Cilium is 10**: Read the [2025 Cilium Annual Report](https://www.cncf.io/wp-content/uploads/2025/12/cilium-annual-report-2025-final.pdf) to see the latest project milestones, a decade on from its first commit.

To keep up to date with all the latest Cilium releases, join #release 🎉

:birthday::heart::heart::heart::birthday:
This is a very special release for Cilium, as it celebrates **10 years** since the first commit. We couldn’t be more proud of what this project has accomplished. All the GitHub issues, pull requests, reviews, stars, forks, Docker pulls, Helm installs, Kubernetes applies, CI runs, bug reports, design docs, discussions, meetings, Slack messages, YouTube streams, eCHO episodes, conference talks, blog posts, demos, and presentations have made the project the success it is today.
:birthday::heart::heart::heart::birthday:

## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.19.0@sha256:be9f8571c2e114b3e12e41f785f2356ade703b2eac936aa878805565f0468c60`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.19.0@sha256:0e3b89fdb116eb0f5579fe8ee3fabb1a7c4d97987a1ae927491d9185785d4a49`

### docker-plugin

`quay.io/cilium/docker-plugin:v1.19.0@sha256:35727047384f3d7a2684885003b266bf7a7add8fc66ca564b222f71c16057f50`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.19.0@sha256:7f17e5bb51a9f35bbc8e7a9ad5e347f03ff8003c2e5cc81171e8727a10bf03b4`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.19.0@sha256:5cb3d6981c233616037f3e13b5bc0020d114ad8db1b7360618b224e4c0b02ef0`

### operator-aws

`quay.io/cilium/operator-aws:v1.19.0@sha256:7a236ae256a4fbd3f72d516921131eba5b43f401ba37cdee5cd0e8c26f9263e6`

### operator-azure

`quay.io/cilium/operator-azure:v1.19.0@sha256:6ae7e0d75c74836af3600b775201c89ea7fcc13d6e08fdb0c52927309f31cd2a`

### operator-generic

`quay.io/cilium/operator-generic:v1.19.0@sha256:5b04006015e5800307dc6314676edc4c0bb7ac2fc7848be2b94b43bb030ab648`

### operator

`quay.io/cilium/operator:v1.19.0@sha256:deca84f442752dca0745dd09b13e8004569414839019ad79ac58f9fcaa3b9d65`

