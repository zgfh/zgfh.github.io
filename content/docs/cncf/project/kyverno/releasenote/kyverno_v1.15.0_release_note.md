来源: https://github.com/kyverno/kyverno/releases/tag/v1.15.0

# kyverno/kyverno v1.15.0 Release Notes

Published at: 2025-07-31T07:28:23Z

## New Adopters
* ONZACK AG (#12983)
* Kubermatic (#13494)
* Finastra (#13063)
* Educates Training Platform (#13322)
* SingleStore (#13274)

## ✨ Added ✨
* Supported mutatingpolicies including admission flow, background reporting, mutate existing and CLI (#13095, #13420, #13425, #13409, #13181, #13240, #13264, #13277, #13304, #13428, #13439, #13460, #13465, #13518, #13620, #13440, #13449, #13592, #13598, #13419, #13522, #13679, #13634, #13626, #13166, #13392, #13380, #13448, #13455, #13573, #13610, #13526, #13554)
* Supported generatingpolicies including admission flow, background reporting, generate existing and CLI  (#13139, #13169, #13181, #13165, #13212, #13215, #13245, #13251, #13303, #13323, #13326, #13365, #13384, #13412, #13414, #13431, #13442, #13465, #13474, #13477, #13495, #13506, #13458, #13275, #13280, #13499, #13571, #13603, #13434, #13450, #13512, #1368, #13670, #13166, #13285, #13414, #13154, #13268, #13652, #13255)
* Supported deletingpolicies including in-cluster cleanup, and off-cluster cleanup via CLI  (#13008, #13008, #13284, #1328, #13226, #13238, #13301, #13368, #13480, #13509, #13417, #13433, #13443, #13446, #13447, #13453)
* Switched policy reports to openreports (alpha, #13452, #13524, #13574, #13556)
* Supported background reporting for `MutatingAdmissionPolicy` (#13543, #13561, #13497)
* Introduced `skipColor` flag for CLI output (#12277)
* Added `--cluster-wide-resources` flag to kyverno apply command (#12637)
* Supported MuatingAdmissionPolicy in CLI (#12667)
* Added multiple output formats (json, yaml, markdown, junit) for CLI test command (#12799)
* Added option to clone from private repo in CLI apply (#13012)
* Fixed YAML separator support in LoadTest with proper error handling (#13291)

## ⚠️ Changed ⚠️
* Enabled `ValidatingAdmissionPolicy` generation by default (#12678)
* Renamed CEL operator `image()` to `parseImageReference` (#12895)
* Removed CLI deprecated APIs (#13481)
* Improved VPOL performance (#13570)

## 🐛 Fixed 🐛
* Fixed default timestamp format handling in logging (#12557)
* Ensured loggingTimestampFormat applies to JSON logs (#12599)
* Fixed event name sanitization (#12693)
* Fixed CLI test command with test-case-selector flag (#13153)
* Completed CLI fix command documentation with website URLs (#13300)
* Fixed Globalcontext graceful handling (#13344)
* Disabled context support when using CEL Expressions in validate rules (#13393)
* Fixed inconsistent GVR JSON logging (#13413)
* Fixed cleanup controller resource watch failure (#13415)
* Added watcher for `ValidatingPolicy` autogen resources and append all results (#13483)
* Fixed IVPOL response to only add when actual result exists (#13502)
* Disallowed celPreconditions without validate.cel (#13514)
* Fixed flake in generate VAP chainsaw tests (#13520)
* Fixed status update due to different time formats (#13544)
* Fixed MAPs evaluation in the CLI (#13557)
* Added tag to identifier when given with digest in image (#13564)
* Fixed reporting issue when using GlobalContextEntry (#13601)
* Added permission checks for MAPs/VAPs generation flags (#13618)
* Fixed retry failed reports init (#13641)
* Fixed nil namespace pointer handling in CLI mode for ValidatingPolicies (#13636)
* Fixed status updates when nothing changed (#13617)
* Added forceFailurePolicyIgnore support in `vpol` `mpol` `ivpol` (#13656)

## Helm
* Added ability to set annotations on kyverno servicemonitors in helm chart (#12797)
* Bumped helm version in tooling (#12898)
* Bumped helm-docs (#12909)
* Added mpol and gpol crds in helm chart (#13167, #13462)
* Added ability to set unhealthyPodEvictionPolicy in PDBs (#13278)
* Added ability to disable automount of service account token (#13319)
* Added service trafficDistribution support for K8s 1.31+ (#13411)
* Added automountServiceAccountToken support for Kyverno controllers (#13416)
* Added support for nodeselector and tolerations to test pod templates (#13435)
* Added Openreports resources rendering in helm chart and propagate value to flags (#13524)

## 🔧 Others 🔧
* Added test case for exceptions.go file in engine package (#11513)
* Added test case for exceptions.go file in engine package (#12513)
* Removed old schema (#12840)
* Fixed codecov job missing checkout (#12913)
* Removed CLI legacy loader (#12919)
* Fixed milestone workflow (#12923)
* Removed unused types (#13324)
* Removed unused parameter (#13363)
* Fixed required conformance jobs (#13400)
* Updated chainsaw test to kube 1.30 - 1.33 (#13402)
* Disabled chainsaw tests on schedule (#13457)
* Fixed auto PR update (#13459)
* Removed hardcoded cleanup delay (#13461)
* Fixed GitHub runners disk space full (#13507)
* Fixed cache setup (#13508)
* Fixed launch.json (#13513)
* Added chainsaw test for VPOL in CLI (#13607)
* Removed external service (#13619)
* Installed helm dependencies in CI release pipeline (#13725)
* Bumped kube deps to 1.33 (#13395, #13382)

## Dependencies
13328 [chore(deps)] bump github.com/sergi/go-diff from 1.3.2... to 1.4.0 – dependabot:main MERGED
13330 [chore(deps)] bump google.golang.org/grpc from 1.72.2 to 1.73.0 – dependabot:main MERGED
13331 [chore(deps)] bump golang.org/x/crypto from 0.38.0 to 0.39.0 – dependabot:main MERGED
13342 [chore(deps)] bump github.com/go-git/go-git/v5 from 5.16.1 to 5.16.2 – dependabot:main MERGED
13355 [chore(deps)] bump the sigstore group across 1 directory with 4 updates – dependabot:main MERGED
13356 [chore(deps)] bump github.com/sigstore/sigstore from 1.9.4 to 1.9.5 – dependabot:main MERGED
13358 [chore(deps)] bump github/codeql-action from 3.28.19 to 3.29.0 – dependabot:main MERGED
13377 [chore] bump a couple of deps – eddycharly:main MERGED
13388 [chore(deps)] bump fluxcd/flux2 from 2.6.1 to 2.6.2 – dependabot:main MERGED
13383 [chore] bump linter – eddycharly:main MERGED
13394 [chore] bump kind and default kube version – eddycharly:main MERGED
13404 [chore(deps)] bump sigstore/scaffolding from commit X to Y – dependabot:main MERGED
13405 [chore(deps)] bump sigstore/cosign-installer from 3.8.2 to 3.9.0 – dependabot:main MERGED
13406 [chore(deps)] bump sigstore/cosign-installer from 3.8.2 to 3.9.0 in /.github/actions/run-tests – dependabot:main MERGED
13426 [chore(deps)] bump the kubernetes group across 3 directories with 7 updates – dependabot:main MERGED
13436 [chore(deps)] bump svenstaro/upload-release-action from 2.9.0 to 2.10.0 – dependabot:main MERGED
13437 [chore(deps)] bump sigstore/scaffolding... – dependabot:main MERGED
13438 [chore(deps)] bump github.com/aptible/supercronic from 0.2.33 to 0.2.34 – dependabot:main MERGED
13445 [chore(deps)] bump sigstore/cosign-installer from 3.9.0 to 3.9.1 in /.github/actions/run-tests – dependabot:main MERGED
13454 [chore(deps)] bump the otel group across 1 directory with 9 updates – dependabot:main MERGED
13469 [chore(deps)] bump go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp from 0.61.0 to 0.62.0 – dependabot:main MERGED
13470 [chore(deps)] bump sigs.k8s.io/yaml from 1.4.0 to 1.5.0 – dependabot:main MERGED
13482 [feat] bump default cpu requests for CI testing eddycharly MERGED 
13486 [chore(deps)] bump github.com/go-viper/mapstructure/v2 from 2.2.1 to 2.3.0 – dependabot:main MERGED
13489 [chore(deps)] bump github/codeql-action from 3.29.0 to 3.29.1 – dependabot:main MERGED
13490 [chore(deps)] bump fluxcd/flux2 from 2.6.2 to 2.6.3 – dependabot:main MERGED
13491 [chore(deps)] bump sigs.k8s.io/kustomize/kyaml from 0.19.0 to 0.20.0 – dependabot:main MERGED
13493 [chore(deps)] bump sigs.k8s.io/kustomize/api from 0.19.0 to 0.20.0 – dependabot:main MERGED
13501 [chore(deps)] bump svenstaro/upload-release-action from 2.10.0 to 2.11.1 – dependabot:main MERGED
13503 [chore(deps)] bump github/codeql-action from 3.29.1 to 3.29.2 – dependabot:main MERGED
13510 [chore(deps)] bump ubuntu from b59d215 to 89ef6e4 in /.devcontainer – dependabot:main MERGED
13511 [chore(deps)] bump cbrgm/cleanup-stale-branches-action from 1.1.30 to 1.1.31 – dependabot:main MERGED
13532 [chore(deps)] bump svenstaro/upload-release-action from 2.11.1 to 2.11.2 – dependabot:main MERGED
12495 - chore(deps): bump github.com/golang-jwt/jwt/v5 from 5.2.1 to 5.2.2
12496 - chore(deps): bump github.com/golang-jwt/jwt/v4 from 4.5.1 to 4.5.2
12507 - chore(deps): bump github.com/rs/zerolog from 1.33.0 to 1.34.0
12526 - chore(deps): bump sigs.k8s.io/controller-runtime from 0.20.3 to 0.20.4
12528 - chore(deps): bump github/codeql-action from 3.28.12 to 3.28.13
12529 - chore(deps): bump actions/setup-python from 5.4.0 to 5.5.0
12597 - chore(deps): bump goreleaser/goreleaser-action from 6.2.1 to 6.3.0
12598 - chore(deps): bump zgosalvez/github-actions-ensure-sha-pinned-actions from 3.0.22 to 3.0.23
12617 - chore(deps): bump cbrgm/cleanup-stale-branches-action from 1.1.27 to 1.1.28
12628 - chore(deps): bump github.com/onsi/gomega from 1.36.3 to 1.37.0
12645 - chore(deps): bump golang.org/x/text from 0.23.0 to 0.24.0
12656 - chore(deps): bump github/codeql-action from 3.28.13 to 3.28.15
12659 - chore(deps): bump golang.org/x/crypto from 0.36.0 to 0.37.0
12673 - chore(deps): bump ubuntu from 7229784 to 4524361 in /.devcontainer
12674 - chore(deps): bump jpmcb/prow-github-actions from 1.1.3 to 2.0.0
12675 - chore(deps): bump github.com/prometheus/client_golang from 1.21.1 to 1.22.0
12676 - chore(deps): bump github.com/sigstore/sigstore/pkg/signature/kms/hashivault from 1.9.1 to 1.9.3
12677 - chore(deps): bump github.com/sigstore/sigstore/pkg/signature/kms/azure from 1.9.1 to 1.9.3
12694 - chore(deps): bump ubuntu from 4524361 to 1e622c5 in /.devcontainer
12695 - chore(deps): bump github.com/sigstore/sigstore/pkg/signature/kms/aws from 1.9.1 to 1.9.3
12696 - chore(deps): bump github.com/sigstore/sigstore from 1.9.1 to 1.9.3
12698 - chore(deps): bump github.com/sigstore/sigstore/pkg/signature/kms/gcp from 1.9.1 to 1.9.3
12746 - chore(deps): bump github.com/sigstore/rekor from 1.3.9 to 1.3.10
12747 - chore(deps): bump github.com/go-git/go-git/v5 from 5.14.0 to 5.15.0
12761 - chore(deps): bump codecov/codecov-action from 5.4.0 to 5.4.2
12788 - chore(deps): bump github.com/go-git/go-git/v5 from 5.15.0 to 5.16.0
12805 - chore(deps): bump golang.org/x/net from 0.37.0 to 0.38.0 in /hack/api-group-resources
12843 - chore(deps): bump google.golang.org/grpc from 1.71.0 to 1.72.0
12859 - chore(deps): bump sigstore/cosign-installer from 3.8.1 to 3.8.2
12860 - chore(deps): bump sigstore/cosign-installer from 3.8.1 to 3.8.2 in /.github/actions/run-tests
12868 - chore(deps): bump github/codeql-action from 3.28.15 to 3.28.16
12869 - chore(deps): bump actions/setup-python from 5.5.0 to 5.6.0
12879 - chore(deps): bump actions/download-artifact from 4.2.1 to 4.3.0
12881 - chore(deps): bump actions/download-artifact from 4.2.1 to 4.3.0 in /.github/actions/run-tests
12882 - chore(deps): bump github.com/sigstore/sigstore/pkg/signature/kms/hashivault from 1.9.3 to 1.9.4
12883 - chore(deps): bump github.com/sigstore/sigstore/pkg/signature/kms/azure from 1.9.3 to 1.9.4
12884 - chore(deps): bump github.com/sigstore/sigstore/pkg/signature/kms/aws from 1.9.3 to 1.9.4
12885 - chore(deps): bump github.com/sigstore/sigstore/pkg/signature/kms/gcp from 1.9.3 to 1.9.4
12892 - chore: add sigstore dependabot group
12893 - chore: bump codegen tools
12902 - chore(deps): bump github.com/sigstore/sigstore from 1.9.3 to 1.9.4
12906 - chore: update codegen api docs targets
12907 - chore: update codegen crds targets
12908 - chore: remove gopath shim from makefile
12910 - chore: stop using go-acc
12911 - chore: merge codecov and test workflow
12912 - chore: refactor codegen targets
12918 - chore: add folders to codecov ignore config
13003 - chore(deps): bump zgosalvez/github-actions-ensure-sha-pinned-actions from 3.0.23 to 3.0.24
13004 - chore(deps): bump github/codeql-action from 3.28.16 to 3.28.17
13019 - chore(deps): bump github.com/open-policy-agent/opa from 1.1.0 to 1.4.0
13021 - chore(deps): bump ubuntu from 1e622c5 to 6015f66 in /.devcontainer
13024 - chore(deps): bump golang.org/x/crypto from 0.37.0 to 0.38.0
13077 - chore(deps): bump actions/setup-go from 5.4.0 to 5.5.0 in /.github/actions/setup-build-env
13088 - chore: add 1.13.5, 1.13.6 and 1.14.1 to the bug templates
13092 - chore(deps): bump sigs.k8s.io/controller-tools from 0.17.2 to 0.18.0 in /hack/controller-gen
13146 - chore(deps): bump google.golang.org/grpc from 1.72.0 to 1.72.1
13147 - chore(deps): bump fossas/fossa-action from 1.6.0 to 1.7.0
13160 - chore(deps): bump codecov/codecov-action from 5.4.2 to 5.4.3
13170 - chore: remove redundant imported modules
13172 - chore(deps): bump zgosalvez/github-actions-ensure-sha-pinned-actions from 3.0.24 to 3.0.25
13173 - chore(deps): bump github/codeql-action from 3.28.17 to 3.28.18
13197 - chore: remove unused code
13206 - chore(deps): bump the otel group across 1 directory with 10 updates
13242 - chore(deps): bump google.golang.org/grpc from 1.72.1 to 1.72.2
13271 - chore(deps): bump github.com/go-logr/logr from 1.4.2 to 1.4.3
13282 - chore(deps): bump fluxcd/flux2 from 2.5.1 to 2.6.0
13294 - chore(deps): bump adRise/update-pr-branch from 0.9.1 to 0.10.1
13295 - chore(deps): bump fluxcd/flux2 from 2.6.0 to 2.6.1
13296 - chore(deps): bump ossf/scorecard-action from 2.4.1 to 2.4.2
13297 - chore(deps): bump cbrgm/cleanup-stale-branches-action from 1.1.29 to 1.1.30
13307 - chore(deps): bump ubuntu from 6015f66 to b59d215 in /.devcontainer
13315 - chore(deps): bump github/codeql-action from 3.28.18 to 3.28.19
13316 - chore(deps): bump aquasecurity/trivy-action from 0.30.0 to 0.31.0
13318 - chore(deps): bump github.com/go-git/go-git/v5 from 5.16.0 to 5.16.1


## New Contributors
* @krishbajaj1609 made their first contribution in https://github.com/kyverno/kyverno/pull/12637
* @arnabnandikgp made their first contribution in https://github.com/kyverno/kyverno/pull/12546
* @hawksight made their first contribution in https://github.com/kyverno/kyverno/pull/12621
* @ldue made their first contribution in https://github.com/kyverno/kyverno/pull/12636
* @samsonkolge made their first contribution in https://github.com/kyverno/kyverno/pull/12714
* @a1k0u made their first contribution in https://github.com/kyverno/kyverno/pull/12395
* @jslivka made their first contribution in https://github.com/kyverno/kyverno/pull/10586
* @villadalmine made their first contribution in https://github.com/kyverno/kyverno/pull/12758
* @R-Studio made their first contribution in https://github.com/kyverno/kyverno/pull/12983
* @Nabsku made their first contribution in https://github.com/kyverno/kyverno/pull/13009
* @ChristianDussol made their first contribution in https://github.com/kyverno/kyverno/pull/13063
* @baurmatt made their first contribution in https://github.com/kyverno/kyverno/pull/13057
* @dixudx made their first contribution in https://github.com/kyverno/kyverno/pull/11967
* @marevers made their first contribution in https://github.com/kyverno/kyverno/pull/13012
* @1602077 made their first contribution in https://github.com/kyverno/kyverno/pull/13184
* @jfcheleno made their first contribution in https://github.com/kyverno/kyverno/pull/13274
* @jorgemoralespou made their first contribution in https://github.com/kyverno/kyverno/pull/13322
* @JefeDavis made their first contribution in https://github.com/kyverno/kyverno/pull/13341
* @sherifabdlnaby made their first contribution in https://github.com/kyverno/kyverno/pull/13374
* @upodroid made their first contribution in https://github.com/kyverno/kyverno/pull/13349
* @Evedel made their first contribution in https://github.com/kyverno/kyverno/pull/13369
* @tareksha made their first contribution in https://github.com/kyverno/kyverno/pull/13367
* @Robsta86 made their first contribution in https://github.com/kyverno/kyverno/pull/13435
* @dud225 made their first contribution in https://github.com/kyverno/kyverno/pull/11881
* @daixiang0 made their first contribution in https://github.com/kyverno/kyverno/pull/12284
* @aakashagg made their first contribution in https://github.com/kyverno/kyverno/pull/12599
* @csengerszabo made their first contribution in https://github.com/kyverno/kyverno/pull/13494
* @lwebbz made their first contribution in https://github.com/kyverno/kyverno/pull/12797

**Full Changelog**: https://github.com/kyverno/kyverno/compare/v1.14.4...v1.15.0