来源: https://github.com/volcano-sh/volcano/releases/tag/v1.13.4

# volcano-sh/volcano v1.13.4 Release Notes

Published at: 2026-08-31T01:32:51Z

## What's Changed

### Bug fixes

* Fix victim reprieve order in preemption by @dengaosong in [#5310](https://github.com/volcano-sh/volcano/pull/5310)
* Fix HAMi vGPU scheduling failures in large and medium-scale clusters by @linuxfhy in [#5431](https://github.com/volcano-sh/volcano/pull/5431)
* Fix unbounded `job.Status.Conditions` growth by @avinxshKD in [#5450](https://github.com/volcano-sh/volcano/pull/5450)
* Treat succeeded pods as ready when checking job dependencies by @avinxshKD in [#5548](https://github.com/volcano-sh/volcano/pull/5548) and [#5549](https://github.com/volcano-sh/volcano/pull/5549)
* Prevent PodGroups from falling into `Inqueue` while pods are terminating by @halcyon-r in [#5842](https://github.com/volcano-sh/volcano/pull/5842)
* Stop further node allocation after an error occurs in the predicates plugin by @jiahuat in [#5908](https://github.com/volcano-sh/volcano/pull/5908)
* Skip backfill tasks when no best node is selected by @mesutoezdil in [#5922](https://github.com/volcano-sh/volcano/pull/5922)

**Full Changelog**: [v1.13.3...v1.13.4](https://github.com/volcano-sh/volcano/compare/v1.13.3...v1.13.4)