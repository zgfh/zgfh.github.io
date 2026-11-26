来源: https://github.com/volcano-sh/volcano/releases/tag/v1.16.1

# volcano-sh/volcano v1.16.1 Release Notes

Published at: 2026-11-26T01:27:53Z

## What's Changed

### Bug fixes
- [release-1.16] Fix scheduling for PodGroups with minSubGroups greater than zero when a subgroup policy specifies a labelSelector without matchLabelKeys by @lkhun9311 in #6397
- [release-1.16] Apply the pdb plugin's PodDisruptionBudget checks during victim selection in gangpreempt and gangreclaim by @mohitvinchoo in #6341
- [release-1.16] Prevent a scheduler panic with the DRF plugin when a failed allocation is rolled back twice during gang eviction simulation by @JesseStutler in #6287 
- [release-1.16] Show memory capacity and real capacity for every queue on the Volcano Queue Metrics dashboard by @XbaoWu in #6284 
- [release-1.16] Restore a running Pod to the scheduler's node information after an eviction is rolled back so subsequent scheduling decisions account for it by @saylee21 in #6270
- [release-1.16] Keep Pods that request resources only through DRA ResourceClaims in gang scheduling so they cannot bind individually before the gang is ready by @JesseStutler in #6258
- [release-1.16] Reuse valid admission webhook certificates during Helm upgrades to prevent x509: certificate signed by unknown authority errors caused by unnecessary CA rotation by @kingeasternsun in #6262
- [release-1.16] Make the “Queue Running GPU” Grafana panel follow the selected queue by @XbaoWu in #6237
- [release-1.16] Report the same failing task in PodGroup conditions and events across scheduling cycles when the failures are unchanged, avoiding unnecessary PodGroup updates by @JesseStutler in #6176
- [release-1.16] Exclude a node from preemption when any predicate reports an unresolvable failure, preventing unnecessary evictions regardless of plugin order by @shepherd-cheung in #6123

### Enhancements
- [release-1.16] Add the Helm value custom.admission_root_queue_protection_enable to configure admission protection for the root queue. Protection remains enabled by default. By @Paramveersingh-S in #6297
- [release-1.16] Reduce scheduler lock contention when recording predicate failures and move per-node failure logs from V(3) to V(5) by @JesseStutler in #6150 (https://github.com/volcano-sh/volcano/pull/6150)

Full Changelog: v1.16.0...v1.16.1 (https://github.com/volcano-sh/volcano/compare/v1.16.0...v1.16.1)