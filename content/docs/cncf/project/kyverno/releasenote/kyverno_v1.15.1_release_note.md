来源: https://github.com/kyverno/kyverno/releases/tag/v1.15.1

# kyverno/kyverno v1.15.1 Release Notes

Published at: 2025-08-15T09:41:48Z

## ✨ Added ✨
* Implement CRD change callbacks and ignore resource not found error (#13534)

## ⚠️ Changed ⚠️
* Update kubectl image and removed unused hooks (#13837)

## 🐛 Fixed 🐛
* Fix CVE-2025-47907 (#13822)
* Fix JSON logging format not working correctly (#13756)
* Fix a panic issue to not error out if resolving kinds fails for a cel based policy (#13754)
* Fix the error when update `lastRefreshInterval` of the globalcontextentry (#13700)
* Fix the issue to not escape shallow vars during validation (#12039)
* Replace openreports module name with the new name after the change in the openreports repo (#13768)
* Fix the error in the reports controller when parse the wildcard `*` match resource (#13793)

## 🔧 Others 🔧
* Add inline tag for generatePattern (#13729)
* Add chainsaw test for mpol: http-post (#13631)
* Add chainsaw test for mpol admission reporting (#13587)
* Fix codegen-manifest-release missing target (#13731)
* Improve unit test coverage for new policy types (#13804, #13736, #13735, #13720, #13719)
* Remove unused function in metrics (#13763)