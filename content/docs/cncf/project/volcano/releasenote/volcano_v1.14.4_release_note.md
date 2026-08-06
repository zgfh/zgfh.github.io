来源: https://github.com/volcano-sh/volcano/releases/tag/v1.14.4

# volcano-sh/volcano v1.14.4 Release Notes

Published at: 2026-07-30T01:51:40Z

## What's Changed

### Bug fixes

* [release-1.14] Register PreFilter plugins to skip no-op predicate filters by @JesseStutler in #5535
* [release-1.14] Treat Succeeded pods as ready when checking job dependencies by @avinxshKD in #5547
* [release-1.14] Fix potential volcano-scheduler panic caused by nil pointers by @Tau721 in #5576
* [release-1.14] Honor `NeedContinueAllocating` after PrePredicate failures by @A69SHUBHAM in #5671
* [release-1.14] Support the new `vnpus.configs` wrapper and legacy array formats for HAMi Ascend vNPU configuration by @shivansh-gohem in #5770
* [release-1.14] Fix Ascend vNPU resource accounting in `addResource` by @DSFans2014 in #5771

**Full Changelog**: https://github.com/volcano-sh/volcano/compare/v1.14.3...v1.14.4