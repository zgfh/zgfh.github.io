来源: https://github.com/kyverno/kyverno/releases/tag/v1.19.2

# kyverno/kyverno v1.19.2 Release Notes

Published at: 2026-10-20T23:50:19Z

## What's Changed

* feat: Add filter field to imageExtractors for wildcard array filtering by @arewm in https://github.com/kyverno/kyverno/pull/16269
* perf: reduce engine context checkpoint copy cost by @ANAMASGARD in https://github.com/kyverno/kyverno/pull/17565
* ci: record failed job instances in workflow failure issues (Cherry-pick #16889) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17587
* perf(cel): build the request activation once per admission request (Cherry-pick #17572) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17588
* test(ci): CEL admission-path allocation-regression gate (post-merge) (Cherry-pick #17573) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17589
* fix(deleting): process namespaced resources with pagination (Cherry-pick #17263) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17603
* fix(webhook): avoid image validating policy webhook name collisions (Cherry-pick #17558) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17617
* fix: autogen fine-grained namespaced image policies (Cherry-pick #16840) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17614
* chore(deps): bump kyverno sdk version to the latest commit (Cherry-pick #17616) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17619
* fix(cli): resolve match constraints for namespaced validating policies (cherry-pick #17608) by @harshrajdebug in https://github.com/kyverno/kyverno/pull/17612
* fix(webhook): enforce exceptionNamespace for CEL PolicyExceptions (Cherry-pick #17479) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17651
* fix: preserve MutatingPolicy reinvocation policy (Cherry-pick #17324) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17745
* feat(charts): support Pod user namespaces in PSS policies (Cherry-pick #17693) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17746
* fix(cli): preserve GeneratingPolicy skips in test results (Cherry-pick #17388) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17749
* fix(background): resolve generate triggers by name instead of listing the namespace (Cherry-pick #17702) by @kmehta-code in https://github.com/kyverno/kyverno/pull/17779
* fix(mpol): evaluate matchConditions during background mutateExisting evaluation (Cherry-pick #17433) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17782
* fix: verify annotations properly for cosign v2 and v3 (Cherry-pick #17794) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17798
* feat: support additionalExtensions for keyless signing in the ivpol (Cherry-pick #17813) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17814
* test(cli): cover CRD-aware policy test mapping (Cherry-pick #17808) by @kyverno-pr-updater[bot] in https://github.com/kyverno/kyverno/pull/17816
* perf(cel): hoist the request-map build in the ivpol engine (Cherry-pick #17585) by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17872
* [release-1.19] fix(deps): bump go to 1.26.9 to fix CVE-2026-97031 by @rx18-eng in https://github.com/kyverno/kyverno/pull/17976
* fix(imageverify): bound the reads image verification makes from a registry by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17996
* fix(engine): bound wildcard matching and variable substitution by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17991
* fix(imageverify): verify at admission instead of trusting prior-stage metadata by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17994
* [1.19] fix(security): API path validation, apiCall canonicalization, mpol/cleanup namespace confinement by @Rohanraj123 in https://github.com/kyverno/kyverno/pull/17984
* [1.19] fix(security): harden cherry-pick workflows against script injection by @JimBugwadia in https://github.com/kyverno/kyverno/pull/18014
* fix(vap): apply the runtime PolicyException gates in the admission-policy generator by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17987
* fix(cel): bound the cost of CEL policy expression evaluation by @raunak-nirmata in https://github.com/kyverno/kyverno/pull/17989
* fix(security): cherry-pick N4K #1077 and #1164 (namespace clamp) to release-1.19 by @Rohanraj123 in https://github.com/kyverno/kyverno/pull/18021
* fix: preserve controller-owned generation labels (#17938) by @aerosouund in https://github.com/kyverno/kyverno/pull/18033
* fix(pss): support user namespace pods in validate.podSecurity by @Suhani95 in https://github.com/kyverno/kyverno/pull/17913
* [release-1.19] fix(deps): update x/net for CVE-2026-97032 by @Sashang-debug in https://github.com/kyverno/kyverno/pull/18027
* [release-1.19] fix(deps): update x/net for CVE-2026-78663 by @Sashang-debug in https://github.com/kyverno/kyverno/pull/18025
* fix: repair the post-merge Tests workflow on main (#17761) by @aerosouund in https://github.com/kyverno/kyverno/pull/18035
* test: expect the generation label protection webhook in chainsaw asserts by @aerosouund in https://github.com/kyverno/kyverno/pull/18039
* [release-1.19] fix: preserve legacy generation scope and ownership by @sagark-nirmata in https://github.com/kyverno/kyverno/pull/17937
* chore: pass GORELEASER_CURRENT_TAG to the goreleaser by @aerosouund in https://github.com/kyverno/kyverno/pull/18124
* chore: bump chart to 3.9.2-rc.5 for v1.19.2-rc.5 by @aerosouund in https://github.com/kyverno/kyverno/pull/18132
* chore: bump chart to 3.9.2 for v1.19.2 by @aerosouund in https://github.com/kyverno/kyverno/pull/18145

## New Contributors

* @arewm made their first contribution in https://github.com/kyverno/kyverno/pull/16269

**Full Changelog**: https://github.com/kyverno/kyverno/compare/v1.19.1...v1.19.2