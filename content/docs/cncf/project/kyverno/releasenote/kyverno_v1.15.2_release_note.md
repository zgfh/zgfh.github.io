来源: https://github.com/kyverno/kyverno/releases/tag/v1.15.2

# kyverno/kyverno v1.15.2 Release Notes

Published at: 2025-09-18T16:24:51Z

## 🐛 Fixed 🐛
* Fixed CLI apply command return code regardless of output format (#12629)
* Fixed resource name matching for edge case when name is auto-generated (#13584)
* Fixed namespace termination logging (#13866)
* Updated conditional logic to correct `reportsServer` value reference (#13893)
* Fixed background scan reporting to consume `resourceFilter` for new policy types (#13919)
* Fixed issue to evaluate userInfo for VAPs and MAPs in the CLI (#13920)
* Shortened helm hook names (#13966)
* Fixed issue to block mutating policies upon compilation errors (#13972)
* Fixed namespace selector matching for PolicyException (#13975)

## Helm
* Split openreports CRD installation from controller flag enabling in the helm chart (#13924)
* Fixed repository customization for helm hooks (#13933)
* Removed warnings related to VAPs in the chart (#13990)

## 🔧 Others 🔧
* Used pointer in validate (assert field) (#12373)
* Added unit test for pkg/background/dynamic_watcher.go (#13800)
* Added tests for VAPs that match subresource (#13947)
* Fixed chainsaw tests (#13992, #13976, #13923)
* Used namespace lister in background controller (#14002)

**Full Changelog**: https://github.com/kyverno/kyverno/compare/v1.15.1...v1.15.2