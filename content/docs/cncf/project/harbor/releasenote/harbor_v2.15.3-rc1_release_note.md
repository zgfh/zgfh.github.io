来源: https://github.com/goharbor/harbor/releases/tag/v2.15.3-rc1

# goharbor/harbor v2.15.3-rc1 Release Notes

Published at: 2026-09-11T02:50:26Z

<!-- Release notes generated using configuration in .github/release.yml at v2.15.3-rc1 -->

## What's Changed
### Component updates ⬆️
* (cherry-pick) fix: avoid panic in user audit event resolver on nil event data (#23461) by @Aloui-Ikram in https://github.com/goharbor/harbor/pull/23501
* (cherry-pick) fix: Constrain /registries/ping to the saved URL for existing registries (#23463) by @Aloui-Ikram in https://github.com/goharbor/harbor/pull/23502
* (cherry-pick) Add a size limit for manifest uploads by @Aloui-Ikram in https://github.com/goharbor/harbor/pull/23503
* cherry-pick: fix(ui): use dark login background in dark mode by @bupd in https://github.com/goharbor/harbor/pull/23539
* ci: remove third-party docker action by @stonezdj in https://github.com/goharbor/harbor/pull/23693
* (cherry-pick) neutralize CSV formula in scan export by @stonezdj in https://github.com/goharbor/harbor/pull/23696
* (cherry-pick): prevent proxy-cache poisoning via robot-name prefix by @stonezdj in https://github.com/goharbor/harbor/pull/23695
* (cherry-pick) Exclude replication from dockerhub in github action by @stonezdj in https://github.com/goharbor/harbor/pull/23715
* (cherry-pick) fix: convert setup_timestamp, status_revision, and revision columns to bigint to avoid Y2K38 overflow (#23711) by @stonezdj in https://github.com/goharbor/harbor/pull/23719
* (cherry-pick) add size limit for audit log payload by @stonezdj in https://github.com/goharbor/harbor/pull/23758
* (cherry-pick) Refine utils function IsLocalPath by @stonezdj in https://github.com/goharbor/harbor/pull/23757
* [Backport] test(api): enhance stability of test_copy_disability in tag immutability by @fiona-xie in https://github.com/goharbor/harbor/pull/23775
* (cherry-pick): query robot account to validate proxy session and fix UT by @stonezdj in https://github.com/goharbor/harbor/pull/23780
* [cherry-pick]fix: correct grammar and typos in user-facing error messages by @wy65701436 in https://github.com/goharbor/harbor/pull/23822
* [cherry pick] Remove hardcoded credentials and prevernt passwords in logs by @jUDASmILE in https://github.com/goharbor/harbor/pull/23865
* make hostname comparisons case-insensitive by @stonezdj in https://github.com/goharbor/harbor/pull/23833
* [cherry pick] improve HTTP client request logging and credential str… by @jUDASmILE in https://github.com/goharbor/harbor/pull/23876
* [cherry pick]refactor: sanitize connection details in logs and enhance error messa… by @jUDASmILE in https://github.com/goharbor/harbor/pull/23886
* (cherry-pick) make endpoint handling and validation case-insensitive by @stonezdj in https://github.com/goharbor/harbor/pull/23887
### Bump Component Version 🤖
* bump the v2.15.3 by @wy65701436 in https://github.com/goharbor/harbor/pull/23508
* chore(deps): bump the patch-updates group across 1 directory with 3 updates by @dependabot[bot] in https://github.com/goharbor/harbor/pull/23728
* chore(deps-dev): bump stylelint from 14.16.1 to 17.14.1 in /src/portal by @dependabot[bot] in https://github.com/goharbor/harbor/pull/23741
* bump golang to v1.26.7 and refresh base image by @stonezdj in https://github.com/goharbor/harbor/pull/23797
* Bump trivy(0.74.0) and trivy adapter(0.39.0) by @stonezdj in https://github.com/goharbor/harbor/pull/23796
* chore(deps): upgrade Go dependencies to fix CVEs by @stonezdj in https://github.com/goharbor/harbor/pull/23802
* (cherry-pick): bump golang.org/x/crypto to v0.55.0 by @stonezdj in https://github.com/goharbor/harbor/pull/23825
* chore(deps-dev): bump express and @types/express in /src/portal by @dependabot[bot] in https://github.com/goharbor/harbor/pull/23739
* Bump up distribution version by @stonezdj in https://github.com/goharbor/harbor/pull/23811
* chore(deps): upgrade Go dependencies to fix CVEs by @stonezdj in https://github.com/goharbor/harbor/pull/23877
* Bump up distribution version by @stonezdj in https://github.com/goharbor/harbor/pull/23890
### Other Changes
* (cherry-pick) Fix job service dashboard testcase failed issue by @stonezdj in https://github.com/goharbor/harbor/pull/23492
* (cherry-pick): fix race condition in log rotation test by polling job status by @stonezdj in https://github.com/goharbor/harbor/pull/23525
* (cherry-pick)ci: pin docker-practice/actions-setup-docker to a full commit SHA (#23554) by @stonezdj in https://github.com/goharbor/harbor/pull/23667
* (cherry-pick): add explicit permissions block to workflows by @stonezdj in https://github.com/goharbor/harbor/pull/23694
* (cherry-pick) fix: system_cve testcase failing at end of month by @stonezdj in https://github.com/goharbor/harbor/pull/23817
* ci: Make go mod tidy work without generated swagger code so Dependabot can update Go modules (release-2.15.0) by @Vad1mo in https://github.com/goharbor/harbor/pull/23841


**Full Changelog**: https://github.com/goharbor/harbor/compare/v2.15.2...v2.15.3-rc1
