来源: https://github.com/kyverno/kyverno/releases/tag/v1.18.0

# kyverno/kyverno v1.18.0 Release Notes

Published at: 2026-04-29T14:29:58Z

# Kyverno 1.18 Release Notes

## Highlights

- **Secure HTTP calls with blocklist/allowlist**: HTTP context loading now enforces a configurable blocklist and scoped token authorization, improving security posture for policies that perform external HTTP calls ([#15789](https://github.com/kyverno/kyverno/pull/15789), [#15779](https://github.com/kyverno/kyverno/pull/15779)).
- **Namespaced image registry credentials**: `imageRegistryCredentials` can now reference namespaced secrets and pod-level `imagePullSecrets` for image verification ([#15112](https://github.com/kyverno/kyverno/pull/15112)).
- **CLI expanded policy support**: The `kyverno apply` and `kyverno test` commands now support cleanup policies, HTTP/Envoy authz policies, and mutateExisting MutatingPolicies ([#15732](https://github.com/kyverno/kyverno/pull/15732), [#15645](https://github.com/kyverno/kyverno/pull/15645), [#15691](https://github.com/kyverno/kyverno/pull/15691), [#15253](https://github.com/kyverno/kyverno/pull/15253)).
- **Success event filtering**: A new `successEventActions` ConfigMap parameter allows fine-grained control over which success events are emitted ([#15466](https://github.com/kyverno/kyverno/pull/15466)).

---

## New Features

- Add support for gzip library and confidential containers example ([#15679](https://github.com/kyverno/kyverno/pull/15679))
- Add `successEventActions` parameter to filter which success events are emitted ([#15466](https://github.com/kyverno/kyverno/pull/15466))
- Add `--exemplarFilter` flag to control exemplar collection in metrics ([#15611](https://github.com/kyverno/kyverno/pull/15611))
- Add `exceptions-with-policies` flag to `kyverno apply` CLI ([#15167](https://github.com/kyverno/kyverno/pull/15167))
- Add `projected service account token` support in Helm chart ([#14766](https://github.com/kyverno/kyverno/pull/14766))
- Add admission-controller autoscaling based on memory utilization ([#15303](https://github.com/kyverno/kyverno/pull/15303))
- Add TLS encryption to `/metrics` endpoint ([#14232](https://github.com/kyverno/kyverno/pull/14232))
- Allow output for missing resources in CLI tests ([#14194](https://github.com/kyverno/kyverno/pull/14194))
- Support `uri suffix` for `defaultRegistry` in config ([#15258](https://github.com/kyverno/kyverno/pull/15258))
- Support `mutateExisting` MutatingPolicy in CLI test ([#15253](https://github.com/kyverno/kyverno/pull/15253))
- Support cleanup policies in `kyverno apply` command ([#15732](https://github.com/kyverno/kyverno/pull/15732))
- Support HTTP/Envoy authz policies in `kyverno apply` ([#15645](https://github.com/kyverno/kyverno/pull/15645))
- Support authz policies in `kyverno test` ([#15691](https://github.com/kyverno/kyverno/pull/15691))
- Permit `imageRegistryCredentials` to use namespaced secrets and pod-level `imagePullSecrets` ([#15112](https://github.com/kyverno/kyverno/pull/15112))
- Secure HTTP calls: enforce blocklist and add `FLAG_HTTP_BLOCKLIST` override ([#15789](https://github.com/kyverno/kyverno/pull/15789))
- Use scoped token for request authorization in HTTP context ([#15779](https://github.com/kyverno/kyverno/pull/15779))
- Add controller deployment labels to Helm chart ([#15083](https://github.com/kyverno/kyverno/pull/15083))
- Add `extraVolumes` and `extraVolumeMounts` support to Helm chart ([#14668](https://github.com/kyverno/kyverno/pull/14668))
- Add `Global.PriorityClassName` Helm value with pod templating ([#15712](https://github.com/kyverno/kyverno/pull/15712))

### Policies Helm Chart

- Add support for excludes (namespace, subject, resource rules, and custom matchConditions) in ValidatingPolicies ([#15739](https://github.com/kyverno/kyverno/pull/15739))
- Allow auditAnnotation configuration of ValidatingPolicies ([#15777](https://github.com/kyverno/kyverno/pull/15777))
- Add `perPolicy` overrides for custom annotations ([#15805](https://github.com/kyverno/kyverno/pull/15805))

---

## Bug Fixes

### Image Verification

- Fix `matchImageReferences` not filtering images properly ([#15834](https://github.com/kyverno/kyverno/pull/15834))
- Fix `ivpol`: remove early return on `matchImageReference` so CEL evaluation is not skipped ([#15882](https://github.com/kyverno/kyverno/pull/15882))
- Fix `processResourceWithPatches` returning nil on patch failure, silently bypassing image verification ([#15705](https://github.com/kyverno/kyverno/pull/15705))
- Fix `imageVerify` multi-signature annotation validation bug ([#14500](https://github.com/kyverno/kyverno/pull/14500))
- Fix: set `UseSignedTimestamps` when `TSACertChain` is provided in IVPOL cosign verifier ([#15305](https://github.com/kyverno/kyverno/pull/15305))
- Fix: enable signed timestamp verification when TSA cert chain is provided ([#15192](https://github.com/kyverno/kyverno/pull/15192))
- Fix: relax EKU validation for DigiCert TSA ([#15093](https://github.com/kyverno/kyverno/pull/15093), [#15148](https://github.com/kyverno/kyverno/pull/15148))
- Fix: use kyverno namespace secrets in reports scanner for ivpol ([#15220](https://github.com/kyverno/kyverno/pull/15220))
- Fix: nil pointer dereference in Certificates branch of manifest validation ([#15152](https://github.com/kyverno/kyverno/pull/15152))
- Fix: add cert identity verification for `buildpolicy` ([#15239](https://github.com/kyverno/kyverno/pull/15239))
- Fix: close `ReadCloser` from `layer.Uncompressed()` in image verification ([#15161](https://github.com/kyverno/kyverno/pull/15161))
- Fix: add HTTP 429 retry in image data loader ([#15413](https://github.com/kyverno/kyverno/pull/15413))
- Fix: release RLock before early return in `imageContext.Get` ([#15404](https://github.com/kyverno/kyverno/pull/15404))
- Fix: add synchronization to TUF client initialization to prevent data race ([#14829](https://github.com/kyverno/kyverno/pull/14829))
- Fix: propagate errors in notary `repositoryClient.Resolve()` ([#15222](https://github.com/kyverno/kyverno/pull/15222))
- Fix: missing ivpol autogen for namespaced policies; simplify ivpol/vpol namespaced handling in CLI ([#15320](https://github.com/kyverno/kyverno/pull/15320))

### CLI

- Fix: CLI CRD support without cluster connection ([#13565](https://github.com/kyverno/kyverno/pull/13565))
- Fix: bypass rule name matching for ruleless policies in CLI ([#15757](https://github.com/kyverno/kyverno/pull/15757))
- Fix: add list GVK to fake cluster scheme to prevent `mutateExisting` panic ([#15746](https://github.com/kyverno/kyverno/pull/15746))
- Fix: pass CRD-aware RESTMapper to GeneratingPolicy test path ([#15561](https://github.com/kyverno/kyverno/pull/15561))
- Fix: correct test result reporting for legacy policies and CEL engine errors ([#15361](https://github.com/kyverno/kyverno/pull/15361))
- Fix: display NonFatalErrors in CLI test command ([#15725](https://github.com/kyverno/kyverno/pull/15725))
- Fix: return error instead of panic when `imageRegistryCredentials.secrets` are used in CLI ([#15061](https://github.com/kyverno/kyverno/pull/15061))
- Fix: add default message when rule message is empty in CLI ([#14700](https://github.com/kyverno/kyverno/pull/14700))
- Fix: three bugs in CLI `apply` command ([#15317](https://github.com/kyverno/kyverno/pull/15317))
- Fix: CLI failing selector-based policies when they did not match the resource ([#15236](https://github.com/kyverno/kyverno/pull/15236))
- Fix: close leaked file handles in CLI `apply` command ([#15151](https://github.com/kyverno/kyverno/pull/15151), [#15150](https://github.com/kyverno/kyverno/pull/15150))
- Fix: return proper error on non-OK HTTP status in CLI resource and policy loading ([#15153](https://github.com/kyverno/kyverno/pull/15153))
- Fix: prevent segfault when applying K8s-mode policy to JSON payload ([#15332](https://github.com/kyverno/kyverno/pull/15332))
- Fix: support piped `v1.List` objects in `apply` command ([#13860](https://github.com/kyverno/kyverno/pull/13860))
- Fix: check all rules in the test in case no rule is specified ([#11739](https://github.com/kyverno/kyverno/pull/11739))

### Policy Engine

- Fix: bypass blocklist for cluster-scoped HTTP policies ([#15880](https://github.com/kyverno/kyverno/pull/15880))
- Fix: HTTP CEL compilation error on NVPOL ([#15874](https://github.com/kyverno/kyverno/pull/15874))
- Fix: compile dpol variables before conditions to allow variable references ([#15843](https://github.com/kyverno/kyverno/pull/15843))
- Fix: use extended compiler for mpol variables and conditions ([#15669](https://github.com/kyverno/kyverno/pull/15669))
- Fix: inject namespaceObject into MutatingPolicy CEL context ([#15625](https://github.com/kyverno/kyverno/pull/15625))
- Fix: handle mutating policy variable compile errors ([#15453](https://github.com/kyverno/kyverno/pull/15453))
- Fix: polex filtering in vpol engine ([#15692](https://github.com/kyverno/kyverno/pull/15692))
- Fix `vpol/ivpol`: align `auditAnnotation` behaviour with upstream VAP ([#15817](https://github.com/kyverno/kyverno/pull/15817))
- Fix: fetch namespace-scoped enforce policies in audit query path ([#15080](https://github.com/kyverno/kyverno/pull/15080))
- Fix: UserInfo error in CEL expressions for VAPs and MAPs in background scanning ([#15449](https://github.com/kyverno/kyverno/pull/15449))
- Fix: include `auditWarn` policies in namespace selector check ([#15107](https://github.com/kyverno/kyverno/pull/15107))
- Fix: panic in ExpandInMetadata when metadata is not a map ([#15245](https://github.com/kyverno/kyverno/pull/15245))
- Fix: prevent nil pointer panic on malformed AdmissionReview request ([#15251](https://github.com/kyverno/kyverno/pull/15251))
- Fix: clear stale error in `GlobalContextEntry` after successful API call ([#15328](https://github.com/kyverno/kyverno/pull/15328))
- Fix: prevent defer from overwriting named return error in validateOld ([#15438](https://github.com/kyverno/kyverno/pull/15438))
- Fix: `clusterRoles` should only return applicable cluster roles for the namespace of the request ([#12584](https://github.com/kyverno/kyverno/pull/12584))
- Fix: incorrect policy exclusion reporting for Pod-targeted policies with autogen in vpol/mpol ([#13645](https://github.com/kyverno/kyverno/pull/13645))
- Fix: autogen to use fully-qualified GVKs to prevent matching non-Kubernetes resources ([#14246](https://github.com/kyverno/kyverno/pull/14246))
- Fix: global `validationFailureActionOverrides` being silently ignored ([#14733](https://github.com/kyverno/kyverno/pull/14733))
- Fix: add explicit policy-level `validationFailureAction` templating ([#14447](https://github.com/kyverno/kyverno/pull/14447))
- Fix: skip policy reports with PolicyException in background scan ([#14308](https://github.com/kyverno/kyverno/pull/14308))

### Generation and Background Controller

- Fix: accumulate downstreams from all `ForEachGeneration` entries ([#15437](https://github.com/kyverno/kyverno/pull/15437))
- Fix: prevent `deleteDownstream` from silently overwriting Failed UR status ([#15698](https://github.com/kyverno/kyverno/pull/15698))
- Fix: propagate non-NotFound errors in generate clone target fetch ([#15600](https://github.com/kyverno/kyverno/pull/15600))
- Fix: use `AddRateLimited` instead of `AddAfter` in background controller `handleErr` to respect rate limiting ([#15632](https://github.com/kyverno/kyverno/pull/15632))
- Fix: track applyGenerate errors in failures slice ([#14806](https://github.com/kyverno/kyverno/pull/14806))
- Fix: copy properties map to prevent concurrent map writes in reports-controller ([#15634](https://github.com/kyverno/kyverno/pull/15634))

### Webhook and Controller

- Fix: remove hard-wiring of v1alpha1 map informers ([#15799](https://github.com/kyverno/kyverno/pull/15799))
- Fix: use shared informers for webhook controller and handlers ([#15074](https://github.com/kyverno/kyverno/pull/15074))
- Fix: emit VAP generation events only when create/update occurred ([#13799](https://github.com/kyverno/kyverno/pull/13799))
- Fix: emit `Resource Mutated` event for MutatingPolicy ([#15573](https://github.com/kyverno/kyverno/pull/15573))
- Fix(event): warn on `omitEvents`/`successEvents` clash ([#15572](https://github.com/kyverno/kyverno/pull/15572))
- Fix: prevent deadlock in Recorder ([#15066](https://github.com/kyverno/kyverno/pull/15066))
- Fix: remove duplicate JSON log keys in validation handler ([#15740](https://github.com/kyverno/kyverno/pull/15740))
- Fix: `background-controller` metrics port ignoring config and going to 8080 ([#14531](https://github.com/kyverno/kyverno/pull/14531))

### Reports

- Fix: prevent index out of range panic in `enqueueReportsForPolicy` for namespaced PolicyReports ([#15513](https://github.com/kyverno/kyverno/pull/15513))

### Helm Chart

- Fix: restrict configmap access for namespaced policies ([#15850](https://github.com/kyverno/kyverno/pull/15850))
- Fix: make kyverno Helm chart PSS-compliant ([#15208](https://github.com/kyverno/kyverno/pull/15208))
- Fix: add `app.kubernetes.io/name` label to all pods in kyverno chart ([#14557](https://github.com/kyverno/kyverno/pull/14557))
- Fix: remove finalizers and workarounds around uninstall ([#15260](https://github.com/kyverno/kyverno/pull/15260))
- Fix: update `require-run-as-nonroot` ValidatingPolicy CEL expression ([#15744](https://github.com/kyverno/kyverno/pull/15744))

### Security / CVEs

- Fix: limit intermediate certs to mitigate CVE-2026-32280 ([#15858](https://github.com/kyverno/kyverno/pull/15858))
- Fix CVE-2026-32283: upgrade Go toolchain to 1.26.2 ([#15844](https://github.com/kyverno/kyverno/pull/15844))
- Fix CVE-2026-24686: bump go-tuf/v2 to v2.4.1 ([#15579](https://github.com/kyverno/kyverno/pull/15579))
- Fix stdlib CVEs ([#15483](https://github.com/kyverno/kyverno/pull/15483))

### Miscellaneous

- Fix: improve error handling for API calls to surface permission issues ([#14913](https://github.com/kyverno/kyverno/pull/14913))
- Fix: propagate context and add HTTP timeout in API/registry calls ([#14770](https://github.com/kyverno/kyverno/pull/14770))

---

## Improvements

- Remove `kubectl` from webhook cleanup binary, replacing with client-go ([#15067](https://github.com/kyverno/kyverno/pull/15067), [#15132](https://github.com/kyverno/kyverno/pull/15132))
- Add output type validation for image extractors ([#15103](https://github.com/kyverno/kyverno/pull/15103))
- Replace the `aerosound` readiness image with a purpose-built `readiness-checker` image ([#15347](https://github.com/kyverno/kyverno/pull/15347))
- Enhance `any` block logs to include better context when no condition passes ([#14731](https://github.com/kyverno/kyverno/pull/14731))

---

## Dependency Updates

Security and compatibility-relevant updates:

- Bump `github.com/sigstore/cosign/v3` from 3.0.4 to 3.0.6 ([#15321](https://github.com/kyverno/kyverno/pull/15321), [#15798](https://github.com/kyverno/kyverno/pull/15798))
- Bump `github.com/sigstore/sigstore` to 1.10.5 ([#15751](https://github.com/kyverno/kyverno/pull/15751))
- Bump `github.com/sigstore/rekor` to 1.5.1 ([#15498](https://github.com/kyverno/kyverno/pull/15498))
- Bump `github.com/google/go-containerregistry` from 0.21.3 to 0.21.5 ([#15797](https://github.com/kyverno/kyverno/pull/15797), [#15852](https://github.com/kyverno/kyverno/pull/15852))
- Bump `golang.org/x/crypto` to 0.50.0 ([#15551](https://github.com/kyverno/kyverno/pull/15551), [#15830](https://github.com/kyverno/kyverno/pull/15830))
- Bump the Kubernetes group libraries ([#15408](https://github.com/kyverno/kyverno/pull/15408), [#15876](https://github.com/kyverno/kyverno/pull/15876))
- Bump `github.com/cloudflare/circl` from 1.6.1 to 1.6.3 ([#15376](https://github.com/kyverno/kyverno/pull/15376))
- Bump `sigs.k8s.io/controller-runtime` to 0.23.3 ([#15456](https://github.com/kyverno/kyverno/pull/15456))
- Routine dependency updates (grpc, otel, go-git, supercronic, zerolog, envoy, and GitHub Actions)

---

## Breaking Changes

None identified in this release cycle. The removal of `kubectl` from the webhook cleanup binary ([#15067](https://github.com/kyverno/kyverno/pull/15067), [#15132](https://github.com/kyverno/kyverno/pull/15132)) reduces the image footprint but is transparent at the API level.
