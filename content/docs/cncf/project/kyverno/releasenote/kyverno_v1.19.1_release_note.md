来源: https://github.com/kyverno/kyverno/releases/tag/v1.19.1

# kyverno/kyverno v1.19.1 Release Notes

Published at: 2026-09-10T06:24:30Z

## What's Changed
* fix: bump Go 1.26.6 and x/net to resolve CVE-2026-39821 by @Manoj-Kumar-Selvaraj in https://github.com/kyverno/kyverno/pull/17230
* fix: update Go to address CVE-2026-56853 by @Sashang-debug in https://github.com/kyverno/kyverno/pull/17232
* Fix missing autogen webhook expansion for NamespacedValidatingPolicy (Cherry-pick #17262) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17273
* fix: apply HTTP blocklist to apiCall.service executor (cherry-pick #17234) by @realshuting in https://github.com/kyverno/kyverno/pull/17298
* fix: harden apiCall.service egress proxy path and cover CABundle branch (Cherry-pick #17299) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17302
* fix: avoid data race in image evaluator prefetch (Cherry-pick #17313) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17327
* cherry-pick: fix IVPol PolicyException scope bypass (GHSA-5cjf-wwfg-pj4c) by @realshuting in https://github.com/kyverno/kyverno/pull/17307
* fix: close IPv6-embedded-IPv4 blocklist bypass in apiCall.service egress (Cherry-pick #17310) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17329
* fix(test): disable mutateDigest in exceptions-disabled IVPol by @IceCodeBear in https://github.com/kyverno/kyverno/pull/17336
* fix(test): loosen chainsaw stderr checks to contains by @IceCodeBear in https://github.com/kyverno/kyverno/pull/17334
* Bump kyverno sdk to 68d74afcb07a by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17349
* fix(test): disable IVPol digest defaults in leftover fixtures in v1.19 by @IceCodeBear in https://github.com/kyverno/kyverno/pull/17356
* fix(deps): bump golang.org/x/mod to v0.40.0 by @IceCodeBear in https://github.com/kyverno/kyverno/pull/17358
* fix: backport 7ac176ac apiCall urlPath hardening to release-1.19 by @realshuting in https://github.com/kyverno/kyverno/pull/17361
* feat: phase1 deprecation warning plumbing and CLI warning enforcement (Cherry-pick #17362) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17378
* fix: validate PolicyException CEL match conditions (Cherry-pick #17350) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17373
* fix(test): disable IVPol digest defaults in leftover report fixtures by @IceCodeBear in https://github.com/kyverno/kyverno/pull/17376
* fix(background-controller): watch background-scan reports for the ephemeral reports circuit breaker (Cherry-pick #17136) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17430
* fix: handle missing reports CRDs as no-op in kyverno-init (Cherry-pick #17420) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17435
* feat: add deprecation warnings to legacy CRD versions and migrate test fixtures off v2beta1 (Cherry-pick #17428) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17434
* fix: skip namespace lookup in exception matching when no namespaceSelector is defined (Cherry-pick #17140) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17437
* fix(gpol): propagate synchronize option to UpdateRequests (Cherry-pick #16920) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17446
* fix(globalcontext): fix deadlocks in entry lifecycle and watch error handling (Cherry-pick #16904) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17454
* fix(webhook): avoid redundant recorder notifications (Cherry-pick #17059) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17451
* [release-1.19] fix: deny globalContext in namespaced policies (#17377) by @realshuting in https://github.com/kyverno/kyverno/pull/17455
* [release-1.19] fix(cel): read PolicyExceptions from the manager cache, not a second informer (#16993) by @realshuting in https://github.com/kyverno/kyverno/pull/17464
* fix(reports): fix label prefix and metadata for namespaced CEL policies (Cherry-pick #17460) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17480
* fix: close layer readers per-iteration to avoid FD/memory leak (Cherry-pick #16994) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17498
* [release-1.19] fix(deps): upgrade golang.org/x/crypto to v0.56.0 and grpc to v1.83.2 by @realshuting in https://github.com/kyverno/kyverno/pull/17513
* fix(gpol): recreate downstream resource after repeated deletions (Cherry-pick #17453) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17520
* fix: skip scalar values during wildcard image extraction (Cherry-pick #16268) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17521
* chore: cut release v1.19.1-rc.1 by @realshuting in https://github.com/kyverno/kyverno/pull/17522
* feat(cel): extend autogen to custom workload CRDs (JobSet, etc.) via structural extraction (Cherry-pick #17014) by @Rohanraj123 in https://github.com/kyverno/kyverno/pull/17530
* fix(reports): discover autogen'd IVPol/NIVPol targets for background scan (Cherry-pick #17395) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17447
* chore: cut release v1.19.1 by @realshuting in https://github.com/kyverno/kyverno/pull/17541

## New Contributors
* @Manoj-Kumar-Selvaraj made their first contribution in https://github.com/kyverno/kyverno/pull/17230

**Full Changelog**: https://github.com/kyverno/kyverno/compare/v1.19.0...v1.19.1