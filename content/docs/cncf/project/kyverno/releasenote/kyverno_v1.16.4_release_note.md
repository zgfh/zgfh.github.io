来源: https://github.com/kyverno/kyverno/releases/tag/v1.16.4

# kyverno/kyverno v1.16.4 Release Notes

Published at: 2026-04-23T16:31:55Z

## What's Changed
* fix: CVE-2025-68121 (Cherry-pick #15203) by @lucchmielowski in https://github.com/kyverno/kyverno/pull/15218
* backport #c558d557349a70cd5de52f761db0bb98b6b8ab57 to 1.16 by @fjogeleit in https://github.com/kyverno/kyverno/pull/15346
* Cherry pick #15410 by @fjogeleit in https://github.com/kyverno/kyverno/pull/15426
* fix: CVE-2026-24051 (release 1.16) by @lucchmielowski in https://github.com/kyverno/kyverno/pull/15415
* chore: add trivy scan workflow (Cherry-pick #15502) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15515
* fix(deps): bump github.com/docker/cli to resolve CVE-2025-15558 by @zyzzmohit in https://github.com/kyverno/kyverno/pull/15528
* fix: stdlib CVEs by @eddycharly in https://github.com/kyverno/kyverno/pull/15531
* fix: CVE-2026-1229 in release-1.16 by @eddycharly in https://github.com/kyverno/kyverno/pull/15533
* fix: CVE-2026-26958 by @eddycharly in https://github.com/kyverno/kyverno/pull/15538
* fix: CVE-2025-15558 by @eddycharly in https://github.com/kyverno/kyverno/pull/15542
* fix: bump sigstore/rekor to v1.5.1 to fix CVE-2026-23831 by @raajheshkannaa in https://github.com/kyverno/kyverno/pull/15577
* fix(security): bump go-tuf/v2 to v2.3.1 to address CVE-2026-23992 by @atharrva01 in https://github.com/kyverno/kyverno/pull/15571
* fix: resolve CVE-2025-66564 by @lucchmielowski in https://github.com/kyverno/kyverno/pull/15540
* fix: CVE-2026-33186 by @eddycharly in https://github.com/kyverno/kyverno/pull/15656
* chore: backport ci changes from main to release-1.16 branch by @eddycharly in https://github.com/kyverno/kyverno/pull/15666
* chore: remove unnecessary jobs in conformance tests (Cherry-pick #15662) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15670
* chore: add missing scripts for ci (Cherry-pick #15667) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15672
* fix: CVE-2026-22772 by @zyzzmohit in https://github.com/kyverno/kyverno/pull/15566
* fix: bump go-tuf/v2 to v2.4.1 to patch CVE-2026-24686 by @atharrva01 in https://github.com/kyverno/kyverno/pull/15579
* [backport] chore(security): disable HTTP in namespaced policies by default (CVE-2026-4789) by @JimBugwadia in https://github.com/kyverno/kyverno/pull/15803
* fix: CVEs - Release 1.16 by @lucchmielowski in https://github.com/kyverno/kyverno/pull/15831
* fix: use scoped token for request authz (cherry-pick #15779 to release-1.16) by @JimBugwadia in https://github.com/kyverno/kyverno/pull/15801
* restrict configmap access for namespaced policies (Cherry-pick #15850) by @kyverno-bot in https://github.com/kyverno/kyverno/pull/15868
* fix: add missing .chainsaw.yaml to conformance test directories by @yashrajshuklaaa in https://github.com/kyverno/kyverno/pull/15681
* fix(engine): prevent forEach mutation panic [release-1.16] by @realshuting in https://github.com/kyverno/kyverno/pull/15887
* chore: release 1.16.4-rc.1 by @realshuting in https://github.com/kyverno/kyverno/pull/15891
* fix: resolve CVES for go < 1.25.8 by @lucchmielowski in https://github.com/kyverno/kyverno/pull/15927
* ci: remove wrongly backported workflows by @lucchmielowski in https://github.com/kyverno/kyverno/pull/15928
* ci: backport fixes by @lucchmielowski in https://github.com/kyverno/kyverno/pull/15931
* chore: release v1.16.4 by @realshuting in https://github.com/kyverno/kyverno/pull/15946


**Full Changelog**: https://github.com/kyverno/kyverno/compare/v1.16.3...v1.16.4