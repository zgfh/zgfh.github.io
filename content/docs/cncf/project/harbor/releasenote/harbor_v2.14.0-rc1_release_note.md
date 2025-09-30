来源: https://github.com/goharbor/harbor/releases/tag/v2.14.0-rc1

# goharbor/harbor v2.14.0-rc1 Release Notes

Published at: 2025-08-29T11:29:47Z

<!-- Release notes generated using configuration in .github/release.yml at v2.14.0-rc1 -->

## What's Changed
### Exciting New Features 🎉
* Display gc progress information in running state by @stonezdj in https://github.com/goharbor/harbor/pull/21974
* feat: Single Active Replication by @bupd in https://github.com/goharbor/harbor/pull/21347
### Enhancement 🚀
* Add manifestcache push for tag and digest to local repository by @raphaelzoellner in https://github.com/goharbor/harbor/pull/21141
* feat: support customize the job execution retention count by env by @chlins in https://github.com/goharbor/harbor/pull/22129
* Add Russian language support by @sergey-akhmineev in https://github.com/goharbor/harbor/pull/21083
* Add \status\ of CVEs to artfact scan report by @reasonerjt in https://github.com/goharbor/harbor/pull/22177
### Component updates ⬆️
* bump base version for v2.14 by @wy65701436 in https://github.com/goharbor/harbor/pull/21819
* Update dependencies in Harbor UI by @bupd in https://github.com/goharbor/harbor/pull/21823
* fix: support preheat cnai model artifact by @chlins in https://github.com/goharbor/harbor/pull/21849
* fix jobservice container loglevel consistent with job_log by @MinerYang in https://github.com/goharbor/harbor/pull/21874
* update artifact info by @stonezdj in https://github.com/goharbor/harbor/pull/21902
* fix: check blob exist before copying layers samller than chunk size by @liubin in https://github.com/goharbor/harbor/pull/21883
* revise make file for lint api by @wy65701436 in https://github.com/goharbor/harbor/pull/21906
* Remove the error check never happen by @stonezdj in https://github.com/goharbor/harbor/pull/21916
* enhance the query judgement by @wy65701436 in https://github.com/goharbor/harbor/pull/21924
* FIX: Display 'No SBOM' in multi-arch images in HarborUI by @bupd in https://github.com/goharbor/harbor/pull/21459
* Update the severity, fixed version and cvss_score_v3 by @stonezdj in https://github.com/goharbor/harbor/pull/21915
* unify the golang image version by @wy65701436 in https://github.com/goharbor/harbor/pull/21935
* Generate URI of token service via Host in request by @reasonerjt in https://github.com/goharbor/harbor/pull/21898
* refactor: replace interface{} to any by @chlins in https://github.com/goharbor/harbor/pull/21973
* Fix: Helm Chart Copy Button in UI by @bupd in https://github.com/goharbor/harbor/pull/21969
* add build flag for harbor exporter by @wy65701436 in https://github.com/goharbor/harbor/pull/21988
* update robot permission table by @wy65701436 in https://github.com/goharbor/harbor/pull/21989
* bump up golang version to v1.24.3 by @wy65701436 in https://github.com/goharbor/harbor/pull/21993
* increase docker client timeout for robot case by @MinerYang in https://github.com/goharbor/harbor/pull/21994
* Test update for adding nil value to list by @miledxz in https://github.com/goharbor/harbor/pull/21990
* chore(deps): bump github.com/aliyun/alibaba-cloud-sdk-go from 1.63.84 to 1.63.107 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/21943
* feat: add rate limiter for alibaba cloud acr adapter by @njucjc in https://github.com/goharbor/harbor/pull/21953
* chore(deps): bump k8s.io/client-go from 0.32.2 to 0.33.1 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22011
* chore(deps): bump github.com/volcengine/volcengine-go-sdk from 1.0.185 to 1.1.10 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22035
* chore: fix the arguments for codecov v5 by @chlins in https://github.com/goharbor/harbor/pull/22050
* Refactor: Simplify SearchAndOnBoardGroup Logic by @bupd in https://github.com/goharbor/harbor/pull/22058
* Remove document link from Image Scanner by @stonezdj in https://github.com/goharbor/harbor/pull/22064
* chore(deps): bump helm.sh/helm/v3 from 3.17.2 to 3.18.2 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22060
* fix: CVE Allowlist Validation by @bupd in https://github.com/goharbor/harbor/pull/22077
* refactor: simplify some implementations by modern go features by @chlins in https://github.com/goharbor/harbor/pull/21998
* chore(deps): bump github.com/volcengine/volcengine-go-sdk from 1.1.11 to 1.1.17 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22089
* chore(deps): bump github.com/volcengine/volcengine-go-sdk from 1.1.17 to 1.1.19 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22133
* add dockernetwork parameter for build process by @MinerYang in https://github.com/goharbor/harbor/pull/22138
* add BUILD_INSTALLER parameter for optionally build prepare and log container by @MinerYang in https://github.com/goharbor/harbor/pull/22148
* lazy load v2_swagger_client module by @MinerYang in https://github.com/goharbor/harbor/pull/22154
* Fix: Audit Log Eventtype antipattern in System Settings UI by @bupd in https://github.com/goharbor/harbor/pull/22147
* Add 400 code response in swagger.yaml for updateRegistry updateReplicationPolicy and headProject by @yuzp1996 in https://github.com/goharbor/harbor/pull/22165
* Update FixVersion and ScoreV3 by @strigazi in https://github.com/goharbor/harbor/pull/22007
* Set MAX_JOB_DURATION_SECONDS from jobservice config.yml by @stonezdj in https://github.com/goharbor/harbor/pull/22116
* clean up project metadata for tag retention policy after deletion by @MinerYang in https://github.com/goharbor/harbor/pull/22174
* chore(deps): bump helm.sh/helm/v3 from 3.18.2 to 3.18.3 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22113
* chore(deps): bump helm.sh/helm/v3 from 3.18.3 to 3.18.4 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22188
* Don't always skip vuln check when artifact is not scannable by @reasonerjt in https://github.com/goharbor/harbor/pull/22187
* add the replicaiton adapter whitelist by @wy65701436 in https://github.com/goharbor/harbor/pull/22198
* fix: correct the permission of project maintainer role for webhook policy by @chlins in https://github.com/goharbor/harbor/pull/22135
* update the orm filter func by @wy65701436 in https://github.com/goharbor/harbor/pull/22208
* bump golang version by @wy65701436 in https://github.com/goharbor/harbor/pull/22205
* Add HTTP 409 error when creating robot account by @stonezdj in https://github.com/goharbor/harbor/pull/22201
* feat: support raw format for CNAI model by @chlins in https://github.com/goharbor/harbor/pull/22040
* The tag retention job failed with 403 error message by @stonezdj in https://github.com/goharbor/harbor/pull/22159
* remove extra build_base=false && pull_base_from_dockerhub=false check logic by @MinerYang in https://github.com/goharbor/harbor/pull/22233
* chore(deps): bump github.com/volcengine/volcengine-go-sdk from 1.1.19 to 1.1.25 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22225
* Delete local cache if the artifact doesn't exist in upstream registry by @stonezdj in https://github.com/goharbor/harbor/pull/22175
* update the support list of proxy cache by @wy65701436 in https://github.com/goharbor/harbor/pull/22237
* bump go version by @wy65701436 in https://github.com/goharbor/harbor/pull/22238
* bump base verson for v2.15.0 by @wy65701436 in https://github.com/goharbor/harbor/pull/22241
* build base images by @wy65701436 in https://github.com/goharbor/harbor/pull/22249
* add prepare migration script for 2.14.0 by @MinerYang in https://github.com/goharbor/harbor/pull/22247
* chore(deps): bump helm.sh/helm/v3 from 3.18.4 to 3.18.5 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22258
* chore(deps): bump github.com/volcengine/volcengine-go-sdk from 1.1.25 to 1.1.26 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22244
* Refine the sql to query non empty repositories by @stonezdj in https://github.com/goharbor/harbor/pull/22269
* chore(deps): bump github.com/beego/beego/v2 from 2.3.6 to 2.3.8 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22282
* chore(deps): bump github.com/prometheus/client_model from 0.6.1 to 0.6.2 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22283
* chore(deps): bump github.com/cloudevents/sdk-go/v2 from 2.15.2 to 2.16.1 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22281
* chore(deps): bump github.com/go-openapi/swag from 0.23.0 to 0.23.1 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22243
* chore(deps): bump github.com/volcengine/volcengine-go-sdk from 1.1.26 to 1.1.29 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22284
* build base for v2.14.0 by @wy65701436 in https://github.com/goharbor/harbor/pull/22299
### Docs update 🗄️
* README.md: add artifact hub badge by @mohamedawnallah in https://github.com/goharbor/harbor/pull/20736
* Update contributing.md by @chethanm99 in https://github.com/goharbor/harbor/pull/22082
* Update Swagger 's readme.md by @chethanm99 in https://github.com/goharbor/harbor/pull/22087
* Update CHANGELOG.md, RELEASES.md and ROADMAP.md by @chethanm99 in https://github.com/goharbor/harbor/pull/22095
* Improve portal README.md formatting and clarity by @rgcr in https://github.com/goharbor/harbor/pull/22173
* chore: Updated RELEASE.md by updating Minor Release Support Map by @mooneeb in https://github.com/goharbor/harbor/pull/22145
### Other Changes
* Update robot testcase related to security hub row count to 15 by default by @stonezdj in https://github.com/goharbor/harbor/pull/21846
* update gitaction machine to 22.04 by @wy65701436 in https://github.com/goharbor/harbor/pull/21900
* Add missing step in e2e pipeline setup by @bupd in https://github.com/goharbor/harbor/pull/21888
* change python ./setup.py install to pip install . because deprecated by @stonezdj in https://github.com/goharbor/harbor/pull/21952
* udpate storage to s3 by @wy65701436 in https://github.com/goharbor/harbor/pull/21999
* chore(deps): bump aws-actions/configure-aws-credentials from 4.1.0 to 4.2.1 by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22003
* Add environment variable add network_type env by @stonezdj in https://github.com/goharbor/harbor/pull/22097
* change the pass-CI rules to exclude the resources and robot-cases folder by @stonezdj in https://github.com/goharbor/harbor/pull/22121
* Remove testcase Open Image Scanners doc page by @stonezdj in https://github.com/goharbor/harbor/pull/22180
* Display download url for BUILD_PACKAGE action by @stonezdj in https://github.com/goharbor/harbor/pull/22197
* Upload build logs to github artifact by @stonezdj in https://github.com/goharbor/harbor/pull/22223
* chore(deps): bump actions/checkout from 3 to 5 by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22250
* Adjust the xpath to find the package column in testcase by @stonezdj in https://github.com/goharbor/harbor/pull/22292
* Remove gitlab replication by @stonezdj in https://github.com/goharbor/harbor/pull/22298

## New Contributors
* @raphaelzoellner made their first contribution in https://github.com/goharbor/harbor/pull/21141
* @miledxz made their first contribution in https://github.com/goharbor/harbor/pull/21990
* @chethanm99 made their first contribution in https://github.com/goharbor/harbor/pull/22082
* @sergey-akhmineev made their first contribution in https://github.com/goharbor/harbor/pull/21083
* @strigazi made their first contribution in https://github.com/goharbor/harbor/pull/22007
* @rgcr made their first contribution in https://github.com/goharbor/harbor/pull/22173
* @mooneeb made their first contribution in https://github.com/goharbor/harbor/pull/22145

**Full Changelog**: https://github.com/goharbor/harbor/compare/v2.13.0...v2.14.0-rc1
