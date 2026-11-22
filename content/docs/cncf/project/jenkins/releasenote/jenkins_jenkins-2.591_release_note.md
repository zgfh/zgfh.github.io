来源: https://github.com/jenkinsci/jenkins/releases/tag/jenkins-2.591

# jenkinsci/jenkins jenkins-2.591 Release Notes

Published at: 2026-11-17T12:57:11Z

_This is an automatically generated changelog draft for Jenkins weekly releases.
See https://www.jenkins.io/changelog/2.591/ for the official changelog for this release._

## 🎉 Major features and improvements

* Enable CSP by default (#27727) @daniel-beck

## 🚀 New features and improvements

* Implement AlwaysIterate on RunList (#27767) @sghill
* Show Rename at the top of the experimental job UI actions menu (#27786) @janfaracik
* Show the Cancel button on running builds in the experimental job UI (#27773) @janfaracik
* Tidy up breadcrumbs and their menus (#27761) @janfaracik
* Keep the current tab when following an upstream cause link (#27714) @timja, @claude
* Add new wrapper api methods to return null for get item apis (#27580) @gbhat618
* Improve experimental Run UI navigation controls (#27538) @janfaracik

## 🐛 Bug fixes

* Fix offset icons in experimental Dashboard UI (#27785) @janfaracik
* Fix CLI usage text claiming list-changes and set-build-* build or delete (#27781) @thswlsqls
* Fix Bootstrap modal stacking with sticky sidebar (#27778) @ashwinigr-cse
* Guard build-number assignment with a dedicated lock instead of the job's monitor (#27707) @mikecirioli, @claude
* Avoid deadlock between disabling/deleting a project and queue maintenance (#27706) @mikecirioli, @claude
* Exclude installed plugin updates from the update badge (#27680) @esidh1998
* Add ARIA roles to Tippy dropdowns for screen reader support (#26321) @SalmanDeveloperz, @timja
* Prevent mobile sidebar state from blocking desktop clicks (#27755) @dineshsuthar123
* Fix split buttons in dropdown menus (#27725) @janfaracik
* Fix button label when reopening a newly created API token (#27598) @ollehu, @MarkEWaite

## 🌐 Localization and translation

* Fix pt_BR and zh_TW help for the List View regular expression filter (#27760) @thswlsqls
* Show values and apostrophes in translated messages (#27735) @ityashag

## 👷 Changes for plugin developers

* [JENKINS-49202](https://issue-redirect.jenkins.io/issue/49202) - Expose ChangeLogSet.Entry#getComment (#27672) @kpunia306, @MarkEWaite

All contributors: @ashwinigr-cse, @daniel-beck, @dineshsuthar123, @esidh1998, @gbhat618, @ityashag, @janfaracik, @kpunia306, @MarkEWaite, @mikecirioli, @ollehu, @SalmanDeveloperz, @sghill, @thswlsqls, @timja and @claude
