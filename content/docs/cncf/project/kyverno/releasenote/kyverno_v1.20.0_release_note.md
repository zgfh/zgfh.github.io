来源: https://github.com/kyverno/kyverno/releases/tag/v1.20.0

# kyverno/kyverno v1.20.0 Release Notes

Published at: 2026-11-12T09:32:42Z

## What's Changed
* feat: remove kyverno-json from test api by @eddycharly in https://github.com/kyverno/kyverno/pull/16929
* feat: remove json scan command by @eddycharly in https://github.com/kyverno/kyverno/pull/16943
* fix(policy): preserve validation warnings for generate rules in validateAction by @vishalmore90 in https://github.com/kyverno/kyverno/pull/16821
* fix: bump oras.land/oras-go/v2 to v2.6.2 to resolve CVE-2026-50163 by @falloficaruss in https://github.com/kyverno/kyverno/pull/16945
* chore(deps): bump zgosalvez/github-actions-ensure-sha-pinned-actions from 5.0.4 to 5.0.6 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16933
* chore(deps): bump Homebrew/actions/limit-pull-requests from 2026.07.29.1 to 2026.08.03.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16934
* chore(deps): bump github.com/google/go-containerregistry from 0.21.7 to 0.21.8 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16936
* chore(deps): Upgrade robfig/cron to v3 by @chimanjain in https://github.com/kyverno/kyverno/pull/16932
* chore(deps): bump the sigstore group across 1 directory with 4 updates by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16935
* feat(helm): add configurable lifecycle hooks to all controllers by @mhulscher in https://github.com/kyverno/kyverno/pull/16444
* chore(deps): bump github.com/sigstore/sigstore from 1.10.8 to 1.10.9 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16937
* chore(deps): bump Homebrew/actions/limit-pull-requests from 2026.08.03.1 to 2026.08.03.2 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16957
* feat: remove chainsaw tests using kyverno-json by @eddycharly in https://github.com/kyverno/kyverno/pull/16963
* chore(deps): bump github/codeql-action/upload-sarif from 4.37.4 to 4.37.5 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16958
* ci: migrate cherry-pick workflows to GitHub App auth by @realshuting in https://github.com/kyverno/kyverno/pull/16967
* ci: drop issues permission from cherry-pick app token request by @realshuting in https://github.com/kyverno/kyverno/pull/16968
* fix: handle nil input in CopyMap and add unit tests by @KeerthiKumarR in https://github.com/kyverno/kyverno/pull/16979
* chore(deps): bump github/codeql-action/upload-sarif from 4.37.5 to 4.37.6 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/16966
* fix(validation): reject non-string values in request.operation conditions by @omlahore in https://github.com/kyverno/kyverno/pull/16977
* fix: IVPOL required has no effect by @lucchmielowski in https://github.com/kyverno/kyverno/pull/16853
* feat: remove reference to kyverno-json from go modules by @eddycharly in https://github.com/kyverno/kyverno/pull/17005
* chore(deps): bump fluxcd/flux2/action from 2.9.3 to 2.9.4 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17006
* chore(deps): bump the otel group across 1 directory with 10 updates by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17007
* chore(deps): bump github.com/google/go-containerregistry from 0.21.8 to 0.21.9 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17009
* chore(deps): bump github.com/sigstore/cosign/v3 from 3.1.2 to 3.1.3 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17008
* Fix goroutine and ticker leak in metrics initialization by @itsvishalyadav in https://github.com/kyverno/kyverno/pull/17024
* Fix ticker leak in policyController background reconciliation loop by @itsvishalyadav in https://github.com/kyverno/kyverno/pull/17027
* Fix context leak in TTL controller reconcile loop by @itsvishalyadav in https://github.com/kyverno/kyverno/pull/17032
* Fix resource leak in sigstore fetchReferrers loop by @itsvishalyadav in https://github.com/kyverno/kyverno/pull/17039
* fix(gpol): scope SyncWatchers stale downstream deletion to the evaluated trigger by @realshuting in https://github.com/kyverno/kyverno/pull/17020
* fix(gpol): mark UpdateRequest as Failed when engine evaluation returns an error result by @realshuting in https://github.com/kyverno/kyverno/pull/17061
* fix(webhook): do not offload namespaceObject match conditions to the API server by @realshuting in https://github.com/kyverno/kyverno/pull/17069
* chore(deps): bump github.com/google/cel-go from 0.30.0 to 0.31.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17067
* chore(deps): bump zgosalvez/github-actions-ensure-sha-pinned-actions from 5.0.6 to 5.0.7 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17065
* Fix ignored context in notary registry resolution by @itsvishalyadav in https://github.com/kyverno/kyverno/pull/17078
* fix(webhooks): handle nil RequestKind and RequestResource in trace middleware  by @AYUSH-P-SINGH in https://github.com/kyverno/kyverno/pull/17087
* ci: add configurable code freeze check by @realshuting in https://github.com/kyverno/kyverno/pull/17096
* chore(deps): bump Homebrew/actions/limit-pull-requests from 2026.08.03.2 to 2026.08.10.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17066
* fix(jmespath): correct function names in validation errors by @Hiten0305l in https://github.com/kyverno/kyverno/pull/17093
* fix(ttl): record deleted objects metric after deletion by @Hiten0305l in https://github.com/kyverno/kyverno/pull/17104
* [Bug] Fix missing OpenTelemetry tracing for APICalls without custom CA bundle by @itsvishalyadav in https://github.com/kyverno/kyverno/pull/17116
* Fix: CLI apply command fails to match resources containing hyphens by @vishalmore90 in https://github.com/kyverno/kyverno/pull/17124
* chore(deps): bump Homebrew/actions/limit-pull-requests from 2026.08.10.1 to 2026.08.10.2 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17118
* fix: resolve variable shadowing and add unit tests in pkg/utils/conditions by @KeerthiKumarR in https://github.com/kyverno/kyverno/pull/16982
* fix(kube): support multi-digit API version strings in ParseKindSelector by @AYUSH-P-SINGH in https://github.com/kyverno/kyverno/pull/16874
* bump sdk version by @aerosouund in https://github.com/kyverno/kyverno/pull/17145
* fix(webhooks): record MPOL and NMPOL metrics under WebhookMutating by @AYUSH-P-SINGH in https://github.com/kyverno/kyverno/pull/16894
* [Bug] Fix CVE-2026-56853 (HTTP/2 ReadHeaderTimeout evasion) by bumping x/net by @itsvishalyadav in https://github.com/kyverno/kyverno/pull/17156
* [Bug] Fix CVE-2026-56853 in standard library by bumping Go to 1.26.6 by @itsvishalyadav in https://github.com/kyverno/kyverno/pull/17189
* fix(imageverify): repopulate intoto payload on attestation cache hit by @Gagansharma-code in https://github.com/kyverno/kyverno/pull/17117
* chore(deps): bump google.golang.org/protobuf from 1.36.12-0.20260120151049-f2248ac996af to 1.36.12 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17141
* chore(deps): bump github/codeql-action/upload-sarif from 4.37.6 to 4.37.7 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17187
* chore(deps): bump github.com/stretchr/testify from 1.11.1 to 1.12.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17196
* chore(deps): bump github.com/envoyproxy/go-control-plane/envoy from 1.37.0 to 1.39.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17198
* chore(deps): bump Homebrew/actions/limit-pull-requests from 2026.08.10.2 to 2026.08.14.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17184
* chore(deps): bump github.com/sirupsen/logrus from 1.9.4 to 1.10.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17185
* chore(deps): bump github.com/aptible/supercronic from 0.2.48 to 0.2.49 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17197
* fix(cli): pass resolved subresource to CEL policy engine requests by @pujitha24 in https://github.com/kyverno/kyverno/pull/17047
* Security : fix: patch dependency CVEs (oras-go, x/mod, Go toolchain)  by @sagarkhandagre998 in https://github.com/kyverno/kyverno/pull/17160
* fix(helm): bump bundled reports-server dependency to v0.1.7 by @pujitha24 in https://github.com/kyverno/kyverno/pull/17138
* fix(cli): prevent remote HTTP loaders from hanging indefinitely by @Suhani95 in https://github.com/kyverno/kyverno/pull/16608
* fix(test): loosen chainsaw stderr checks to contains by @IceCodeBear in https://github.com/kyverno/kyverno/pull/17235
* [Bug] Fix CVE-2026-46600 (DNS parsing panic) by bumping miekg/dns by @itsvishalyadav in https://github.com/kyverno/kyverno/pull/17215
* fix(ivpol): reject ImageValidatingPolicy with empty matchConstraints by @AYUSH-P-SINGH in https://github.com/kyverno/kyverno/pull/17162
* ci: paginate milestone lookup in assign-milestone workflow by @realshuting in https://github.com/kyverno/kyverno/pull/17240
* ci: repair dead path globs in PR auto-labelling config by @Bhuvanesh66 in https://github.com/kyverno/kyverno/pull/17245
* feat(cli): support JSON and YAML output for version command by @AYUSH-P-SINGH in https://github.com/kyverno/kyverno/pull/16623
* fix(deps): update golang.org/x/net to v0.58.0 by @Sashang-debug in https://github.com/kyverno/kyverno/pull/17242
* Fix missing autogen webhook expansion for NamespacedValidatingPolicy by @vishalmore90 in https://github.com/kyverno/kyverno/pull/17262
* chore(deps): bump github.com/stretchr/testify from 1.12.0 to 1.12.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17271
* fix: apply HTTP blocklist to apiCall.service executor by @IceCodeBear in https://github.com/kyverno/kyverno/pull/17234
* fix(deps): replace rekor to fix GO-2026-5932 by @Sashang-debug in https://github.com/kyverno/kyverno/pull/17269
* fix: harden apiCall.service egress proxy path and cover CABundle branch by @realshuting in https://github.com/kyverno/kyverno/pull/17299
* chore(deps): bump the kubernetes group across 3 directories with 7 updates by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17293
* chore(deps): bump github.com/sirupsen/logrus from 1.10.0 to 1.10.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17297
* chore(deps): bump github/codeql-action/upload-sarif from 4.37.7 to 4.37.8 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17295
* fix: avoid data race in image evaluator prefetch by @realshuting in https://github.com/kyverno/kyverno/pull/17313
* chore(deps): bump google.golang.org/grpc from 1.83.0 to 1.83.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17294
* fix: close IPv6-embedded-IPv4 blocklist bypass in apiCall.service egress by @CodexRaunak in https://github.com/kyverno/kyverno/pull/17310
* chore(deps): bump Homebrew/actions/limit-pull-requests from 2026.08.14.1 to 2026.08.24.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17340
* Bump kyverno sdk to 68d74afcb07a by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17348
* fix: report all failing images in verifyImages (v1) failure message. by @pyd-07 in https://github.com/kyverno/kyverno/pull/16447
* chore(deps): bump github.com/google/go-containerregistry from 0.21.9 to 0.22.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17360
* fix(test): disable IVPol digest defaults in leftover fixtures by @IceCodeBear in https://github.com/kyverno/kyverno/pull/17357
* fix(deps): use upstream rekor v1.5.4 instead of the fork replace by @omlahore in https://github.com/kyverno/kyverno/pull/17332
* fix: validate PolicyException CEL match conditions by @thuanlm215 in https://github.com/kyverno/kyverno/pull/17350
* feat: phase1 deprecation warning plumbing and CLI warning enforcement by @realshuting in https://github.com/kyverno/kyverno/pull/17362
* fix(test): disable IVPol digest defaults in leftover report fixtures by @IceCodeBear in https://github.com/kyverno/kyverno/pull/17375
* fix(observability): resolve structured logging anti-pattern (fmt.Sprintf) by @Sashang-debug in https://github.com/kyverno/kyverno/pull/17383
* feat(cel): extend autogen to custom workload CRDs (JobSet, etc.) via structural extraction by @Rohanraj123 in https://github.com/kyverno/kyverno/pull/17014
* test: fix 'occured' typo in response_test.go by @SatyamPandey-07 in https://github.com/kyverno/kyverno/pull/17402
* docs: correct spelling and grammar mistakes in documentation by @7se7en72025 in https://github.com/kyverno/kyverno/pull/16274
* chore(deps): bump github/codeql-action/upload-sarif from 4.37.8 to 4.37.9 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17417
* chore(deps): bump google.golang.org/grpc from 1.83.1 to 1.83.2 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17415
* chore(deps): bump github.com/sirupsen/logrus from 1.10.1 to 1.10.2 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17416
* chore(deps): bump github.com/onsi/gomega from 1.42.1 to 1.43.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17414
* chore(deps): bump the otel group across 1 directory with 10 updates by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17413
* fix(cli): use policy api version in OCI annotations by @karthikmanam in https://github.com/kyverno/kyverno/pull/16570
* fix(background-controller): watch background-scan reports for the ephemeral reports circuit breaker by @pujitha24 in https://github.com/kyverno/kyverno/pull/17136
* docs: fix development CRD output path by @rajanpanth in https://github.com/kyverno/kyverno/pull/17168
* feat: add deprecation warnings to legacy CRD versions and migrate test fixtures off v2beta1 by @realshuting in https://github.com/kyverno/kyverno/pull/17428
* fix: handle missing reports CRDs as no-op in kyverno-init by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17420
* fix: skip namespace lookup in exception matching when no namespaceSelector is defined by @kmehta-code in https://github.com/kyverno/kyverno/pull/17140
* chore(deps): bump Homebrew/actions/limit-pull-requests from 2026.08.24.1 to 2026.08.31.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17424
* fix: skip scalar values during wildcard image extraction by @ShreyanshK1103 in https://github.com/kyverno/kyverno/pull/16268
* Fix/ivpol ephemeral containers by @pmlopes in https://github.com/kyverno/kyverno/pull/17427
* fix(gpol): propagate synchronize option to UpdateRequests by @vflaux in https://github.com/kyverno/kyverno/pull/16920
* fix(reports): discover autogen'd IVPol/NIVPol targets for background scan by @Rohanraj123 in https://github.com/kyverno/kyverno/pull/17395
* fix(webhook): avoid redundant recorder notifications by @Udaytaneja in https://github.com/kyverno/kyverno/pull/17059
* fix: deny globalContext in namespaced policies by @IceCodeBear in https://github.com/kyverno/kyverno/pull/17377
* fix(globalcontext): fix deadlocks in entry lifecycle and watch error handling by @bhuvan-somisetty in https://github.com/kyverno/kyverno/pull/16904
* fix(cel): read PolicyExceptions from the manager cache, not a second informer by @7se7en72025 in https://github.com/kyverno/kyverno/pull/16993
* fix: use Docker CE instead of moby for docker-outside-of-docker feature by @tendinginfinity24 in https://github.com/kyverno/kyverno/pull/16596
* fix(webhooks): return after writing StatusInternalServerError in Probe handler by @AYUSH-P-SINGH in https://github.com/kyverno/kyverno/pull/17288
* chore(deps): bump helm/kind-action from 1.14.0 to 1.15.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17468
* fix(reports): fix label prefix and metadata for namespaced CEL policies by @anushkagupta200615-jpg in https://github.com/kyverno/kyverno/pull/17460
* fix(background): use dynamic restmapper and enable crd watcher by @anushkagupta200615-jpg in https://github.com/kyverno/kyverno/pull/17482
* fix: close layer readers per-iteration to avoid FD/memory leak by @pgmpofu in https://github.com/kyverno/kyverno/pull/16994
* chore(deps): bump golang.org/x/crypto from 0.55.0 to 0.56.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17500
* chore(deps): bump fluxcd/flux2/action from 2.9.4 to 2.9.5 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17442
* chore(deps): bump cbrgm/cleanup-stale-branches-action from 1.2.12 to 1.2.13 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17439
* chore(deps): bump sigs.k8s.io/controller-tools from 0.21.0 to 0.22.0 in /hack/controller-gen by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17467
* fix(gpol): recreate downstream resource after repeated deletions by @realshuting in https://github.com/kyverno/kyverno/pull/17453
* chore(deps): bump zgosalvez/github-actions-ensure-sha-pinned-actions from 5.0.7 to 5.0.8 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17516
* chore(deps): bump github.com/google/go-containerregistry from 0.22.0 to 0.22.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17499
* chore(deps): bump Homebrew/actions/limit-pull-requests from 2026.08.31.1 to 2026.09.07.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17514
* ci: record failed job instances in workflow failure issues by @Dreamstick9 in https://github.com/kyverno/kyverno/pull/16889
* ci: exempt Dependabot from PR rate limit by @JimBugwadia in https://github.com/kyverno/kyverno/pull/17539
* feat: block creates and spec-updates of legacy policy APIs (1.20) by @Rohanraj123 in https://github.com/kyverno/kyverno/pull/17535
* fix(breaker): recover the reports counter when its watch dies for good by @nissessenap in https://github.com/kyverno/kyverno/pull/17085
* ci: run legacy-policy conformance suites in 1.20 migration-grace mode by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17544
* docs: fix 'becuase' typo in enforce-validate-existing test README by @shashankvarma499 in https://github.com/kyverno/kyverno/pull/17550
* test: fix 'explicitely' and 'implicitely' typos in roleRef_test.go by @SatyamPandey-07 in https://github.com/kyverno/kyverno/pull/17422
* fix(webhook): avoid image validating policy webhook name collisions by @Ahmad-Faraj in https://github.com/kyverno/kyverno/pull/17558
* feat: signal remaining legacy kyverno.io policies on startup and via metrics by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17519
* perf(cel): build the request activation once per admission request by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17572
* perf(cel): hoist the request-map build in the ivpol engine by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17585
* feat(helm): add required default-on gate for legacy policy CRs on install and upgrade by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17534
* test(ci): CEL admission-path allocation-regression gate (post-merge) by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17573
* chore: add rx18-eng as a code owner for relevant packages by @rx18-eng in https://github.com/kyverno/kyverno/pull/17590
* Update performance thresholds by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17600
* fix: reuse compiled ImageValidatingPolicy CEL programs across admissions by @ANAMASGARD in https://github.com/kyverno/kyverno/pull/17599
* fix: preserve legacy report sources and webhook API versions in 1.20 by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17554
* fix(deleting): process namespaced resources with pagination by @ShreyanshK1103 in https://github.com/kyverno/kyverno/pull/17263
* fix(cli): use CRD-declared plural when indexing CR instances in fake DClient by @afarbos in https://github.com/kyverno/kyverno/pull/16964
* feat(cli): block legacy policy manifests in apply/test, add migration escape hatch by @Rohanraj123 in https://github.com/kyverno/kyverno/pull/17553
* fix(cli): resolve match constraints for namespaced validating policies by @harshrajdebug in https://github.com/kyverno/kyverno/pull/17608
* fix: autogen fine-grained namespaced image policies by @Elvand-Lie in https://github.com/kyverno/kyverno/pull/16840
* chore(deps): bump kyverno sdk version to the latest commit by @guy-avigdor-zota in https://github.com/kyverno/kyverno/pull/17616
* Plan + dry-run tooling: rebase legacy-policy PRs to release-1.19 by @JimBugwadia in https://github.com/kyverno/kyverno/pull/17567
* fix(policy): resolve subresource triggers in mutating policy matchConstraints by @anushkagupta200615-jpg in https://github.com/kyverno/kyverno/pull/17495
* docs: make the repo agent-friendly (AGENTS.md hierarchy, ARCHITECTURE.md, docs/context) by @suhaani-agarwal in https://github.com/kyverno/kyverno/pull/17556
* Update runner to use ubuntu-latest for workflows by @NerfedAce in https://github.com/kyverno/kyverno/pull/17623
* fix(webhook): enforce exceptionNamespace for CEL PolicyExceptions by @anushkagupta200615-jpg in https://github.com/kyverno/kyverno/pull/17479
* test: add upgrade and rollback verification for legacy policy migration by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17655
* chore(deps): bump kyverno/sdk and pass loggers to its registry helpers by @rx18-eng in https://github.com/kyverno/kyverno/pull/17656
* feat(helm): protect legacy policy CRDs from Helm prune with resource-policy keep by @thisis-manan in https://github.com/kyverno/kyverno/pull/17494
* fix: always re-arm background scan and TTL controllers after transient errors (#16109) by @ANAMASGARD in https://github.com/kyverno/kyverno/pull/16288
* feat(kyvernopre): warn about orphaned legacy webhook configurations by @Rohanraj123 in https://github.com/kyverno/kyverno/pull/17678
* fix(cel): set rule name for validate.cel results by @yashrajshuklaaa in https://github.com/kyverno/kyverno/pull/17353
* feat(cli): enable OCI-native test and apply flows (#17666) by @anushkagupta200615-jpg in https://github.com/kyverno/kyverno/pull/17689
* refactor(engine): move context interfaces to engine api package by @JituRewar in https://github.com/kyverno/kyverno/pull/17658
* feat(cli): implement CEL resources only for kyverno oci (#17661) by @anushkagupta200615-jpg in https://github.com/kyverno/kyverno/pull/17671
* ci: add an E2E gate status that is red while an E2E failure issue is open by @Dreamstick9 in https://github.com/kyverno/kyverno/pull/17650
* fix(event): truncate event notes on a character boundary by @Ahmad-Faraj in https://github.com/kyverno/kyverno/pull/17581
* fix(cel): requeue namespaced policies on PolicyException changes by @Ahmad-Faraj in https://github.com/kyverno/kyverno/pull/17641
* fix: nil pointer dereference in validation engine on UPDATE requests by @AftAb-25 in https://github.com/kyverno/kyverno/pull/17355
* fix(cli): close the junit failure element without detailed results by @Ahmad-Faraj in https://github.com/kyverno/kyverno/pull/17560
* fix(cli): preserve GeneratingPolicy skips in test results by @Om-Beast in https://github.com/kyverno/kyverno/pull/17388
* fix: replace remaining fmt.Sprintf in logr messages with structured fields by @sriramg-aivar in https://github.com/kyverno/kyverno/pull/17627
* fix: preserve MutatingPolicy reinvocation policy by @pyd-07 in https://github.com/kyverno/kyverno/pull/17324
* feat(charts): support Pod user namespaces in PSS policies by @Suhani95 in https://github.com/kyverno/kyverno/pull/17693
* fix(controllers): honor resourceFilters in cleanup and deleting controllers by @anushkagupta200615-jpg in https://github.com/kyverno/kyverno/pull/17632
* fix(background): resolve generate triggers by name instead of listing the namespace by @kmehta-code in https://github.com/kyverno/kyverno/pull/17702
* Fix panic in metrics policy controller and add comprehensive unit tests by @nishant-devv in https://github.com/kyverno/kyverno/pull/17750
* ci: add CodeRabbit/Copilot review config and Dependabot automation by @suhaani-agarwal in https://github.com/kyverno/kyverno/pull/17698
* fix: rename startRountine to startRoutine in metrics policy controller by @tendinginfinity24 in https://github.com/kyverno/kyverno/pull/17757
* Remove go report from README by @priorax in https://github.com/kyverno/kyverno/pull/17762
* docs(cli): document clone source mapping in test aggregation loop by @JituRewar in https://github.com/kyverno/kyverno/pull/17625
* feat: add compensating controls to policy exceptions by @mastersans in https://github.com/kyverno/kyverno/pull/17690
* ci: fix Dependabot triage CI failures, redesign pr-readiness-check triggers by @suhaani-agarwal in https://github.com/kyverno/kyverno/pull/17766
* fix(cli): aggregate test filter errors using errors.Join by @JituRewar in https://github.com/kyverno/kyverno/pull/17760
* test: add unit tests for exceptions controller by @JituRewar in https://github.com/kyverno/kyverno/pull/17637
* bump go to 1.27 and sigstore to v1.10.10 by @aerosouund in https://github.com/kyverno/kyverno/pull/17776
* fix: harden legacy PR triage safety by @JimBugwadia in https://github.com/kyverno/kyverno/pull/17772
* fix(cli): flatten kind: List resources in apply and fake dynamic client by @anushkagupta200615-jpg in https://github.com/kyverno/kyverno/pull/17504
* fix(mpol): evaluate matchConditions during background mutateExisting evaluation by @pujitha24 in https://github.com/kyverno/kyverno/pull/17433
* ci: exclude E2E Gate from remaining CI-health checks by @suhaani-agarwal in https://github.com/kyverno/kyverno/pull/17775
* fix(cli): support all CEL policy exception versions in policy loader (#17743) by @anushkagupta200615-jpg in https://github.com/kyverno/kyverno/pull/17769
* fix: verify annotations properly for cosign v2 and v3 by @aerosouund in https://github.com/kyverno/kyverno/pull/17794
* fix: prevent panic in jmespath random() function on invalid argument type by @Zara-5 in https://github.com/kyverno/kyverno/pull/17773
* fix: repair the post-merge Tests workflow on main by @rx18-eng in https://github.com/kyverno/kyverno/pull/17761
* chore(deps): bump github.com/sigstore/sigstore from 1.10.10 to 1.11.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17801
* chore(deps): bump github/codeql-action/upload-sarif from 4.37.9 to 4.38.2 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17802
* chore(deps): bump Homebrew/actions/limit-pull-requests from 2026.09.07.1 to 2026.09.28.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17803
* fix: preserve Cosign errors in image validation messages by @ANAMASGARD in https://github.com/kyverno/kyverno/pull/17606
* feat: support additionalExtensions for keyless signing in the ivpol by @aerosouund in https://github.com/kyverno/kyverno/pull/17813
* test(cli): cover CRD-aware policy test mapping by @JimBugwadia in https://github.com/kyverno/kyverno/pull/17808
* ci: set a PR's milestone from the issue it closes by @suhaani-agarwal in https://github.com/kyverno/kyverno/pull/17812
* ci: add workflow-approval-required readiness label by @suhaani-agarwal in https://github.com/kyverno/kyverno/pull/17817
* ci: add a manual backfill to the pr-milestone workflow by @suhaani-agarwal in https://github.com/kyverno/kyverno/pull/17819
* chore(deps): bump zgosalvez/github-actions-ensure-sha-pinned-actions from 5.0.8 to 5.0.9 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17723
* chore(deps): bump google.golang.org/grpc from 1.83.2 to 1.84.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17681
* chore(deps): bump codecov/codecov-action from 7.0.0 to 7.1.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17679
* chore(deps): bump golang.org/x/crypto from 0.56.0 to 0.57.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17571
* chore(deps): bump the sigstore group across 1 directory with 4 updates by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17568
* fix(chart): add policies.kyverno.io types to the Grafana dashboard by @VijayabaskarR-06 in https://github.com/kyverno/kyverno/pull/17800
* fix: mark admission replicas unready after informer watch failures by @ANAMASGARD in https://github.com/kyverno/kyverno/pull/17610
* fix(cli): report excluded DeletingPolicy resources as skipped by @pyd-07 in https://github.com/kyverno/kyverno/pull/17458
* fix(status): heal WebhookConfigured condition once a VAP is generated by @pujitha24 in https://github.com/kyverno/kyverno/pull/17119
* fix: dont treat missing digests when MutateDigest==false as an error by @aerosouund in https://github.com/kyverno/kyverno/pull/17841
* fix: evaluate ImageValidatingPolicies concurrently by @pyd-07 in https://github.com/kyverno/kyverno/pull/17496
* refactor/cleanup: multiple cleanups across the ivpol code for maintainability by @aerosouund in https://github.com/kyverno/kyverno/pull/17851
* ci: refresh Go build cache by run ID by @ShreyanshK1103 in https://github.com/kyverno/kyverno/pull/17732
* fix(helm): scope scale-to-zero hook to the release by @KKamJi98 in https://github.com/kyverno/kyverno/pull/17840
* test: update vpol conformance asserts for VAP-generated WebhookConfigured message by @Sanchit2662 in https://github.com/kyverno/kyverno/pull/17855
* fix(charts): stop denying Windows pods and refresh PSA allow-lists by @Suhani95 in https://github.com/kyverno/kyverno/pull/17684
* Vpol wiring for trace feature by @aditip149209 in https://github.com/kyverno/kyverno/pull/17695
* ci: add stale-author and idle-review sweep, harden dependabot triage by @suhaani-agarwal in https://github.com/kyverno/kyverno/pull/17864
* ci: don't treat the Codecov upload failure as the PR author's to fix by @suhaani-agarwal in https://github.com/kyverno/kyverno/pull/17878
* fix(charts): enforce drop ALL and deny pod-level runAsNonRoot=false in PSS CEL policies by @Suhani95 in https://github.com/kyverno/kyverno/pull/17672
* ci: make the E2E gate easy to clear by @Dreamstick9 in https://github.com/kyverno/kyverno/pull/17858
* ci: start the stale clock at the latest commit or merge conflict by @suhaani-agarwal in https://github.com/kyverno/kyverno/pull/17886
* fix(ivpol): give each policy its own image context during concurrent evaluation  by @rx18-eng in https://github.com/kyverno/kyverno/pull/17860
* fix(ivpol): contain panics in per-policy evaluation goroutines by @rx18-eng in https://github.com/kyverno/kyverno/pull/17894
* fix(cli): propagate messageExpression errors to fail cli tests by @nishant-devv in https://github.com/kyverno/kyverno/pull/17863
* fix: apply autogen path rewrite to PolicyException matchConditions (#16956) by @nishant-devv in https://github.com/kyverno/kyverno/pull/17856
* feat(charts): add disallow-host-probes Baseline PSS policy by @Suhani95 in https://github.com/kyverno/kyverno/pull/17716
* ivpol: Add diagnostics to cli for notary verification by @aditip149209 in https://github.com/kyverno/kyverno/pull/17902
* fix(cli): restore test checks with CEL expressions by @afarbos in https://github.com/kyverno/kyverno/pull/17897
* fix(vpol): keep controller metadata paths in autogen'd PolicyExceptions by @ManojLamani in https://github.com/kyverno/kyverno/pull/17903
* ci: remove redundant PR rate limiter workflow by @JimBugwadia in https://github.com/kyverno/kyverno/pull/17928
* test: update ivpol conformance asserts for Notary verification details by @harshrajdebug in https://github.com/kyverno/kyverno/pull/17916
* test: fix two flaky conformance tests by @rx18-eng in https://github.com/kyverno/kyverno/pull/17934
* fix(ivpol): propagate the admission request context to image verification by @rx18-eng in https://github.com/kyverno/kyverno/pull/17895
* fix(mutate): escape YAML-forbidden characters in patchStrategicMerge by @thebearmayor in https://github.com/kyverno/kyverno/pull/17881
* test(imageverify): pass context to NewRuntimeForPolicy in notary diagnostics test by @pujitha24 in https://github.com/kyverno/kyverno/pull/17947
* fix(cli): prevent nil pointer dereference when target has no patched resource by @anushkagupta200615-jpg in https://github.com/kyverno/kyverno/pull/17843
* All policy code by @aditip149209 in https://github.com/kyverno/kyverno/pull/17774
* fix(deps): bump Go version to 1.27.2 to resolve CVE-2026-97031 (#17959) by @anushkagupta200615-jpg in https://github.com/kyverno/kyverno/pull/17971
* fix(ivpol): skip registry fetch when image verification is cached (#17969) by @anushkagupta200615-jpg in https://github.com/kyverno/kyverno/pull/17974
* fix(imageverify): bind verification cache entries to the content and attestors they verified by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17993
* ci: add k8s 1.36 to the conformance matrix by @antcybersec in https://github.com/kyverno/kyverno/pull/17781
* fix(security): CEL API path validation and mpol namespace confinement by @Rohanraj123 in https://github.com/kyverno/kyverno/pull/17985
* chore: add OSS Scanner build files and threat model by @IceCodeBear in https://github.com/kyverno/kyverno/pull/17982
* fix: update x/net for CVE-2026-78663 by @Sashang-debug in https://github.com/kyverno/kyverno/pull/17997
* fix(security): harden cherry-pick workflows against script injection by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18012
* test(ivpol): pin the cache hit test to a digest reference by @VijayabaskarR-06 in https://github.com/kyverno/kyverno/pull/18011
* fix: skip cherry-pick comments without authors by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18016
* fix(imageverify): bound the reads image verification makes from a registry by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17995
* fix(wildcard): replace the glob matcher with a bounded two-pointer algorithm by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17990
* fix(cel): bound the cost of CEL policy expression evaluation by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17988
* fix(vap): apply the runtime PolicyException gates in the CEL admission-policy generator by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17986
* chore: remove dead AutogenV2 feature flag by @geeknishantkyeus in https://github.com/kyverno/kyverno/pull/18020
* feat: implement UpdateRequest cleanup TTL via configuration by @Mannan-Ali in https://github.com/kyverno/kyverno/pull/17429
* Dpol wiring by @aditip149209 in https://github.com/kyverno/kyverno/pull/17850
* docs: add in-repo design proposal process by @JimBugwadia in https://github.com/kyverno/kyverno/pull/17720
* Fix conformance cleanup timeouts by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18029
* fix: preserve controller-owned generation labels by @sagark-nirmata in https://github.com/kyverno/kyverno/pull/17938
* fix(engine): handle multiple cosign attestation versions by @anushkagupta200615-jpg in https://github.com/kyverno/kyverno/pull/18010
* fix: honor wildcard excludeResourceRules in generateExisting by @Siddhartha-singh01 in https://github.com/kyverno/kyverno/pull/18026
* fix(cli): use Report kind for namespaced OpenReports output by @Elvand-Lie in https://github.com/kyverno/kyverno/pull/17809
* test(profiling): add unit tests for pprof handlers and Start by @JituRewar in https://github.com/kyverno/kyverno/pull/17811
* fix(chart): grant the background controller what Kyverno aggregates i… by @WHOIM1205 in https://github.com/kyverno/kyverno/pull/18019
* test: keep exclude-images-multiple-cel pods off the node by @Sanchit2662 in https://github.com/kyverno/kyverno/pull/18002
* fix(deps): bump golang.org/x/net to resolve CVE-2026-78669 (#17966) by @anushkagupta200615-jpg in https://github.com/kyverno/kyverno/pull/17968
* fix(generate): fix GeneratingPolicy synchronization for custom resources and multiple triggers by @rx18-eng in https://github.com/kyverno/kyverno/pull/16748
* test: fix conformance expectations after generation-label protection by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18040
* fix(metrics): cache GetManager() result in registerPolicyChangesMetric by @tendinginfinity24 in https://github.com/kyverno/kyverno/pull/17862
* fix(vpol): honour failurePolicy Ignore for runtime errors in the admission handler by @VijayabaskarR-06 in https://github.com/kyverno/kyverno/pull/17909
* test: run generation bootstrap checks in an isolated cluster by @sagark-nirmata in https://github.com/kyverno/kyverno/pull/18028
* ci: run all integration packages and the ivpol registry tests by @Sanchit2662 in https://github.com/kyverno/kyverno/pull/17933
* fix(imageverify): give the image verify cache a usable byte budget by @rx18-eng in https://github.com/kyverno/kyverno/pull/17911
* Wiring for GPOL cel policy types by @aditip149209 in https://github.com/kyverno/kyverno/pull/17867
* docs: propose schema-driven CEL processing by @JimBugwadia in https://github.com/kyverno/kyverno/pull/17721
* test: avoid namespaced JSONPatch cleanup timeout by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18044
* fix(imageverify): extract newest attestation for ImageValidatingPolicy by @anushkagupta200615-jpg in https://github.com/kyverno/kyverno/pull/18049
* docs(cli): document test evaluation pipeline and helper functions in test.go by @JituRewar in https://github.com/kyverno/kyverno/pull/18037
* fix(ivpol): report missing annotation keys instead of %!s(<nil>) by @Elvand-Lie in https://github.com/kyverno/kyverno/pull/18060
* fix(webhook): populate image verification policies on fine-grained webhook routes by @nishant-devv in https://github.com/kyverno/kyverno/pull/18045
* fix(autogen): extract pod templates in a stable order by @ManojLamani in https://github.com/kyverno/kyverno/pull/17981
* fix(chart): honor global image registry for webhooks cleanup by @ShreyanshK1103 in https://github.com/kyverno/kyverno/pull/17970
* feat(report): classify validating admission policies by @ShreyanshK1103 in https://github.com/kyverno/kyverno/pull/17926
* fix(cel/autogen): preserve object.metadata.name in autogen messageExpression by @nishant-devv in https://github.com/kyverno/kyverno/pull/17899
* fix(cli): count and print each MutatingPolicy result once by @harshrajdebug in https://github.com/kyverno/kyverno/pull/17838
* fix(cli): exclude target-only MutatingPolicies from trigger evaluation by @Elvand-Lie in https://github.com/kyverno/kyverno/pull/17796
* fix(ext/cluster): block non-GET RawAbsPath from reaching the real client by @RudraDudhat2509 in https://github.com/kyverno/kyverno/pull/17791
* fix: propagate anchor errors using errors.As and Unwrap() method by @JituRewar in https://github.com/kyverno/kyverno/pull/17789
* fix(ext/yaml): don't swallow YAML syntax errors in SplitDocuments by @RudraDudhat2509 in https://github.com/kyverno/kyverno/pull/17785
* fix(webhook): guard nil Scope dereference in sortedRules to prevent controller panic by @7se7en72025 in https://github.com/kyverno/kyverno/pull/17457
* fix(config): reset matchConditions and updateRequestThreshold on unload by @AYUSH-P-SINGH in https://github.com/kyverno/kyverno/pull/17407
* fix(imageverify): reject non-string attestation fields instead of panicking by @omlahore in https://github.com/kyverno/kyverno/pull/17046
* test: add comprehensive unit tests for pkg/utils/runtime by @KeerthiKumarR in https://github.com/kyverno/kyverno/pull/16996
* fix: avoid nil pointer panic verifying sigstore bundle attestations without a type by @bhuvan-somisetty in https://github.com/kyverno/kyverno/pull/16816
* chore(deps): bump sigs.k8s.io/kustomize/kyaml from 0.21.1 to 0.21.2 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17825
* chore(deps): bump github.com/onsi/gomega from 1.43.0 to 1.44.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17824
* chore(deps): bump cbrgm/cleanup-stale-branches-action from 1.2.13 to 1.2.14 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17823
* IVPOL wiring for trace flag feature by @aditip149209 in https://github.com/kyverno/kyverno/pull/17877
* feat(cli): specify and implement the CEL policy bundle OCI format by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17777
* feat: reject legacy policy writes without typed policy dependencies by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17770
* fix(dclient): single-flight discovery refetches on cache misses by @Elvand-Lie in https://github.com/kyverno/kyverno/pull/18077
* fix(gpol): log watcher events at debug verbosity by @Elvand-Lie in https://github.com/kyverno/kyverno/pull/18101
* chore(deps): bump the sigstore group across 1 directory with 4 updates by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/18092
* test: increase policy-validation apply timeout to 60s by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18114
* test: fix discovery expectations and admission fixture cleanup by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18118
* test: isolate refactor mutation fixtures from pod runtime by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18130
* ci: isolate conformance comment reaction permissions by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18131
* ci: remove unnecessary unit-test disk cleanup by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18140
* ci: parallelize independent API reference generators by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18135
* ci: use GHCR for Trivy database by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18147
* feat: add approval-gated legacy PR retarget tooling by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18141
* fix(mpol): do not panic on a JSON patch value holding object initializers by @harshrajdebug in https://github.com/kyverno/kyverno/pull/17620
* fix(image): skip CT log key loading for keyed cosign verification by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18143
* Fix unchecked type assertion panic in apiCall.transformAndStore by @Kaizhe in https://github.com/kyverno/kyverno/pull/17670
* fix(cel): propagate request context and memoize image metadata per evaluation by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18142
* test: raise verify-images apply timeout and make background-basic pod admission-only by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18144
* fix: --explain never re-runs expressions with non-deterministic results by @aditip149209 in https://github.com/kyverno/kyverno/pull/17972
* feat: log decision traces in the admission controller behind --enable… by @aditip149209 in https://github.com/kyverno/kyverno/pull/17992
* fix: drop gone downstreams from the generate watch cache by @Siddhartha-singh01 in https://github.com/kyverno/kyverno/pull/18055
* test: keep background-only Pods unscheduled by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18165
* feat: remove legacy policy execution from admission binaries by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/18164
* bump golang to 1.27.3 to protect against CVE-2026-111943 by @aerosouund in https://github.com/kyverno/kyverno/pull/18168
* fix(ci): recover conflicted backports and request workflow permission by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18171
* feat: remove legacy policy execution from the background controller by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/18187
* feat: remove legacy policy evaluation from the reports controller by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/18195
* ci: close stale author-action PRs after 14 days by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18186
* ci: extend stale PR sweep runtime by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18208
* fix: recover UpdateRequests left with an empty state by @Siddhartha-singh01 in https://github.com/kyverno/kyverno/pull/18199
* chore: remove legacy ClusterPolicy tests by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18213
* test: verify legacy policy preservation on blocked upgrades by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18221
* test: assert legacy policies stop enforcing after the 1.20 upgrade by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/18228
* fix(cli): delete legacy CLI execution and policy-authoring branches by @Rohanraj123 in https://github.com/kyverno/kyverno/pull/18047
* feat: prepare the shared kyverno API types and freeze the legacy CRD schemas by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/18231
* fix: register resource CEL library for PolicyExceptions by @pyd-07 in https://github.com/kyverno/kyverno/pull/18227
* test: use dry-run for ephemeral container denial by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18230
* fix(ci): preserve prerelease flag when uploading release manifests by @muskan-creates352 in https://github.com/kyverno/kyverno/pull/18080
* feat(cli): Improve terminal output readability with colors for `kyverno jp function` by @JituRewar in https://github.com/kyverno/kyverno/pull/18258
* feat: add automated PSA release monitoring to prevent PSS policy drift by @Suhani95 in https://github.com/kyverno/kyverno/pull/18235
* fix(reports): preserve nanosecond precision in PolicyReport aggregation by @Om-Beast in https://github.com/kyverno/kyverno/pull/18127
* fix(cli): reuse context and compiled CEL policy providers in apply by @nishant-devv in https://github.com/kyverno/kyverno/pull/18048
* fix(charts): update minversion for CEL policies to 1.17.0 by @muskan-creates352 in https://github.com/kyverno/kyverno/pull/17764
* feat: delete the legacy kyverno.io policy engine by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/18265
* feat(cli): add output-dir and output-file flags to apply by @e-esakman in https://github.com/kyverno/kyverno/pull/18212
* fix(webhook): allow configuring generation label protection and honor failure policy ignore by @anushkagupta200615-jpg in https://github.com/kyverno/kyverno/pull/18222
* refactor: prune legacy kyverno.io API consumers ahead of the Go API deletion by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/18278
* feat: delete the legacy kyverno.io Go API and regenerate clients by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/18282
* fix(chart): drop the changelog entry for the removed policyType option by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/18283
* fix(ivpol): preserve deterministic evaluation response ordering by @nishant-devv in https://github.com/kyverno/kyverno/pull/18072
* feat(ci): extract shared PR management action by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18275
* test(cel): fuzz ValidatingPolicy validation by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18215
* fix(crds): retain released legacy image extractor filter schema by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18303
* fix(ci): stop pinning Python 3.13.1 in chart-testing and helm-release by @itsvishalyadav in https://github.com/kyverno/kyverno/pull/18304
* ci: share Kubernetes 1.34-1.37 test matrix by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18312
* feat: automate complete staged releases from one application tag by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18066
* chore(deps): bump github.com/go-git/go-git/v5 from 5.19.2 to 5.19.3 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/18223
* chore(deps): bump ossf/scorecard-action from 2.4.4 to 2.5.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/18090
* chore(deps): bump the otel group across 1 directory with 10 updates by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/18089
* chore(deps): bump github.com/cenkalti/backoff/v7 from 7.0.0 to 7.0.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/17875
* feat(charts): select the Pod Security Admission version for policies by @Suhani95 in https://github.com/kyverno/kyverno/pull/18268
* test: add CEL equivalent of the deleted legacy rollback-image-verification case by @Rohanraj123 in https://github.com/kyverno/kyverno/pull/18288
* test(ivpol): revert the rollback negative-control step that broke conformance by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/18334
* docs: document stale reports, non-Helm/GitOps preflight, and rollback limits for 1.20 legacy removal by @Rohanraj123 in https://github.com/kyverno/kyverno/pull/18287
* chore: delete the orphaned pkg/engine/jsonutils package by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/18336
* docs: add Wordfully to adopters by @vlbaluk in https://github.com/kyverno/kyverno/pull/18273
* fix(ttl): guard cleanup deletes with object identity preconditions by @Om-Beast in https://github.com/kyverno/kyverno/pull/18149
* fix(imageverify): restore verified referrers on a cache hit by @vishal-chdhry in https://github.com/kyverno/kyverno/pull/18318
* feat(globalcontext): add a CEL expression field to projections by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/18353
* test(globalcontext): fix conformance expectations broken by #18353 by @GuTS805 in https://github.com/kyverno/kyverno/pull/18375
* fix(cli): resolve namespaces from live cluster in CEL engines under --cluster by @nishant-devv in https://github.com/kyverno/kyverno/pull/18281
* chore(deps): bump Kubernetes libraries to v0.37 and controller-runtime to v0.25 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/18091
* feat(globalcontext): deprecate jmesPath projections and measure their use by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/18355
* test: retry ephemeral container denial until the webhook is active by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18378
* fix(imageverify): bump kyverno/sdk to fail closed on unverified referrers by @vishal-chdhry in https://github.com/kyverno/kyverno/pull/18387
* fix(dclient): fix data race between OnChanged and notify in discovery client by @NerfedAce in https://github.com/kyverno/kyverno/pull/18344
* fix: scope namespaced image policy credentials by namespace by @sagark-nirmata in https://github.com/kyverno/kyverno/pull/17923
* feat(autogen): support explicit enabled toggle for pod controllers by @nishant-devv in https://github.com/kyverno/kyverno/pull/18320
* perf(test): reuse context & compiled CEL providers across resources by @nishant-devv in https://github.com/kyverno/kyverno/pull/18277
* feat(cli): add semantic color formatting to kyverno apply output by @JituRewar in https://github.com/kyverno/kyverno/pull/18270
* fix(autogen): use the workload's namespace for extracted pod templates by @ManojLamani in https://github.com/kyverno/kyverno/pull/18069
* fix(jmespath): leave day-of-week as wildcard in time_to_cron by @ManojLamani in https://github.com/kyverno/kyverno/pull/17854
* feat(cli): add semantic colors to test summary and progress output by @JituRewar in https://github.com/kyverno/kyverno/pull/18296
* fix(globalcontext): recover backing informers after transient relist failures by @Om-Beast in https://github.com/kyverno/kyverno/pull/18181
* feat(cli): parse the OCI bundle descriptor and derive named sets by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/18399
* fix: trace for ivpol policies in live admission path by @aditip149209 in https://github.com/kyverno/kyverno/pull/18385
* feat: support JSON document mutation with MutatingPolicy JSON mode by @JimBugwadia in https://github.com/kyverno/kyverno/pull/17871
* feat(cli): add kyverno oci validate with CEL-aware bundle validation (#18406) [release-1.20] by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/18422
* feat(cli): add kyverno oci inspect and oci resolve (#18420) [release-1.20] by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/18423
* refactor: improve ivCache hit rate by dropping policy info from key (Cherry-pick #18454) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/18455
* chore: mark legacy policies not ready in kyverno-init (Cherry-pick #18475) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/18476
* fix(cel): respect predicate filter on JSON payloads in vpol Handle() (Cherry-pick #18429) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/18467
* fix(cel): evaluate policies when predicate is nil in Evaluate() (Cherry-pick #18402) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/18468
* chore: mark legacy cleanup policies not ready in kyverno-init (Cherry-pick #18523) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/18524
* chore: bump SDK as part of routine 1.20 release (Cherry-pick #18488) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/18515
* refactor(cel): unify activation assembly behind compiler.PrepareK8sActivation (Cherry-pick #18460) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/18538
* perf(cli): extend provider & compiler caching to GeneratingPolicies and DeletingPolicies (Cherry-pick #18400) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/18537
* refactor(cel): hoist activation assembly across validating policies per admission request (Cherry-pick #18492) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/18542
* fix: dont run resource version migration for the old policy apis (Cherry-pick #18573) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/18574


## New Contributors
* @vishalmore90 made their first contribution in https://github.com/kyverno/kyverno/pull/16821
* @falloficaruss made their first contribution in https://github.com/kyverno/kyverno/pull/16945
* @mhulscher made their first contribution in https://github.com/kyverno/kyverno/pull/16444
* @KeerthiKumarR made their first contribution in https://github.com/kyverno/kyverno/pull/16979
* @omlahore made their first contribution in https://github.com/kyverno/kyverno/pull/16977
* @AYUSH-P-SINGH made their first contribution in https://github.com/kyverno/kyverno/pull/17087
* @Hiten0305l made their first contribution in https://github.com/kyverno/kyverno/pull/17093
* @Gagansharma-code made their first contribution in https://github.com/kyverno/kyverno/pull/17117
* @pujitha24 made their first contribution in https://github.com/kyverno/kyverno/pull/17047
* @Bhuvanesh66 made their first contribution in https://github.com/kyverno/kyverno/pull/17245
* @CodexRaunak made their first contribution in https://github.com/kyverno/kyverno/pull/17310
* @thuanlm215 made their first contribution in https://github.com/kyverno/kyverno/pull/17350
* @SatyamPandey-07 made their first contribution in https://github.com/kyverno/kyverno/pull/17402
* @rajanpanth made their first contribution in https://github.com/kyverno/kyverno/pull/17168
* @pmlopes made their first contribution in https://github.com/kyverno/kyverno/pull/17427
* @vflaux made their first contribution in https://github.com/kyverno/kyverno/pull/16920
* @Udaytaneja made their first contribution in https://github.com/kyverno/kyverno/pull/17059
* @pgmpofu made their first contribution in https://github.com/kyverno/kyverno/pull/16994
* @Dreamstick9 made their first contribution in https://github.com/kyverno/kyverno/pull/16889
* @nissessenap made their first contribution in https://github.com/kyverno/kyverno/pull/17085
* @shashankvarma499 made their first contribution in https://github.com/kyverno/kyverno/pull/17550
* @Ahmad-Faraj made their first contribution in https://github.com/kyverno/kyverno/pull/17558
* @Elvand-Lie made their first contribution in https://github.com/kyverno/kyverno/pull/16840
* @guy-avigdor-zota made their first contribution in https://github.com/kyverno/kyverno/pull/17616
* @NerfedAce made their first contribution in https://github.com/kyverno/kyverno/pull/17623
* @thisis-manan made their first contribution in https://github.com/kyverno/kyverno/pull/17494
* @sriramg-aivar made their first contribution in https://github.com/kyverno/kyverno/pull/17627
* @priorax made their first contribution in https://github.com/kyverno/kyverno/pull/17762
* @Zara-5 made their first contribution in https://github.com/kyverno/kyverno/pull/17773
* @VijayabaskarR-06 made their first contribution in https://github.com/kyverno/kyverno/pull/17800
* @KKamJi98 made their first contribution in https://github.com/kyverno/kyverno/pull/17840
* @Sanchit2662 made their first contribution in https://github.com/kyverno/kyverno/pull/17855
* @ManojLamani made their first contribution in https://github.com/kyverno/kyverno/pull/17903
* @thebearmayor made their first contribution in https://github.com/kyverno/kyverno/pull/17881
* @antcybersec made their first contribution in https://github.com/kyverno/kyverno/pull/17781
* @geeknishantkyeus made their first contribution in https://github.com/kyverno/kyverno/pull/18020
* @Mannan-Ali made their first contribution in https://github.com/kyverno/kyverno/pull/17429
* @Siddhartha-singh01 made their first contribution in https://github.com/kyverno/kyverno/pull/18026
* @RudraDudhat2509 made their first contribution in https://github.com/kyverno/kyverno/pull/17791
* @Kaizhe made their first contribution in https://github.com/kyverno/kyverno/pull/17670
* @e-esakman made their first contribution in https://github.com/kyverno/kyverno/pull/18212
* @vlbaluk made their first contribution in https://github.com/kyverno/kyverno/pull/18273
* @GuTS805 made their first contribution in https://github.com/kyverno/kyverno/pull/18375

**Full Changelog**: https://github.com/kyverno/kyverno/compare/v1.19.2...v1.20.0
