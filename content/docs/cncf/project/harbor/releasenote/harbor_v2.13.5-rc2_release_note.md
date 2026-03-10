来源: https://github.com/goharbor/harbor/releases/tag/v2.13.5-rc2

# goharbor/harbor v2.13.5-rc2 Release Notes

Published at: 2026-03-09T10:04:58Z

<!-- Release notes generated using configuration in .github/release.yml at main -->

## What's Changed
### Exciting New Features 🎉
* Display gc progress information in running state by @stonezdj in https://github.com/goharbor/harbor/pull/21974
* feat: Single Active Replication by @bupd in https://github.com/goharbor/harbor/pull/21347
* add tag deletion option for gc by @wy65701436 in https://github.com/goharbor/harbor/pull/22382
* Add UI for limit upstream registry connection by @stonezdj in https://github.com/goharbor/harbor/pull/22406
* disable land tag in the backend storage by @wy65701436 in https://github.com/goharbor/harbor/pull/22507
* Add UI option to enable proxy cache referrer API by @stonezdj in https://github.com/goharbor/harbor/pull/22767
* Proxy the referrer's API to upstream registry by @stonezdj in https://github.com/goharbor/harbor/pull/22746
### Enhancement 🚀
* Add manifestcache push for tag and digest to local repository by @raphaelzoellner in https://github.com/goharbor/harbor/pull/21141
* feat: support customize the job execution retention count by env by @chlins in https://github.com/goharbor/harbor/pull/22129
* Add Russian language support by @sergey-akhmineev in https://github.com/goharbor/harbor/pull/21083
* Add \status\ of CVEs to artfact scan report by @reasonerjt in https://github.com/goharbor/harbor/pull/22177
* Add max_upstream_conn parameter for each proxy_cache project by @stonezdj in https://github.com/goharbor/harbor/pull/22348
* add per-endpoint CA certificate support for registry endpoints by @wy65701436 in https://github.com/goharbor/harbor/pull/22535
* Add oci type support for jfrog registry by @stonezdj in https://github.com/goharbor/harbor/pull/22589
* add DeleteTag support for both aws and azure cr adapters by @shaiatias in https://github.com/goharbor/harbor/pull/22227
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
* Remove unused SYNC_QUOTA from env.jinja template by @mxab in https://github.com/goharbor/harbor/pull/22280
* bump base to v2.15.0 by @wy65701436 in https://github.com/goharbor/harbor/pull/22316
* chore(deps): bump github.com/stretchr/testify from 1.10.0 to 1.11.1 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22304
* chore(deps): bump github.com/aws/aws-sdk-go from 1.55.6 to 1.55.8 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22306
* chore(deps): bump github.com/go-ldap/ldap/v3 from 3.4.10 to 3.4.11 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22305
* chore(deps): bump golang.org/x/text from 0.27.0 to 0.29.0 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22338
* chore(deps): bump github.com/volcengine/volcengine-go-sdk from 1.1.29 to 1.1.31 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22337
* chore(deps): bump github.com/volcengine/volcengine-go-sdk from 1.1.32 to 1.1.34 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22356
* chore(deps): bump golang.org/x/time from 0.12.0 to 0.13.0 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22360
* chore(deps): bump k8s.io/client-go from 0.33.3 to 0.34.1 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22359
* chore(deps): bump github.com/golang-migrate/migrate/v4 from 4.18.1 to 4.19.0 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22358
* chore(deps): bump github.com/coreos/go-oidc/v3 from 3.12.0 to 3.15.0 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22357
* chore(deps): bump go.opentelemetry.io/contrib/instrumentation/github.com/gorilla/mux/otelmux from 0.59.0 to 0.63.0 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22379
* fix robot issue-21406 by @wy65701436 in https://github.com/goharbor/harbor/pull/22387
* Update and improve zh-TW Traditional Chinese locale by @PeterDaveHello in https://github.com/goharbor/harbor/pull/22423
* Allow disable audit log to DB when initialize by @wy65701436 in https://github.com/goharbor/harbor/pull/22452
* Update zh-TW Traditional Chinese locale by @PeterDaveHello in https://github.com/goharbor/harbor/pull/22468
* add migraiton sql for skip_audit_log_database by @wy65701436 in https://github.com/goharbor/harbor/pull/22487
* refactor: use strings.Builder to improve performance by @rocksload in https://github.com/goharbor/harbor/pull/22453
* refactor: replace Split in loops with more efficient SplitSeq by @rustversion in https://github.com/goharbor/harbor/pull/22494
* refactor the logic to init skip_audit_log_database by @wy65701436 in https://github.com/goharbor/harbor/pull/22493
* chore(deps): bump golang.org/x/net from 0.41.0 to 0.46.0 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22457
* Remove legacy switch from decodeFilters after UI bug #12579 fix by @intojhanurag in https://github.com/goharbor/harbor/pull/22510
* chore(deps): bump github.com/volcengine/volcengine-go-sdk from 1.1.34 to 1.1.44 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22519
* fix robot call the users api by @wy65701436 in https://github.com/goharbor/harbor/pull/22492
* Update Release note template and dependabot labels by @OrlinVasilev in https://github.com/goharbor/harbor/pull/22528
* refactor: replace HasPrefix+TrimPrefix with CutPrefix by @dulanting in https://github.com/goharbor/harbor/pull/22520
* fix(registry): correct parameter in upload status query by @chlins in https://github.com/goharbor/harbor/pull/22574
* fix: support both docker-compose v1 and docker compose v2 by @Coldchen99 in https://github.com/goharbor/harbor/pull/22581
* ci(workflows): simplify label pattern in label_check by @chlins in https://github.com/goharbor/harbor/pull/22596
* chore: Remove Unused Lang Translations - Recreate PR (#21893) by @bupd in https://github.com/goharbor/harbor/pull/22587
* fix(portal): fix typo in ko-kr placeholder and update strings by @g-yunjh in https://github.com/goharbor/harbor/pull/22617
* fix(ui): Remove unwanted scrollbar from tag-retention by @bupd in https://github.com/goharbor/harbor/pull/22598
* feat(cosign): Support Cosign v3 Bundle signature format by @Aloui-Ikram in https://github.com/goharbor/harbor/pull/22628
* feat: bump UI version v2.15.0 by @bupd in https://github.com/goharbor/harbor/pull/22645
* fix(artifact): correct typo in artifact_type column definition by @chlins in https://github.com/goharbor/harbor/pull/22656
* fix error related to search user and search groups by @stonezdj in https://github.com/goharbor/harbor/pull/22606
* refine apitest to adopt proxy environment by @MinerYang in https://github.com/goharbor/harbor/pull/22706
* Allows OIDC integration to handle the case where a user only has a single group by @lfrancke in https://github.com/goharbor/harbor/pull/22723
* refactor: use strings.Cut to simplify code by @liuyueyangxmu in https://github.com/goharbor/harbor/pull/22590
* fix(session): fix invalid data type in SessionRegenerate by @liubin in https://github.com/goharbor/harbor/pull/22726
* update swagger file for creating tag by @wy65701436 in https://github.com/goharbor/harbor/pull/22754
* Fix goroutine leak in StopAndWait by buffering errChan by @remo-lab in https://github.com/goharbor/harbor/pull/22740
* docs/makefile-commands by @intojhanurag in https://github.com/goharbor/harbor/pull/22605
* Add pprof support by @strigazi in https://github.com/goharbor/harbor/pull/22005
* fix(exporter): Export Harbor version via Prometheus exporter binary. by @Vad1mo in https://github.com/goharbor/harbor/pull/22733
* chore(deps): update github.com/Masterminds/semver to v3 by @Juneezee in https://github.com/goharbor/harbor/pull/22411
* Fix(portal): Restore Missing i18n Translation Keys by @bupd in https://github.com/goharbor/harbor/pull/22722
* Fix: Hide alert messages irrelevant to users in UI by @bupd in https://github.com/goharbor/harbor/pull/21972
* feat: Add Style Linters (usestdlibvars, dupl) by @bupd in https://github.com/goharbor/harbor/pull/22670
* Fix redis sentinel master acl for jobservice by @MinerYang in https://github.com/goharbor/harbor/pull/22765
* support parse redis acl for registry config by @MinerYang in https://github.com/goharbor/harbor/pull/22770
* fix(ui): avoid duplicate RUN in build history by @Tusharjamdade in https://github.com/goharbor/harbor/pull/22685
* fix flaky ut tests involving workers by @Vad1mo in https://github.com/goharbor/harbor/pull/22768
* Pin distribution src tag to v2.8.3-harbor.1-rc.1 by @MinerYang in https://github.com/goharbor/harbor/pull/22772
* fix(core): add warning when config admin password is ignored by @thc1006 in https://github.com/goharbor/harbor/pull/22709
* Fix: Copy Pull Button when tags are undefined by @bupd in https://github.com/goharbor/harbor/pull/22136
* Replace pull-through cache with proxy cache by @stonezdj in https://github.com/goharbor/harbor/pull/22766
* add support for configure trivy db repository via harbor.yml by @quent1-fr in https://github.com/goharbor/harbor/pull/21193
* build: remove unused REGISTRYURL and GCS download path for registry build by @SoumyaRaikwar in https://github.com/goharbor/harbor/pull/22372
* add prepare migration script for 2.15.0 by @MinerYang in https://github.com/goharbor/harbor/pull/22788
* fix: correct multiline string in yaml by @Vad1mo in https://github.com/goharbor/harbor/pull/22809
* fix: mock http server for volcenginecr adapt ut by @hyy0322 in https://github.com/goharbor/harbor/pull/22810
* chore(deps): bump form-data in /src/portal by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22523
* fix 22817 by @wy65701436 in https://github.com/goharbor/harbor/pull/22826
* Swagger Replication Rule invalid JSON by @mlimardo1984 in https://github.com/goharbor/harbor/pull/22724
* fix the git action publish permission issue by @wy65701436 in https://github.com/goharbor/harbor/pull/22840
* fix: Update Verify Remote Cert tooltip for registry endpoints by @dee077 in https://github.com/goharbor/harbor/pull/22812
* fix: wrong operation response name for UpdateRepository by @liubin in https://github.com/goharbor/harbor/pull/22851
* fix(session): use correct maxlifetime in SessionRegenerate by @chlins in https://github.com/goharbor/harbor/pull/22873
* chore(go): ignore frontend portal directory using Go 1.25 by @Iam-Karan-Suresh in https://github.com/goharbor/harbor/pull/22702
* fix: check error first before other checks by @liubin in https://github.com/goharbor/harbor/pull/22884
* fix: bump Trivy to v0.69.2 following supply chain incident by @Aloui-Ikram in https://github.com/goharbor/harbor/pull/22896
* Remove payload from config audit log by @stonezdj in https://github.com/goharbor/harbor/pull/22913
* fix codecov issue by @wy65701436 in https://github.com/goharbor/harbor/pull/22922
* fix(portal): UI Statistics display are not aligned by @mmoreiradj in https://github.com/goharbor/harbor/pull/22042
* Bump trivy to 0.69.3 & adapter to v0.35.1-rc.1 on main by @MinerYang in https://github.com/goharbor/harbor/pull/22932
* fix(security): reject bearer tokens issued before project creation by @Vad1mo in https://github.com/goharbor/harbor/pull/22900
* add the 2.14.1 sql into main by @wy65701436 in https://github.com/goharbor/harbor/pull/22947
* Bump trivy-adapter v0.35.1 GA on main by @MinerYang in https://github.com/goharbor/harbor/pull/22966
### Docs update 🗄️
* README.md: add artifact hub badge by @mohamedawnallah in https://github.com/goharbor/harbor/pull/20736
* Update contributing.md by @chethanm99 in https://github.com/goharbor/harbor/pull/22082
* Update Swagger 's readme.md by @chethanm99 in https://github.com/goharbor/harbor/pull/22087
* Update CHANGELOG.md, RELEASES.md and ROADMAP.md by @chethanm99 in https://github.com/goharbor/harbor/pull/22095
* Improve portal README.md formatting and clarity by @rgcr in https://github.com/goharbor/harbor/pull/22173
* chore: Updated RELEASE.md by updating Minor Release Support Map by @mooneeb in https://github.com/goharbor/harbor/pull/22145
* Fix typos for i18n by @ciphersaw in https://github.com/goharbor/harbor/pull/22301
* Update badges by @Vad1mo in https://github.com/goharbor/harbor/pull/22139
* fix: typos in comments by @NAM-MAN in https://github.com/goharbor/harbor/pull/22738
* chore: add OpenSSF Security Scorecard badge by @kashish00208 in https://github.com/goharbor/harbor/pull/22774
* Fix broken cosign documentation link in signature-verification.md by @Aloui-Ikram in https://github.com/goharbor/harbor/pull/22798
### Community update 🧑🏻‍🤝‍🧑🏾
* Contrib backup/restore scripts by @teletechie in https://github.com/goharbor/harbor/pull/21971
### Bump Component Version 🤖
* chore(deps): bump github.com/go-openapi/runtime from 0.28.0 to 0.29.2 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22600
* chore(deps): bump golang.org/x/crypto from 0.43.0 to 0.45.0 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22579
* chore(deps): bump k8s.io/apimachinery from 0.34.1 to 0.34.2 in /src by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22623
* chore(deps): bump lodash from 4.17.21 to 4.17.23 in /src/portal by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22763
* chore(deps-dev): bump node-forge from 1.3.1 to 1.3.2 in /src/portal/app-swagger-ui by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22594
* chore(deps-dev): bump node-forge from 1.3.1 to 1.3.3 in /src/portal by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22698
* Bump go-redis dependencies for supply chain security by @RainbowMango in https://github.com/goharbor/harbor/pull/22769
* bump go to v1.25 by @wy65701436 in https://github.com/goharbor/harbor/pull/22794
* bump base images for v2.15 by @wy65701436 in https://github.com/goharbor/harbor/pull/22807
* chore(deps): bump form-data from 4.0.2 to 4.0.4 in /src/portal/app-swagger-ui by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22522
* bump go and base images by @wy65701436 in https://github.com/goharbor/harbor/pull/22831
* bump base vserion for v2.16.0 by @wy65701436 in https://github.com/goharbor/harbor/pull/22837
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
* Remove port 9443 from harbor IP for webhook event check by @stonezdj in https://github.com/goharbor/harbor/pull/22320
* Remove GCR replication because GCR account is removed by @stonezdj in https://github.com/goharbor/harbor/pull/22309
* chore(deps): bump aws-actions/configure-aws-credentials from 4.2.1 to 5.0.0 by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22324
* chore(deps): bump actions/setup-node from 4 to 5 by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22325
* chore(deps): bump actions/stale from 9.1.0 to 10.0.0 by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22323
* chore(deps): bump actions/upload-artifact from 4 to 5 by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22509
* docs: minor improvement for docs by @geogrego in https://github.com/goharbor/harbor/pull/22526
* Add HARBOR_ADMIN to run upgrade script by @stonezdj in https://github.com/goharbor/harbor/pull/22615
* Correct the log upload path and make sure it always run by @stonezdj in https://github.com/goharbor/harbor/pull/22616
* chore(deps): bump actions/checkout from 5 to 6 by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22584
* chore(deps): bump aws-actions/configure-aws-credentials from 5.0.0 to 5.1.1 by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22599
* chore(deps): bump actions/upload-artifact from 5 to 6 by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22642
* Add Cosign keyless signing for Harbor release artifacts by @Aloui-Ikram in https://github.com/goharbor/harbor/pull/22578
* chore(deps): bump sigstore/cosign-installer from 3.7.0 to 4.0.0 by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22732
* ci: migrate build workflows to ubuntu-latest runners by @chlins in https://github.com/goharbor/harbor/pull/22750
* ci: fix the publishImage script with new docker version by @chlins in https://github.com/goharbor/harbor/pull/22753
* chore(deps): bump kentaro-m/auto-assign-action from 2.0.0 to 2.0.1 by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22748
* chore(deps): bump github/codeql-action from 3 to 4 by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22432
* chore(deps): bump actions/setup-node from 5 to 6 by @dependabot[bot] in https://github.com/goharbor/harbor/pull/22461
* docs: fix minor typos and grammar improvements in README by @Starksid007 in https://github.com/goharbor/harbor/pull/22934

## New Contributors
* @raphaelzoellner made their first contribution in https://github.com/goharbor/harbor/pull/21141
* @miledxz made their first contribution in https://github.com/goharbor/harbor/pull/21990
* @chethanm99 made their first contribution in https://github.com/goharbor/harbor/pull/22082
* @sergey-akhmineev made their first contribution in https://github.com/goharbor/harbor/pull/21083
* @strigazi made their first contribution in https://github.com/goharbor/harbor/pull/22007
* @rgcr made their first contribution in https://github.com/goharbor/harbor/pull/22173
* @mooneeb made their first contribution in https://github.com/goharbor/harbor/pull/22145
* @mxab made their first contribution in https://github.com/goharbor/harbor/pull/22280
* @ciphersaw made their first contribution in https://github.com/goharbor/harbor/pull/22301
* @rocksload made their first contribution in https://github.com/goharbor/harbor/pull/22453
* @rustversion made their first contribution in https://github.com/goharbor/harbor/pull/22494
* @intojhanurag made their first contribution in https://github.com/goharbor/harbor/pull/22510
* @geogrego made their first contribution in https://github.com/goharbor/harbor/pull/22526
* @dulanting made their first contribution in https://github.com/goharbor/harbor/pull/22520
* @Coldchen99 made their first contribution in https://github.com/goharbor/harbor/pull/22581
* @g-yunjh made their first contribution in https://github.com/goharbor/harbor/pull/22617
* @Aloui-Ikram made their first contribution in https://github.com/goharbor/harbor/pull/22628
* @lfrancke made their first contribution in https://github.com/goharbor/harbor/pull/22723
* @liuyueyangxmu made their first contribution in https://github.com/goharbor/harbor/pull/22590
* @NAM-MAN made their first contribution in https://github.com/goharbor/harbor/pull/22738
* @remo-lab made their first contribution in https://github.com/goharbor/harbor/pull/22740
* @teletechie made their first contribution in https://github.com/goharbor/harbor/pull/21971
* @Tusharjamdade made their first contribution in https://github.com/goharbor/harbor/pull/22685
* @thc1006 made their first contribution in https://github.com/goharbor/harbor/pull/22709
* @kashish00208 made their first contribution in https://github.com/goharbor/harbor/pull/22774
* @shaiatias made their first contribution in https://github.com/goharbor/harbor/pull/22227
* @RainbowMango made their first contribution in https://github.com/goharbor/harbor/pull/22769
* @quent1-fr made their first contribution in https://github.com/goharbor/harbor/pull/21193
* @SoumyaRaikwar made their first contribution in https://github.com/goharbor/harbor/pull/22372
* @vastonus made their first contribution in https://github.com/goharbor/harbor/pull/22407
* @mlimardo1984 made their first contribution in https://github.com/goharbor/harbor/pull/22724
* @dee077 made their first contribution in https://github.com/goharbor/harbor/pull/22812
* @Iam-Karan-Suresh made their first contribution in https://github.com/goharbor/harbor/pull/22702
* @mmoreiradj made their first contribution in https://github.com/goharbor/harbor/pull/22042
* @Starksid007 made their first contribution in https://github.com/goharbor/harbor/pull/22934

**Full Changelog**: https://github.com/goharbor/harbor/compare/v2.13.4...v2.13.5-rc2
