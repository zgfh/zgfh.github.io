来源: https://github.com/cilium/cilium/releases/tag/v1.18.0

# cilium/cilium v1.18.0 Release Notes

Published at: 2025-07-29T14:57:55Z

We are excited to announce the **[Cilium 1.18.0](https://github.com/cilium/cilium/releases/tag/v1.18.0)** release!

A total of **3298 new commits** have been contributed to this release by a growing community of over **955 developers** and over **22,000 GitHub stars**! ⭐

To keep up to date with all the latest Cilium releases, see [Announcements](https://github.com/cilium/cilium/discussions/categories/announcements)

Here's what's new in [v1.18.0](https://github.com/cilium/cilium/releases/tag/v1.18.0):

## 🚠 Networking

* **⚖️ Load Balancing Redesign**: The service load-balancing control-plane in the Cilium agent has been redesigned to reduce memory usage and improve future extensibility of load-balancing features ([cilium/cilium#38469](https://github.com/cilium/cilium/pull/38469) and others, @joamaki, @DamianSawicki, @brb)
* **🔌 Virtual Network Devices**: Added support for new virtual network device configurations such as VXLAN in IPsec (VinE) and IPIP tunnels ([cilium/cilium#37723](https://github.com/cilium/cilium/pull/37723), @ldelossa; [cilium/cilium#37346](https://github.com/cilium/cilium/pull/37346), @gyutaeb)
* **Ⓜ️ Multiple Egress Gateways**: Egress Gateways policies can now direct traffic towards multiple gateway nodes ([cilium/cilium#39304](https://github.com/cilium/cilium/pull/39304), @carlos-abad)
* **🚦 Ingress Rate Limiting**: The bandwidth manager now supports ingress rate limiting ([cilium/cilium#36351](https://github.com/cilium/cilium/pull/36351), @l1b0k)
* **📢 Multi-Device L2 Announcements**: The L2 pod announcement feature now supports multiple devices ([cilium/cilium#38198](https://github.com/cilium/cilium/pull/38198), @dylandreimerink)
* **🏢 Neighbor Subsystem Rework**: The neighbor subsystem was made more resilient through a new system that reconciles desired neighbor entries with the kernel state ([cilium/cilium#39987](https://github.com/cilium/cilium/pull/39987), @dylandreimerink)

## 🌐 IPv6

* **🚇 Tunneling Underlay**: The tunneling datapath mode now supports using an IPv6 network underlay, including when configured with IPsec transparent encryption ([cilium/cilium#38296](https://github.com/cilium/cilium/pull/38296), [cilium/cilium#39497](https://github.com/cilium/cilium/pull/39497), @pchaigno)
* **💬 Kube Proxy Replacement**: Cilium now implements service translation when running on an IPv6 underlay ([cilium/cilium#39074](https://github.com/cilium/cilium/pull/39074), @pchaigno)
* **📋 Delegated IPAM**: When delegating IP address management to a third party plugin, Cilium now configures IPv6 routes for connectivity if the plugin supports IPv6 ([cilium/cilium#38249](https://github.com/cilium/cilium/pull/38249), @caorui-io, @kadevu)
* **📦 IP Fragment Support**: Cilium now processes ordered IPv6 fragments to apply policy and routing functionality ([cilium/cilium#38110](https://github.com/cilium/cilium/pull/38110), @gentoo-root)
* **🚪 Egress gateway policies** can now match IPv6 address ranges ([cilium/cilium#38452](https://github.com/cilium/cilium/pull/38452), @rgo3)

## 🛡️ Policy & Observability

* **🏷️ Policy Names in Hubble-CLI**: Show the names of (C)CNPs that allowed or denied traffic when monitoring flows in Hubble ([cilium/cilium#39453](https://github.com/cilium/cilium/pull/39453), @antonipp)
* **📝 Policy Log Fields**: A new free-text log field is added to policies, which is exposed in Hubble flows for easy correlation and searching ([cilium/cilium#39902](https://github.com/cilium/cilium/pull/39902), @squeed)
* **🛰️ Encapsulated Traffic Decoding**: Hubble decodes encapsulated traffic for deeper introspection into traffic flows ([cilium/cilium#37634](https://github.com/cilium/cilium/pull/37634), @kaworu)
* **🏰 ClusterMesh Policy Restriction**: A new option allows the **cluster** entity to apply only to the local cluster in ClusterMesh environment ([cilium/cilium#39338](https://github.com/cilium/cilium/pull/39338), @MrFreezeex)
* **✨ Enhanced Policy Dashboard**: The Policy section of the Cilium Grafana dashboard has been improved to show more relevant graphs, including policy drops in both directions ([cilium/cilium#36492](https://github.com/cilium/cilium/pull/36492), [cilium/cilium#37445](https://github.com/cilium/cilium/pull/37445), @squeed)

## 🌅 Performance

* **📊 Scale Test Results**: Cilium implements policies and services up to 45% faster in higher scale environments (Various; @marseel, [cilium/cilium#40227](https://github.com/cilium/cilium/pull/40227))
* **📦 Image Size Reduction**: Docker image sizes are reduced by 32% on arm64 architecture images ([cilium/cilium#40005](https://github.com/cilium/cilium/pull/40005), @marseel)
* **⚡ Improved Policy Performance**: The DNS proxy can process large numbers of IPs faster, and the EndpointSelector match implementation has been optimized ([cilium/cilium#39340](https://github.com/cilium/cilium/pull/39340), @squeed; [cilium/cilium#40414](https://github.com/cilium/cilium/pull/40414), @marseel)
* **🪞 EndpointSlice Mirroring for Multi-Cluster Services**: Clustermesh mirrors EndpointSlice from the local cluster instead of copying the Service selectors when using the MCS-API controller ([cilium/cilium#38596](https://github.com/cilium/cilium/pull/38596), @MrFreezeex)
* **🌐 KVStoreMesh Optimization**: Cross-cluster state distribution is optimized by only synchronizing identities keyed by ID, not by value ([cilium/cilium#36471](https://github.com/cilium/cilium/pull/36471), @HadrienPatte)
* **🧠 Egress Gateway Processing**: Egress gateway policy processing is significantly improved when matching a large number of pods ([cilium/cilium#37714](https://github.com/cilium/cilium/pull/37714), @giorio94)
* **🗑️ Optimized Garbage Collection for Connection Tracking**: Cilium leverages batched iterators for CTMap GC ([cilium/cilium#36288](https://github.com/cilium/cilium/pull/36288), @tommyp1ckles)

## ⚙️ Operations

* **📈 API Server Connections at Scale**: Improve kube-apiserver connections behavior at scale through failover and setting better jitter and backoff configurations ([cilium/cilium#37601](https://github.com/cilium/cilium/pull/37601), @aditighag; [cilium/cilium#38031](https://github.com/cilium/cilium/pull/38031), @orange30; [cilium/cilium#36648](https://github.com/cilium/cilium/pull/36648), @wedaly)
* **🔄 ConfigMap Synchronization**: New option to automatically synchronize ConfigMap changes into the agent and report metrics for when the effective configuration is different from the desired configuration ([cilium/cilium#36510](https://github.com/cilium/cilium/pull/36510), @ovidiutirla)
* **🎓 CRD Promotion to Stable**: Promote **CiliumCIDRGroup**, **CiliumLoadBalancerIPPool** and all **BGP** CRDs to stable API ([cilium/cilium#38940](https://github.com/cilium/cilium/pull/38940), @christarazi; [cilium/cilium#39090](https://github.com/cilium/cilium/pull/39090), @pippolo84; [cilium/cilium#37765](https://github.com/cilium/cilium/pull/37765), @rastislavs)
* **⛔ Node Taints Handling**: The cilium-operator Deployment uses a new default set of taints which avoids deploying to a drained node ([cilium/cilium#40137](https://github.com/cilium/cilium/pull/40137), @Murat Parlakisik)
* **:wood: Migrate to Slog**: Cilium now uses slog as log library for all components ([cilium/cilium#39664](https://github.com/cilium/cilium/pull/39664), @aanm)
* **🔧 Cilium dependencies** were updated to Kubernetes v1.33, Envoy v1.34, LLVM 19.1, and CNI v1.1 ([cilium/cilium#39124](https://github.com/cilium/cilium/pull/39124), [cilium/cilium#40175](https://github.com/cilium/cilium/pull/40175), [cilium/cilium#39632](https://github.com/cilium/cilium/pull/39632), @sayboras; [cilium/cilium#38868](https://github.com/cilium/cilium/pull/38868), @squeed)
* **🐧 Minimum Linux Requirements**: The minimum kernel version for this release series is Linux v5.10 or similar, such as RHEL 8.6 ([cilium/cilium#38308](https://github.com/cilium/cilium/pull/38308), @julianwiedmann)

## 🕸️ Service Mesh & Gateway API

* **⛩️ Gateway API v1.3.0**: Gateway API support is bumped to v1.3.0 ([cilium/cilium#39590](https://github.com/cilium/cilium/pull/39590), @sayboras)
* **🔗 Improved GatewayClass Configuration**: The new CiliumGatewayClassConfig object adds service type validation allows the configuration of extra settings on a per-GatewayClass level: LoadBalancerSourceRangesPolicy, ParametersRef fields. This allows Cilium to reconcile multiple GatewayClasses with different configurations ([cilium/cilium#37792](https://github.com/cilium/cilium/pull/37792), [cilium/cilium#37402](https://github.com/cilium/cilium/pull/37402), [cilium/cilium#40138](https://github.com/cilium/cilium/pull/40138), @sayboras)
* **🚏 Multiple HTTPRoutes**: GAMMA reconciler now supports attaching multiple HTTPRoutes to the same Service ([cilium/cilium#39922](https://github.com/cilium/cilium/pull/39922), @youngnick)
* **🪄 Route Changes Reconciliation**: Reconcile Gateway API based on all changes to routes. This allows label updates to trigger reconciliation correctly, amongst other things ([cilium/cilium#37798](https://github.com/cilium/cilium/pull/37798), @sayboras)

## 🏷️ IP Address Management

* **☁️ AWS Prefix Delegation**: Prefix delegation on AWS bare metal instances is now supported natively in Cilium's AWS ENI IPAM mode ([cilium/cilium#39678](https://github.com/cilium/cilium/pull/39678), @41ks)
* **🏬 Multi-Pool IPAM with KVStore**: Add support for Multi-Pool IPAM in external KVstore mode ([cilium/cilium#39638](https://github.com/cilium/cilium/pull/39638), @pippolo84)
* **🔐 Multi-Pool IPAM with IPSec**: Add support for Multi-Pool IPAM mode with IPSec transparent encryption in tunnel routing mode ([cilium/cilium#39442](https://github.com/cilium/cilium/pull/39442), @pippolo84)
* **↪️ Multi-Pool Tunnel Routing**: Add support for tunnel routing in multi-pool IPAM mode ([cilium/cilium#38483](https://github.com/cilium/cilium/pull/38483), @pippolo84)

## 🛣️ BGP

* **📇 Route Aggregation**: Add support for BGP route aggregation in the control plane ([cilium/cilium#37275](https://github.com/cilium/cilium/pull/37275), @romanspb80)
* **🎯 Overlapping Selector Matches**: Support overlapping selector matches in **CiliumBGPAdvertisement** resources ([cilium/cilium#36414](https://github.com/cilium/cilium/pull/36414), @dswaffordcw)
* **🆔 New Router ID generation modes**: Generate router-id based on MAC addresses, or from an IP address pool ([cilium/cilium#36451](https://github.com/cilium/cilium/pull/36451), @yushoyamaguchi; [cilium/cilium#38300](https://github.com/cilium/cilium/pull/38300), @liyihuang)

## 🧑‍💻 Development Experience

* **🧪 Test attribution**: Identify owners of test in GitHub workflow results to make it easier to connect with other developers on tricky problems ([cilium/cilium#37027](https://github.com/cilium/cilium/pull/37027), @Joe Stringer)
* **🛏️ Policy REST API**: The Cilium policy API exposed over a local unix socket is deprecated. The other mechanisms to configure policy via Kubernetes resources or the local filesystem are preferred ([cilium/cilium#40212](https://github.com/cilium/cilium/pull/40212), @squeed)
* **🏗️ Feature Deprecation**: Deprecate underused features like Custom Calls, Recorder API and External Workloads ([cilium/cilium#38480](https://github.com/cilium/cilium/pull/38480), [cilium/cilium#39642](https://github.com/cilium/cilium/pull/39642), [cilium/cilium#37418](https://github.com/cilium/cilium/pull/37418), @brb)

## 🏢 Community

* **❤️ Production Case Studies**: Many end-users have stepped forward to tell their stories running Cilium in production. If your company wants to submit their case studies let us know. We would love to hear your feedback!
  * [ByteDance](https://www.youtube.com/watch?v=cKPW67D7X10), [Canopus Networks](https://www.youtube.com/watch?v=YXl9xuIxylY), [Corner Banca](https://www.youtube.com/watch?v=HVPKSefazl4), [DB Schenker](https://www.cncf.io/case-studies/db-schenker/), [eBay](https://www.youtube.com/watch?v=xEa4KFf5FzY), [ECCO](https://www.cncf.io/case-studies/ecco/), [G-Research](https://www.youtube.com/watch?v=kjSFN34dROQ), [Social Network Company](https://cilium.io/blog/2025/04/15/tetragon-social-networking-user-story/), and [Preferred Networks](https://www.youtube.com/watch?v=n7_I4zu6f_M)
* **🇬🇧 London Events**: The community gathered at [CiliumCon](https://events.linuxfoundation.org/kubecon-cloudnativecon-europe/co-located-events/ciliumcon/) and the [Cilium Developer Summit](https://github.com/cilium/dev-summits/tree/main/2025-EU) in London
* **🇺🇸 Atlanta Events**: Meet us at the upcoming [CiliumCon](https://events.linuxfoundation.org/kubecon-cloudnativecon-north-america/co-located-events/ciliumcon/) and Cilium Developers Summit in Atlanta, Georgia
* **👥 SIG Community Meetings**: [SIG Community](https://github.com/cilium/community/tree/main/sig-community) now meets every first and third Thursday to foster, grow, and sustain the Cilium open source community

## 📔 Full CHANGELOG
* Full CHANGELOG.md can be found [here](https://github.com/cilium/cilium/blob/v1.18.0/CHANGELOG.md).


And finally, we would like to thank you to all contributors of Cilium that helped directly and indirectly with the project. The success of Cilium could not happen without all of you. ❤️ :people_holding_hands:  ❤️
