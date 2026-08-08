来源: https://github.com/volcano-sh/volcano/releases/tag/v1.15.1

# volcano-sh/volcano v1.15.1 Release Notes

Published at: 2026-07-30T03:45:19Z

## What's Changed

### Security and dependency updates
* [release-1.15] Upgrade `golang.org/x/crypto` from v0.49.0 to v0.53.0, incorporating upstream SSH security fixes released in v0.52.0, by @gucardona in #5616

### Bug fixes

* [release-1.15] Support the new `vnpus.configs` wrapper and legacy array formats for HAMi Ascend vNPU configuration by @shivansh-gohem in #5769
* [release-1.15] Recover from a PVC informer race in `addPod` that could leave OnDemand PVC workloads permanently pending by @gucardona in #5725
* [release-1.15] Honor `NeedContinueAllocating` after PrePredicate failures by @A69SHUBHAM in #5670
* [release-1.15] Prevent int64 overflow in DRA device-count quota accounting by @thc1006 in #5626
* [release-1.15] Fix potential volcano-scheduler panic caused by nil pointers by @Tau721 in #5575
* [release-1.15] Reuse the session NodeMap and unify Score plugins through `BatchNodeOrderFn` by @JesseStutler in #5562
* [release-1.15] Treat Succeeded pods as ready when checking job dependencies by @avinxshKD in #5546
* [release-1.15] Make stable predicate filters honor the skip set populated during PreFilter by @vanshika2720 in #5543
* [release-1.15] Register PreFilter plugins to skip no-op predicate filters by @JesseStutler in #5534
* [release-1.15] Fix scalar in-queue resource accounting to use milli-units by @WHOIM1205 in #5499
* [release-1.15] Clear device-related annotations when releasing pods by @archlitchi in #5429
* [release-1.15] Display maxFloat and maxInt correctly in scheduler resource strings by @r0hansaxena in #5478
* [release-1.15] Fall back `minAvailable` to replicas when partition `minPartitions` is omitted by @togettoyou in #5456
* [release-1.15] Honor `subJob.NominatedHyperNode` for jobs without hard topology constraints by @vzhou-p in #5455
* [release-1.15] Prevent unbounded growth of `job.Status.Conditions` by @avinxshKD in #5447
* [release-1.15] Fix HAMi vGPU scheduling failures in medium and large clusters by @linuxfhy in #5433
* [release-1.15] Check Ascend vNPU health using Allocatable resources by @DSFans2014 in #5428
* [release-1.15] Fix Ascend vNPU resource accounting in `addResource` by @DSFans2014 in #5377

**Full Changelog**: https://github.com/volcano-sh/volcano/compare/v1.15.0...v1.15.1