来源: https://github.com/jenkinsci/jenkins/releases/tag/jenkins-2.552

# jenkinsci/jenkins jenkins-2.552 Release Notes

Published at: 2026-02-24T11:01:20Z

_This is an automatically generated changelog draft for Jenkins weekly releases.
See https://www.jenkins.io/changelog/2.552/ for the official changelog for this release._

## 🚀 New features and improvements

* Update Jenkins CLI subpages to use experimental Manage Jenkins UI (#26316) @janfaracik
* Revamp Clouds page (#26315) @janfaracik
* Add experimental Plugin Manager UI (#11332) @janfaracik

## 🐛 Bug fixes

* Add index variable to forEach loop in queue-items.jelly (#26355) @duemir
* Encode log recorder name when redirecting (#26331) @Flamki
* Use system temp directory for CommandInstaller scripts (#26240) @meetgoti07
* Don't validate input fields when they are disabled (#26298) @mawinter69
* Fix link to polling log of upstream build caused by an SCM trigger after a Jenkins restart (#26291) @mawinter69
* Fix [JENKINS-35272](https://issue-redirect.jenkins.io/issue/35272) - : Prevent afterDisconnect() from being called twice (#26188) @Divyansh9192
* Attach tippy to parent for combobox and autocomplete (#26326) @timja

All contributors: @Divyansh9192, @Flamki, @MarkEWaite, @duemir, @github-actions[bot], @janfaracik, @jenkins-release-bot, @jtnord, @mawinter69, @meetgoti07, @renovate[bot], @timja, [github-actions[bot]](https://github.com/apps/github-actions) and [renovate[bot]](https://github.com/apps/renovate)
