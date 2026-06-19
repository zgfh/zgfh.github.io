来源: https://github.com/kyverno/kyverno/releases/tag/v1.17.2

# kyverno/kyverno v1.17.2 Release Notes

Published at: 2026-04-23T15:12:09Z

## What's Changed
* fix: correct verbosity and type for dpol not match logging (Cherry-pick #15354) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15371
* fix: report creation for namespaced policy at admission and background (Cherry-pick #15370) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15372
* fix: handle empty results for target expressions (Cherry-pick #15380) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15381
* fix: check object before usage (Cherry-pick #15382) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15383
* Cherry pick #15410 by @fjogeleit in https://github.com/kyverno/kyverno/pull/15425
* fix: CLI resource lookup for ivpol (Cherry-pick #15418) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15419
* fix: CVE-2026-24051 (release 1.17) by @lucchmielowski in https://github.com/kyverno/kyverno/pull/15414
* feat: support subresource (Cherry-pick #15431) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15433
* fix: CVES 2026-15558 for 1.17 by @lucchmielowski in https://github.com/kyverno/kyverno/pull/15464
* fix: create correct webhook key for nmpol (Cherry-pick #15499) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15500
* chore: add trivy scan workflow by @eddycharly in https://github.com/kyverno/kyverno/pull/15502
* fix: bump go to fix stdlib CVEs by @eddycharly in https://github.com/kyverno/kyverno/pull/15529
* fix: CVE-2026-1229 by @eddycharly in https://github.com/kyverno/kyverno/pull/15530
* fix: respect policy namespace in webhook name generation (Cherry-pick #15532) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15534
* fix: Ensure consistent order of webhooks and webhook rules to prevent reconciliation loops (Cherry-pick #15547) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15559
* fix: filter mpols with target constraints at admission time (Cherry-pick #15567) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15568
* fix: handle targets in multiple namespaces correctly (Cherry-pick #15558) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15570
* fix: support resourceNames for TargetMatchConstraints (Cherry-pick #15569) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15580
* cherry pick #15613 by @fjogeleit in https://github.com/kyverno/kyverno/pull/15615
* fix: polex fetching in background mode (Cherry-pick #15614) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15616
* fix: implement user info handling in MutatingPolicy and ValidatingPolicy policies and add test cases (Cherry-pick #15589) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15619
* Wrong lister in GenerateNamespaced breaks sync for all NamespacedGeneratingPolicy on UPDATE (Cherry-pick #15621) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15624
* fix: CVE-2026-33186 by @eddycharly in https://github.com/kyverno/kyverno/pull/15652
* chore: backport ci changes from main to release-1.17 branch by @eddycharly in https://github.com/kyverno/kyverno/pull/15664
* chore: remove unnecessary jobs in conformance tests (Cherry-pick #15662) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15665
* chore: add missing scripts for ci by @eddycharly in https://github.com/kyverno/kyverno/pull/15667
* [backport] chore(security): disable HTTP in namespaced policies by default (CVE-2026-4789) by @JimBugwadia in https://github.com/kyverno/kyverno/pull/15802
* fix: use scoped token for request authz (cherry-pick #15779 to release-1.17) by @JimBugwadia in https://github.com/kyverno/kyverno/pull/15800
* fix: CVE-2026-34986 by @lucchmielowski in https://github.com/kyverno/kyverno/pull/15823
* restrict configmap access for namespaced policies (Cherry-pick #15850) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15867
* fix(engine): prevent forEach mutation panic [release-1.17] by @realshuting in https://github.com/kyverno/kyverno/pull/15888
* chore: release 1.17.2-rc.1 by @realshuting in https://github.com/kyverno/kyverno/pull/15890
* fix(release): set explicit cosign bundle path by @realshuting in https://github.com/kyverno/kyverno/pull/15900
* Fix/release cosign bundle release 1.17 by @realshuting in https://github.com/kyverno/kyverno/pull/15912
* ci: fix goreleaser for cosign v3 by @lucchmielowski in https://github.com/kyverno/kyverno/pull/15919
* chore: release v1.17.2 by @realshuting in https://github.com/kyverno/kyverno/pull/15945


**Full Changelog**: https://github.com/kyverno/kyverno/compare/v1.17.1...v1.17.2