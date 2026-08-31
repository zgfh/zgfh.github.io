来源: https://github.com/volcano-sh/volcano/releases/tag/v1.15.2

# volcano-sh/volcano v1.15.2 Release Notes

Published at: 2026-08-29T07:41:48Z

**Important:**
This release addresses a security vulnerability and multiple bug fixes. We strongly advise all users of Volcano v1.15.0 and v1.15.1 to upgrade immediately.

## Security Fixes

### [GHSA-j38h-7pfq-cxmw](https://github.com/volcano-sh/volcano/security/advisories/GHSA-j38h-7pfq-cxmw): Excessive iteration in DRA capacity accounting can block scheduling

A vulnerability in Volcano's Dynamic Resource Allocation capacity accounting could allow an authenticated tenant to exhaust scheduler CPU time using tenant-controlled device or task counts. Because the affected calculation can run while the scheduler cache lock is held, exploitation may stall scheduling across the cluster.

The fix replaces count-proportional capacity aggregation with constant-time multiplication and adds safer validation and overflow handling.

**Affected Versions:**

- Volcano v1.15.0
- Volcano v1.15.1

**Fixed Versions:**

- Volcano v1.15.2

This vulnerability was reported and fixed by @thc1006, with advisory coordination by @JesseStutler. The fix was included in #5869.

**CVSS Rating:** Medium (6.5) CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H

## Bug Fixes

* [release-1.15] Prevent a nil-pointer panic in backfill when node scoring fails to select a best node by @mesutoezdil in #5916
* [release-1.15] Recheck predicate and device feasibility after tentative reclaim evictions, allowing reclaim to continue until a concrete device allocation is possible by @miantalha45 in #5898
* [release-1.15] Fix HAMi Ascend normal preemption when evicting lower-priority workloads makes sufficient device capacity available by @miantalha45 in #5866
* [release-1.15] Keep PodGroups Running while scheduled member Pods are gracefully terminating and avoid misleading `NotEnoughResources` conditions by @halcyon-r in #5840

**Full Changelog**: [v1.15.1...v1.15.2](https://github.com/volcano-sh/volcano/compare/v1.15.1...v1.15.2)