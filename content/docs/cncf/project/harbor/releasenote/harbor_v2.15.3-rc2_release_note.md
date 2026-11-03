来源: https://github.com/goharbor/harbor/releases/tag/v2.15.3-rc2

# goharbor/harbor v2.15.3-rc2 Release Notes

Published at: 2026-09-24T02:31:00Z

<!-- Release notes generated using configuration in .github/release.yml at v2.15.3-rc2 -->

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
* [cherry pick] cherry pick 23974 changes to release-2.15.0 branch by @jUDASmILE in https://github.com/goharbor/harbor/pull/23982
* [CHERRY-PICK] fix(gc): do not count blobs missing from storage as freed space by @velmoga in https://github.com/goharbor/harbor/pull/23980
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
* chore(deps): bump github.com/go-asn1-ber/asn1-ber from 1.5.8-0.20250403174932-29230038a667 to 1.5.8 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/23905
* chore(deps): bump github.com/go-openapi/runtime from 0.32.2 to 0.33.2 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/23909
* chore(deps): bump marked from 18.0.9 to 18.0.12 in /src/portal in the patch-updates group across 1 directory by @dependabot[bot] in https://github.com/goharbor/harbor/pull/23852
* chore(deps): bump github.com/aws/aws-sdk-go-v2/credentials from 1.19.19 to 1.20.3 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/23908
* chore(deps): bump golang.org/x/sync from 0.22.0 to 0.23.0 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/23904
* chore(deps): bump github.com/jackc/pgx/v5 from 5.10.0 to 5.11.0 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/23902
* chore(deps): bump the patch-updates group across 1 directory with 2 updates by @dependabot[bot] in https://github.com/goharbor/harbor/pull/23844
* chore(deps-dev): bump karma-chrome-launcher from 3.1.1 to 3.2.0 in /src/portal by @dependabot[bot] in https://github.com/goharbor/harbor/pull/23740
* chore(deps): bump the kubernetes group across 1 directory with 2 updates by @dependabot[bot] in https://github.com/goharbor/harbor/pull/23898
* chore(deps-dev): bump webpack from 5.107.2 to 5.110.3 in /src/portal/app-swagger-ui by @dependabot[bot] in https://github.com/goharbor/harbor/pull/23849
* chore(deps): bump css-loader from 6.11.0 to 7.1.5 in /src/portal/app-swagger-ui by @dependabot[bot] in https://github.com/goharbor/harbor/pull/23846
* chore(deps): bump echarts from 5.6.0 to 6.1.0 in /src/portal by @dependabot[bot] in https://github.com/goharbor/harbor/pull/23730
* chore(deps-dev): bump webpack-dev-server from 4.15.2 to 6.0.0 in /src/portal/app-swagger-ui by @dependabot[bot] in https://github.com/goharbor/harbor/pull/23959
* chore(deps-dev): bump stylelint from 17.14.1 to 17.15.0 in /src/portal by @dependabot[bot] in https://github.com/goharbor/harbor/pull/23962
* chore(deps): bump marked from 18.0.12 to 18.0.13 in /src/portal in the patch-updates group by @dependabot[bot] in https://github.com/goharbor/harbor/pull/23960
* chore(deps-dev): bump webpack from 5.110.3 to 5.111.0 in /src/portal/app-swagger-ui by @dependabot[bot] in https://github.com/goharbor/harbor/pull/23958
* Bump up distribution version and refresh base image by @stonezdj in https://github.com/goharbor/harbor/pull/23991
### Other Changes
* (cherry-pick) Fix job service dashboard testcase failed issue by @stonezdj in https://github.com/goharbor/harbor/pull/23492
* (cherry-pick): fix race condition in log rotation test by polling job status by @stonezdj in https://github.com/goharbor/harbor/pull/23525
* (cherry-pick)ci: pin docker-practice/actions-setup-docker to a full commit SHA (#23554) by @stonezdj in https://github.com/goharbor/harbor/pull/23667
* (cherry-pick): add explicit permissions block to workflows by @stonezdj in https://github.com/goharbor/harbor/pull/23694
* (cherry-pick) fix: system_cve testcase failing at end of month by @stonezdj in https://github.com/goharbor/harbor/pull/23817
* ci: Make go mod tidy work without generated swagger code so Dependabot can update Go modules (release-2.15.0) by @Vad1mo in https://github.com/goharbor/harbor/pull/23841


**Full Changelog**: https://github.com/goharbor/harbor/compare/v2.15.2...v2.15.3-rc2
