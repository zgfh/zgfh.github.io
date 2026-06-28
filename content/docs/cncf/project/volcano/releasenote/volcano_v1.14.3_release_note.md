来源: https://github.com/volcano-sh/volcano/releases/tag/v1.14.3

# volcano-sh/volcano v1.14.3 Release Notes

Published at: 2026-06-27T03:49:21Z

## What's Changed

  ### Bug fixes

  * [release-1.14] Fix Network-Topology-Aware scheduling soft mode for jobs and subjobs by @3th4novo in #5513
  * [release-1.14] Fix scalar in-queue resource accounting to use milli-units by @WHOIM1205 in #5503
  * [release-1.14] Clear device-related annotations when releasing pods by @archlitchi in #5486
  * [release-1.14] Fix maxFloat and maxInt display in scheduler resource strings by @r0hansaxena in #5477
  * [release-1.14] Fall back `minAvailable` to replicas when partition `minPartitions` is omitted by @togettoyou in #5459
  * [release-1.14] Check Ascend vNPU health using Allocatable resources by @DSFans2014 in #5437
  * [release-1.14] Prevent unbounded growth of `job.Status.Conditions` by @avinxshKD in #5448
  * [release-1.14] Fix HAMi vGPU scheduling failures in medium and large clusters by @Copilot in #5434
  * [release-1.14] Restore `ImageStates` in scheduler node snapshots by @kitianFresh in #5356
  * [release-1.14] Reprieve higher-priority pods first during preemption by @dengaosong in #5307

  **Full Changelog**: https://github.com/volcano-sh/volcano/compare/v1.14.2...v1.14.3
