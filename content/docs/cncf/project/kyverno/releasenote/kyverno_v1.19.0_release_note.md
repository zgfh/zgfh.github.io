来源: https://github.com/kyverno/kyverno/releases/tag/v1.19.0

# kyverno/kyverno v1.19.0 Release Notes

Published at: 2026-08-20T09:34:27Z

## What's Changed
* fix: limit intermediate certs to mitigate CVE-2026-32280 by @atharrva01 in https://github.com/kyverno/kyverno/pull/15858
* ci: fix cosign releaser step by @lucchmielowski in https://github.com/kyverno/kyverno/pull/15932
* chore(deps): bump github.com/rs/zerolog from 1.35.0 to 1.35.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/15917
* Feat/cli apply cross resource by @SargamPuram in https://github.com/kyverno/kyverno/pull/15846
* automate stale PR updates by @JimBugwadia in https://github.com/kyverno/kyverno/pull/15942
* fix: revert 15880 - support httpAllowList and httpBlockList for cluster-scoped policies by @JimBugwadia in https://github.com/kyverno/kyverno/pull/15960
* fix permissions for pr-branch-updater by @JimBugwadia in https://github.com/kyverno/kyverno/pull/15967
* use existing PR updater token by @JimBugwadia in https://github.com/kyverno/kyverno/pull/15974
* chore(deps): bump goreleaser/goreleaser-action from 7.1.0 to 7.2.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/15976
* chore(deps): bump aquasecurity/trivy-action from 0.35.0 to 0.36.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/15943
* update blocklist to allow in-cluster HTTP calls by @JimBugwadia in https://github.com/kyverno/kyverno/pull/15973
* chore(deps): bump github.com/Azure/go-ntlmssp from 0.0.0-20221128193559-754e69321358 to 0.1.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/15954
* chore(deps): bump github.com/aptible/supercronic from 0.2.43 to 0.2.45 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/15961
* ci: Fix http conformance test blocklist by @lucchmielowski in https://github.com/kyverno/kyverno/pull/15986
* Add mpol handler gap tests (namespaced, exception, failurePolicy, dry-run, backgroundSA) by @rx18-eng in https://github.com/kyverno/kyverno/pull/15733
* chore: update available versions in issues by @lucchmielowski in https://github.com/kyverno/kyverno/pull/15996
* test: add dpol controller integration tests by @rx18-eng in https://github.com/kyverno/kyverno/pull/15859
* test: add gpol exception and CEL edge case integration tests by @rx18-eng in https://github.com/kyverno/kyverno/pull/15787
* refactor: drop reliance on EnvSet in favor of in-library versioning by @aerosouund in https://github.com/kyverno/kyverno/pull/16014
* fix(jmespath): prevent panic in label_match on nested structures by @pulkitvats2007-crypto in https://github.com/kyverno/kyverno/pull/15827
* fix: retry on conflict when updating policy status by @williamclot in https://github.com/kyverno/kyverno/pull/15754
* fix: restart dynamic watchers in background reporting on 410 by @aerosouund in https://github.com/kyverno/kyverno/pull/16028
* chore: add framework tests github workflow by @aerosouund in https://github.com/kyverno/kyverno/pull/15743
* fix: support cluster-scoped resource generation in GeneratingPolicy by @realshuting in https://github.com/kyverno/kyverno/pull/16018
* fix: pass AdmissionRequest to updaterequests for mutate existing policy by @realshuting in https://github.com/kyverno/kyverno/pull/16050
* fix(cli): fix resource lookup for MutatingPolicy, GeneratingPolicy and DeletingPolicy in test command by @SargamPuram in https://github.com/kyverno/kyverno/pull/15784
* ci: skip framework tests on docs-only and helm-only PRs by @rx18-eng in https://github.com/kyverno/kyverno/pull/16088
* fix(cli): add generatedResources field for GeneratingPolicy multi-resource tests by @SargamPuram in https://github.com/kyverno/kyverno/pull/16034
* Fix/cli multiple json payloads by @SargamPuram in https://github.com/kyverno/kyverno/pull/15584
* feat(cli): add offline mock support for http mock request/response for GET method and global context entries by @SargamPuram in https://github.com/kyverno/kyverno/pull/15948
* chore: add new gpol samples by @realshuting in https://github.com/kyverno/kyverno/pull/16097
* fix: validate name field in globalReference context entry by @atharrva01 in https://github.com/kyverno/kyverno/pull/16003
* fix(gctx): correctly track per-loader load state to avoid skipping LoadData by @liuxu623 in https://github.com/kyverno/kyverno/pull/16099
* fix: skip report creation for subresources with empty name/UID by @realshuting in https://github.com/kyverno/kyverno/pull/16114
* feat: add updaterequest total gauge metric by @realshuting in https://github.com/kyverno/kyverno/pull/16115
* feat(helm): support extraArgs in CRDs migration job by @Suhani95 in https://github.com/kyverno/kyverno/pull/16132
* feat: add non-goals by @realshuting in https://github.com/kyverno/kyverno/pull/16144
* chore: point to security assessments by @realshuting in https://github.com/kyverno/kyverno/pull/16145
* chore: update dependency policy by @realshuting in https://github.com/kyverno/kyverno/pull/16150
* fix(engine/vpol): include CEL validation expression index in policy report properties                                                                 by @Rohanraj123 in https://github.com/kyverno/kyverno/pull/15916
* feat(helm): add optional PrometheusRule template by @realshuting in https://github.com/kyverno/kyverno/pull/16155
* chore: clarify performance baselines by @realshuting in https://github.com/kyverno/kyverno/pull/16154
* feat: update api docs by @realshuting in https://github.com/kyverno/kyverno/pull/16143
* feat: add NOTICE and embed attribution in container images by @realshuting in https://github.com/kyverno/kyverno/pull/16151
* feat: add opertional runbook by @realshuting in https://github.com/kyverno/kyverno/pull/16149
* feat(cli): add offline mock support for k8sresource-backed global context entries via inline and external resource manifests by @SargamPuram in https://github.com/kyverno/kyverno/pull/16123
* fix(helm): reportsServer.enabled=true fails with "Image tags must be strings" by @yashrajshuklaaa in https://github.com/kyverno/kyverno/pull/16167
* fix(Makefile): wire readiness-checker into local kind dev workflow by @mastersans in https://github.com/kyverno/kyverno/pull/16181
* test: add NewTestEnvWithOptions for opt-in policy type wiring by @rx18-eng in https://github.com/kyverno/kyverno/pull/16005
* fix(namespacedmutatingpolicy): fix crash loop, missing status, and recorder key by @sandert-k8s in https://github.com/kyverno/kyverno/pull/16055
* docs(perf-testing): add v1.18.1 CEL admission latency benchmarks and reorganize perf-testing layout by @realshuting in https://github.com/kyverno/kyverno/pull/16197
* test: add additional dpol controller integration tests by @rx18-eng in https://github.com/kyverno/kyverno/pull/15966
* ci: cache envtest binaries between framework test runs by @rx18-eng in https://github.com/kyverno/kyverno/pull/16110
* fix(dpol): apply namespaceSelector against Namespace resource own labels by @realshuting in https://github.com/kyverno/kyverno/pull/16200
* fix: do not abort required validation on non-matching images by @lucchmielowski in https://github.com/kyverno/kyverno/pull/16208
* fix(cli): allow multiple CRDs in to be in the --crd-path file by @the-technat in https://github.com/kyverno/kyverno/pull/16161
* test(integration): migrate gpol sync-clone scenarios from chainsaw by @rx18-eng in https://github.com/kyverno/kyverno/pull/16206
* fix: add the readiness checker to the ci image archive by @aerosouund in https://github.com/kyverno/kyverno/pull/16220
* fix: add access to clusterroles and bindings in the standard kyverno config by @aerosouund in https://github.com/kyverno/kyverno/pull/16219
* feat: Enable Cosign verbosity debugging by @naseyro in https://github.com/kyverno/kyverno/pull/16207
* chore: regenerate CRDs and docs after GHSA-79gf-7frw-68m9 API bump by @realshuting in https://github.com/kyverno/kyverno/pull/16241
* ci: bump codecov-action to v6.0.2 to fix uploader GPG key verification by @rx18-eng in https://github.com/kyverno/kyverno/pull/16273
* fix: support cel exception in cli apply 'exceptions-within-resources' by @bakito in https://github.com/kyverno/kyverno/pull/16178
* docs: fix duplicated word in cleanuppolicy validateAuth comment by @s3onghyun in https://github.com/kyverno/kyverno/pull/16279
* return correct results for NotEquals type mismatch cases by @7se7en72025 in https://github.com/kyverno/kyverno/pull/16276
* feat(cli): support multiple CRD paths and hook CRD processor into test command by @asiyani in https://github.com/kyverno/kyverno/pull/15824
* fix: wire gpolEngine and gpolProvider into policyController by @yashrajshuklaaa in https://github.com/kyverno/kyverno/pull/16171
* fix: nil pointer panic in getGpolTriggers on ListResource error by @senutpal in https://github.com/kyverno/kyverno/pull/16245
* chore(deps): bump github/codeql-action from 4.35.2 to 4.35.4 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16045
* Fix UR regression by @avoidik in https://github.com/kyverno/kyverno/pull/16280
* Fix context and SyncWatchers race conditions in GeneratingPolicy by @Aneesh-Hegde in https://github.com/kyverno/kyverno/pull/16041
* feat(pss-helm): add image to allowed volumetypes by @yehlo in https://github.com/kyverno/kyverno/pull/15906
* fix(generate): batch UpdateRequests to avoid etcd size limit by @vmsilvamolina in https://github.com/kyverno/kyverno/pull/15872
* fix(policy): apply orphanDownstreamOnPolicyDelete to clone cleanup by @realshuting in https://github.com/kyverno/kyverno/pull/16329
* fix(background): remove dead watcher entry on goroutine exit by @Ebraam-Ashraf in https://github.com/kyverno/kyverno/pull/16130
* fix(deps): bump golang.org/x/crypto to v0.53.0 and x/net to v0.56.0 to resolve security CVEs by @realshuting in https://github.com/kyverno/kyverno/pull/16340
* fix(generate): support NamespacedGeneratingPolicy end-to-end by @realshuting in https://github.com/kyverno/kyverno/pull/16338
* feat: honor expired CEL PolicyExceptions by @realshuting in https://github.com/kyverno/kyverno/pull/16299
* fix(background): scan NamespacedImageValidatingPolicy resources too by @Proximyst in https://github.com/kyverno/kyverno/pull/16301
* fix: validate stdin across apply paths by @karthikmanam in https://github.com/kyverno/kyverno/pull/16347
* feat(cli): add CEL http.Post mocking test fixtures, duplicate validation check, and integration tests by @SargamPuram in https://github.com/kyverno/kyverno/pull/16297
* fix(helm): serialize gh-pages publishes to prevent missing kyverno-policies releases by @ANAMASGARD in https://github.com/kyverno/kyverno/pull/16291
* chore(deps): bump actions/cache from 5.0.3 to 6.1.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16371
* fix: upgrade go toolchain to 1.26.3 to resolve CVE-2026-39836 by @aditip149209 in https://github.com/kyverno/kyverno/pull/16361
* fix(deps): upgrade ristretto to v2 by @chimanjain in https://github.com/kyverno/kyverno/pull/16360
* fix: unblock ko image publish by replacing escaping kodata symlinks by @realshuting in https://github.com/kyverno/kyverno/pull/16381
* chore(workflow): dynamically discover active branches for Trivy issue sync by @realshuting in https://github.com/kyverno/kyverno/pull/16377
* fix CEL autogen namespace replacement by @dag-andersen in https://github.com/kyverno/kyverno/pull/16039
* fix(gpol): support mixed-type aggregate literals in CEL variables by @realshuting in https://github.com/kyverno/kyverno/pull/16339
* docs: fix README workflow badge and AI policy link by @ObaidAbdullah16 in https://github.com/kyverno/kyverno/pull/16162
* fix(deps): bump rekor and in-toto-golang for codeql alerts by @realshuting in https://github.com/kyverno/kyverno/pull/16394
* test: fix webhook registration typo by @ObaidAbdullah16 in https://github.com/kyverno/kyverno/pull/16164
* feat: support skipBackgroundRequests for CEL mpol/gpol by @realshuting in https://github.com/kyverno/kyverno/pull/16369
* test(chainsaw): fix NIVP background + clone-multiple-targets setup by @realshuting in https://github.com/kyverno/kyverno/pull/16399
* chore: update pond dependency to v2 by @chimanjain in https://github.com/kyverno/kyverno/pull/16379
* chore(deps): bump goreleaser/goreleaser-action from 7.2.1 to 7.2.3 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16402
* Update backoff v7 by @khiemdoan in https://github.com/kyverno/kyverno/pull/16405
* Don't initialize rekor client for key or certificate based scenarios by @aerosouund in https://github.com/kyverno/kyverno/pull/16415
* chore(deps): bump fluxcd/flux2 from 2.8.5 to 2.8.6 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/15939
* test(chainsaw): fix clone-multiple-targets dynamic lookup fixture by @realshuting in https://github.com/kyverno/kyverno/pull/16414
* chore(deps): bump github.com/onsi/gomega from 1.39.1 to 1.40.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/15991
* chore(deps): bump golang.org/x/net from 0.48.0 to 0.55.0 in /hack/controller-gen by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16420
* test(integration): add YAML fixture loaders for the framework by @rx18-eng in https://github.com/kyverno/kyverno/pull/16229
* fix: preserve cluster-scoped generated resources by @Suhani95 in https://github.com/kyverno/kyverno/pull/16362
* fix(deps): patch ORAS and sigstore CodeQL vulnerabilities by @realshuting in https://github.com/kyverno/kyverno/pull/16426
* feat(gpol): support useServerSideApply for GeneratingPolicy by @realshuting in https://github.com/kyverno/kyverno/pull/16403
* fix(api): use allPath instead of anyPath in m.All validation loop by @Utkal059 in https://github.com/kyverno/kyverno/pull/16296
* fix: prevent ivpol webhook reconciliation loop on platforms that normalize namespaceSelector  Fixes #16256 by @pyd-07 in https://github.com/kyverno/kyverno/pull/16258
* fix(ci): use server-side apply for conformance CRD refresh by @realshuting in https://github.com/kyverno/kyverno/pull/16429
* fix: add sorting for ivpol targets by @1vanden in https://github.com/kyverno/kyverno/pull/16252
* fix(webhook): sort fine-grained policies to prevent continuous shuffle to the WebhookConfiguration's order by @InsomniaCoder in https://github.com/kyverno/kyverno/pull/15865
* fix(ci): force conflicts when server-side applying conformance CRDs by @realshuting in https://github.com/kyverno/kyverno/pull/16432
* fix(background-controller): wire MutatingPolicy and NamespacedMutatingPolicy into background scan by @sandert-k8s in https://github.com/kyverno/kyverno/pull/16255
* fix(reports): correct label prefix for mpol/dpol policies by @atharrva01 in https://github.com/kyverno/kyverno/pull/16452
* fix: ImageValidatingPolicy fails in air-gapped environments with insecureIgnoreTlog by @hugolevino in https://github.com/kyverno/kyverno/pull/16298
* fix(cli): surface GeneratingPolicy CEL errors when metadata.uid is missing by @ANAMASGARD in https://github.com/kyverno/kyverno/pull/16287
* chore(deps): bump github/codeql-action/upload-sarif from 4.35.4 to 4.36.3 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16442
* chore(deps): bump fossas/fossa-action from 1.9.0 to 2.0.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16441
* fix: resolve context leak in dynamic resource watcher by @AftAb-25 in https://github.com/kyverno/kyverno/pull/16087
* feat(gpol): add auditAnnotations support to GeneratingPolicy by @realshuting in https://github.com/kyverno/kyverno/pull/16505
* fix: add policies.kyverno.io resources to aggregate policy roles by @volantebjb in https://github.com/kyverno/kyverno/pull/16239
* fix: address open CodeQL security vulnerabilities by @realshuting in https://github.com/kyverno/kyverno/pull/16528
* chore(deps): bump github/codeql-action/upload-sarif from 4.36.3 to 4.37.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16516
* chore(deps): bump actions/labeler from 6.0.1 to 6.2.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16515
* Migrate yaml package gopkg.in/yaml.v2 to go.yaml.in/yaml/v3 by @chimanjain in https://github.com/kyverno/kyverno/pull/16511
* fix: skip reports RBAC check when background scanning is disabled by @p-fruck in https://github.com/kyverno/kyverno/pull/16490
* fix(readiness-checker): guard nil EndpointConditions.Ready to prevent panic by @rootp1 in https://github.com/kyverno/kyverno/pull/16544
* chore(deps): bump cbrgm/cleanup-stale-branches-action from 1.2.8 to 1.2.9 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16010
* chore(deps): bump the otel group across 1 directory with 4 updates by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16539
* chore(deps): bump Homebrew/actions/limit-pull-requests from 9ceb7934560eb61d131dde205a6c2d77b2e1529d to 18fcb8e3e06b4247c676c506750dc95ea7226479 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16562
* Test(conformance): pin Sigstore scaffolding version and remove redundant UR cleanup by @Suhani95 in https://github.com/kyverno/kyverno/pull/16572
* fix: resolve wildcard apiVersions GVR to GVK mapping failure in getGpolTriggers by @Karthikk-18 in https://github.com/kyverno/kyverno/pull/16525
* chore(deps): bump fluxcd/flux2/action from 2.8.6 to 2.9.2 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16573
* chore(deps): bump github.com/google/cel-go from 0.28.0 to 0.29.2 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16575
* fix(chart): wire cleanup controller core extra resources by @Suhani95 in https://github.com/kyverno/kyverno/pull/16165
* fix(admissionpolicy): set a background user so CEL request.userInfo.username is available during scans by @rx18-eng in https://github.com/kyverno/kyverno/pull/16561
* chore(deps): bump cbrgm/cleanup-stale-branches-action from 1.2.9 to 1.2.11 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16574
* fix: avoid mutating policy webhook name collisions by @realshuting in https://github.com/kyverno/kyverno/pull/16578
* fix: add missing reportProperties to v2beta1 Rule by @zyzzmohit in https://github.com/kyverno/kyverno/pull/15564
* test(integration): single-pass report aggregation helper + flagship test by @rx18-eng in https://github.com/kyverno/kyverno/pull/16244
* ci: add Semgrep SAST workflow by @IceCodeBear in https://github.com/kyverno/kyverno/pull/16464
* fix(helm): handle null image tags in _image.tpl and fix reports-server defaultTag by @AftAb-25 in https://github.com/kyverno/kyverno/pull/16063
* chore(deps): bump golang.org/x/crypto from 0.53.0 to 0.54.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16576
* fix: key generate test clone sources by policy by @Suhani95 in https://github.com/kyverno/kyverno/pull/16450
* Fix: require --resource for migrate command by @Suhani95 in https://github.com/kyverno/kyverno/pull/16471
* fix(admissionpolicy): default userInfo groups and uid during background scans by @rx18-eng in https://github.com/kyverno/kyverno/pull/16592
* chore(deps): bump github/codeql-action/upload-sarif from 4.36.3 to 4.37.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16598
* fix: handle whitespace in mpol autogen Object constructor by @santhil-cyber in https://github.com/kyverno/kyverno/pull/16292
* chore(deps): bump github.com/aptible/supercronic from 0.2.45 to 0.2.47 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16599
* chore(deps): bump github.com/sigstore/sigstore-go from 1.1.4 to 1.2.2 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16600
* fix: suppress PolicyReport skip entries for ValidatingPolicy matchConditions non-matches by @pyd-07 in https://github.com/kyverno/kyverno/pull/16588
* fix(mpol): handle DELETE target expression using oldObject by @realshuting in https://github.com/kyverno/kyverno/pull/16610
* fix(webhook): serve NamespacedImageValidatingPolicy admission at right paths by @rx18-eng in https://github.com/kyverno/kyverno/pull/16611
* fix(perf-testing): eliminate data race on shared err variable in pod creation goroutines by @Goutham-Annem in https://github.com/kyverno/kyverno/pull/16630
* fix: add subtests and fix typo in ext/wildcard/match_test.go by @Iqrima in https://github.com/kyverno/kyverno/pull/16625
* fix: resolve error shadowing in SplitDocuments signature by @Iqrima in https://github.com/kyverno/kyverno/pull/16632
* fix: CustomNamespaceLister.List honors the label selector by @7se7en72025 in https://github.com/kyverno/kyverno/pull/16628
* chore(deps): bump github.com/dgraph-io/ristretto/v2 from 2.4.0 to 2.4.2 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16621
* chore(deps): bump github/codeql-action/upload-sarif from 4.37.0 to 4.37.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16619
* ci: migrate pr-branch-updater to GitHub App auth by @JimBugwadia in https://github.com/kyverno/kyverno/pull/16662
* chore(deps): bump github.com/cyphar/filepath-securejoin from 0.6.1 to 0.7.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16620
* fix(mpol): allow ApplyConfiguration to mutate atomic lists and structs by @rx18-eng in https://github.com/kyverno/kyverno/pull/16509
* chore(deps): bump google.golang.org/grpc from 1.82.0 to 1.82.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16669
* chore(deps): bump github.com/onsi/gomega from 1.40.0 to 1.42.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16670
* refactor: add context propagation to background util functions by @farhan11166 in https://github.com/kyverno/kyverno/pull/16643
* cleanup: remove dead fakeContext code by @aerosouund in https://github.com/kyverno/kyverno/pull/16675
* feat: support MutatingPolicy target conditions and subresource targets by @realshuting in https://github.com/kyverno/kyverno/pull/16614
* fix(webhook): scope namespaced policies to their own namespace by @rx18-eng in https://github.com/kyverno/kyverno/pull/16615
* chore(deps): bump sigs.k8s.io/structured-merge-diff/v6 from 6.3.2 to 6.4.2 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16684
* chore(deps): bump Homebrew/actions/limit-pull-requests from 2026.07.13.1 to 2026.07.20.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16681
* chore: bump controller-tools by @eddycharly in https://github.com/kyverno/kyverno/pull/16687
* fix: make file extension checks case-insensitive by @Iqrima in https://github.com/kyverno/kyverno/pull/16689
* chore(deps): bump actions/setup-python from 6.2.0 to 7.0.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16668
* fix(ivpol): add debug logging for CEL image verification functions by @amarkdotdev in https://github.com/kyverno/kyverno/pull/16305
* test: point ivpol cosign tests at the kyverno test-images registry by @rx18-eng in https://github.com/kyverno/kyverno/pull/16695
* feat: reuse image verification cache for ImageValidatingPolicy by @bhuvan-somisetty in https://github.com/kyverno/kyverno/pull/16694
* fix: enforce MutatingPolicy evaluation mode semantics by @realshuting in https://github.com/kyverno/kyverno/pull/16686
* ci: assign release milestone to PRs automatically at release time by @JimBugwadia in https://github.com/kyverno/kyverno/pull/16661
* chore(deps): bump actions/labeler from 6.2.0 to 7.0.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16679
* chore(deps): bump actions/checkout from 6.0.2 to 7.0.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16680
* chore(deps): bump github/codeql-action/upload-sarif from 4.37.1 to 4.37.3 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16697
* fix: validate MAP-incompatible MutatingPolicy match conditions by @realshuting in https://github.com/kyverno/kyverno/pull/16698
* fix(policycache): surface audit-rule warnings for mixed audit and enforce policies by @rx18-eng in https://github.com/kyverno/kyverno/pull/16594
* fix(generate): reject stale trigger UIDs when live resource does not match by @ANAMASGARD in https://github.com/kyverno/kyverno/pull/16603
* Image verification credential handling refactor by @aerosouund in https://github.com/kyverno/kyverno/pull/16439
* fix(ivpol): support private Sigstore/Fulcio instances for keyless verification by @JimBugwadia in https://github.com/kyverno/kyverno/pull/16666
* feat: add YAML template mode for GeneratingPolicy with optional CEL interpolation by @realshuting in https://github.com/kyverno/kyverno/pull/16699
* feat: support MutatingAdmissionPolicy v1 on Kubernetes 1.36 by @realshuting in https://github.com/kyverno/kyverno/pull/16703
* fix: strip cross-namespace ownerReferences in CEL-based generation by @realshuting in https://github.com/kyverno/kyverno/pull/16716
* Fix DeletingPolicy objectSelector test results by @Prachidg in https://github.com/kyverno/kyverno/pull/16431
* feat(cel): add regex.replace extension function by @tendinginfinity24 in https://github.com/kyverno/kyverno/pull/16438
* fix: align dpol CLI reporting for constraint-excluded resources with vpol/mpol by @realshuting in https://github.com/kyverno/kyverno/pull/16727
* fix(ivpol): harden validation, cover ephemeral subresource, and serialize sigstore TUF access by @JimBugwadia in https://github.com/kyverno/kyverno/pull/16663
* fix(verification): use sigstore-go TUF client and fallback to trusted_root.json by @rseleven in https://github.com/kyverno/kyverno/pull/16591
* fix(ivpol): keep autogen variants per-policy to prevent cross-policy  clobbering by @rx18-eng in https://github.com/kyverno/kyverno/pull/16731
* test(integration): add ImageValidatingPolicy support to the framework by @rx18-eng in https://github.com/kyverno/kyverno/pull/16730
* feat(mpol): add auditAnnotations support to MutatingPolicy by @realshuting in https://github.com/kyverno/kyverno/pull/16721
* fix: preserve namespaceSelector during policy autogen by @pyd-07 in https://github.com/kyverno/kyverno/pull/16476
* fix: align policy metrics for new policy formats by @aditip149209 in https://github.com/kyverno/kyverno/pull/16359
* fix: validate DeletingPolicy cron schedule at admission by @Jayashanker-Padishala in https://github.com/kyverno/kyverno/pull/16728
* [Feature] add optional cache bounds via --maxGlobalContextEntries by @IceCodeBear in https://github.com/kyverno/kyverno/pull/16560
* fix(webhook): add excludeBootstrapResources flag to skip Node and CSR on Fail webhooks by @rx18-eng in https://github.com/kyverno/kyverno/pull/16397
* fix(webhook): don't mark policies not ready or clear webhooks while health is unknown  by @rx18-eng in https://github.com/kyverno/kyverno/pull/16434
* fix: prevent GlobalContextEntry informer failure from deadlocking the reconcile worker by @realshuting in https://github.com/kyverno/kyverno/pull/16739
* fix(helm): use request.namespace for vpolExclude matchConditions by @swastikCommits in https://github.com/kyverno/kyverno/pull/16751
* test(integration): align ivpol framework tests with single-phase image verification  by @rx18-eng in https://github.com/kyverno/kyverno/pull/16741
* feat(helm): expose maxGlobalContextEntries in the Kyverno chart by @IceCodeBear in https://github.com/kyverno/kyverno/pull/16749
* chore(deps): bump github.com/prometheus/client_golang from 1.23.2 to 1.24.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16770
* chore(deps): bump docker/login-action from 4.1.0 to 4.5.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16767
* chore(deps): bump the kubernetes group across 3 directories with 7 updates by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16737
* chore(deps): bump github.com/sigstore/cosign/v3 from 3.0.6 to 3.1.2 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16738
* restrict issue self-assignment to good first issues for non-members by @realshuting in https://github.com/kyverno/kyverno/pull/16776
* chore(deps): bump fluxcd/flux2/action from 2.9.2 to 2.9.3 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16735
* chore(deps): bump actions/checkout from 6.0.2 to 7.0.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16733
* chore(deps): bump ossf/scorecard-action from 2.4.3 to 2.4.4 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16734
* fix: resolve namespaceObject with live API fallback on informer cache miss by @realshuting in https://github.com/kyverno/kyverno/pull/16784
* fix(cli): evaluate mutateExisting mutating policies on admission in test by @rx18-eng in https://github.com/kyverno/kyverno/pull/16618
* feat(cli): support admission operation simulation for policy testing by @realshuting in https://github.com/kyverno/kyverno/pull/16787
* fix: honor full-exemption PolicyException when multiple exceptions match by @AftAb-25 in https://github.com/kyverno/kyverno/pull/16060
* fix: allow pod-level seccomp in restrict-seccomp-strict vpol by @Suhani95 in https://github.com/kyverno/kyverno/pull/16249
* fix(engine): honor per-rule failureAction in the admission block deci… by @rx18-eng in https://github.com/kyverno/kyverno/pull/16558
* Moving the mixed-OS (Hybrid) cluster solution  from controller specific nodeSelectors to the global values by @kubeagon in https://github.com/kyverno/kyverno/pull/15873
* fix(helm): disable in-process cert controller when cert-manager delegation is enabled by @realshuting in https://github.com/kyverno/kyverno/pull/16804
* Fix image verification parity gaps by @JimBugwadia in https://github.com/kyverno/kyverno/pull/16800
* chore(deps): bump github.com/aptible/supercronic from 0.2.47 to 0.2.48 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16802
* fix: IVPOL mutateDigest unimplemented stub by @lucchmielowski in https://github.com/kyverno/kyverno/pull/16815
* chore(deps): bump docker/login-action from 4.5.1 to 4.5.2 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16818
* fix: enforce verifyDigest in ImageValidatingPolicy evaluator by @pyd-07 in https://github.com/kyverno/kyverno/pull/16817
* chore(deps): bump github.com/go-git/go-git/v5 from 5.18.0 to 5.19.2 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16837
* chore(deps): bump Homebrew/actions/limit-pull-requests from 2026.07.20.1 to 2026.07.29.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16836
* chore(deps): bump docker/login-action from 4.5.2 to 4.6.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16834
* fix: sync GeneratingPolicy downstream in-place on trigger update and delete on no-longer-matching trigger by @realshuting in https://github.com/kyverno/kyverno/pull/16838
* fix: prevent autogen from rewriting namespaceObject in mpol by @lucchmielowski in https://github.com/kyverno/kyverno/pull/15947
* chore(deps): bump google.golang.org/grpc from 1.82.1 to 1.83.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16835
* fix: bump cel-go to v0.30.0 to resolve CVE-2026-GHSA-gcjh-h69q-9w9g by @itsvishalyadav in https://github.com/kyverno/kyverno/pull/16782
* fix: evaluate resource filters from background scanning jobs by @sagarkhandagre998 in https://github.com/kyverno/kyverno/pull/16469
* feat: surface deprecation of legacy kyverno.io policy types (warnings, helm notice, PSS default) by @realshuting in https://github.com/kyverno/kyverno/pull/16868
* feat: remove kyverno-json support from api by @eddycharly in https://github.com/kyverno/kyverno/pull/16792
* fix(dclient): use RESTMapper for GVK to GVR mapping by @FirePheonix in https://github.com/kyverno/kyverno/pull/16905
* Fix context propagation in MatchPolicyContext by @itsvishalyadav in https://github.com/kyverno/kyverno/pull/16910
* chore(deps): bump github/codeql-action/upload-sarif from 4.37.3 to 4.37.4 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16913
* [Bug Fix] Fix data race and goroutine leak in policy_spec fuzzing on get bytes error by @itsvishalyadav in https://github.com/kyverno/kyverno/pull/16908
* chore(deps): Upgrade gotest.tools to v3 by @chimanjain in https://github.com/kyverno/kyverno/pull/16915
* chore(deps): bump cbrgm/cleanup-stale-branches-action from 1.2.11 to 1.2.12 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16914
* chore(deps): bump github.com/sigstore/sigstore-go from 1.2.2 to 1.3.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16912
* chore: cut release v1.19.0-rc.1 by @realshuting in https://github.com/kyverno/kyverno/pull/16922
* feat: remove kyverno-json from test api (Cherry-pick #16929) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/16971
* feat: remove chainsaw tests using kyverno-json (Cherry-pick #16963) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/16972
* feat: remove json scan command (Cherry-pick #16943) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/16973
* fix: IVPOL required has no effect (Cherry-pick #16853) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/16987
* fix(policy): preserve validation warnings for generate rules in validateAction (Cherry-pick #16821) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17012
* feat(helm): add configurable lifecycle hooks to all controllers (Cherry-pick #16444) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17011
* fix(validation): reject non-string values in request.operation conditions (Cherry-pick #16977) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17013
* feat: remove reference to kyverno-json from go modules (cherry-pick #17005) by @realshuting in https://github.com/kyverno/kyverno/pull/17010
* Fix goroutine and ticker leak in metrics initialization (Cherry-pick #17024) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17025
* Fix ticker leak in policyController background reconciliation loop (Cherry-pick #17027) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17030
* Fix context leak in TTL controller reconcile loop (Cherry-pick #17032) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17034
* Fix resource leak in sigstore fetchReferrers loop (Cherry-pick #17039) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17042
* fix(gpol): scope SyncWatchers stale downstream deletion to the evaluated trigger (Cherry-pick #17020) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17048
* fix(gpol): mark UpdateRequest as Failed when engine evaluation returns an error result (Cherry-pick #17061) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17064
* fix(webhook): do not offload namespaceObject match conditions to the API server (Cherry-pick #17069) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17072
* chore: cut release v1.19.0-rc.2 by @realshuting in https://github.com/kyverno/kyverno/pull/17073
* Fix ignored context in notary registry resolution (Cherry-pick #17078) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17079
* fix(webhooks): handle nil RequestKind and RequestResource in trace middleware  (Cherry-pick #17087) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17091
* ci: add configurable code freeze check by @realshuting in https://github.com/kyverno/kyverno/pull/17095
* chore: cut release v1.19.0-rc.3 by @realshuting in https://github.com/kyverno/kyverno/pull/17094
* fix(imageverify): repopulate intoto payload on attestation cache hit (#17117) by @realshuting in https://github.com/kyverno/kyverno/pull/17195
* Release 1.19.0-rc.4 by @realshuting in https://github.com/kyverno/kyverno/pull/17209
* chore: cut release v1.19.0 by @realshuting in https://github.com/kyverno/kyverno/pull/17238

## New Contributors
* @pulkitvats2007-crypto made their first contribution in https://github.com/kyverno/kyverno/pull/15827
* @williamclot made their first contribution in https://github.com/kyverno/kyverno/pull/15754
* @mastersans made their first contribution in https://github.com/kyverno/kyverno/pull/16181
* @the-technat made their first contribution in https://github.com/kyverno/kyverno/pull/16161
* @naseyro made their first contribution in https://github.com/kyverno/kyverno/pull/16207
* @s3onghyun made their first contribution in https://github.com/kyverno/kyverno/pull/16279
* @7se7en72025 made their first contribution in https://github.com/kyverno/kyverno/pull/16276
* @asiyani made their first contribution in https://github.com/kyverno/kyverno/pull/15824
* @senutpal made their first contribution in https://github.com/kyverno/kyverno/pull/16245
* @avoidik made their first contribution in https://github.com/kyverno/kyverno/pull/16280
* @Aneesh-Hegde made their first contribution in https://github.com/kyverno/kyverno/pull/16041
* @vmsilvamolina made their first contribution in https://github.com/kyverno/kyverno/pull/15872
* @Ebraam-Ashraf made their first contribution in https://github.com/kyverno/kyverno/pull/16130
* @Proximyst made their first contribution in https://github.com/kyverno/kyverno/pull/16301
* @dag-andersen made their first contribution in https://github.com/kyverno/kyverno/pull/16039
* @ObaidAbdullah16 made their first contribution in https://github.com/kyverno/kyverno/pull/16162
* @khiemdoan made their first contribution in https://github.com/kyverno/kyverno/pull/16405
* @Utkal059 made their first contribution in https://github.com/kyverno/kyverno/pull/16296
* @pyd-07 made their first contribution in https://github.com/kyverno/kyverno/pull/16258
* @1vanden made their first contribution in https://github.com/kyverno/kyverno/pull/16252
* @InsomniaCoder made their first contribution in https://github.com/kyverno/kyverno/pull/15865
* @hugolevino made their first contribution in https://github.com/kyverno/kyverno/pull/16298
* @AftAb-25 made their first contribution in https://github.com/kyverno/kyverno/pull/16087
* @volantebjb made their first contribution in https://github.com/kyverno/kyverno/pull/16239
* @p-fruck made their first contribution in https://github.com/kyverno/kyverno/pull/16490
* @rootp1 made their first contribution in https://github.com/kyverno/kyverno/pull/16544
* @Karthikk-18 made their first contribution in https://github.com/kyverno/kyverno/pull/16525
* @santhil-cyber made their first contribution in https://github.com/kyverno/kyverno/pull/16292
* @Goutham-Annem made their first contribution in https://github.com/kyverno/kyverno/pull/16630
* @Iqrima made their first contribution in https://github.com/kyverno/kyverno/pull/16625
* @farhan11166 made their first contribution in https://github.com/kyverno/kyverno/pull/16643
* @amarkdotdev made their first contribution in https://github.com/kyverno/kyverno/pull/16305
* @bhuvan-somisetty made their first contribution in https://github.com/kyverno/kyverno/pull/16694
* @Prachidg made their first contribution in https://github.com/kyverno/kyverno/pull/16431
* @tendinginfinity24 made their first contribution in https://github.com/kyverno/kyverno/pull/16438
* @rseleven made their first contribution in https://github.com/kyverno/kyverno/pull/16591
* @Jayashanker-Padishala made their first contribution in https://github.com/kyverno/kyverno/pull/16728
* @swastikCommits made their first contribution in https://github.com/kyverno/kyverno/pull/16751
* @kubeagon made their first contribution in https://github.com/kyverno/kyverno/pull/15873
* @FirePheonix made their first contribution in https://github.com/kyverno/kyverno/pull/16905
* @kyverno-pr-updater[bot] made their first contribution in https://github.com/kyverno/kyverno/pull/16971

**Full Changelog**: https://github.com/kyverno/kyverno/compare/v1.18.2...v1.19.0