来源: https://github.com/jenkinsci/jenkins/releases/tag/jenkins-2.550

# jenkinsci/jenkins jenkins-2.550 Release Notes

Published at: 2026-02-10T12:39:23Z

_This is an automatically generated changelog draft for Jenkins weekly releases.
See https://www.jenkins.io/changelog/2.550/ for the official changelog for this release._

## 🚀 New features and improvements

* Refine dialog component (#26033) @janfaracik
* Refine the 'New Item' screen (#26031) @janfaracik
* Hide last repeatable delete button with minimum > 0 (#26277) @mawinter69
* Make time zone list expandable in help (#26241) @AmoghParmar

## 🐛 Bug fixes

* Fix "Zeno’s paradox" like logic of the progress calculation. (#26235) @dukhlov
* Avoid using string replace when copying a cloud (#26260) @mawinter69
* Use client-side redirects in admin monitors for Chrome (#26207) @daniel-beck
* Do not compute CSP header if disabled (#26255) @daniel-beck

## 👷 Changes for plugin developers

* Refine dialog component (#26033) @janfaracik

## 👻 Maintenance

* Replace dependency on jenkins.io with a local mock server for testing (#26258) @adhamahmad

## 📦 Dependency updates

* Bump tar from 7.4.3 to 7.5.7 (#26276) @[dependabot[bot]](https://github.com/apps/dependabot)

All contributors: @AmoghParmar, @adhamahmad, @daniel-beck, @dependabot[bot], @dukhlov, @janfaracik, @jenkins-release-bot, @lemeurherve, @mawinter69, @renovate[bot], [dependabot[bot]](https://github.com/apps/dependabot) and [renovate[bot]](https://github.com/apps/renovate)
