来源: https://github.com/kyverno/kyverno/releases/tag/v1.18.2

# kyverno/kyverno v1.18.2 Release Notes

Published at: 2026-07-10T02:34:27Z

## What's Changed
* fix: restart dynamic watchers in background reporting on 410 (Cherry-pick #16028) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/16030
* fix: do not abort required validation on non-matching images (Cherry-pick #16208) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/16218
* fix(cli): allow multiple CRDs in to be in the --crd-path file (Cherry-pick #16161) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/16215
* fix(gpol,mpol): enforce namespace boundary in generator.apply() (backport GHSA-79gf-7frw-68m9 to release-1.18) by @realshuting in https://github.com/kyverno/kyverno/pull/16238
* feat(pss-helm): add image to allowed volumetypes (Cherry-pick #15906) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/16332
* backport(release-1.18): security dependency bumps from #16340 by @realshuting in https://github.com/kyverno/kyverno/pull/16343
* fix(release-1.18): roll up codeql dependency and toolchain updates by @realshuting in https://github.com/kyverno/kyverno/pull/16395
* fix(reports): correct label prefix for mpol/dpol policies (Cherry-pick #16452) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/16453
* chore: cut v1.18.2-rc.2 by @realshuting in https://github.com/kyverno/kyverno/pull/16517
* chore: cut v1.18.2 by @realshuting in https://github.com/kyverno/kyverno/pull/16526


**Full Changelog**: https://github.com/kyverno/kyverno/compare/v1.18.1...v1.18.2