来源: https://github.com/volcano-sh/volcano/releases/tag/v1.13.1

# volcano-sh/volcano v1.13.1 Release Notes

Published at: 2025-12-23T11:32:34Z

## What's Changed
### Bug fixes
* Automated cherry pick of #4670: fix: ci err caused bt ray e2e default image by @Wonki4 in https://github.com/volcano-sh/volcano/pull/4681
* [Cherry-pick 1.13] fix: Initialize realCapability field in newQueueAttr by @dafu-wu in https://github.com/volcano-sh/volcano/pull/4694
* [cherry-pick 1.13]Scheduling main loop blocked and timeout due to un-released PreBind lock in Volcano by @guoqinwill in https://github.com/volcano-sh/volcano/pull/4700
* [release-1.13] Fix scheduler panic when metrics are disabled by @Copilot in https://github.com/volcano-sh/volcano/pull/4770
* Cherry-pick PR #4786 to release-1.13: Fix replicaSet podgroup update synchronization by @jiahuat in https://github.com/volcano-sh/volcano/pull/4799
* [release-1.13] fix: replicaset KubeGroupNameAnnotation handling by @hajnalmt in https://github.com/volcano-sh/volcano/pull/4826
* [release-1.13] fix: constant cache warnings by @hajnalmt in https://github.com/volcano-sh/volcano/pull/4831
* [release-1.13] fix: capacity plugin's preemptivefn logic by @hajnalmt in https://github.com/volcano-sh/volcano/pull/4830
* [release-1.13] Fix: Changes to task members in a PodGroup caused task validity checks to fail during scheduling by @ouyangshengjia in https://github.com/volcano-sh/volcano/pull/4852

### Maintenance
* [release-1.13] Add Free Disk Space step to E2E workflows by @Copilot in https://github.com/volcano-sh/volcano/pull/4763

**Full Changelog**: https://github.com/volcano-sh/volcano/compare/v1.13.0...v1.13.1