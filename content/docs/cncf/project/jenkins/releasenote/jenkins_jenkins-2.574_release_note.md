来源: https://github.com/jenkinsci/jenkins/releases/tag/jenkins-2.574

# jenkinsci/jenkins jenkins-2.574 Release Notes

Published at: 2026-07-21T10:53:52Z

_This is an automatically generated changelog draft for Jenkins weekly releases.
See https://www.jenkins.io/changelog/2.574/ for the official changelog for this release._

## 🚀 New features and improvements

* Remove pre 2.0 detached plugins (#27098) @timja, @claude, @Copilot
* Reduce size of war by excluding unused BC jar (#27099) @timja
* Remove comments from properties and jelly files in shipped war (#27100) @timja, @Copilot
* Standardise Jenkins branding during Sign in, Registration, and About Jenkins (#27046) @janfaracik
* Make remember-me token validity configurable via system property (#26833) @annplatoworld
* Add expression examples to "Restrict where builds can run" help (#27117) @arimu1

## 🐛 Bug fixes

* Fix NPE after Jenkins restart when UpstreamCause is a Pipeline job (#27094) @mawinter69
* Fix missing shadow and blur on the global search results dropdown (#27113) @thswlsqls
* Fix PackedMap.values() returning keys instead of values (#27110) @thswlsqls
* Fix HttpSessionListener jakarta sessionDestroyed bridge delegating to sessionCreated (#27090) @RealFakeAccount

## 🌐 Localization and translation

* [JENKINS-75134](https://issue-redirect.jenkins.io/issue/75134) - Clarify unclear Spanish translation for 'Unprotected URLs' blurb (#27048) @AbdelHamdyGhanem

## 👻 Maintenance

* [JENKINS-69789](https://issue-redirect.jenkins.io/issue/69789) - Address review feedback for password complexity rule (#27038) @cytrock, @claude, @daniel-beck, @MarkEWaite

All contributors: @AbdelHamdyGhanem, @annplatoworld, @arimu1, @cytrock, @janfaracik, @mawinter69, @RealFakeAccount, @thswlsqls, @timja, @claude, @Copilot, @daniel-beck and @MarkEWaite
