来源: https://github.com/volcano-sh/volcano/releases/tag/v1.13.3

# volcano-sh/volcano v1.13.3 Release Notes

Published at: 2026-05-09T01:47:48Z

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
- Rollback unnecessary deepcopy in snapshot ([#5186](https://github.com/volcano-sh/volcano/pull/5186) **@zhifei92**)
- wait event handler completed before start scheduling ([#5200](https://github.com/volcano-sh/volcano/pull/5200) **@qi-min**)
- fix(scheduler): prevent preemptorTasks overwrite in multi-queue preemption ([#5265](https://github.com/volcano-sh/volcano/pull/5265) **@hajnalmt**)
- enhancement(scheduler): honor QueueOrderFn in preempt action ([#5269](https://github.com/volcano-sh/volcano/pull/5269) **@hajnalmt**)

**Full Changelog**: [v1.13.2...v1.13.3](https://github.com/volcano-sh/volcano/compare/v1.13.2...v1.13.3)