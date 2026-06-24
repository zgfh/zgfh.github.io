来源: https://github.com/volcano-sh/volcano/releases/tag/v1.14.2

# volcano-sh/volcano v1.14.2 Release Notes

Published at: 2026-05-09T01:42:21Z

**Important:**
This release addresses a security vulnerability and multiple bug fixes. We strongly advise all users to upgrade immediately to protect your systems and data.

## Security Fixes

### CVE-2026-44247: Webhook Server OOM via unbounded HTTP request body size

A security vulnerability has been discovered in the Volcano webhook server that could allow a pod with network access to the webhook endpoint to cause a denial of service by sending an arbitrarily large HTTP request body, leading to the webhook server being killed by OOM.

**Affected Versions:**

- volcano <= v1.14.1
- volcano <= v1.13.2
- volcano <= v1.12.3

**Fixed Versions:**

- volcano v1.14.2
- volcano v1.13.3
- volcano v1.12.4

This vulnerability was reported by @bugbunny-research and mitigated by @JesseStutler.

**CVSS Rating:** Moderate (6.8) CVSS:3.1/AV:A/AC:L/PR:L/UI:N/S:C/C:N/I:N/A:H

## Bug Fixes
- fix: remove duplicated session close call ([#5056](https://github.com/volcano-sh/volcano/pull/5056) **@qi-min**)
- Update KUBE_VERSION to 1.34.1 in webhook-manager Dockerfile ([#5063](https://github.com/volcano-sh/volcano/pull/5063) **@hajnalmt**)
- Update root queue capability and enhance queue validation logic ([#5080](https://github.com/volcano-sh/volcano/pull/5080) **@guoqinwill**)
- Fix shared mutable objects in scheduler snapshot clones ([#5092](https://github.com/volcano-sh/volcano/pull/5092) **@zhifei92**)
- fix: panic and restart of volcano scheduler pods on install ([#5144](https://github.com/volcano-sh/volcano/pull/5144) **@Tau721**)
- Fix Agent Scheduler multi worker optimistic parallel scheduling concurrently conflict error ([#5162](https://github.com/volcano-sh/volcano/pull/5162) **@JesseStutler**)
- Fix inaccurate E2E duration metric in agent-scheduler ([#5165](https://github.com/volcano-sh/volcano/pull/5165) **@Copilot**)
- fix: process panic caused by concurrent map writes ([#5182](https://github.com/volcano-sh/volcano/pull/5182) **@zhifei92**)
- wait event handler completed before start scheduling ([#5183](https://github.com/volcano-sh/volcano/pull/5183) **@qi-min**)
- Rollback unnecessary deepcopy in snapshot ([#5185](https://github.com/volcano-sh/volcano/pull/5185) **@zhifei92**)
- fix event handlers cache ([#5188](https://github.com/volcano-sh/volcano/pull/5188) **@qi-min**)
- fix: `highestTierName` in partitionPolicy or subGroupPolicy fails to restrict scheduling to specified HyperNode tiers ([#5203](https://github.com/volcano-sh/volcano/pull/5203) **@Tau721**)
- fix(capacity): avoid false exceeds on missing parent scalar keys ([#5218](https://github.com/volcano-sh/volcano/pull/5218) **@hajnalmt**)
- reduce node priority if nodes wait to be checked in binder ([#5260](https://github.com/volcano-sh/volcano/pull/5260) **@qi-min**)
- fix(scheduler): prevent preemptorTasks overwrite in multi-queue preemption ([#5263](https://github.com/volcano-sh/volcano/pull/5263) **@hajnalmt**)
- enhancement(scheduler): honor QueueOrderFn in preempt action ([#5268](https://github.com/volcano-sh/volcano/pull/5268) **@hajnalmt**)
- Fix: Stabilize predicates plugin execution order and rollback semantics ([#5286](https://github.com/volcano-sh/volcano/pull/5286) **@wangyang0616**) 

**Full Changelog**: [v1.14.1...v1.14.2](https://github.com/volcano-sh/volcano/compare/v1.14.1...v1.14.2)