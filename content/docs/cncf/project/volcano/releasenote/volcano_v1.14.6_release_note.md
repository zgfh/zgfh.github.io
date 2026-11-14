来源: https://github.com/volcano-sh/volcano/releases/tag/v1.14.6

# volcano-sh/volcano v1.14.6 Release Notes

Published at: 2026-09-30T08:55:30Z

## What's Changed

### Bug fixes

* [release-1.14] Prevent stale PodGroup annotation updates from being applied to recreated Pods, avoiding Pods remaining Pending with a deleted PodGroup by @YiD11 in #5980
* [release-1.14] Skip not-ready placeholder nodes during incremental agent-scheduler snapshot updates, preventing nil-pointer panics by @xiezhayang in #5949

**Full Changelog**: https://github.com/volcano-sh/volcano/compare/v1.14.5...v1.14.6