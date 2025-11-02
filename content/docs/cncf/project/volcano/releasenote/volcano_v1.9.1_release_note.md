来源: https://github.com/volcano-sh/volcano/releases/tag/v1.9.1

# volcano-sh/volcano v1.9.1 Release Notes

Published at: 2025-04-30T10:32:45Z

**Important:**
This release addresses multiple critical security vulnerabilities. We strongly advise all users to upgrade immediately to protect your systems and data.
## Security Fixes
- [Cherry-pick 1.9] Add http response body size limit (#4254 @JesseStutler)
- [Cherry-pick 1.9] Add security context configuration (#4249 @Monokaix)
- Remove the execute permission for some files, chmod to 644 ([#4171](https://github.com/volcano-sh/volcano/pull/4171) **@JesseStutler**)
- add a switch to control whether enable pprof in scheduler ([#4173](https://github.com/volcano-sh/volcano/pull/4173) **@JesseStutler**)
- Add warning msg when TLS verification disabled([#4211](https://github.com/volcano-sh/volcano/pull/4211) **@Monokaix**)
- Add http server timeout([#4208](https://github.com/volcano-sh/volcano/pull/4208) **@Monokaix**)

## Other Improvements
- Bump image to v1.9.1 ([#4230](https://github.com/volcano-sh/volcano/pull/4230) **@JesseStutler**)
- fix panic when get job's elastic resource ([#4103](https://github.com/volcano-sh/volcano/pull/4103) **@lowang-bh**)
- change to action cache v4 ([#4075](https://github.com/volcano-sh/volcano/pull/4075) **@Monokaix**)
- fix flaky test ([#4121](https://github.com/volcano-sh/volcano/pull/4121) **@Monokaix**)
- Supports rollback when allocate callback function fails ([#3780](https://github.com/volcano-sh/volcano/pull/3780) **@wangyang0616**)
- Supports rollback when allocate callback function fails ([#3776](https://github.com/volcano-sh/volcano/pull/3776) **@wangyang0616**)
- fix pg controller create redundancy podGroup when schedulerName isn't matched ([#3675](https://github.com/volcano-sh/volcano/pull/3675) **@liuyuanchun11**)
- Update Kubernetes compatibility ([#3570](https://github.com/volcano-sh/volcano/pull/3570) **@Monokaix**)
- Fix podgroup not created ([#3572](https://github.com/volcano-sh/volcano/pull/3572) **@liuyuanchun11**)
- update pod status when bind error ([#3550](https://github.com/volcano-sh/volcano/pull/3550) **@bibibox**)
- Update NominatedNodeName for pipelined task ([#3501](https://github.com/volcano-sh/volcano/pull/3501) **@bibibox**)

## Important Notes Before Upgrading
**Change: Volcano Scheduler pprof Endpoint Disabled by Default**
For security enhancement, the pprof endpoint for the Volcano Scheduler is now disabled by default in this release. If you require this endpoint for debugging or monitoring, you will need to explicitly enable it post-upgrade. This can be achieved by:
- If you are using helm, specifying `custom.scheduler_pprof_enable=true` during Helm installation or upgrade. 
- OR, manually  setting the command-line argument `--enable-pprof=true` when starting the Volcano Scheduler. 

Please be aware of the security implications before enabling this endpoint in production environments.