来源: https://github.com/volcano-sh/volcano/releases/tag/v1.12.0

# volcano-sh/volcano v1.12.0 Release Notes

Published at: 2025-05-31T14:46:56Z

# What's New

**Welcome to the v1.12.0 release of Volcano! 🚀 🎉 📣
In this release, we have brought a bunch of significant enhancements that have long-awaited by community users.**

## Network Topology Aware Scheduling: Alpha Release
Volcano's network topology-aware scheduling, initially introduced as a preview in v1.11, has now reached its Alpha release in v1.12. This feature aims to optimize the deployment of AI tasks in large-scale training and inference scenarios, such as model parallel training and Leader-Worker inference. It achieves this by scheduling tasks within the same network topology performance domain, which reduces cross-switch communication and significantly enhances task efficiency. Volcano leverages the HyperNode CRD to abstract and represent heterogeneous hardware network topologies, supporting a hierarchical structure for simplified management.

Key features integrated in v1.12 include:

- **HyperNode Auto-Discovery:** Volcano now offers automatic discovery of cluster network topologies. Users can configure the discovery type, and the system will automatically create and maintain hierarchical HyperNodes that reflect the actual cluster network topology. Currently, this supports InfiniBand (IB) networks by acquiring topology information via the UFM (Unified Fabric Manager) interface and automatically updating HyperNodes. Future plans include support for more network protocols like RoCE.

- **Prioritized HyperNode Selection:**

   This release introduces a scoring strategy based on both node-level and HyperNode-level evaluations, which are accumulated to determine the final HyperNode score.

  - **Node-level:** It is recommended to configure the BinPack plugin to prioritize filling HyperNodes, thereby reducing resource fragmentation.
  - **HyperNode-level:** Lower-level HyperNodes are preferred for better performance due to fewer cross-switch communications. For HyperNodes at the same level, those containing more tasks receive higher scores to reduce HyperNode-level resource fragmentation.

- **Support for Label Selector Node Matching:**

   HyperNode leaf nodes are associated with physical nodes in the cluster, supporting three matching strategies:

  - **Exact Match:** Direct matching of node names.
  - **Regex Match:** Matching node names using regular expressions.
  - **Label Match:** Matching nodes via standard Label Selectors.

**Related Documentation:**

- [Network Topology Aware Scheduling Introduction and Usage](https://volcano.sh/en/docs/network_topology_aware_scheduling/)
- [Network Topology Aware Scheduling Design Document](https://github.com/volcano-sh/volcano/blob/master/docs/design/Network%20Topology%20Aware%20Scheduling.md)
- [Network Topology Auto Discovery Design Document](https://github.com/volcano-sh/volcano/blob/master/docs/design/hyperNode-auto-discovery.md)
- [Network Topology Auto Discovery Usage Document](https://github.com/volcano-sh/volcano/blob/master/docs/user-guide/how_to_use_hypernode_auto_discovery.md)

Related PRs: (https://github.com/volcano-sh/volcano/pull/3874, https://github.com/volcano-sh/volcano/pull/3894, https://github.com/volcano-sh/volcano/pull/3969, https://github.com/volcano-sh/volcano/pull/3971, https://github.com/volcano-sh/volcano/pull/4068, https://github.com/volcano-sh/volcano/pull/4213, https://github.com/volcano-sh/volcano/pull/3897, https://github.com/volcano-sh/volcano/pull/3887, @[ecosysbin](https://github.com/ecosysbin), @[weapons97](https://github.com/weapons97), @[Xu-Wentao](https://github.com/Xu-Wentao),@[penggu](https://github.com/penggu) @[JesseStutler](https://github.com/JesseStutler), [@Monokaix](https://github.com/Monokaix))

## Dynamic MIG Slicing for GPU Virtualization

Volcano's GPU virtualization feature now supports requesting partial GPU resources by memory and compute capacity. This, combined with Device Plugin integration, achieves hardware isolation and improves GPU utilization.

Traditional GPU virtualization restricts GPU usage by intercepting CUDA APIs (based on HAMI-Core software solutions). NVIDIA Ampere architecture introduced MIG (Multi-Instance GPU) technology, allowing a single physical GPU to be partitioned into multiple independent instances. However, general MIG solutions often pre-fix instance sizes, leading to resource waste and insufficient flexibility.

Volcano v1.12 provides dynamic MIG slicing and scheduling capabilities. It can select appropriate MIG instance sizes in real-time based on the user's requested GPU usage and employs a Best-Fit algorithm to minimize resource waste. It also supports GPU scoring strategies like BinPack and Spread to reduce resource fragmentation and enhance GPU utilization. Users can request resources using the unified `volcano.sh/vgpu-number`, `volcano.sh/vgpu-cores`, and `volcano.sh/vgpu-memory` APIs without needing to concern themselves with the underlying implementation.

**Related Documentation:**

- [Dynamic MIG Design Document](https://github.com/volcano-sh/volcano/blob/master/docs/design/dynamic-mig.md)
- [Dynamic MIG Usage Document](https://volcano.sh/en/docs/gpu_virtualization/)

Related PRs: (https://github.com/volcano-sh/volcano/pull/4290, https://github.com/volcano-sh/volcano/pull/3953, @[sailorvii](https://github.com/sailorvii), @[archlitchi](https://github.com/archlitchi))

## Dynamic Resource Allocation (DRA) Support

Kubernetes DRA (Dynamic Resource Allocation) is a built-in Kubernetes feature designed to provide a more flexible and powerful way to manage heterogeneous hardware resources in a cluster, such as GPUs, FPGAs, and high-performance network cards. It addresses the limitations of traditional Device Plugins in certain advanced scenarios, enabling device vendors and platform administrators to better declare, allocate, and share these hardware resources with Pods and containers.

Volcano v1.12 adds support for DRA. This feature allows the cluster to dynamically allocate and manage external resources, enhancing Volcano's integration with the Kubernetes ecosystem and its resource management flexibility.

**Related Documentation:**
[Unified Scheduling with DRA](https://volcano.sh/en/docs/unified_scheduling/#2-1-2-enable-dra-dynamic-resource-allocation-in-volcano)

Related PR: (https://github.com/volcano-sh/volcano/pull/3799, @[JesseStutler](https://github.com/JesseStutler))

## Volcano Global Supports Queue Capacity Management

Queues are a fundamental concept in Volcano. To enable tenant quota management in multi-cluster and multi-tenant environments, Volcano v1.12 introduces enhanced **global queue capacity management**. Users can now centrally limit tenant resource usage across multiple clusters. The configuration remains consistent with single-cluster setups: tenant quotas are defined by setting the `capability` field within the queue configuration.

Related PR: https://github.com/volcano-sh/volcano-global/pull/16 (@[tanberBro](https://github.com/tanberBro))

## Security Enhancements

The Volcano community consistently focuses on security. In v1.12, beyond fine-grained control over sensitive permissions like ClusterRole, we've addressed and fixed the following potential security risks:

* **HTTP Server Timeout Settings:** Metric and Healthz endpoints for all Volcano components have been configured with server-side ReadHeader, Read, and Write timeouts. This prevents prolonged resource occupation.
    * PR: https://github.com/volcano-sh/volcano/pull/4208
* **Warning Logs for Skipping SSL Certificate Verification:** When client requests set `insecureSkipVerify` to `true`, a warning log is now added. We strongly advise enabling SSL certificate verification in production environments.
    * PR: https://github.com/volcano-sh/volcano/pull/4211
* **Volcano Scheduler pprof Endpoint Disabled by Default:** To prevent the disclosure of sensitive program information, the Profiling data port (used for troubleshooting) is now disabled by default.
    * PR: https://github.com/volcano-sh/volcano/pull/4173
* **Removal of Unnecessary File Permissions:** Unnecessary execution permissions have been removed from Go source files to maintain minimal file permissions.
    * PR: https://github.com/volcano-sh/volcano/pull/4171
* **Security Context and Non-Root Execution for Containers:** All Volcano components now run with non-root privileges. We've added `seccompProfile`, `SELinuxOptions`, and set `allowPrivilegeEscalation` to `false` to prevent container privilege escalation. Additionally, only necessary Linux Capabilities are retained, comprehensively limiting container permissions.
    * PR: https://github.com/volcano-sh/volcano/pull/4207
* **HTTP Request Response Body Size Limit:** For HTTP requests sent by the Extender Plugin and Elastic Search Service, their response body size is now limited. This prevents excessive resource consumption that could lead to OOM (Out Of Memory) issues.
    * Disclosure: https://github.com/volcano-sh/volcano/security/advisories/GHSA-hg79-fw4p-25p8

## Performance Improvements in Large-Scale Scenarios

Volcano continuously optimizes performance. The new version, without affecting functionality, has by default removed and disabled some unnecessary Webhooks, improving performance in large-scale batch creation scenarios:

- **PodGroup Mutating Webhook Disabled by Default:** When creating a PodGroup without specifying a queue, the system can now read from the Namespace to populate it. Since this scenario is uncommon, this Webhook is disabled by default. Users can enable it as needed.
- **Queue Status Validation Moved from Pod to PodGroup:** When a queue is closed, task submission is disallowed. The original validation logic was performed during Pod creation. As Volcano's basic scheduling unit is PodGroup, migrating the validation to PodGroup creation is more logical. Since the number of PodGroups is less than Pods, this reduces Webhook calls, improving performance. For scenarios where a queue is closed after PodGroup creation, Volcano Scheduler will still check the queue status during Pod scheduling.

Related PRs: (https://github.com/volcano-sh/volcano/pull/4128, https://github.com/volcano-sh/volcano/pull/4132, @Monokaix)

## Gang Scheduling Support for Multiple Workload Types

Gang scheduling is a core capability of Volcano. For Volcano Job and PodGroup objects, users can directly set `minMember` to define the minimum number of replicas required. For other workload types like Deployment, StatefulSet, and Job, `minMember` was previously defaulted to 1.

In the new version, users can specify the desired minimum number of replicas by setting the annotation `scheduling.volcano.sh/group-min-member` on the workload. For example, to set `minMember` for a Deployment:

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: volcano-group-deployment
  annotations:
    # Set min member=10
    scheduling.volcano.sh/group-min-member: "10"
```

This setting means that when using Volcano for scheduling, either all 10 replicas are successfully scheduled, or none are, thereby enabling Gang scheduling for various workload types.

**Related Documentation:**

[Multiple Workload Types Support with Gang](https://volcano.sh/en/docs/tutorials/#deploy-standard-kubernetes-workloads-deployment-statefulset-etc)

Related PR: (https://github.com/volcano-sh/volcano/pull/4000, @[sceneryback](https://github.com/sceneryback))

## Job Flow Enhancements

Job Flow is a volcano's lightweight workflow orchestration framework for Volcano Jobs, received the following enhancements in v1.12:

- **New Monitoring Metrics:** Added support for measuring the number of successful and failed Job Flows.
- **DAG Validation:** Introduced functionality to validate the legality of Job Flow DAG (Directed Acyclic Graph) structures.
- **Status Synchronization Fix:** Addressed issues with inaccurate Job Flow status synchronization.

Related PRs: (https://github.com/volcano-sh/volcano/pull/4169, https://github.com/volcano-sh/volcano/pull/4090, https://github.com/volcano-sh/volcano/pull/4135, https://github.com/volcano-sh/volcano/pull/4169, @[dongjiang1989](https://github.com/dongjiang1989))

## Finer-Grained Permission Control in Multi-Tenant Scenarios

Volcano natively supports multi-tenant environments and emphasizes permission control in such scenarios to achieve permission isolation for different users. In the new version, Volcano enhances permission control for Volcano Job by adding read-only and read-write ClusterRoles. Users can now assign different read and write permissions to various tenants as needed to achieve permission isolation.

Related PR: (https://github.com/volcano-sh/volcano/pull/4174, @[Hcryw](https://github.com/Hcryw))

## Kubernetes 1.32 Support

Volcano versions closely track Kubernetes community releases. v1.12 supports the latest Kubernetes v1.32, with comprehensive UT and E2E test cases ensuring functionality and reliability.

To contribute to Volcano's adaptation work for new Kubernetes versions, please refer to: [adapt-k8s-todo](https://github.com/volcano-sh/volcano/blob/master/docs/en/develop/adapt-k8s-todo.md).

Related PR: (https://github.com/volcano-sh/volcano/pull/4099, @guoqinwill, @[danish9039](https://github.com/danish9039)) 

## Enhanced Queue Monitoring Metrics

Volcano queues now include several new key resource metrics. Support has been added for monitoring and visualizing CPU, Memory, and extended resource metrics such as request, allocated, deserved, capacity, and real_capacity, providing a detailed view of the queue's critical resource status.

Related PR: ([https://github.com/volcano-sh/volcano/pull/3937](https://github.com/volcano-sh/volcano/pull/3937), @[zedongh](https://github.com/zedongh))

## Fuzz Testing Support

Fuzz testing (or fuzzing) is an automated software testing technique that involves injecting large amounts of random, invalid, or abnormal input data into a target program and monitoring its behavior to discover potential defects.

Volcano introduces a fuzz testing framework in this new version, performing fuzz testing on key function units and continuously testing using Google's open-source OSS-Fuzz framework. This aims to proactively identify potential vulnerabilities and defects, enhancing Volcano's security and robustness.

Related PR: (https://github.com/volcano-sh/volcano/pull/4205, @[AdamKorcz](https://github.com/AdamKorcz)) 

## Stability Enhancements

Multiple stability issues have been resolved in the new version, including:

- Panic issues caused by unreasonable settings of queue capacity `capability`, `deserved`, and `guaranteed`.
- Hierarchical queue validation failures.
- Queue Update Concurrency Issues.
- Meaningless PodGroup refresh issues.
- StatefulSet replicas being 0 but still occupying queue resources.

(https://github.com/volcano-sh/volcano/pull/4273, https://github.com/volcano-sh/volcano/pull/4272, https://github.com/volcano-sh/volcano/pull/4179, https://github.com/volcano-sh/volcano/pull/4141, https://github.com/volcano-sh/volcano/pull/4033, https://github.com/volcano-sh/volcano/pull/4012, https://github.com/volcano-sh/volcano/pull/3603, @[halcyon-r](https://github.com/halcyon-r), @[guoqinwill](https://github.com/guoqinwill), @[JackyTYang](https://github.com/JackyTYang), @[JesseStutler](https://github.com/JesseStutler), @[zhutong196](https://github.com/zhutong196), @[Wang-Kai](https://github.com/Wang-Kai), @[HalfBuddhist](https://github.com/HalfBuddhist))

## Important Notes Before Upgrading

Before upgrading to Volcano v1.12, please note the following changes:

- **PodGroup Mutating Webhook Disabled by Default:** In v1.12, the PodGroup Mutating Webhook is disabled by default. This means that when creating a PodGroup without specifying a queue, the system will attempt to read queue information from its associated Namespace for population. This scenario has low usage; if your specific workflows rely on this behavior, ensure to manually enable this Webhook after upgrading.

- **Queue Status Validation Migration and Behavior Change:** The queue status validation logic for task submission has been migrated from the Pod creation phase to the PodGroup creation phase. This means that when a queue is closed, the system will block task submission at the time of PodGroup creation. However, if independent Pods (not submitted via PodGroup) continue to be submitted to a queue after it is closed, these Pods can be submitted successfully, but the Volcano Scheduler will not schedule them.

- **Volcano Scheduler pprof Endpoint Disabled by Default**
  For security enhancement, the pprof endpoint for the Volcano Scheduler is now disabled by default in this release. If you require this endpoint for debugging or monitoring, you will need to explicitly enable it post-upgrade. This can be achieved by:

  - If you are using helm, specifying `custom.scheduler_pprof_enable=true` during Helm installation or upgrade.
  - OR, manually setting the command-line argument `--enable-pprof=true` when starting the Volcano Scheduler.

  Please be aware of the security implications before enabling this endpoint in production environments.

## Overall Changes
* Extend the default timeout for stale by @wangyang0616 in https://github.com/volcano-sh/volcano/pull/2778
* Dynamic-mig for volcano-vgpu design by @archlitchi in https://github.com/volcano-sh/volcano/pull/3906
* Add JesseStutler as reviewer by @JesseStutler in https://github.com/volcano-sh/volcano/pull/4002
* Fix typos by @co63oc in https://github.com/volcano-sh/volcano/pull/4008
* [DOCS] improve readme, visit to should be visit by @mahdikhashan in https://github.com/volcano-sh/volcano/pull/4016
* skip the jobs that have no tasks during the close session step in gang plugin by @Wang-Kai in https://github.com/volcano-sh/volcano/pull/4012
* add helm values scheduler_plugins_dir by @weapons97 in https://github.com/volcano-sh/volcano/pull/3988
* Fix: fix an issue where the wrong action name could not be ignored by @xieyanke in https://github.com/volcano-sh/volcano/pull/3994
* scheduler: correct mismatched error message by @SataQiu in https://github.com/volcano-sh/volcano/pull/4013
* [docs]: fix passive tone by @mahdikhashan in https://github.com/volcano-sh/volcano/pull/4036
* Fix typos by @co63oc in https://github.com/volcano-sh/volcano/pull/4035
* Update uninstall-volcano.sh by @mahmut-Abi in https://github.com/volcano-sh/volcano/pull/3938
* typo: change `configure` to `configuration` by @mahdikhashan in https://github.com/volcano-sh/volcano/pull/4024
* fix: the problem that the pending tasks cannot be scheduled during the backfill action by @hansongChina in https://github.com/volcano-sh/volcano/pull/4029
* update document for volcano-vgpu feature by @archlitchi in https://github.com/volcano-sh/volcano/pull/4034
* Improve overused messaging by @sfc-gh-raravena in https://github.com/volcano-sh/volcano/pull/4053
* Refactor: move DeviceName const into its own package by @SataQiu in https://github.com/volcano-sh/volcano/pull/4045
* change to action cache v4 by @Monokaix in https://github.com/volcano-sh/volcano/pull/4059
* scheduler: fix a bug where the job NodesFitErrors field is not updated when ssn.Allocate failed by @SataQiu in https://github.com/volcano-sh/volcano/pull/4009
* refactor: Optimized code by @feyounger in https://github.com/volcano-sh/volcano/pull/4058
* fix typo in comment by @mahdikhashan in https://github.com/volcano-sh/volcano/pull/4020
* Fix inaccurate statements in node-lock.md by @SataQiu in https://github.com/volcano-sh/volcano/pull/4060
* [bugfix]fix creating a hierarchical sub-queue will be rejected by @zhutong196 in https://github.com/volcano-sh/volcano/pull/4033
* [docs] improve the `development.md` document by @mahdikhashan in https://github.com/volcano-sh/volcano/pull/4018
* fix custom plugin doc and build script by @Monokaix in https://github.com/volcano-sh/volcano/pull/4042
* Using TypedRateLimitingInterface instead of deprecated RateLimitingInterface by @SataQiu in https://github.com/volcano-sh/volcano/pull/4063
* delete label tempalte by @hwdef in https://github.com/volcano-sh/volcano/pull/4067
* Optimized code by @feyounger in https://github.com/volcano-sh/volcano/pull/4082
* fix: Fix jobflow `status` confusion problem by @dongjiang1989 in https://github.com/volcano-sh/volcano/pull/4090
* take gpu-number into consideration by @linuxfhy in https://github.com/volcano-sh/volcano/pull/3901
* Add more info when e2e failed by @Monokaix in https://github.com/volcano-sh/volcano/pull/4097
* [fix] update feature flag for job support by @yuyue9284 in https://github.com/volcano-sh/volcano/pull/4092
* Optimize append operations for better performance by @feyounger in https://github.com/volcano-sh/volcano/pull/4087
* [Refactor] controller cache deletePod logic,skip create by @feyounger in https://github.com/volcano-sh/volcano/pull/4088
* CI: add dependabot  by @dongjiang1989 in https://github.com/volcano-sh/volcano/pull/4077
* update readme by @Monokaix in https://github.com/volcano-sh/volcano/pull/4113
* Bump docker/setup-buildx-action from 2 to 3 by @dependabot in https://github.com/volcano-sh/volcano/pull/4107
* fix flaky test by @Monokaix in https://github.com/volcano-sh/volcano/pull/4121
* Remove pod mutate webhook by default by @Monokaix in https://github.com/volcano-sh/volcano/pull/4120
* Remove podgroup mutating webhook by default by @Monokaix in https://github.com/volcano-sh/volcano/pull/4128
* fix: add hierarchy queue validation and update for enqueueable by @JesseStutler in https://github.com/volcano-sh/volcano/pull/4119
* feat: Volcano adapts to the k8s v1.32 by @guoqinwill in https://github.com/volcano-sh/volcano/pull/4099
* Move queue state validate from pod to podgroup by @Monokaix in https://github.com/volcano-sh/volcano/pull/4132
* fix: remove hostpath mount in volcano-scheduler by @cnmcavoy in https://github.com/volcano-sh/volcano/pull/4124
* Enabled Cooldown Protection Plugin for reclaiming also by @qGentry in https://github.com/volcano-sh/volcano/pull/4123
* Bump actions/setup-go from 4 to 5 by @dependabot in https://github.com/volcano-sh/volcano/pull/4126
* chore: Change dependabot schedule interval to weekly by @dongjiang1989 in https://github.com/volcano-sh/volcano/pull/4136
* Bump golang.org/x/net from 0.26.0 to 0.36.0 by @dependabot in https://github.com/volcano-sh/volcano/pull/4115
* cleanup residual useless victims code in preempt action by @JesseStutler in https://github.com/volcano-sh/volcano/pull/4138
* Bump ossf/scorecard-action from 2.3.1 to 2.4.1 by @dependabot in https://github.com/volcano-sh/volcano/pull/4108
* Bump github/codeql-action from 1 to 3 by @dependabot in https://github.com/volcano-sh/volcano/pull/4109
* scheduler: consider the nominated node first when allocating Node for Pod by @SataQiu in https://github.com/volcano-sh/volcano/pull/4079
* Bump docker/login-action from 1 to 3 by @dependabot in https://github.com/volcano-sh/volcano/pull/4111
* Bump helm/chart-releaser-action from 1.5.0 to 1.7.0 by @dependabot in https://github.com/volcano-sh/volcano/pull/4140
* Bump actions/setup-java from 3 to 4 by @dependabot in https://github.com/volcano-sh/volcano/pull/4110
* fix: the problem that PVC will be continuously created indefinitely by @ytcisme in https://github.com/volcano-sh/volcano/pull/4142
* improve fail messages for pod scheduling in gang unschedulable scenario by @ouyangshengjia in https://github.com/volcano-sh/volcano/pull/4117
* Replace queue status update by using ApplyStatus method by @JesseStutler in https://github.com/volcano-sh/volcano/pull/4141
* feat: support scalar resources metric by @zedongh in https://github.com/volcano-sh/volcano/pull/3937
* fix: remove lessPartly condition in reclaimable fn from capacity and … by @baddoub in https://github.com/volcano-sh/volcano/pull/4160
* [Security] Remove the execute permission for some files, chmod to 644 by @JesseStutler in https://github.com/volcano-sh/volcano/pull/4171
* Bump golang.org/x/crypto from 0.35.0 to 0.37.0 by @dependabot in https://github.com/volcano-sh/volcano/pull/4176
* Fix typos by @co63oc in https://github.com/volcano-sh/volcano/pull/4177
* fix: panic when total guarantee of child queue exceeds capacity of parent by @JackyTYang in https://github.com/volcano-sh/volcano/pull/4179
* chore: rename VolcanoNamespace -> VolcanoSubSystemName in metrics by @googs1025 in https://github.com/volcano-sh/volcano/pull/4180
* fix: allocated in queue status should include allocated tasks, not only running tasks by @Poor12 in https://github.com/volcano-sh/volcano/pull/4183
* volcano-devices unified config by @archlitchi in https://github.com/volcano-sh/volcano/pull/3953
* feat/vcctl: add parent column to queue list cmd by @de6p in https://github.com/volcano-sh/volcano/pull/4181
* Add v1.11 compatibility matrix by @Monokaix in https://github.com/volcano-sh/volcano/pull/4184
* fix scorecards ci err by @Monokaix in https://github.com/volcano-sh/volcano/pull/4185
* Add topLevel permission for CI by @Monokaix in https://github.com/volcano-sh/volcano/pull/4186
* delete job vaild action in openSession by @fjq123123 in https://github.com/volcano-sh/volcano/pull/4158
* [Security] Add a switch to control whether enable pprof in scheduler by @JesseStutler in https://github.com/volcano-sh/volcano/pull/4173
* Update ubuntu base image by @Monokaix in https://github.com/volcano-sh/volcano/pull/4194
* fix(controller): add statefulset gc for podgroup. by @HalfBuddhist in https://github.com/volcano-sh/volcano/pull/3603
* [Refactor] Cover case checkControllers ut by @feyounger in https://github.com/volcano-sh/volcano/pull/4199
* Fix: remove controller-manager metrics that should not be introduced by @dongjiang1989 in https://github.com/volcano-sh/volcano/pull/4201
* Update readme by @Monokaix in https://github.com/volcano-sh/volcano/pull/4192
* fix docs v100 name by @hiwangzhihui in https://github.com/volcano-sh/volcano/pull/4204
* Add wangyang0616 as approver by @wangyang0616 in https://github.com/volcano-sh/volcano/pull/4206
* Fix bug for vgpu type check by @SataQiu in https://github.com/volcano-sh/volcano/pull/4149
* Bump actions/checkout from 3 to 4 by @dependabot in https://github.com/volcano-sh/volcano/pull/4161
* use replicas when initializing pg minResources by @sceneryback in https://github.com/volcano-sh/volcano/pull/4000
* adjust e2e log level by @Monokaix in https://github.com/volcano-sh/volcano/pull/4212
* [Security] Add http server timeout by @Monokaix in https://github.com/volcano-sh/volcano/pull/4208
* [Security] Add warning msg when TLS verification disabled by @Monokaix in https://github.com/volcano-sh/volcano/pull/4211
* Fix ci err caused by slow change of scheduling configMap by @Monokaix in https://github.com/volcano-sh/volcano/pull/4223
* Clear multiple generated hash values by @feyounger in https://github.com/volcano-sh/volcano/pull/4215
* [Security] Add security context configuration by @JesseStutler in https://github.com/volcano-sh/volcano/pull/4207
* render scripts using TAG env by @Monokaix in https://github.com/volcano-sh/volcano/pull/4203
* Revert github action bump by @Monokaix in https://github.com/volcano-sh/volcano/pull/4251
* Add fuzz tests for job controller by @AdamKorcz in https://github.com/volcano-sh/volcano/pull/4205
* Optimize multiple 'if' statements in the code by @feyounger in https://github.com/volcano-sh/volcano/pull/4222
* in capacity plugin attr.deserved no need MinDimensionResource with attr.request by @kingeasternsun in https://github.com/volcano-sh/volcano/pull/3946
* chore: change BuildPodWithPreeemptionPolicy -> BuildPodWithPreemptionPolicy by @googs1025 in https://github.com/volcano-sh/volcano/pull/4264
* fix: prevent the scheduling of pods in noopen queues by @googs1025 in https://github.com/volcano-sh/volcano/pull/4263
* fix: scheduler leader elect namespace not take effect by @Poor12 in https://github.com/volcano-sh/volcano/pull/4282
* Fix panic while queues' total guarantee  exceed the total resource of the cluster in some situations. by @halcyon-r in https://github.com/volcano-sh/volcano/pull/4273
* fix: add miss queue state check in allocatable action by @googs1025 in https://github.com/volcano-sh/volcano/pull/4274
* fix controller panic for mpi job by @guoqinwill in https://github.com/volcano-sh/volcano/pull/4272
* Bump golang.org/x/net from 0.36.0 to 0.38.0 by @dependabot in https://github.com/volcano-sh/volcano/pull/4196
* WORLD_SIZE calculation for PyTorch Jobs by @murali1539 in https://github.com/volcano-sh/volcano/pull/4281
* Feature stale action by @mahdikhashan in https://github.com/volcano-sh/volcano/pull/4266
* [ci] debug security score workflow artifact upload failure by @mahdikhashan in https://github.com/volcano-sh/volcano/pull/4300
* feat: add graceful shutdown server for webhook manager. by @fengruotj in https://github.com/volcano-sh/volcano/pull/4285
* Prevent pod scheduling when reclaim by @Monokaix in https://github.com/volcano-sh/volcano/pull/4307
* cleanup: update jobflow example docs by @hwdef in https://github.com/volcano-sh/volcano/pull/4305
* Vcctl supports merging multiple kubeconfig to support context switching among multiple k8s clusters. by @halcyon-r in https://github.com/volcano-sh/volcano/pull/4298
* Refactor volume binding and add prebind implementation by @JesseStutler in https://github.com/volcano-sh/volcano/pull/4152
* Fix: Incorrect conversion between integer types by @dongjiang1989 in https://github.com/volcano-sh/volcano/pull/4105
* Add resync-period flag for k8s native informers by @sfc-gh-raravena in https://github.com/volcano-sh/volcano/pull/4047
* ✨ feat: add clusterrole for editor & viewer by @Hcryw in https://github.com/volcano-sh/volcano/pull/4174
* Network Topology Aware Scheduling capability move to master by @Monokaix in https://github.com/volcano-sh/volcano/pull/4310
* fix go mod and informer resync by @Monokaix in https://github.com/volcano-sh/volcano/pull/4319
* Add vgpu dynamic mig by @sailorvii in https://github.com/volcano-sh/volcano/pull/4290
* Add citation by @mahdikhashan in https://github.com/volcano-sh/volcano/pull/4302
* feature: Add dynamic resource allocation(DRA) plugin by @JesseStutler in https://github.com/volcano-sh/volcano/pull/3799
* fix: Fix jobflow status  from `running` to `failed` FSM by @dongjiang1989 in https://github.com/volcano-sh/volcano/pull/4135
* Fix admission webhook with labelSelector for hyperNode by @MondayCha in https://github.com/volcano-sh/volcano/pull/4321
* Add hyperNode controller framework and IB discovery by @Monokaix in https://github.com/volcano-sh/volcano/pull/4322
* Add NetworkTopology plugin score doc by @Monokaix in https://github.com/volcano-sh/volcano/pull/4325
* reconcile hypernode nodeCount status by @Monokaix in https://github.com/volcano-sh/volcano/pull/4327
* Refine the GPU mode process by @sailorvii in https://github.com/volcano-sh/volcano/pull/4329
* feat: Add jobflow metrics by @dongjiang1989 in https://github.com/volcano-sh/volcano/pull/4169
* feat: add jobflow flow dag validate by @dongjiang1989 in https://github.com/volcano-sh/volcano/pull/4122
* Bump image to v1.12.0 by @Monokaix in https://github.com/volcano-sh/volcano/pull/4335

## New Contributors
* @co63oc made their first contribution in https://github.com/volcano-sh/volcano/pull/4008
* @mahdikhashan made their first contribution in https://github.com/volcano-sh/volcano/pull/4016
* @xieyanke made their first contribution in https://github.com/volcano-sh/volcano/pull/3994
* @mahmut-Abi made their first contribution in https://github.com/volcano-sh/volcano/pull/3938
* @hansongChina made their first contribution in https://github.com/volcano-sh/volcano/pull/4029
* @sfc-gh-raravena made their first contribution in https://github.com/volcano-sh/volcano/pull/4053
* @feyounger made their first contribution in https://github.com/volcano-sh/volcano/pull/4058
* @linuxfhy made their first contribution in https://github.com/volcano-sh/volcano/pull/3901
* @yuyue9284 made their first contribution in https://github.com/volcano-sh/volcano/pull/4092
* @dependabot made their first contribution in https://github.com/volcano-sh/volcano/pull/4107
* @cnmcavoy made their first contribution in https://github.com/volcano-sh/volcano/pull/4124
* @qGentry made their first contribution in https://github.com/volcano-sh/volcano/pull/4123
* @ouyangshengjia made their first contribution in https://github.com/volcano-sh/volcano/pull/4117
* @baddoub made their first contribution in https://github.com/volcano-sh/volcano/pull/4160
* @JackyTYang made their first contribution in https://github.com/volcano-sh/volcano/pull/4179
* @de6p made their first contribution in https://github.com/volcano-sh/volcano/pull/4181
* @fjq123123 made their first contribution in https://github.com/volcano-sh/volcano/pull/4158
* @HalfBuddhist made their first contribution in https://github.com/volcano-sh/volcano/pull/3603
* @hiwangzhihui made their first contribution in https://github.com/volcano-sh/volcano/pull/4204
* @AdamKorcz made their first contribution in https://github.com/volcano-sh/volcano/pull/4205
* @halcyon-r made their first contribution in https://github.com/volcano-sh/volcano/pull/4273
* @murali1539 made their first contribution in https://github.com/volcano-sh/volcano/pull/4281
* @Hcryw made their first contribution in https://github.com/volcano-sh/volcano/pull/4174
* @sailorvii made their first contribution in https://github.com/volcano-sh/volcano/pull/4290
* @MondayCha made their first contribution in https://github.com/volcano-sh/volcano/pull/4321

**Full Changelog**: https://github.com/volcano-sh/volcano/compare/v1.11.2...v1.12.0