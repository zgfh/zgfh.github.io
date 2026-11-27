来源: https://github.com/jenkinsci/jenkins/releases/tag/jenkins-2.592

# jenkinsci/jenkins jenkins-2.592 Release Notes

Published at: 2026-11-24T06:39:06Z

_This is an automatically generated changelog draft for Jenkins weekly releases.
See https://www.jenkins.io/changelog/2.592/ for the official changelog for this release._

## 🚀 New features and improvements

* Add a Recent tab to the experimental dashboard home page (#27844) @timja, @claude
* Remove jQuery, Handlebars, and window-handle from the shared vendors bundle (#27827) @janfaracik
* Add an experimental dashboard home page with a paginated All tab (#27843) @timja, @claude
* Adopt App Bar API in experimental Dashboard UI (#27802) @janfaracik
* Render Timeseries for load statistics and memory usage as theme aware inline svg (#27763) @mawinter69
* Add experimental agent page UI (#26587) @mawinter69, @janfaracik, @krisstern, @MarkEWaite, @timja
* Show live-updating build times (#27801) @janfaracik

## 🐛 Bug fixes

* Fix job name combobox decoration flickering on hover (#27832) @adarshomrey
* Set page title on the build's Recorded Fingerprints page (#27821) @mohitmishra786
* Hide Rename in the experimental job UI when the user cannot rename (#27807) @janfaracik
* Use setStatus instead of sendError for successful HTTP 204 job description updates (#27805) @user-Param
* Trim whitespace around comma-separated globs in default `VirtualFile.list` (#27796) @0z5a

## 🌐 Localization and translation

* Fix glued words, lookalike letters and broken HTML in translations (#27826) @bardrop

## 👷 Changes for plugin developers

* Improve nullability annotations for Actionable, Job (#27793) @sghill

All contributors: @0z5a, @adarshomrey, @bardrop, @janfaracik, @mawinter69, @mohitmishra786, @sghill, @timja, @user-Param, @claude, @krisstern and @MarkEWaite
