来源: https://github.com/volcano-sh/volcano/releases/tag/v1.11.2

# volcano-sh/volcano v1.11.2 Release Notes

Published at: 2025-04-30T10:34:04Z

**Important:**
This release addresses multiple critical security vulnerabilities. We strongly advise all users to upgrade to immediately to protect your systems and data.
## Security Fixes
- [Cherry-pick 1.11] Add http response body size limit (#4252 @kevin-wangzefeng )
- [Cherry-pick 1.11] Add security context configuration (#4245 @JesseStutler)
- Remove the execute permission for some files, chmod to 644 ([#4171](https://github.com/volcano-sh/volcano/pull/4171) **@JesseStutler**)
- add a switch to control whether enable pprof in scheduler ([#4173](https://github.com/volcano-sh/volcano/pull/4173) **@JesseStutler**)
- Add warning msg when TLS verification disabled([#4211](https://github.com/volcano-sh/volcano/pull/4211) **@Monokaix**)
- Add http server timeout([#4208](https://github.com/volcano-sh/volcano/pull/4208) **@Monokaix**)

## Other Improvements
- Bump image to v1.11.2 ([#4232](https://github.com/volcano-sh/volcano/pull/4232) **@JesseStutler**)
- Fix: remove controller-manager metrics that should not be introduced ([#4202](https://github.com/volcano-sh/volcano/pull/4202) **@dongjiang1989**)
- Filter useless logs in binpack ([#4240](https://github.com/volcano-sh/volcano/pull/4240) **@XbaoWu**)

## Important Notes Before Upgrading
**Change: Volcano Scheduler pprof Endpoint Disabled by Default**
For security enhancement, the pprof endpoint for the Volcano Scheduler is now disabled by default in this release. If you require this endpoint for debugging or monitoring, you will need to explicitly enable it post-upgrade. This can be achieved by:
- If you are using helm, specifying `custom.scheduler_pprof_enable=true` during Helm installation or upgrade. 
- OR, manually  setting the command-line argument `--enable-pprof=true` when starting the Volcano Scheduler. 

Please be aware of the security implications before enabling this endpoint in production environments.