来源: https://github.com/jenkinsci/jenkins/releases/tag/jenkins-2.524

# jenkinsci/jenkins jenkins-2.524 Release Notes

Published at: 2025-08-19T16:39:43Z

_This is an automatically generated changelog draft for Jenkins weekly releases.
See https://www.jenkins.io/changelog/2.524/ for the official changelog for this release._

## 🚨 Removed

* Deprecate `UserIdMapper` and just use an HMAC (#10926) @jglick

## 🚀 New features and improvements

* [JENKINS-75675](https://issues.jenkins.io/browse/JENKINS-75675) - Refactor class loading logic in order to reduce memory consumption (#10659) @dukhlov
* `AdministrativeMonitorsDecorator` cleanup; `ManageJenkinsAction.getBadge` optimization (#10855) @jglick
* show parameters of a run with readOnlyMode (#10941) @mawinter69

## 🐛 Bug fixes

* Better error response from `doBuildWithParameters` (#10954) @jglick
* [JENKINS-75991](https://issues.jenkins.io/browse/JENKINS-75991) - Fix name of reason query parameter in online help for quietDown (#10965) @stephane-chazelas
* [JENKINS-75879](https://issues.jenkins.io/browse/JENKINS-75879) - `GStringTemplateEngine` causes memory leak in class loading (#10938) @jgarciacloudbees

## 👻 Maintenance

* [JENKINS-75675](https://issues.jenkins.io/browse/JENKINS-75675) - Refactor class loading logic in order to reduce memory consumption (#10659) @dukhlov

All contributors: @NotMyFault, @basil, @dukhlov, @gbhat618, @jenkins-release-bot, @jgarciacloudbees, @jglick, @krisstern, @mawinter69, @renovate[bot], @stephane-chazelas, @uhafner, @yaroslavafenkin and [renovate[bot]](https://github.com/apps/renovate)
