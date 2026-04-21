来源: https://github.com/kyverno/kyverno/releases/tag/v1.17.0

# kyverno/kyverno v1.17.0 Release Notes

Published at: 2026-02-02T11:39:39Z

## What's Changed
* restrict resource access in namespaced CEL policy types by @fjogeleit in https://github.com/kyverno/kyverno/pull/14217
* Add unit test for `NamespacedValidatingPolicy` by @slashexx in https://github.com/kyverno/kyverno/pull/14224
* chore(deps): bump actions/upload-artifact from 4.6.2 to 5.0.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14229
* chore(deps): bump actions/upload-artifact from 4.6.2 to 5.0.0 in /.github/actions/publish-image by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14230
* Add `NamespacedImageValidatingPolicy` and common compiler interface  by @slashexx in https://github.com/kyverno/kyverno/pull/14195
* chore(deps): bump actions/download-artifact from 4.3.0 to 6.0.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14227
* chore(deps): bump fluxcd/flux2 from 2.7.2 to 2.7.3 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14240
* fix metadata path translation and translating paths in matchCondition by @Mohab96 in https://github.com/kyverno/kyverno/pull/14208
* chore(deps): bump actions/download-artifact from 4.3.0 to 6.0.0 in /.github/actions/run-tests by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14226
* chore(deps): bump github/codeql-action from 4.30.9 to 4.31.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14228
* chore: add namespaced-validating-policies conformance job by @eddycharly in https://github.com/kyverno/kyverno/pull/14245
* remove params reference in API docs by @fjogeleit in https://github.com/kyverno/kyverno/pull/14236
* describe validation actions in API docs by @fjogeleit in https://github.com/kyverno/kyverno/pull/14259
* chore: (CI) update k8s versions by @realshuting in https://github.com/kyverno/kyverno/pull/14264
* Add Okteto to the list of Kyverno adopters by @rberrelleza in https://github.com/kyverno/kyverno/pull/14269
* chore(deps): bump github.com/cyphar/filepath-securejoin from 0.5.0 to 0.6.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14275
* feat: add Kubernetes v1.30-v1.32 support to Pod Security Standard by @wertelyu in https://github.com/kyverno/kyverno/pull/14255
* chore(deps): bump cbrgm/cleanup-stale-branches-action from 1.2.0 to 1.2.2 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14274
* chore(deps): bump github/codeql-action from 4.31.0 to 4.31.2 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14266
* chore(deps): bump sigs.k8s.io/controller-runtime from 0.22.0 to 0.22.4 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14287
* chore(deps): bump github.com/aptible/supercronic from 0.2.36 to 0.2.39 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14288
* chore(deps): bump helm/kind-action from 1.12.0 to 1.13.0 in /.github/actions/run-tests by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14285
* fix: allow bind role to the background controller default by @realshuting in https://github.com/kyverno/kyverno/pull/14278
* chore(deps): bump helm/kind-action from 1.12.0 to 1.13.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14284
* feat: amend the `ImageValidatingPolicy` controller to work with `NamespacedImageValidatingPolicy`, configure admission controller and webhook  by @slashexx in https://github.com/kyverno/kyverno/pull/14242
* bump nivpol to v1beta1 by @fjogeleit in https://github.com/kyverno/kyverno/pull/14306
* feat: add chainsaw test for namespaced deleting policy in the ci pipeline by @slashexx in https://github.com/kyverno/kyverno/pull/14315
* fix nil namespace initialization for cluster wide param resources by @aerosouund in https://github.com/kyverno/kyverno/pull/14327
* fix(devcontainer): add make+gcc and update go version in devcontainer by @menzenski in https://github.com/kyverno/kyverno/pull/14331
* Update devcontainer by @lentzi90 in https://github.com/kyverno/kyverno/pull/14248
* chore(deps): bump sigs.k8s.io/kustomize/api from 0.20.1 to 0.21.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14321
* chore(deps): bump github.com/awslabs/amazon-ecr-credential-helper/ecr-login from 0.10.1 to 0.11.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14324
* fix: dont register the http request type by @aerosouund in https://github.com/kyverno/kyverno/pull/14238
* chore(deps): bump golang.org/x/sync from 0.17.0 to 0.18.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14322
* chore(deps): bump github/codeql-action from 4.31.2 to 4.31.3 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14342
* fix: attempt to fix scale test k6 installation by @realshuting in https://github.com/kyverno/kyverno/pull/14338
* chore(deps): bump golang.org/x/crypto from 0.43.0 to 0.44.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14344
* chore(deps): bump the otel group across 1 directory with 10 updates by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14298
* chore: temporarily remove falky tests by @realshuting in https://github.com/kyverno/kyverno/pull/14346
* fix: handle namespace match with namespaceSelector by @MariamFahmy98 in https://github.com/kyverno/kyverno/pull/14339
* feat: generate and copy crd to cli for namespaced validating policy and namespaced deleting policy by @slashexx in https://github.com/kyverno/kyverno/pull/14316
* chore(deps): bump the kubernetes group across 3 directories with 7 updates by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14343
* feat: in-cluster concurrent resource loader by @dhimanAbhi in https://github.com/kyverno/kyverno/pull/13560
* chore(deps): bump golangci/golangci-lint-action from 8.0.0 to 9.0.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14318
* chore(deps): bump helm/chart-testing-action from 2.7.0 to 2.8.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14309
* chore(deps): bump actions/checkout from 4.2.2 to 5.0.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14362
* chore(deps): bump google.golang.org/grpc from 1.76.0 to 1.77.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14365
* fix(admissionpolicy): handle nil MatchConstraints by @thevilledev in https://github.com/kyverno/kyverno/pull/14350
* fix: use namespaceObject in deletingpolicies by @MariamFahmy98 in https://github.com/kyverno/kyverno/pull/14381
* chore: minor fixes by @MariamFahmy98 in https://github.com/kyverno/kyverno/pull/14370
* fix: use context in deletingpolicies in the CLI by @MariamFahmy98 in https://github.com/kyverno/kyverno/pull/14382
* fix(controllers): duplicate error accumulation by @thevilledev in https://github.com/kyverno/kyverno/pull/14349
* supporting wildcards in resource namespace matching by @iamsgarg-ob in https://github.com/kyverno/kyverno/pull/14250
* feat: Implement failureActionOverrides namespaceSelector by @fhielpos in https://github.com/kyverno/kyverno/pull/13750
* fix(controllers): avoid cleanup on non-matching ns by @thevilledev in https://github.com/kyverno/kyverno/pull/14386
* chore(deps): bump actions/checkout from 5.0.0 to 5.0.1 in /.github/actions/run-tests by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14363
* chore(deps): bump github.com/sigstore/rekor from 1.3.10 to 1.4.3 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14364
* feat: update codeowners by @realshuting in https://github.com/kyverno/kyverno/pull/14401
* chore(deps): bump svenstaro/upload-release-action from 2.11.2 to 2.11.3 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14379
* chore(deps): bump github.com/go-git/go-git/v5 from 5.16.3 to 5.16.4 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14408
* fix: cli test with context file from git by @eddycharly in https://github.com/kyverno/kyverno/pull/14414
* chore(deps): bump github.com/cyphar/filepath-securejoin from 0.6.0 to 0.6.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14407
* Add `NamespacedMutatingPolicy` and common compiler interface  by @slashexx in https://github.com/kyverno/kyverno/pull/14225
* chore(deps): bump github/codeql-action from 4.31.3 to 4.31.5 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14405
* chore: add a new test that uses both context and values by @MariamFahmy98 in https://github.com/kyverno/kyverno/pull/14416
* chore(deps): bump actions/checkout from 5.0.1 to 6.0.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14419
* chore(deps): bump golangci/golangci-lint-action from 9.0.0 to 9.1.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14420
* chore: add chainsaw test for mutating subresource: mpol: by @Rohanraj123 in https://github.com/kyverno/kyverno/pull/13803
* chore(deps): bump github.com/google/go-containerregistry from 0.20.6 to 0.20.7 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14421
* chore(deps): bump fluxcd/flux2 from 2.7.3 to 2.7.4 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14404
* chore(deps): bump actions/setup-python from 6.0.0 to 6.1.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14403
* chore(deps): bump actions/setup-go from 6.0.0 to 6.1.0 in /.github/actions/setup-build-env by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14375
* chore(deps): bump github.com/google/gnostic-models from 0.7.0 to 0.7.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14406
* chore(deps): bump golang.org/x/crypto from 0.44.0 to 0.45.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14374
* fix: implement the fake image metadata for the CLI by @MariamFahmy98 in https://github.com/kyverno/kyverno/pull/14415
* Create a chainsaw test for creating a resource with custom label using the generating policy by @aerosouund in https://github.com/kyverno/kyverno/pull/14424
* feat: add `NamespacedGeneratingPolicy` to v1alpha1 by @slashexx in https://github.com/kyverno/kyverno/pull/14400
* chore(deps): bump cbrgm/cleanup-stale-branches-action from 1.2.2 to 1.2.3 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14427
* chore(deps): bump github/codeql-action from 4.31.5 to 4.31.6 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14426
* chore(deps): bump fluxcd/flux2 from 2.7.4 to 2.7.5 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14425
* chore(deps): bump the sigstore group across 1 directory with 4 updates by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14376
* chore: run autogen chainsaw tests concurrently by @eddycharly in https://github.com/kyverno/kyverno/pull/14429
* support nmpol for update requests by @fjogeleit in https://github.com/kyverno/kyverno/pull/14430
* chore(deps): bump actions/checkout from 6.0.0 to 6.0.1 in /.github/actions/run-tests by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14434
* feat: bump ngpol to v1beta1 by @eddycharly in https://github.com/kyverno/kyverno/pull/14436
* chore(deps): bump golangci/golangci-lint-action from 9.1.0 to 9.2.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14433
* chore(deps): bump actions/checkout from 6.0.0 to 6.0.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14432
* make VAP/MAP reporting opt in instead of opt out by @aerosouund in https://github.com/kyverno/kyverno/pull/14353
* removing nancy tests by @iamsgarg-ob in https://github.com/kyverno/kyverno/pull/14440
* chore(deps): bump github.com/spf13/cobra from 1.10.1 to 1.10.2 in /hack/controller-gen by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14444
* chore: update go version in devcontainer by @kartikangiras in https://github.com/kyverno/kyverno/pull/14445
* chore(deps): bump github.com/spf13/cobra from 1.10.1 to 1.10.2 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14443
* fix: add webhook compatibility and admission controller to work with NamespacedGeneratingPolicy by @slashexx in https://github.com/kyverno/kyverno/pull/14431
* test: add Filter webhook handler test by @kartikangiras in https://github.com/kyverno/kyverno/pull/14409
* test: add unit test for webhooks/handler by @kartikangiras in https://github.com/kyverno/kyverno/pull/13873
* add unit and chainsaw tests for `ngpol` and `nmpol` by @slashexx in https://github.com/kyverno/kyverno/pull/14449
* chore(deps): bump github/codeql-action from 4.31.6 to 4.31.7 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14457
* chore(deps): bump github.com/go-git/go-billy/v5 from 5.6.2 to 5.7.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14458
* fix: make vapgen output predictable by @eddycharly in https://github.com/kyverno/kyverno/pull/14459
* chore: bump chainsaw by @eddycharly in https://github.com/kyverno/kyverno/pull/14461
* chore(deps): bump github.com/onsi/gomega from 1.38.2 to 1.38.3 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14466
* chore(deps): bump golang.org/x/sync from 0.18.0 to 0.19.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14464
* chore(deps): bump golang.org/x/crypto from 0.45.0 to 0.46.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14465
* chore(deps): bump github.com/aptible/supercronic from 0.2.39 to 0.2.40 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14467
* create a custom execution cel env to handle expressions in target match constraints by @aerosouund in https://github.com/kyverno/kyverno/pull/14452
* chore(deps): bump the otel group across 1 directory with 10 updates by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14463
* chore(deps): bump codecov/codecov-action from 5.5.1 to 5.5.2 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14473
* fix: revert accidentally introduced breaking change for the kyverno_policy_results metric by @fjogeleit in https://github.com/kyverno/kyverno/pull/14471
* Fix namespaced watcher by @fjogeleit in https://github.com/kyverno/kyverno/pull/14470
* chore: remove steps not used in conformance workflows by @eddycharly in https://github.com/kyverno/kyverno/pull/14469
* ci: Improved formatting of json data in Vulnerabilities detected github workflow  by @JagjeevanAK in https://github.com/kyverno/kyverno/pull/14485
* chore(deps): bump the kubernetes group across 3 directories with 7 updates by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14474
* chore(deps): bump the sigstore group across 1 directory with 4 updates by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14475
* fix: ensure GVK infos are set when metrics are recorded by @fjogeleit in https://github.com/kyverno/kyverno/pull/14492
* execute missing controller metric by @fjogeleit in https://github.com/kyverno/kyverno/pull/14493
* chore(deps): bump github.com/aptible/supercronic from 0.2.40 to 0.2.41 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14515
* chore(deps): bump actions/upload-artifact from 5.0.0 to 6.0.0 in /.github/actions/publish-image by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14511
* chore(deps): bump actions/download-artifact from 6.0.0 to 7.0.0 in /.github/actions/run-tests by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14512
* chore(deps): bump actions/download-artifact from 6.0.0 to 7.0.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14510
* chore(deps): bump actions/upload-artifact from 5.0.0 to 6.0.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14509
* chore(deps): bump github/codeql-action from 4.31.7 to 4.31.8 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14508
* fix: pin action by @eddycharly in https://github.com/kyverno/kyverno/pull/14520
* chore(deps): bump zgosalvez/github-actions-ensure-sha-pinned-actions from 3.0.25 to 4.0.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14507
* chore(deps): bump google.golang.org/protobuf from 1.36.10 to 1.36.11 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14514
* perf(globalcontext): use DynamicInformer for optimal memory and performance by @liuxu623 in https://github.com/kyverno/kyverno/pull/14518
* chore(deps): bump the sigstore group across 1 directory with 4 updates by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14513
* fix: vuln report job by @eddycharly in https://github.com/kyverno/kyverno/pull/14525
* fix: vuln report job by @eddycharly in https://github.com/kyverno/kyverno/pull/14527
* chore(deps): bump github/codeql-action from 4.31.8 to 4.31.9 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14532
* fix: continue deletion on resource not found error by @fjogeleit in https://github.com/kyverno/kyverno/pull/14534
* chore: update myself in codeowners file by @realshuting in https://github.com/kyverno/kyverno/pull/14538
* Policies api version bump by @fjogeleit in https://github.com/kyverno/kyverno/pull/14536
* extend CLI policy and exception load, adding test for v1 application by @fjogeleit in https://github.com/kyverno/kyverno/pull/14541
* use v1beta1.PolicyException as new default version by @fjogeleit in https://github.com/kyverno/kyverno/pull/14543
* feat: Add kyverno.io/v2 GlobalContextEntry API by @liuxu623 in https://github.com/kyverno/kyverno/pull/14540
* Support other key algorithms than RSA by @lentzi90 in https://github.com/kyverno/kyverno/pull/14523
* feat: update codeowners by @realshuting in https://github.com/kyverno/kyverno/pull/14533
* chore(deps): bump sigs.k8s.io/controller-tools from 0.18.0 to 0.20.0 in /hack/controller-gen by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14546
* fix(cli): color issue for --remove-color flag by @Mujib-Ahasan in https://github.com/kyverno/kyverno/pull/14270
* read kind label value from AdmissionRequest by @fjogeleit in https://github.com/kyverno/kyverno/pull/14549
* chore(deps): bump actions/download-artifact from 6.0.0 to 7.0.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14553
* Fix load test flakes by @aerosouund in https://github.com/kyverno/kyverno/pull/14558
* Create hash CEL lib by @fjogeleit in https://github.com/kyverno/kyverno/pull/14547
* chore(deps): bump github.com/sigstore/sigstore from 1.9.5 to 1.10.3 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14516
* chore(deps): bump google.golang.org/grpc from 1.77.0 to 1.78.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14562
* skip mutateExisting during admission to prevent trigger mutation by @rishabh998186 in https://github.com/kyverno/kyverno/pull/14478
* Update versions by @JimBugwadia in https://github.com/kyverno/kyverno/pull/14566
* Update CODEOWNERS by @JimBugwadia in https://github.com/kyverno/kyverno/pull/14571
* policycache: skip nil and invalid policies to prevent panics by @remo-lab in https://github.com/kyverno/kyverno/pull/14572
* create CEL math lib containing the round function by @aerosouund in https://github.com/kyverno/kyverno/pull/14576
* Policy exception json support by @jigar-joshi-nirmata in https://github.com/kyverno/kyverno/pull/14569
* Add CEL Json library by @aerosouund in https://github.com/kyverno/kyverno/pull/14578
* add kubernetes semantic versioning library to default env options by @aerosouund in https://github.com/kyverno/kyverno/pull/14579
* Set shorter period for k6 tests by @lentzi90 in https://github.com/kyverno/kyverno/pull/14544
* create cel random library by @aerosouund in https://github.com/kyverno/kyverno/pull/14574
* Fix typos in documentation by @oglok in https://github.com/kyverno/kyverno/pull/14588
* feat: create CEL x509 decode function by @kartikangiras in https://github.com/kyverno/kyverno/pull/14580
* feat: Add --tlsKeyAlgorithm and support more algorithms by @lentzi90 in https://github.com/kyverno/kyverno/pull/14559
* update autogen url in validation error message by @bakito in https://github.com/kyverno/kyverno/pull/14586
* fix: resolve data race in Test_ValidateAuditWarn by @rishabh998186 in https://github.com/kyverno/kyverno/pull/14584
* fix: improve error message for ClusterPolicy with namespace by @Kevin222004 in https://github.com/kyverno/kyverno/pull/13538
* webhooks: prevent audit cancellation by HTTP request context by @remo-lab in https://github.com/kyverno/kyverno/pull/14582
* fix: add a pre-flight check for listing CRDs in cleanup controller by @JagjeevanAK in https://github.com/kyverno/kyverno/pull/14565
* feat: added a CEL-Yaml library by @JagjeevanAK in https://github.com/kyverno/kyverno/pull/14590
* feat: add reports-server integration support by @starlightromero in https://github.com/kyverno/kyverno/pull/14545
* chore(deps): bump cbrgm/cleanup-stale-branches-action from 1.2.3 to 1.2.4 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14591
* chore: update reports-server dependency version by @kartikangiras in https://github.com/kyverno/kyverno/pull/14596
* Add time library that contains time.now() by @aerosouund in https://github.com/kyverno/kyverno/pull/14601
* chore: add k8s fake client lib by @realshuting in https://github.com/kyverno/kyverno/pull/14555
* Support cert-manager certificates in the helm chart by @lentzi90 in https://github.com/kyverno/kyverno/pull/14605
* feat: bump kube to 1.35 by @eddycharly in https://github.com/kyverno/kyverno/pull/14608
* Transform CEL lib (replaces the object_from_lists JMESPath functionality) by @aerosouund in https://github.com/kyverno/kyverno/pull/14602
* feat: use kyverno/api repo by @eddycharly in https://github.com/kyverno/kyverno/pull/14609
* fix: close junit system-out tags correctly by @hiirrxnn in https://github.com/kyverno/kyverno/pull/14612
* added nodeselector for linux to install.yaml generation by @aditip149209 in https://github.com/kyverno/kyverno/pull/14501
* add time truncate cel function by @aerosouund in https://github.com/kyverno/kyverno/pull/14613
* chore: fix some comments to improve readability by @promalert in https://github.com/kyverno/kyverno/pull/14611
* fix:  Address security vulnerabilities  by @JagjeevanAK in https://github.com/kyverno/kyverno/pull/14561
* docs: add missing api docs by @eddycharly in https://github.com/kyverno/kyverno/pull/14614
* fix: ensure deep copy of context to prevent corruption in multi-rule … by @hiirrxnn in https://github.com/kyverno/kyverno/pull/14600
* chore(deps): bump github.com/onsi/gomega from 1.38.3 to 1.39.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14626
* Fix: WarmUp only caching first policy due to early returns by @remo-lab in https://github.com/kyverno/kyverno/pull/14624
* chore: bump chainsaw by @eddycharly in https://github.com/kyverno/kyverno/pull/14622
* chore: add option to disable kubectl-evict install in chainsaw tests by @eddycharly in https://github.com/kyverno/kyverno/pull/14631
* fix: chain mutations correctly across multiple policies in CEL mutati… by @Tolsto in https://github.com/kyverno/kyverno/pull/14616
* test: added test for pkg/utils/controller/metadata.go by @Jineshbansal in https://github.com/kyverno/kyverno/pull/13792
* add execution stats to rule response for generate rules by @fjogeleit in https://github.com/kyverno/kyverno/pull/14637
* fix: prevent nil pointer panic in cleanup controller by @remo-lab in https://github.com/kyverno/kyverno/pull/14638
* chore(deps): bump github.com/sigstore/cosign/v3 from 3.0.3 to 3.0.4 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14639
* Fix: Run go mod tidy after client codegen to prevent build failures by @hiirrxnn in https://github.com/kyverno/kyverno/pull/14636
* chore: improve background-only chainsaw tests by @eddycharly in https://github.com/kyverno/kyverno/pull/14640
* chore: improve cleanup chainsaw tests by @eddycharly in https://github.com/kyverno/kyverno/pull/14641
* chore: improve deferred chainsaw tests by @eddycharly in https://github.com/kyverno/kyverno/pull/14645
* chore: improve deleting-policy chainsaw tests by @eddycharly in https://github.com/kyverno/kyverno/pull/14646
* chore: improve events chainsaw tests by @eddycharly in https://github.com/kyverno/kyverno/pull/14647
* chore: improve exceptions chainsaw tests by @eddycharly in https://github.com/kyverno/kyverno/pull/14649
* chore: improve filter  chainsaw tests by @eddycharly in https://github.com/kyverno/kyverno/pull/14650
* chore: improve webhooks chainsaw tests by @eddycharly in https://github.com/kyverno/kyverno/pull/14651
* chore(deps): bump actions/setup-go from 6.1.0 to 6.2.0 in /.github/actions/setup-build-env by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14655
* chore(deps): bump golang.org/x/crypto from 0.46.0 to 0.47.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14656
* chore(deps): bump github/codeql-action from 4.31.9 to 4.31.10 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14654
* chore: bump chainsaw by @eddycharly in https://github.com/kyverno/kyverno/pull/14657
* chore: convert chainsaw config files to v1alpha2 by @eddycharly in https://github.com/kyverno/kyverno/pull/14660
* bump cel policy compiler versions by @aerosouund in https://github.com/kyverno/kyverno/pull/14669
* move policy library tests to a post merge lane by @aerosouund in https://github.com/kyverno/kyverno/pull/14670
* introduce test quarantine capabilites through inputs to the run tests action by @aerosouund in https://github.com/kyverno/kyverno/pull/14570
* Fix misleading 'applying background rule' log message by @Sanyamjain2105 in https://github.com/kyverno/kyverno/pull/14667
* chore: improve conformance images build cache by @eddycharly in https://github.com/kyverno/kyverno/pull/14680
* test: add test cases for Trace Webhook Handler by @kartikangiras in https://github.com/kyverno/kyverno/pull/14676
* test: add Enrich Webhook Handler unit test cases by @kartikangiras in https://github.com/kyverno/kyverno/pull/14675
* ci: Add disk cleanup on scale-tests to avoid k6 install fail by @lucchmielowski in https://github.com/kyverno/kyverno/pull/14672
* Add unit tests for pkg/version and pkg/tracing by @Sanyamjain2105 in https://github.com/kyverno/kyverno/pull/14666
* chore(deps): bump github.com/sigstore/fulcio from 1.8.4 to 1.8.5 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14665
* fix: add missing lock in GetDownstreams to prevent data race by @remo-lab in https://github.com/kyverno/kyverno/pull/14684
* chore: use dedicated configs in test suites by @eddycharly in https://github.com/kyverno/kyverno/pull/14661
* chore(deps): bump mikefarah/yq from 4.48.2 to 4.50.1 in /.github/actions/run-tests by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14686
* chore: better caching in conformance tests by @eddycharly in https://github.com/kyverno/kyverno/pull/14687
* chore: better caching in conformance tests (part 2) by @eddycharly in https://github.com/kyverno/kyverno/pull/14688
* chore: improve chainsaw test sharding by @eddycharly in https://github.com/kyverno/kyverno/pull/14689
* fix: add nil check in UpdateResourceHash to prevent panic by @atharrva01 in https://github.com/kyverno/kyverno/pull/14674
* chore: disable trivy cache in devcontainer build by @eddycharly in https://github.com/kyverno/kyverno/pull/14690
* chore: improve verify codegen workflow by @eddycharly in https://github.com/kyverno/kyverno/pull/14692
* fix: prevent nil pointer dereference of EmitWarning in fine-grained webhook by @atharrva01 in https://github.com/kyverno/kyverno/pull/14693
* chore: update trivy-action usage in our workflows by @eddycharly in https://github.com/kyverno/kyverno/pull/14695
* chore: add namespaced-XXX workflows to required conformance tests by @eddycharly in https://github.com/kyverno/kyverno/pull/14696
* add openreports conformance test lane by @aerosouund in https://github.com/kyverno/kyverno/pull/14691
* Module test for function evaluation (replace_all) with shallow variables as function parameter by @nemethloci in https://github.com/kyverno/kyverno/pull/12148
* chore: openreports PR followup by @eddycharly in https://github.com/kyverno/kyverno/pull/14697
* chore(deps): bump github.com/sirupsen/logrus from 1.9.4-0.20230606125235-dd1b4c2e81af to 1.9.4 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14699
* chore: add missing step template schema in chainsaw tests by @eddycharly in https://github.com/kyverno/kyverno/pull/14703
* chore: add missing chainsaw test schema directives by @eddycharly in https://github.com/kyverno/kyverno/pull/14707
* Exclude result types by @aerosouund in https://github.com/kyverno/kyverno/pull/14552
* feat: support variable lookup for cpol by @realshuting in https://github.com/kyverno/kyverno/pull/14653
* feat: add automatic GOMEMLIMIT configuration by @liuxu623 in https://github.com/kyverno/kyverno/pull/14619
* chore: refactor helm tests by @eddycharly in https://github.com/kyverno/kyverno/pull/14709
* fix: use local helm-docs binary instead of Docker by @eddycharly in https://github.com/kyverno/kyverno/pull/14708
* chore(deps): bump actions/cache from 5.0.1 to 5.0.2 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14713
* feat: Add cosign v3 support to IVPOL by @lucchmielowski in https://github.com/kyverno/kyverno/pull/14652
* chore(deps): bump sigs.k8s.io/release-utils from 0.12.2 to 0.12.3 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14714
* add time to cron filter by @aerosouund in https://github.com/kyverno/kyverno/pull/14715
* Fix generate() returning nil error on failure by @remo-lab in https://github.com/kyverno/kyverno/pull/14712
* chore: fix flake in nivpol chainsaw tests by @eddycharly in https://github.com/kyverno/kyverno/pull/14716
* chore: bump kind node default image to 1.35 by @eddycharly in https://github.com/kyverno/kyverno/pull/14718
* chore: fix flake in ivpol chainsaw tests by @eddycharly in https://github.com/kyverno/kyverno/pull/14720
* chore(deps): bump sigs.k8s.io/controller-runtime from 0.22.4 to 0.23.0 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14722
* feat: use api remote chart by @eddycharly in https://github.com/kyverno/kyverno/pull/14727
* chore: bump initial version for helm upgrade test by @eddycharly in https://github.com/kyverno/kyverno/pull/14728
* test: add Protect Webhook Handler Unit test cases by @kartikangiras in https://github.com/kyverno/kyverno/pull/14723
* test: add Unit Test cases for Metrics Webhook Handler by @kartikangiras in https://github.com/kyverno/kyverno/pull/14724
* added unit-test for cmd/kyverno/watch/watcher.go and pkg/utils/retry/… by @Lokesh2Arvind in https://github.com/kyverno/kyverno/pull/14698
* Fix: Prevent generate controller panic when policy is deleted with pending UpdateRequests by @atharrva01 in https://github.com/kyverno/kyverno/pull/14729
* chore(deps): bump github.com/kyverno/api from 0.0.0-20260107110632-1c7ada92d084 to 0.0.1-alpha.1 by @dependabot[bot] in https://github.com/kyverno/kyverno/pull/14732
* Add CEL-based ValidatingPolicy support for Pod Security Standards (Cherry-pick #14598) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14737
* fix: use DeepCopy in WatchManager to prevent cache mutation (Cherry-pick #14735) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14738
* release: 1.17.0-rc.1 by @eddycharly in https://github.com/kyverno/kyverno/pull/14739
* fix: helm release workflow (Cherry-pick #14744) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14745
* chore(deps): bump actions/setup-python from 6.1.0 to 6.2.0 (Cherry-pick #14748) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14751
* chore(deps): bump github.com/sigstore/rekor from 1.4.3 to 1.5.0 (Cherry-pick #14749) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14753
* chore(deps): bump github.com/theupdateframework/go-tuf/v2 from 2.3.0 to 2.3.1 (Cherry-pick #14741) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14759
* chore(deps): bump github.com/in-toto/in-toto-golang from 0.9.1-0.20240317085821-8e2966059a09 to 0.10.0 (Cherry-pick #14750) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14754
* chore: add caching workflow (Cherry-pick #14760) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14762
* chore: use gomod cache in cli test workflow (Cherry-pick #14761) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14763
* chore: add more modules to gomod cache (Cherry-pick #14767) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14772
* chore(deps): bump github.com/sigstore/sigstore from 1.10.3 to 1.10.4 (Cherry-pick #14771) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14773
* chore: use gomod cache in verify-codegen workflow (Cherry-pick #14765) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14774
* chore: improve cache in images build workflow (Cherry-pick #14764) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14775
* chore(deps): bump actions/checkout from 6.0.1 to 6.0.2 (Cherry-pick #14779) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14782
* chore: use gomod cache in unit tests workflow (Cherry-pick #14768) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14785
* fix: correct ivpol slice append in scanner (Cherry-pick #14778) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14786
* fix: use correct resource name in metadata cache update (Cherry-pick #14755) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14787
* fix: skip racy test (Cherry-pick #14788) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14791
* chore: use gomod in load testing workflow (Cherry-pick #14789) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14792
* chore: remove unused step in sonar workflow (Cherry-pick #14784) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14790
* chore: use gomod cache in linter workflow (Cherry-pick #14793) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14794
* chore(deps): bump the sigstore group across 1 directory with 4 updates (Cherry-pick #14780) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14783
* chore: remove unused step in fossa workflow (Cherry-pick #14795) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14796
* Add unit tests for admission metrics, resource counters, and UpdateRequest generation (Cherry-pick #14756) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14798
* fix: add Deduplicate rules in webhook configurations (Cherry-pick #14222) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14800
* chore: use gomod cache in images publish workflow (Cherry-pick #14799) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14801
* chore: fix use gomod cache in images publish workflow (Cherry-pick #14802) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14803
* chore: use gomod cache in conformace workflow (Cherry-pick #14797) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14804
* chore: fix images preparation (Cherry-pick #14807) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14809
* chore: remove wrong fetch-deps in workflow (Cherry-pick #14808) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14810
* chore: improve gobuild cache (Cherry-pick #14811) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14813
* fix: use %w to wrap errors in registry client (Cherry-pick #14816) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14819
* fix: propagate context in background checks and generate (Cherry-pick #14812) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14821
* chore: fix unit tests cache key (Cherry-pick #14820) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14822
* chore: use gomod cache in post conformance workflow (Cherry-pick #14823) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14824
* chore: improve gobuild cache content (Cherry-pick #14827) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14830
* fix: refactor policy controller switch and clean up unused params (Cherry-pick #14817) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14831
* fix: prevent nil policy panic in updaterequest event generation (Cherry-pick #14742) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14833
* chore: tidy up helm release workflow (Cherry-pick #14832) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14835
* Added unit tests for webhook/utils and fixed a linter suggestion (Cherry-pick #14836) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14837
* fix: handle AddEventHandler errors in policy controller (Cherry-pick #14815) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14839
* chore(deps): bump github/codeql-action from 4.31.10 to 4.31.11 (Cherry-pick #14848) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14851
* chore: improve release workflow (Cherry-pick #14838) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14850
* Add unit tests for auth/checker package (Cherry-pick #14841) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14854
* Added unit tests for CheckSubjects function (Cherry-pick #14840) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14855
* fix: prevent selector map mutation in CloneList cleanup loop (Cherry-pick #14842) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14857
* test: add unit tests for mutate validation (Cherry-pick #14856) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14859
* chore(deps): bump github/codeql-action from 4.31.11 to 4.32.0 (Cherry-pick #14875) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14878
* chore(deps): bump sigs.k8s.io/controller-runtime from 0.23.0 to 0.23.1 (Cherry-pick #14876) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14879
* test: add unit tests for ResourceFilter.IsEmpty (Cherry-pick #14871) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14882
* chore(deps): bump github.com/theupdateframework/go-tuf/v2 from 2.3.1 to 2.4.1 (Cherry-pick #14868) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14885
* fix: add missing break in namespace selector override matching (Cherry-pick #14867) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14887
* test: add unit tests for background/common/labels package (Cherry-pick #14866) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14888
* test: add unit tests for exceptions selector (Cherry-pick #14863) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14889
* test: add unit tests for event creation functions (Cherry-pick #14890) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14891
* fix: add bounds check for Rules slice in CEL generate controller audit (Cherry-pick #14874) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14897
* test: add unit tests for report results utilities (Cherry-pick #14893) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14900
* access time library functions with time.x notation (Cherry-pick #14898) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14903
* test: add unit tests for globalcontext/store package (Cherry-pick #14864) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14905
* fix: Update kubectl image to fix CVEs (Cherry-pick #14908) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14914
* release: 1.17.0-rc.2 by @eddycharly in https://github.com/kyverno/kyverno/pull/14920
* use lowercase function names for yaml and json parse (Cherry-pick #14902) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14921
* chore: fix helm release workflow (Cherry-pick #14930) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14933
* chore: fix helm release workflow (Cherry-pick #14934) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14935
* test: add unit tests for match utils namespace functions (Cherry-pick #14932) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14937
* respect the allowedResults flag in the mutate and generate engines (Cherry-pick #14924) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14938
* test: add unit tests for RedactSecret function (Cherry-pick #14936) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14939
* test: add unit tests for validate utils anchor functions (Cherry-pick #14925) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14940
* try to handle objects first as a map string interface before ref.Val to ref.Val (Cherry-pick #14918) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14942
* test: add unit tests for metrics parser functions (Cherry-pick #14917) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14948
* test: add unit tests for report utils functions (Cherry-pick #14945) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14950
* fix: new api types backward compatibility (cherry-pick #14941) by @eddycharly in https://github.com/kyverno/kyverno/pull/14949
* test: add unit tests for policy exception helper functions (Cherry-pick #14946) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14995
* chore(deps): bump docker/login-action from 3.6.0 to 3.7.0 (Cherry-pick #14990) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14994
* test: add unit tests for pkg/tls/reader.go (Cherry-pick #14968) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14996
* fix: add missing resource migration in helm chart (Cherry-pick #14998) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/14999
* refactor: generate policies.kyverno.io client only for v1beta1 (Cherry-pick #14997) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15004
* chore: retry devcontainer-build workflow automatically (Cherry-pick #15009) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15011
* chore: fix retry devcontainer-build workflow (Cherry-pick #15012) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15017
* fix(aggregate): use correct informer in handler (Cherry-pick #15010) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15018
* check reports server connectivity with a custom image to avoid using the kubectl image (Cherry-pick #14623) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15016
* chore: automatically retry conformance workflow (Cherry-pick #15019) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15024
* chore: remove dummy workflow (Cherry-pick #15023) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15027
* fix: remove some policies.kyverno.io/v1alpha1 usage (Cherry-pick #15014) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15028
* chore(deps): bump github.com/onsi/gomega from 1.39.0 to 1.39.1 (Cherry-pick #15031) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15034
* chore(deps): bump actions/cache from 5.0.2 to 5.0.3 (Cherry-pick #15030) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15036
* fix import path to fix loading of policies.kyverno.io/v1 resources (Cherry-pick #15035) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15039
* fix(admissionpolicygenerator): callback parameter (Cherry-pick #15033) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15041
* chore: add timeout in helm uninstall workflow (Cherry-pick #15040) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15043
* chore: add missing conformance requirements (Cherry-pick #15042) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15044
* fix: return error response when PolicyException lookup fails (Cherry-pick #15013) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15045
* fix: use leader election context to prevent split-brain on leadership… (Cherry-pick #14984) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15046
* fix: Explicitly set empty namespaces for clusterScope FlowSchemas (Cherry-pick #14951) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15047
* fix: update only what is needed in codegen-helm-update-versions (cherry-pick #15050) by @eddycharly in https://github.com/kyverno/kyverno/pull/15051
* release: v1.17.0-rc.3 by @eddycharly in https://github.com/kyverno/kyverno/pull/15052
* chore: fix helm lint by @eddycharly in https://github.com/kyverno/kyverno/pull/15054
* chore: fix deprecations in goreleaser config (Cherry-pick #15056) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15057
* chore: fix concurrency key in retry workflow (Cherry-pick #15049) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15065
* chore(deps): bump github.com/aptible/supercronic from 0.2.41 to 0.2.42 (Cherry-pick #15087) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15088
* release: v1.17.0 by @eddycharly in https://github.com/kyverno/kyverno/pull/15089

## New Contributors
* @Mohab96 made their first contribution in https://github.com/kyverno/kyverno/pull/14208
* @rberrelleza made their first contribution in https://github.com/kyverno/kyverno/pull/14269
* @wertelyu made their first contribution in https://github.com/kyverno/kyverno/pull/14255
* @menzenski made their first contribution in https://github.com/kyverno/kyverno/pull/14331
* @lentzi90 made their first contribution in https://github.com/kyverno/kyverno/pull/14248
* @iamsgarg-ob made their first contribution in https://github.com/kyverno/kyverno/pull/14250
* @Mujib-Ahasan made their first contribution in https://github.com/kyverno/kyverno/pull/14270
* @oglok made their first contribution in https://github.com/kyverno/kyverno/pull/14588
* @Kevin222004 made their first contribution in https://github.com/kyverno/kyverno/pull/13538
* @starlightromero made their first contribution in https://github.com/kyverno/kyverno/pull/14545
* @aditip149209 made their first contribution in https://github.com/kyverno/kyverno/pull/14501
* @promalert made their first contribution in https://github.com/kyverno/kyverno/pull/14611
* @Tolsto made their first contribution in https://github.com/kyverno/kyverno/pull/14616
* @Sanyamjain2105 made their first contribution in https://github.com/kyverno/kyverno/pull/14667

**Full Changelog**: https://github.com/kyverno/kyverno/compare/v1.16.3...v1.17.0