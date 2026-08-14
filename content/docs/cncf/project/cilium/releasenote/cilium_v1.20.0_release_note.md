来源: https://github.com/cilium/cilium/releases/tag/v1.20.0

# cilium/cilium v1.20.0 Release Notes

Published at: 2026-07-29T15:00:29Z

🎉 **Release Announcement** 🎉: We are excited to announce the [Cilium 1.20.0](https://github.com/cilium/cilium/releases/tag/v1.20.0) release!

More than **2,660 new commits** have landed in this release, supported by a community of over **1,100 contributors** and more than **24,800 GitHub stars**! 🤩

⚠️ You may need to take action during the upgrade if you use legacy Mutual Authentication, Envoy Go extensions or Kafka-aware policies, the `cilium.io/v2alpha1` `CiliumNodeConfig` API, the libnetwork integration, or a custom CNI configuration. See the [Upgrade Guide](https://docs.cilium.io/en/v1.20/operations/upgrade/#upgrade-notes) for details.

The full changelog can be found [here](https://github.com/cilium/cilium/blob/v1.20/CHANGELOG.md).

Here are some of the highlights:

* ⛩️ **Gateway API**
    * 🚀 **Gateway API v1.6.1**: Cilium moves from Gateway API v1.4 to v1.6.1, bringing support for capabilities that graduated across both upstream releases. ([cilium/cilium#45251](https://github.com/cilium/cilium/pull/45251), @youngnick; [cilium/cilium#46827](https://github.com/cilium/cilium/pull/46827), [cilium/cilium#47274](https://github.com/cilium/cilium/pull/47274), @arybolovlev)
    * 👥 **Delegate Gateway Listeners**: ListenerSets let application teams attach and manage their own listeners while the platform team retains ownership of the shared Gateway. ([cilium/cilium#46303](https://github.com/cilium/cilium/pull/46303), [cilium/cilium#46785](https://github.com/cilium/cilium/pull/46785), @asauber)
    * 🔏 **Encrypt Traffic to Backends**: Gateway API `BackendTLSPolicy` support lets operators configure TLS and backend certificate validation for traffic between the gateway and application services. ([cilium/cilium#43045](https://github.com/cilium/cilium/pull/43045), @youngnick)
    * 🔀 **TCPRoute and UDPRoute**: Databases, DNS servers, game servers and other non-HTTP services can now be managed through the same Gateway API model as HTTP and gRPC traffic. ([cilium/cilium#46184](https://github.com/cilium/cilium/pull/46184), [cilium/cilium#46970](https://github.com/cilium/cilium/pull/46970), @eminaktas; [cilium/cilium#47381](https://github.com/cilium/cilium/pull/47381), @arybolovlev)
    * 🔐 **External Authorization**: HTTPRoute requests can now be authenticated and authorized through an external service before they reach the application, using the Gateway API `ExternalAuth` filter from GEP-1494. ([cilium/cilium#45739](https://github.com/cilium/cilium/pull/45739), @gauteoh)
    * 🎛️ **More HTTP Traffic Controls**: HTTPRoutes gain native CORS support and additional 303, 307 and 308 redirect codes. `CiliumGatewayClassConfig` can also overwrite, append or preserve the HTTP Server response header. ([cilium/cilium#45924](https://github.com/cilium/cilium/pull/45924), @arybolovlev; [cilium/cilium#47232](https://github.com/cilium/cilium/pull/47232), @youngnick; [cilium/cilium#46764](https://github.com/cilium/cilium/pull/46764), @xtineskim)
    * ↔️ **Configurable gRPC-Web Translation**: `CiliumGatewayClassConfig` can disable automatic gRPC-web translation for Gateways that need to pass the original traffic through unchanged. Translation remains enabled by default. ([cilium/cilium#45984](https://github.com/cilium/cilium/pull/45984), @thorn3r)


* 🚠 **Networking**
    * 🔌 **Extensible Datapath**: Datapath plugins let cloud providers extend or instrument Cilium's eBPF datapath with independently versioned programs, without maintaining a Cilium fork. ([cilium/cilium#45028](https://github.com/cilium/cilium/pull/45028), [cilium/cilium#45429](https://github.com/cilium/cilium/pull/45429), [cilium/cilium#45558](https://github.com/cilium/cilium/pull/45558), [cilium/cilium#46673](https://github.com/cilium/cilium/pull/46673), [cilium/cilium#46872](https://github.com/cilium/cilium/pull/46872), @jrife)
    * 🚄 **Automatic Netkit Selection**: Set `bpf.datapathMode=auto` to use netkit automatically on supported kernels and fall back to veth on other nodes. The default remains veth. ([cilium/cilium#43062](https://github.com/cilium/cilium/pull/43062), @ajmmm)
    * 📤 **Egress Gateway Improvements**: Dual-stack clusters can configure an explicit IPv6 egress IP. IPv4 Egress Gateway traffic also strictly honors the interface selected by the policy, matching the existing IPv6 behavior. ([cilium/cilium#44524](https://github.com/cilium/cilium/pull/44524), @yykkibbb; [cilium/cilium#45833](https://github.com/cilium/cilium/pull/45833), @julianwiedmann)
    * 🔍 **Better BGP Tooling and Reconciliation**: New Hive shell commands expose route policies and clearer peer output formats. The control plane moves to GoBGP v4.6.1 and optimizes route-policy reconciliation. ([cilium/cilium#45628](https://github.com/cilium/cilium/pull/45628), [cilium/cilium#45534](https://github.com/cilium/cilium/pull/45534), @martonra; [cilium/cilium#45952](https://github.com/cilium/cilium/pull/45952), [cilium/cilium#46928](https://github.com/cilium/cilium/pull/46928), @rastislavs)


* 🌐 **IPAM and IP Selection**
    * ☁️ **IPv6 for AWS ENI IPAM (Beta)**: Cilium can now allocate IPv6 prefixes to pods through AWS ENI IPAM, building on the move to the multi-pool allocator. ([cilium/cilium#46756](https://github.com/cilium/cilium/pull/46756), [cilium/cilium#46619](https://github.com/cilium/cilium/pull/46619), @41ks; [cilium/cilium#45154](https://github.com/cilium/cilium/pull/45154), [cilium/cilium#45958](https://github.com/cilium/cilium/pull/45958), @HadrienPatte)
    * 🔄 **Migrate to Multi-Pool IPAM**: Existing clusters can move from cluster-pool IPAM to multi-pool IPAM without being rebuilt. ([cilium/cilium#46104](https://github.com/cilium/cilium/pull/46104), @pippolo84)
    * 🧭 **Dynamic NodePort Source Addresses**: NodePort can use the kernel FIB to select the preferred source address dynamically before SNATing north-south traffic, on supported kernels. ([cilium/cilium#44625](https://github.com/cilium/cilium/pull/44625), @ldelossa)
    * 🔵 **Prefer IPv6 Consistently**: The new top-level `preferIpv6` option applies to both Cilium health probes and Hubble peer communication when IPv4 and IPv6 are available. ([cilium/cilium#45447](https://github.com/cilium/cilium/pull/45447), @tibrezus)


* 🕸️ **Services and Cluster Mesh**
    * 📍 **Topology-Aware Service Traffic**: Cilium's service load balancer now supports the Kubernetes `PreferSameZone` and `PreferSameNode` traffic distribution hints. ([cilium/cilium#44771](https://github.com/cilium/cilium/pull/44771), @raphink)
    * ⚖️ **Weighted Maglev Backends**: Maglev now honors the `service.cilium.io/weight` annotation on EndpointSlices. A weight of zero drains new connections while allowing existing connections to continue. ([cilium/cilium#46061](https://github.com/cilium/cilium/pull/46061), @mhofstetter)
    * 🌉 **More Load-Balancing Options with VXLAN**: Clusters using VXLAN can use per-Service load-balancing mode annotations, including compatible DSR configurations such as IPIP dispatch. ([cilium/cilium#45600](https://github.com/cilium/cilium/pull/45600), @brb)
    * 🤖 **Stable MCS API Support**: Cilium's implementation of the Kubernetes Multi-Cluster Services API is now stable and recommended for portable service discovery through ClusterMesh. ([cilium/cilium#45404](https://github.com/cilium/cilium/pull/45404), [cilium/cilium#46953](https://github.com/cilium/cilium/pull/46953), @MrFreezeex)


* 🔒 **Encryption and Network Policy**
    * 🚇 **Improved Ztunnel Identity Management**: The ztunnel path now supports either an internal certificate authority or SPIRE-issued workload identities, alongside new Prometheus metrics for enrollment and connection health. It transparently encrypts enrolled pod-to-pod connections, including traffic between pods on the same node. ([cilium/cilium#43763](https://github.com/cilium/cilium/pull/43763), [cilium/cilium#44275](https://github.com/cilium/cilium/pull/44275), [cilium/cilium#44136](https://github.com/cilium/cilium/pull/44136), [cilium/cilium#45861](https://github.com/cilium/cilium/pull/45861), @nddq; [cilium/cilium#45096](https://github.com/cilium/cilium/pull/45096), @gokulMSFT)
    * 🛡️ **Kubernetes ClusterNetworkPolicy (KCNP)**: Cilium now supports the upstream, cluster-scoped policy API, including Admin and Baseline policy tiers alongside namespaced Kubernetes NetworkPolicy. ([cilium/cilium#42338](https://github.com/cilium/cilium/pull/42338), @TheBeeZee; [cilium/cilium#46253](https://github.com/cilium/cilium/pull/46253), @aanm)
    * ⛔ **Friendlier IPv6 Policy Denials**: Cilium can return ICMPv6 Destination Unreachable responses when network policy denies IPv6 egress traffic, matching the IPv4 capability introduced in Cilium 1.19. ([cilium/cilium#44234](https://github.com/cilium/cilium/pull/44234), @Andreagit97)
    * 🌐 **Select the Entire Cluster Mesh**: The new `cluster-mesh` policy entity selects every endpoint across a mesh, making cross-cluster security policies easier to express. ([cilium/cilium#46813](https://github.com/cilium/cilium/pull/46813), @squeed)
    * ☁️ **Standardize AWS VPC Group Policies**: Policies that reference AWS VPC groups are now transformed into `CiliumCIDRGroup` resources, bringing external IP groups into the standard Cilium policy model. ([cilium/cilium#44704](https://github.com/cilium/cilium/pull/44704), @squeed)
    * 🛂 **Per-Pod Source IP Verification Control**: Trusted workloads that need to send traffic with non-local source addresses can disable source IP verification through a pod annotation, guarded by a namespace-level opt-in. ([cilium/cilium#43505](https://github.com/cilium/cilium/pull/43505), @zbb88888)


* ⚙️ **Day 2 Operations and Observability**
    * 🔧 **Detect Configuration Drift**: Cilium can expose how many ConfigMap settings an agent has not yet applied, making it easier to identify when a restart is required after a configuration change. ([cilium/cilium#44703](https://github.com/cilium/cilium/pull/44703), @PhilipSchmid)
    * ⏱️ **Understand Agent Start-Up Time**: New Hive lifecycle and Kubernetes resource-sync metrics show how long individual resources and components take to initialize. ([cilium/cilium#44802](https://github.com/cilium/cilium/pull/44802), [cilium/cilium#44639](https://github.com/cilium/cilium/pull/44639), @ILL1A)
    * 🛰️ **Correlate More Hubble Verdicts with Policies**: Hubble can now identify the policy responsible for audit verdicts. ([cilium/cilium#45373](https://github.com/cilium/cilium/pull/45373), @Rajneesh180)
    * 📊 **Standalone DNS Proxy Metrics**: The Standalone DNS Proxy now exports DNS metrics back through Cilium, improving visibility when DNS policy processing runs outside the agent. ([cilium/cilium#45222](https://github.com/cilium/cilium/pull/45222), [cilium/cilium#44601](https://github.com/cilium/cilium/pull/44601), @vipul-21)


* 🌅 **Performance and Scale**
    * 💾 **Aggregated Load-Balancer State**: Cilium's internal backend representation has been flattened to efficiently support thousands of Services that share the same backends. ([cilium/cilium#44511](https://github.com/cilium/cilium/pull/44511), @joamaki)
    * 📡 **More Efficient Envoy Updates**: New ADS and Delta xDS modes provide consistent or incremental delivery of Envoy resources, reducing CPU usage and policy update latency. ([cilium/cilium#43887](https://github.com/cilium/cilium/pull/43887), @nezdolik; [cilium/cilium#45288](https://github.com/cilium/cilium/pull/45288), @jrajahalme)
    * 🗂️ **Optimized BPF Policy Map Encoding**: Semantic wildcard identities for remote-node and world reduce BPF policy-map pressure, particularly in larger clusters. ([cilium/cilium#46438](https://github.com/cilium/cilium/pull/46438), @squeed)
    * 📦 **Smaller CNI Binary**: The `cilium-cni` binary has been reduced from roughly 77 MB to 16 MB, shrinking both the Cilium image and its footprint on every node. ([cilium/cilium#45845](https://github.com/cilium/cilium/pull/45845), @giorio94)
    * 🛠️ **Updated Dependencies and Foundations**: Cilium 1.20 updates to Kubernetes v1.36, Envoy v1.37.x, Gateway API v1.6.1, GoBGP v4.6.1 and MCS API v0.5.2. Runtime and builder images now use Ubuntu 26.04, and the default CNI configuration version moves from 0.3.1 to 1.0.0. ([cilium/cilium#45499](https://github.com/cilium/cilium/pull/45499), [cilium/cilium#47215](https://github.com/cilium/cilium/pull/47215), @HadrienPatte; [cilium/cilium#45851](https://github.com/cilium/cilium/pull/45851), @sayboras; [cilium/cilium#47274](https://github.com/cilium/cilium/pull/47274), @arybolovlev; [cilium/cilium#45952](https://github.com/cilium/cilium/pull/45952), @rastislavs; [cilium/cilium#47166](https://github.com/cilium/cilium/pull/47166), @MrFreezeex; [cilium/cilium#46971](https://github.com/cilium/cilium/pull/46971), @gandro)


* 🏠 **Community**
    * ❤️ **Production Case Studies**: Many end-users have told their stories running Cilium in production. Read and watch more from: [Asana](https://www.youtube.com/watch?v=mxjiSCnrb3c), [Etraveli](https://www.youtube.com/watch?v=KWS-NaZd62M&list=PLDg_GiBbAx-mSQHa1y9Z9sjBYUmG2FBCZ&index=7), [Michelin](https://www.cncf.io/case-studies/michelin-2/), [OpenAI](https://isovalent.com/blog/post/openai-isovalent-networking-kubernetes-case-study/), [Suse](https://www.youtube.com/watch?v=bgCg1tS72ME&list=PLDg_GiBbAx-mSQHa1y9Z9sjBYUmG2FBCZ&index=8), [Telefónica's acens](https://blogs.cisco.com/sp/telefonicas-acens-and-cisco-driving-the-next-generation-of-cloud-native-services-with-isovalent), and [Zynga](https://www.cncf.io/case-studies/zynga/). If your company wants to submit their case studies let us know. We would love to hear your feedback!
    * 🇳🇱 **Amsterdam Events**: The community gathered at [CiliumCon](https://events.linuxfoundation.org/kubecon-cloudnativecon-europe/co-located-events/ciliumcon/) and [Cilium Developer Summit](https://github.com/cilium/dev-summits/tree/main/2026-EU) in Amsterdam. [Watch the talks](https://www.youtube.com/playlist?list=PLDg_GiBbAx-mSQHa1y9Z9sjBYUmG2FBCZ) from CiliumCon.
    * 🇺🇸 **Salt Lake City Events**: Meet us at the upcoming [CiliumCon](https://events.linuxfoundation.org/kubecon-cloudnativecon-north-america/co-located-events/ciliumcon/) and Cilium Developer Summit at KubeCon + CloudNativeCon North America in Salt Lake City, November 9-12.
    * 🤖 **Generative AI Policy**: The Cilium community adopted a [Generative AI Policy](https://github.com/cilium/community/blob/main/AI-POLICY.md) that encourages community members to connect and communicate with one another without the use of AI, while recognizing that different people work best with their own tools of choice.
    * 📚 **Cilium Books**: Two new books landed for readers at every level — _[Cilium: Up and Running](https://isovalent.com/books/cilium-up-and-running/)_ (O'Reilly), a practitioner's deep dive and _[Buzzing Beyond Clouds: The Illustrated Children's Guide to Cilium](https://isovalent.com/books/children-guide-to-cilium/)_, the follow-up to the eBPF children's guide.

❤️ **Thank You**: Cilium 1.20 was made possible by contributors, reviewers and maintainers from across the community, including engineers from Datadog, Google, Microsoft and many other organizations.

To keep up to date with all the latest Cilium releases, join #release 🎉

## Docker Manifests

### cilium

`quay.io/cilium/cilium:v1.20.0@sha256:383968cd5e8873f7976fa76aa6196045643558f4cc9518a207b9335cb24a0e93`
`quay.io/cilium/cilium:stable@sha256:383968cd5e8873f7976fa76aa6196045643558f4cc9518a207b9335cb24a0e93`

### clustermesh-apiserver

`quay.io/cilium/clustermesh-apiserver:v1.20.0@sha256:c791d0c334d4515d40041b2660d50a1b94b0179ef1d3c120bd350aebc9115e92`
`quay.io/cilium/clustermesh-apiserver:stable@sha256:c791d0c334d4515d40041b2660d50a1b94b0179ef1d3c120bd350aebc9115e92`

### hubble-relay

`quay.io/cilium/hubble-relay:v1.20.0@sha256:2ca16981c7eb98df0ba9c9d18896bb9ca628b5cbd40dc9801339f4741f91ee94`
`quay.io/cilium/hubble-relay:stable@sha256:2ca16981c7eb98df0ba9c9d18896bb9ca628b5cbd40dc9801339f4741f91ee94`

### operator-alibabacloud

`quay.io/cilium/operator-alibabacloud:v1.20.0@sha256:52535dba067abf5b1cce2a666ee3f9430a1682ade3bf11db5f118436e84ad2e9`
`quay.io/cilium/operator-alibabacloud:stable@sha256:52535dba067abf5b1cce2a666ee3f9430a1682ade3bf11db5f118436e84ad2e9`

### operator-aws

`quay.io/cilium/operator-aws:v1.20.0@sha256:a0e50fa611fa3e2e8b1c9521a3e813576034a0b3d626e9c128ac01f8f7dfd0fa`
`quay.io/cilium/operator-aws:stable@sha256:a0e50fa611fa3e2e8b1c9521a3e813576034a0b3d626e9c128ac01f8f7dfd0fa`

### operator-azure

`quay.io/cilium/operator-azure:v1.20.0@sha256:4506f8d0c9f2dd187313f71b37a789986c1c1699f59c52973941df9eb5ccae0c`
`quay.io/cilium/operator-azure:stable@sha256:4506f8d0c9f2dd187313f71b37a789986c1c1699f59c52973941df9eb5ccae0c`

### operator-generic

`quay.io/cilium/operator-generic:v1.20.0@sha256:80744a8cc7c91c2f9e6347629406844eb35d79b30a732c6d41c15b17232a74f3`
`quay.io/cilium/operator-generic:stable@sha256:80744a8cc7c91c2f9e6347629406844eb35d79b30a732c6d41c15b17232a74f3`

### operator

`quay.io/cilium/operator:v1.20.0@sha256:5dc67f7a0f1ad0f51813563366885cd8d4ee255cc49a65be5cf45d5e9810d58c`
`quay.io/cilium/operator:stable@sha256:5dc67f7a0f1ad0f51813563366885cd8d4ee255cc49a65be5cf45d5e9810d58c`

