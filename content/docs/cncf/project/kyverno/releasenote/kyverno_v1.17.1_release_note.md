来源: https://github.com/kyverno/kyverno/releases/tag/v1.17.1

# kyverno/kyverno v1.17.1 Release Notes

Published at: 2026-02-19T11:56:20Z

## What's Changed
* chore: remove Nirmata refs (Cherry-pick #15114) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15115
* cli: simplify namespaced policy loading in CLI (Cherry-pick #15118) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15122
* fix: panic in metrics wrapper when generating response does not provide a result (Cherry-pick #15105) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15117
* fix: init dclient before using it (Cherry-pick #15172) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15173
* populate registry consistently (Cherry-pick #14632) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15184
* fix: eliminate memcache error spam from fake client discovery polling (Cherry-pick #15187) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15193
* fix: restmapper for fakeclient (cherry-pick #15177) by @realshuting in https://github.com/kyverno/kyverno/pull/15194
* cherry pick #0ffed6f by @fjogeleit in https://github.com/kyverno/kyverno/pull/15206
* fix: CVE-2025-68121 (Cherry-pick #15203) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15212
* fix: enable signed timestamp verification when TSA cert chain is provided (Cherry-pick #15192) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15217
* fix: add default message for ValidatingPolicy when message field is empty (Cherry-pick #13630) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15267
* fix: return errors from syncPolicy to enable workqueue retry (Cherry-pick #15082) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15268
* fix: skip side effects on dry-run in gpol/mpol (Cherry-pick #15143) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15270
* fix(ivpol): Unauthorized error when using a private repository (Cherry-pick #15136) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15271
* fix(charts): add missing endpointslices list permission to cleanup controller role (Cherry-pick #15140) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15272
* fix(admissionpolicygenerator): enqueue exceptions (Cherry-pick #15038) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15274
* changed default value and helm values documentation from integer to duration string (Cherry-pick #15124) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15275
* fix: nil pointer dereference in Certificates branch of manifest valid… (Cherry-pick #15152) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15276
* Fix Empty list in policy exclusion result in excluding all resources (Cherry-pick #13794) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15277
* fix: imageVerify Multi-Signature Annotation Validation Bug (Cherry-pick #14500) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15279
* Fix Chainsaw test for MutatingPolicy add-label-applyconfiguration (Cherry-pick #14587) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15282
* chore(deps): bump github.com/go-git/go-git/v5 from 5.16.4 to 5.16.5 (Cherry-pick #15164) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15278
* fix(ivpol): use Kyverno namespace secrets in reports scanner (Cherry-pick #15220) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15287
* chore: run unit tests in verbose mode (cherry-pick #15230) by @eddycharly in https://github.com/kyverno/kyverno/pull/15288
* fix: handler crash for nmpol (Cherry-pick #15133) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15285
* chore(deps): bump the kubernetes group across 3 directories with 7 updates (Cherry-pick #15183) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15284
* fix: race conditions in configuration.IsExcluded() and breaker.ReportsBreaker (Cherry-pick #15145) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15289
* fix: make the mutating policy use its ConditionCompiler to produce the evaluator (Cherry-pick #15242) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15291
* release: v1.17.1-rc.1 by @eddycharly in https://github.com/kyverno/kyverno/pull/15298
* change indentation of validationActions fields  (cherry-pick #15257) by @eddycharly in https://github.com/kyverno/kyverno/pull/15300
* fix: set UseSignedTimestamps when TSACertChain is provided in IVPOL cosign verifier (cherry pick #15305) by @lucchmielowski in https://github.com/kyverno/kyverno/pull/15306
* release: v1.17.1 by @eddycharly in https://github.com/kyverno/kyverno/pull/15308


**Full Changelog**: https://github.com/kyverno/kyverno/compare/v1.17.0...v1.17.1