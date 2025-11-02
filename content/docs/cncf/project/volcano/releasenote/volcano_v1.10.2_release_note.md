来源: https://github.com/volcano-sh/volcano/releases/tag/v1.10.2

# volcano-sh/volcano v1.10.2 Release Notes

Published at: 2025-04-30T10:33:38Z

**Important:**
This release addresses multiple critical security vulnerabilities. We strongly advise all users to upgrade immediately to protect your systems and data.
## Security Fixes
- [Cherry-pick 1.10] Add http response body size limit (#4253 @kevin-wangzefeng)
- [Cherry-pick 1.10] Add security context configuration (#4246 @JesseStutler)
- Remove the execute permission for some files, chmod to 644 ([#4171](https://github.com/volcano-sh/volcano/pull/4171) **@JesseStutler**)
- add a switch to control whether enable pprof in scheduler ([#4173](https://github.com/volcano-sh/volcano/pull/4173) **@JesseStutler**)
- Add warning msg when TLS verification disabled([#4211](https://github.com/volcano-sh/volcano/pull/4211) **@Monokaix**)
- Add http server timeout([#4208](https://github.com/volcano-sh/volcano/pull/4208) **@Monokaix**)

## Other Improvements
- Update ubuntu base image([#4194](https://github.com/volcano-sh/volcano/pull/4194) **@Monokaix**)
- Bump image to v1.10.2 ([#4231](https://github.com/volcano-sh/volcano/pull/4231) **@JesseStutler**)

## Important Notes Before Upgrading
**Change: Volcano Scheduler pprof Endpoint Disabled by Default**
For security enhancement, the pprof endpoint for the Volcano Scheduler is now disabled by default in this release. If you require this endpoint for debugging or monitoring, you will need to explicitly enable it post-upgrade. This can be achieved by:
- If you are using helm, specifying `custom.scheduler_pprof_enable=true` during Helm installation or upgrade. 
- OR, manually  setting the command-line argument `--enable-pprof=true` when starting the Volcano Scheduler. 

Please be aware of the security implications before enabling this endpoint in production environments.