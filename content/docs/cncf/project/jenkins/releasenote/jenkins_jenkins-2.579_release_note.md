来源: https://github.com/jenkinsci/jenkins/releases/tag/jenkins-2.579

# jenkinsci/jenkins jenkins-2.579 Release Notes

Published at: 2026-08-25T14:26:38Z

_This is an automatically generated changelog draft for Jenkins weekly releases.
See https://www.jenkins.io/changelog/2.579/ for the official changelog for this release._

## 🚀 New features and improvements

* Add abort support to FormChecker delayed checks (#26595) @KevinSailema, @Copilot, Kevin, @timja

## 🐛 Bug fixes

* Retrying renamedTo operation up to 5 times because it randomly fails … (#11216) @a-zitzewitz, @timja
* Fix incorrect Unicode escape decoding in QuotedStringTokenizer.unquote (#26467) @Zhang-Charlie, @Copilot, @MarkEWaite
* Revert "Standardise experimental Jenkins pages, make the side panel independently scrollable + make the build bar sticky (#26863)" (#27265) @gbhat618
* Show only accessible links in sidepanel for new manage Jenkins UI (#27228) @mawinter69, @MarkEWaite
* Improve diagnostics for unreadable artifacts (#27201) @Hardik180704
* Fix dropdown suggestions requiring a double tap on touch devices (#26923) @Anexus5919
* fix combobox suggestion list flashing on click (#26922) @Anexus5919

## 👷 Changes for plugin developers

* Removes commons-lang:2.6 from core (#26105) @alecharp, @daniel-beck, @gbhat618, @MarkEWaite, @timja

All contributors: @a-zitzewitz, @alecharp, @Anexus5919, @gbhat618, @Hardik180704, @KevinSailema, @mawinter69, @Zhang-Charlie, @Copilot, @daniel-beck, Kevin, @MarkEWaite and @timja
