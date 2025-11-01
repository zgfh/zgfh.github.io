来源: https://github.com/volcano-sh/volcano/releases/tag/v1.12.2

# volcano-sh/volcano v1.12.2 Release Notes

Published at: 2025-08-14T01:26:39Z

## What's Changed
* Automated cherry pick of #4422: Move kube-scheduler related metrics initilization to server.go to avoid panic by @JesseStutler in https://github.com/volcano-sh/volcano/pull/4461
* Automated cherry pick of #4473: fix node count reconcile by @Monokaix in https://github.com/volcano-sh/volcano/pull/4488
* [cherry-pick for 1.12]Fix incorrect definition of ReleaseNameEnvKey by @ouyangshengjia in https://github.com/volcano-sh/volcano/pull/4490
* [cherry-pick for 1.12]Fix the issue where SelectBestNode returns nil when plugin scores are negative by @guoqinwill in https://github.com/volcano-sh/volcano/pull/4472
* Automated cherry pick of #4487: Add missing capacity metrics in hierarchical queues by @JesseStutler in https://github.com/volcano-sh/volcano/pull/4494
* [Cherry-pick] Add bump version script; Make version release more automated by @JesseStutler in https://github.com/volcano-sh/volcano/pull/4521
* [Cherry-pick] fix: update podGroup when statefulSet update by @Poor12 in https://github.com/volcano-sh/volcano/pull/4522
* Automated: Bump version to v1.12.2 by @JesseStutler in https://github.com/volcano-sh/volcano/pull/4518


**Full Changelog**: https://github.com/volcano-sh/volcano/compare/v1.12.1...v1.12.2