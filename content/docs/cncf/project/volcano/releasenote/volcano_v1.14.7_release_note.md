来源: https://github.com/volcano-sh/volcano/releases/tag/v1.14.7

# volcano-sh/volcano v1.14.7 Release Notes

Published at: 2026-11-12T06:36:08Z

## What's Changed

### Bug fixes

* [release-1.14] Reuse valid admission webhook certificates during Helm upgrades, preventing unnecessary certificate rotation and certificate trust errors by @kingeasternsun in #6261
* [release-1.14] Fix gang scheduling for Pods that request only DRA resources, preventing pending Pods from satisfying gang readiness or bypassing gang constraints through backfill by @JesseStutler in #6265
* [release-1.14] Keep completed PodGroups in the Completed phase as finished Pods are deleted, preventing queue quota from being reserved again by @yuanhuaiwang in #6055
* [release-1.14] Clear stale node nominations after rollback and correct preemption eligibility when nominated nodes are schedulable or deleted by @hajnalmt in #6090
* [release-1.14] Exclude nodes from preemption candidates when any predicate reports an unresolvable failure, preventing unnecessary victim evictions by @shepherd-cheung in #6126
* [release-1.14] Stabilize PodGroup scheduling failure messages to avoid unnecessary status updates and changing event messages for unchanged failures by @JesseStutler in #6181
* [release-1.14] Correctly finalize JobFlows whose jobs finish before the first reconciliation, avoiding flows stuck in Running and skipped job cleanup by @iamtanishqjain in #6077
* [release-1.14] Return errors for unsupported output formats in vcctl JobFlow and JobTemplate describe commands instead of exiting successfully by @iamtanishqjain in #6051
* [release-1.14] Filter the queue overview Running GPU panel by the selected queue by @XbaoWu in #6239
* [release-1.14] Show all queues in the memory capacity panel instead of only the root queue by @XbaoWu in #6286

### Performance improvements

* [release-1.14] Reduce predicate failure bookkeeping and lock contention, and move detailed per-node failure logs from V(3) to V(5) by @JesseStutler in #6152

**Full Changelog**: https://github.com/volcano-sh/volcano/compare/v1.14.6...v1.14.7