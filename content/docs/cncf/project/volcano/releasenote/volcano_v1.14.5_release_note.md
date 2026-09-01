来源: https://github.com/volcano-sh/volcano/releases/tag/v1.14.5

# volcano-sh/volcano v1.14.5 Release Notes

Published at: 2026-08-29T07:39:37Z

## What's Changed

### Bug fixes

* [release-1.14] Prevent a nil-pointer panic in backfill when node scoring fails to select a best node by @mesutoezdil in #5917
* [release-1.14] Stop further node allocation when the predicates plugin encounters an allocation error, avoiding subsequent Pod startup failures by @jiahuat in #5904
* [release-1.14] Recheck predicate and device feasibility after tentative reclaim evictions, allowing reclaim to continue until a concrete device allocation is possible by @miantalha45 in #5900
* [release-1.14] Fix HAMi Ascend normal preemption when evicting lower-priority workloads makes sufficient device capacity available by @miantalha45 in #5867
* [release-1.14] Keep PodGroups Running while scheduled member Pods are gracefully terminating and avoid misleading `NotEnoughResources` conditions by @halcyon-r in #5841

**Full Changelog**: https://github.com/volcano-sh/volcano/compare/v1.14.4...v1.14.5