来源: https://github.com/goharbor/harbor/releases/tag/v2.15.0-rc2

# goharbor/harbor v2.15.0-rc2 Release Notes

Published at: 2026-03-10T07:39:26Z

<!-- Release notes generated using configuration in .github/release.yml at v2.15.0-rc2 -->

## What's Changed
### Exciting New Features 🎉
* add tag deletion option for gc by @wy65701436 in https://github.com/goharbor/harbor/pull/22382
* Add UI for limit upstream registry connection by @stonezdj in https://github.com/goharbor/harbor/pull/22406
* disable land tag in the backend storage by @wy65701436 in https://github.com/goharbor/harbor/pull/22507
* Add UI option to enable proxy cache referrer API by @stonezdj in https://github.com/goharbor/harbor/pull/22767

### Enhancement 🚀
* Add max_upstream_conn parameter for each proxy_cache project by @stonezdj in https://github.com/goharbor/harbor/pull/22348
* add per-endpoint CA certificate support for registry endpoints by @wy65701436 in https://github.com/goharbor/harbor/pull/22535
* Add oci type support for jfrog registry by @stonezdj in https://github.com/goharbor/harbor/pull/22589
* add DeleteTag support for both aws and azure cr adapters by @shaiatias in https://github.com/goharbor/harbor/pull/22227
### Component updates ⬆️
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
* fix the git action publish permission issue by @wy65701436 in https://github.com/goharbor/harbor/pull/22841
* [cherry-pick] fix: Update Verify Remote Cert tooltip for registry endpoints by @wy65701436 in https://github.com/goharbor/harbor/pull/22867
* [CHERRY_PICK] fix(session): use correct maxlifetime in SessionRegenerate by @chlins in https://github.com/goharbor/harbor/pull/22881
* refresh base images for v2.15.0 rc2 by @wy65701436 in https://github.com/goharbor/harbor/pull/22883
* fix: bump Trivy to v0.69.2 following supply chain incident (#22896) by @wy65701436 in https://github.com/goharbor/harbor/pull/22911
* refresh base images for v2.15 rc2 by @wy65701436 in https://github.com/goharbor/harbor/pull/22910
* (cherry-pick) Remove payload from config audit log by @stonezdj in https://github.com/goharbor/harbor/pull/22917
* bump otel to 1.40.0 by @wy65701436 in https://github.com/goharbor/harbor/pull/22921
* Bump trivy to 0.69.3 & adapter to v0.35.1-rc.1 on release-2.15.0 by @MinerYang in https://github.com/goharbor/harbor/pull/22929
* fix(security): reject bearer tokens issued before project creation (#… by @wy65701436 in https://github.com/goharbor/harbor/pull/22938
* [cherry-pick] add the 2.14.1 sql by @wy65701436 in https://github.com/goharbor/harbor/pull/22948
* Bump trivy-adapter v0.35.1 GA on release-2.15.0 by @MinerYang in https://github.com/goharbor/harbor/pull/22967
* bump docker cli to latest version by @wy65701436 in https://github.com/goharbor/harbor/pull/22981
### Docs update 🗄️
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
* build base for v2.15.0-rc1 by @wy65701436 in https://github.com/goharbor/harbor/pull/22839
### Other Changes
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

## New Contributors
* @mxab made their first contribution in https://github.com/goharbor/harbor/pull/22280
* @ciphersaw made their first contribution in https://github.com/goharbor/harbor/pull/22301
* @rocksload made their first contribution in https://github.com/goharbor/harbor/pull/22453
* @rustversion made their first contribution in https://github.com/goharbor/harbor/pull/22494
* @intojhanurag made their first contribution in https://github.com/goharbor/harbor/pull/22510
* @geogrego made their first contribution in https://github.com/goharbor/harbor/pull/22526
* @dulanting made their first contribution in https://github.com/goharbor/harbor/pull/22520
* @Coldchen99 made their first contribution in https://github.com/goharbor/harbor/pull/22581
* @g-yunjh made their first contribution in https://github.com/goharbor/harbor/pull/22617
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

**Full Changelog**: https://github.com/goharbor/harbor/compare/v2.14.0...v2.15.0-rc2
