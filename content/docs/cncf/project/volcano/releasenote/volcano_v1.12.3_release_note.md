来源: https://github.com/volcano-sh/volcano/releases/tag/v1.12.3

# volcano-sh/volcano v1.12.3 Release Notes

Published at: 2026-01-18T08:34:15Z

## What's Changed
### Bug fixes
- [Cherry-pick v1.12] add hcclrank job plugin by @wangdongyang1 in https://github.com/volcano-sh/volcano/pull/4555
- Automated cherry pick of #4347: When some scalar resources are 0 in deserved, hierarychical queues validation can not pass by @wuxiaobao in https://github.com/volcano-sh/volcano/pull/4586
- Automated cherry pick of #4590: add permissions for managing namespaces in admission rules by @suyiiyii in https://github.com/volcano-sh/volcano/pull/4594
- [Cherry-pick v1.12] fix mpi job plugin panic when mpi job only has master task by @wangdongyang1 in https://github.com/volcano-sh/volcano/pull/4619
- [Cherry-pick v1.12]Sync kube-scheduler:Improve CSILimits plugin accuracy by using VolumeAttachments by @guoqinwill in https://github.com/volcano-sh/volcano/pull/4627
- Automated cherry pick of #4599: fix: report all scalar metrics for each queue by @hajnalmt in https://github.com/volcano-sh/volcano/pull/4651
- [Cherry-pick 1.12] fix: Initialize realCapability field in newQueueAttr by @dafu-wu in https://github.com/volcano-sh/volcano/pull/4695
- [cherry-pick 1.12]Scheduling main loop blocked and timeout due to un-released PreBind lock in Volcano by @guoqinwill in https://github.com/volcano-sh/volcano/pull/4699
- [release-1.12] Cherry-pick #4786 and #4792: fix replicaset KubeGroupNameAnnotation handling and replicaSet podgroup update synchronization by @hajnalmt in https://github.com/volcano-sh/volcano/pull/4843
- Automated cherry pick of #4829: keep terminating pod in job by @wangdongyang1 in https://github.com/volcano-sh/volcano/pull/4861
- [release-1.12] fix potential panic on numa resources info updating in snapshot by @qi-min in https://github.com/volcano-sh/volcano/pull/4898
- [release-1.12] Fix gpu resource error by @chenw66 in https://github.com/volcano-sh/volcano/pull/4915
- [release-1.12] Fix: Changes to task members in a PodGroup caused task validity checks to fail during scheduling by @ouyangshengjia in https://github.com/volcano-sh/volcano/pull/4920
- [release-1.12] Fix scheduler panic when metrics are disabled by @Copilot in https://github.com/volcano-sh/volcano/pull/4921
- [release-1.12] Update metrics_client_prometheus.go by @nitindhiman314e in https://github.com/volcano-sh/volcano/pull/4932
## Maintenance
- [release-1.12] Add Free Disk Space step to E2E workflows by @Copilot in https://github.com/volcano-sh/volcano/pull/4851

**Full Changelog**: https://github.com/volcano-sh/volcano/compare/v1.12.2...v1.12.3