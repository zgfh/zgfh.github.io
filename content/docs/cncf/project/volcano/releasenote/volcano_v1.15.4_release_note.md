来源: https://github.com/volcano-sh/volcano/releases/tag/v1.15.4

# volcano-sh/volcano v1.15.4 Release Notes

Published at: 2026-11-12T06:37:23Z

## What's Changed

### Bug fixes

* [release-1.15] Reuse valid admission webhook certificates during Helm upgrades, preventing unnecessary certificate rotation and certificate trust errors by @kingeasternsun in #6257
* [release-1.15] Fix gang scheduling for Pods that request only DRA resources, preventing pending Pods from satisfying gang readiness or bypassing gang constraints through backfill by @JesseStutler in #6263
* [release-1.15] Avoid double rollback after pipeline failures during gang eviction simulation, preventing DRF resource-accounting panics by @JesseStutler in #6290
* [release-1.15] Include descendant queues' scheduling-gate reservations in ancestor capacity checks, preventing gate removal from exceeding parent queue quotas by @devzizu in #6072
* [release-1.15] Keep completed PodGroups in the Completed phase as finished Pods are deleted, preventing queue quota from being reserved again by @yuanhuaiwang in #6054
* [release-1.15] Clear stale node nominations after rollback and correct preemption eligibility when nominated nodes are schedulable or deleted by @hajnalmt in #6089
* [release-1.15] Exclude nodes from preemption candidates when any predicate reports an unresolvable failure, preventing unnecessary victim evictions by @shepherd-cheung in #6125
* [release-1.15] Stabilize PodGroup scheduling failure messages to avoid unnecessary status updates and changing event messages for unchanged failures by @JesseStutler in #6178
* [release-1.15] Correctly finalize JobFlows whose jobs finish before the first reconciliation, avoiding flows stuck in Running and skipped job cleanup by @iamtanishqjain in #6076
* [release-1.15] Return errors for unsupported output formats in vcctl JobFlow and JobTemplate describe commands instead of exiting successfully by @iamtanishqjain in #6050
* [release-1.15] Filter the queue overview Running GPU panel by the selected queue by @XbaoWu in #6238
* [release-1.15] Show all queues in the memory capacity panel instead of only the root queue by @XbaoWu in #6285

### Performance improvements

* [release-1.15] Reduce predicate failure bookkeeping and lock contention, and move detailed per-node failure logs from V(3) to V(5) by @JesseStutler in #6151

### Other changes

* [release-1.15] Use locally built images for local benchmark installations instead of pulling released images by @xsvm in #6147

**Full Changelog**: https://github.com/volcano-sh/volcano/compare/v1.15.3...v1.15.4