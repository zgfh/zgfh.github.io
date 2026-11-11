来源: https://github.com/volcano-sh/volcano/releases/tag/v1.15.3

# volcano-sh/volcano v1.15.3 Release Notes

Published at: 2026-09-30T08:56:19Z

## What's Changed

### Bug fixes

* [release-1.15] Prevent an int64 overflow in aggregate DRA device counts from bypassing the capacity plugin's quota check by @thc1006 in #5983
* [release-1.15] Prevent stale PodGroup annotation updates from being applied to recreated Pods, avoiding Pods remaining Pending with a deleted PodGroup by @YiD11 in #5982
* [release-1.15] Skip not-ready placeholder nodes during incremental agent-scheduler snapshot updates, preventing nil-pointer panics by @xiezhayang in #5948

**Full Changelog**: https://github.com/volcano-sh/volcano/compare/v1.15.2...v1.15.3