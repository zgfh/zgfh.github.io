来源: https://github.com/helm/helm/releases/tag/v4.1.0

# helm/helm v4.1.0 Release Notes

Published at: 2026-01-21T22:31:55Z

Helm v4.1.0 is a feature release. Users are encouraged to upgrade for the best experience.

The community keeps growing, and we'd love to see you there!

- Join the discussion in [Kubernetes Slack](https://kubernetes.slack.com):
  -  for questions and just to hang out
  -  for discussing PRs, code, and bugs
- Hang out at the Public Developer Call: Thursday, 9:30 Pacific via [Zoom](https://zoom.us/j/696660622)
- Test, debug, and contribute charts: [ArtifactHub/packages](https://artifacthub.io/packages/search?kind=0)

## Notable Changes

- Feature: added chart name to dependency logs, namespace to resource waiting logs, and confirmation message when all resources are ready #31530
- Feature: improved plugin name validation error messages and field name detection #31491
- Feature: improved the --wait flag by allowing explicit strategy selection (including explicit --wait=hookOnly) and preventing SDK timeout errors when timeout is not specified #31421
- Feature: allow concurrent dependency build with atomic file write #30984
- Feature: added a --no-headers flag to the 'helm repo list' command, allowing users to suppress table headers in the output. Useful for scripting and automation #31448
- SDK feature: added a LoadArchive to common loader #31462
- SDK feature: introduced support for custom kstatus readers #31706
- Fixed bug where a plugin name could already be used by another command #31427
- Fixed bug where --server-side flag was not passed to install when using upgrade --install #31635
- Fixed bug where HELM_ environment variables were not passed to plugins. this fixes a regression which was blocking some getter plugins #31613
- Fixed bug where Helm test --logs failed with hook-delete-policy "hook-failed" or "hook-succeed" #31579
- Fixed kube client logging issue #31560
- Fixed regression where vendor-specific suffixes were stripped from .Capabilities.KubeVersion.GitVersion, breaking charts that detect managed Kubernetes platforms #31528
- Fixed a bug where helm uninstall with --keep-history did not suspend previous deployed releases #12564
- SDK: bump k8s API versions to v0.35.0
- docs: updated `helm template` help text to document --api-versions #31683
- docs: fixed documentation about default wait strategy

## Installation and Upgrading

Download Helm v4.1.0. The common platform binaries are here:

- [MacOS amd64](https://get.helm.sh/helm-v4.1.0-darwin-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.0-darwin-amd64.tar.gz.sha256sum) / a326073ae392bed8b73c415d1d9d6880b0f5accb18aa9456975562b44a87c650)
- [MacOS arm64](https://get.helm.sh/helm-v4.1.0-darwin-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.0-darwin-arm64.tar.gz.sha256sum) / f12e2723c5e8eaff3e4b3670536867289fb6ab7f797fa2efedd1c53cfaca62fb)
- [Linux amd64](https://get.helm.sh/helm-v4.1.0-linux-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.0-linux-amd64.tar.gz.sha256sum) / 8e7ae5cb890c56f53713bffec38e41cd8e7e4619ebe56f8b31cd383bfb3dbb83)
- [Linux arm](https://get.helm.sh/helm-v4.1.0-linux-arm.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.0-linux-arm.tar.gz.sha256sum) / e3aa65aded232adb56fc5b5bdd034f5ad5fa501ab0f68099d15abd93133e6006)
- [Linux arm64](https://get.helm.sh/helm-v4.1.0-linux-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.0-linux-arm64.tar.gz.sha256sum) / 81315e404b6d09b65bee577a679ab269d6d44652ef2e1f66a8f922b51ca93f6b)
- [Linux i386](https://get.helm.sh/helm-v4.1.0-linux-386.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.0-linux-386.tar.gz.sha256sum) / 1a7ca55d28f11cb15c5c482a29db6781a6cc75ac62e5d38447377a4987c5b9b9)
- [Linux loong64](https://get.helm.sh/helm-v4.1.0-linux-loong64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.0-linux-loong64.tar.gz.sha256sum) / ﻿<?xml version="1.0" encoding="utf-8"?><Error><Code>BlobNotFound</Code><Message>The specified blob does not exist.
RequestId:4a82a5e5-801e-006f-411a-8bffc7000000
Time:2026-01-21T21:10:33.0504029Z</Message></Error>)
- [Linux ppc64le](https://get.helm.sh/helm-v4.1.0-linux-ppc64le.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.0-linux-ppc64le.tar.gz.sha256sum) / 6cb5ad5fb790e63056b71210f0a50566f4faf85709a49f17407c331f6923db56)
- [Linux s390x](https://get.helm.sh/helm-v4.1.0-linux-s390x.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.0-linux-s390x.tar.gz.sha256sum) / 109a32040f7325ef44234c594a1b7883b94ce37ba1f0ca7c5fa8452254bd71b8)
- [Linux riscv64](https://get.helm.sh/helm-v4.1.0-linux-riscv64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.0-linux-riscv64.tar.gz.sha256sum) / 944cfc9aea67db27eb46e52126ca4acee0cd416f0314369bf3364c77a13a7803)
- [Windows amd64](https://get.helm.sh/helm-v4.1.0-windows-amd64.zip) ([checksum](https://get.helm.sh/helm-v4.1.0-windows-amd64.zip.sha256sum) / 48b527c52c0ea4b33436536b4accefc2cfe1665f6f0520c5b72e478338551833)
- [Windows arm64](https://get.helm.sh/helm-v4.1.0-windows-arm64.zip) ([checksum](https://get.helm.sh/helm-v4.1.0-windows-arm64.zip.sha256sum) / 257f3ff25187d66208d08cabf063df7245ed72430436d7ca971ff9bd3fe0bc64)

This release was signed with `208D D36E D5BB 3745 A167 43A4 C7C6 FBB5 B91C 1155` and can be found at @scottrigby [keybase account](https://keybase.io/r6by). Please use the attached signatures for verifying this release using `gpg`.

The [Quickstart Guide](https://helm.sh/docs/intro/quickstart/) will get you going from there. For **upgrade instructions** or detailed installation notes, check the [install guide](https://helm.sh/docs/intro/install/). You can also use a [script to install](https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3) on any system with `bash`.

## What's Next

- 4.1.1 and 3.20.1 are the next patch releases, scheduled for March 11, 2026
- 4.2.0 and 3.21.0 are the next minor releases, scheduled for May 13, 2026

## Changelog

- Update pkg/kube/statuswait.go f46f1ce55d690a6c6f7e9b602757f9cf844492cb (Evans Mungai)
- pkg/kube: introduce support for custom kstatus readers 59ece92bed72767332ddc827c5548e7355ffb09a (Matheus Pimenta)
- chore(deps): bump golang.org/x/term from 0.38.0 to 0.39.0 de0becdc57de8e39f44d2b0f645eba2e3272ad5a (dependabot[bot])
- chore(deps): bump golang.org/x/text from 0.32.0 to 0.33.0 46e52649eaf7702b37f38302a318171ee88f4710 (dependabot[bot])
- fix(release): fix test compilation error e751a70e84175212d9338738122d045aecb2ad89 (Evans Mungai)
- Suppress SC2154 without changing behavior 9125b84f450e350c5bafb8de2b42701532b04c29 (Sarfraj Khan)
- chore(deps): bump github.com/foxcpp/go-mockdns from 1.1.0 to 1.2.0 0e0c02e6a71097c2ac0e4d75742e6048dc83aa19 (dependabot[bot])
- Lint sync-repo.sh with ShellCheck d4a2787fca9373bd8fd0a8df69acd0df69b3930e (sarfraj89)
- chore: move Evans Mungai from triage to maintainers fd090cce0c0e33e66321eb0ac504589441c34b31 (Evans Mungai)
- Replace reflect.Ptr with reflect.Pointer 2d6d9c09c4d24aed5f945d648b8927de153ce470 (Mads Jensen)
- fix: typo in the function names 138f730aacf96d0d94535a1d5b29d6dd128a062e (Gergely Brautigam)
- Add documentation for --api-versions flag in template command c7cc77b68d46b273bfb6b634d9c39b708c464221 (majiayu000)
- Fixing failing tests for cli-tools update fe1c749183e888a10b773757b20a6e85da373196 (Matt Farina)
- chore(deps): bump github.com/fluxcd/cli-utils 5e82698d578a52f6e13b096747e7674d2f27fc20 (dependabot[bot])
- Replace deprecated `NewSimpleClientset` a15db7f087826312eff5fddf77b5956521fbaa6b (George Jenkins)
- docs(README): add mise alternate installation documentation 04198dcf8a5dd3b80785ee8157c555e30d0071b9 (jylenhof)
- enable exhaustive linter 9a898af7f22cf82a807c33617ef0d6593674aafb (Brenden Ehlers)
- fix: add default casess to switch statements 1c119bcaa6f68a73f27a21f9d7dba22c4baf4d7d (Brenden Ehlers)
- build: set kube version via `debug.BuildInfo` c6d9a5bdc21efcc9c186ebc533436c31ce4d09c4 (Branch Vincent)
- chore(deps): bump github.com/tetratelabs/wazero from 1.10.1 to 1.11.0 97cde794c68eec98240125f7743296a62d92c481 (dependabot[bot])
- chore(deps): bump github.com/BurntSushi/toml from 1.5.0 to 1.6.0 91231430a8fefa8b57bf9810a8001351122a5b1b (dependabot[bot])
- doc: update based on review suggestion 55a4aed67f17b51c7ff80ef05529d82255e9888d (Deepak Chethan)
- test(statuswait): fix Copilot code review suggestion for goroutine in tests d6b35cedeb0519b648941911298ebb08fa3b0edf (Mohsen Mottaghi)
- test(statuswait): add more tests suggested by Copilot code review a1543d5947640b0ad4ac5c671273a28aca15e56e (Mohsen Mottaghi)
- test(statuswait): add some tests for statuswait dd44f4ecd0168a074bc75a43d78d6128c95f1d81 (Mohsen Mottaghi)
- fix: use namespace-scoped watching to avoid cluster-wide LIST permissions 3dd54ed0b693e5e5805cceb535ed5167fa5ada25 (Mohsen Mottaghi)
- fix(doc): Update default wait strategy f92ae18977bfe4fad74c7cb0e8c7f7fc68d85306 (Deepak)
- Update to use slog 9772037ed8a9e273b8c125fbf39bc7254ac53b05 (tison)
- Fix TestCliPluginExitCode 3c6557dcf57ef4feee0d4840d4095f1479a63b40 (tison)
- Check plugin name is not used 5196b8431a40b9bd9e2e4aadb757b99bec11853f (tison)
- chore(deps): bump github.com/fluxcd/cli-utils 364a7aa942201fcb10949dd4ad4b79c43a0cdaab (dependabot[bot])
- Fix `TestConcurrencyDownloadIndex` typo 592815ea2b020b354510685bfa61d252095baafb (George Jenkins)
- Use errors.Is to check for io.EOF and gzip.ErrHeader a490bb3c20eddd68a7a009f128ffab74ba4e6587 (Mads Jensen)
- chore(deps): bump actions/upload-artifact from 4.6.2 to 6.0.0 09ae0d4f2da4b602d0b94786badf2e72edce1a03 (dependabot[bot])
- chore(deps): bump the k8s-io group with 7 updates 1f8e84dff250905d7fff1320beff190a86d21ab9 (dependabot[bot])
- chore(deps): bump golang.org/x/crypto from 0.45.0 to 0.46.0 e9a0510b0298f4800991717e21d1c536a4d46dbb (dependabot[bot])
- chore: fix some comments to improve readability 858cf315830dd4818297e00d8098e6f79422d306 (wangjingcun)
- chore(deps): bump golang.org/x/text from 0.31.0 to 0.32.0 7fb17286fa64fb8f7d3728247725e7f453d29da5 (dependabot[bot])
- feat: move TerryHowe triage to maintainers e900a255ef4cba78c87f680c52f5b8be5d617277 (Terry Howe)
- Use latest patch release of Go in releases 8f636b5bd229c071ab5f0237a7b4553337392b44 (Matt Farina)
- chore(deps): bump github.com/rubenv/sql-migrate from 1.8.0 to 1.8.1 ea52f873988d129668417aebc40782055b67ca48 (dependabot[bot])
- fix(upgrade): pass --server-side flag to install when using upgrade --install 2dc581dc1c9c07e36dde9acc70bd86e23963662a (Evans Mungai)
- chore(deps): bump github.com/spf13/cobra from 1.10.1 to 1.10.2 a9bbffb4b67bdf05e0f5f9671f4ee5d7229a7494 (dependabot[bot])
- chore(deps): bump golang.org/x/term from 0.37.0 to 0.38.0 d195cfa2e338ac7a5f32052bb099ea176ea9342a (dependabot[bot])
- Run the vulnerability check on PR that change the file 24a82589f8ee9f8f385c63b6c68dabdf19109da7 (Matt Farina)
- Fix govulncheck in CI bc9462f20fc9a948fe557c87c895c06d4c0ddc6a (Matt Farina)
- Update the govulncheck.yml to run on change b825a18362806e1810dc5eac41d8475c1d3c4cd8 (Matt Farina)
- Enable the sloglint linter a18e59e46516bfe07241bf2e89de6268660a13ae (Mads Jensen)
- fix(cli): handle nil config in EnvSettings.Namespace() 8534663e730f7d32ac8777c3b41a7e6c6a94ab96 (Zadkiel AHARONIAN)
- fix(getter): pass settings environment variables 119341dca7fba0ae2987b4d0ffd41e9574e03a38 (Zadkiel AHARONIAN)
- fixes comment in install.go a109ac2f06d7cdca85c23567f3c545c726727904 (Stephanie Hohenberg)
- chore(deps): bump actions/stale from 10.1.0 to 10.1.1 581ab1afe9d8a7e11f78154f86abbeb7adf2ff50 (dependabot[bot])
- chore(deps): bump golangci/golangci-lint-action from 9.1.0 to 9.2.0 e62bf7fcc9ebea86c1510be9a284b99d7438cf7d (dependabot[bot])
- fixes tests after merge 2f598ffc850d9f83642da362a7be4121cf617275 (Stephanie Hohenberg)
- fixes lint issue bb9356e182a8abb0f806cd4866a317f273631862 (Stephanie Hohenberg)
- updates tests after rebase from master 8cf4ad73c3d6d8296b98286a9232155b7ecbd45b (Stephanie Hohenberg)
- Add tests to action package to improve coverage 31131cff9ba3c52060c4b999fa291eaf64abd51d (Stephanie Hohenberg)
- chore(deps): bump actions/checkout from 6.0.0 to 6.0.1 e6b2068afd7ad5d86b98b69ae35840ebef680002 (dependabot[bot])
- Inform we use a different golangci-lint version than the CI faa8912e36bfebf45735fbd6cbd709181b311d22 (Benoit Tigeot)
- Deal with golint warning with private executeShutdownFunc 45c5f3aaca1a37d8388ce7b79efe2dfaf84dcdcc (Benoit Tigeot)
- Use length check for MetaDependencies instead of nil comparison b33d4ae0c07c37436c00c8ba13ca7a0ea9f6aa19 (Calvin Bui)
- Code review 70fc5f97e2b42a2cf87ff8756d6baf4ab2d5a920 (Benoit Tigeot)
- Fix linting issue 9f1c8a26f00ebbe2942064a06b49c275162d10ef (Benoit Tigeot)
- Update pkg/action/hooks.go 6bb5bcc212fd014ad521eab8b1ffd94f3f4f0f71 (Michelle Fernandez Bieber)
- added check for nil shutdown d9301441f47bb8cf4c84ffcbed22f39ba70b1588 (Michelle Fernandez Bieber)
- cleaned up empty line 7a61ebf01370d67684681c0d210ddec90fda3503 (Michelle Fernandez Bieber)
- updated comment and made defer of shutdown function return errors as before and not the possible shutdown error 10714772bedf15c207bccf85be21f2e244d4a4ff (Michelle Fernandez Bieber)
- added shutdown hook that is executed after the logs have been retrieved 7a557580e1b5aac8327331e720e74bbbe49c0ad7 (Michelle Fernandez Bieber)
- chore: fix typo in pkg/downloader/chart_downloader.go e71a29ce4ff045c8194625c0d804f789d121023e (megha1906)
- Bump required go version (`go.mod` version) b859163fd2b71d84111b3caaab1c72ab4852d26d (George Jenkins)
- Use modernize to use newer Golang features. 6cceead3994b9e8490f6f9ad40b49456169d015d (Mads Jensen)
- Remove two redundant if-checks. 380abe2b1643e1a8eec9cd575d1d5c0521cf1c31 (Mads Jensen)
- Fix kube client logging 936cd328ac59001f7a6716a3eb7e9075f3950f44 (Matt Farina)
- chore(deps): bump golangci/golangci-lint-action from 9.0.0 to 9.1.0 cb35947ae600146ea0912fe9c2d0be27ee4181e2 (dependabot[bot])
- chore(deps): bump actions/checkout from 5.0.1 to 6.0.0 4fddc646787231b68940bbcf88346bdc82534727 (dependabot[bot])
- chore(deps): bump actions/setup-go from 5.5.0 to 6.1.0 b87f2da2f8b54a8bbc489ee7e8d853f80cab08f6 (dependabot[bot])
- fix: prevent segmentation violation on empty yaml in multidoc 81d244ca21e232e5ebccd67040cdf7596b572e8b (Benoit Tigeot)
- fix: prevent reporting fallback on version when none specified 40e22dedb2d9fdb8c47376a2c3071b99ba056d9c (Benoit Tigeot)
- chore(deps): bump golang.org/x/crypto from 0.44.0 to 0.45.0 c2405ce8c2bbbb90cc23f9ffb744442fc115fe11 (dependabot[bot])
- chore(deps): bump github.com/cyphar/filepath-securejoin 28baa972c1c064a13be50956e52d3a79ae5ce54b (dependabot[bot])
- bump version to 4.1 63e060fb053f951c6042efad3fee975ae624a906 (Matt Farina)
- fix: add missing context to debug logs 2dc5864f447d0429f7101526a518529e9919b067 (shuv0id)
- fix: preserve vendor suffixes in KubeVersion.GitVersion ce273eea48c8e42323c648527bb8e0d0dbf6fd8c (Benoit Tigeot)
- chore(deps): bump actions/checkout from 5.0.0 to 5.0.1 f6ceae9b7460e9a86a6ad99b63694cc30340b888 (dependabot[bot])
- fixup test f8a49f185218da62f58af2265db13ccc84a480b3 (George Jenkins)
- logs a9cdc781160f0469189b23769a99722d914c5858 (George Jenkins)
- fix b1a976073f11a972b3f5a6860bc5647a79268ef5 (George Jenkins)
- chore: add warning for registry login with namespace 5f3c617940081564a6bbabe9553996ae352d16ff (Terry Howe)
- style: linting 71591ee63e5351522cd833ec4980428a91f634ea (Benoit Tigeot)
- test: split tests between valid and invalid b296cbef6c8ad43de4f921c680c8df77fdd1cc84 (Benoit Tigeot)
- test: convert tests to table drive tests 9b242dd9ed656438eedaf93e67003231d23dc765 (Benoit Tigeot)
- test: refactor TestMetadataLegacyValidate to be more generic c81a09b89abcda9905e41376585c842870cafc2c (Benoit Tigeot)
- update tests 8c870248602e231be274b68b4cfd0f4b8387aa53 (yxxhero)
- fix: Use server-side apply for object create during update 18616e6ce969cd7fbbd8a85d77557402839d59db (George Jenkins)
- Copy adopted resource info 855ebb688444eb45ab7a4964be8483765f6dbe13 (George Jenkins)
- Refactor environment variable expansion in PrepareCommands and update tests 2d49f0cb4ab1996bc203c9a91454021a375e522c (yxxhero)
- fix: correct LDFLAGS path for default Kubernetes version b6a8c6521614f99d54752110a955b4f6fb5b8f5a (Benoit Tigeot)
- fix: improve plugin name validation err messages early via unmarshalling acf331a0057ee79246f6058fca02313be29506fa (Benoit Tigeot)
- fix: Make invalid name error message more similar and move tests 9e1e3d21c59820b39a05d950bf27027ba7ef1662 (Benoit Tigeot)
- fix: focus only on plugin name but give more info about what we get cf077ceb2758a63aa5f87410204d11c5f2ad3a7b (Benoit Tigeot)
- Make validation error similar and explicit for both metadatas f4b139a82c4f5f3b38f5cb7b90de3c2e93d62dc3 (Benoit Tigeot)
- fix: improve plugin name validation error messages c04e18e45253f08d127a37c8328e7084e486c7cc (Benoit Tigeot)
- Fix syntax errors in the document faa0adcb3855a299596f68f7a18f3dd84ef9ed1a (Fish-pro)
- chore(deps): bump the k8s-io group with 7 updates c81e2676535296a00f70402deac17a2b9888958d (dependabot[bot])
- docs: Fix LFX Health Score badge URL in README.md 40856bf50cdaa6a178b1c8433c98c25004e44735 (Michael Crenshaw)
- chore(deps): bump golang.org/x/crypto from 0.43.0 to 0.44.0 fb82e0e513f5efd94fa4f7ad6e916ccf51228c33 (dependabot[bot])
- chore(deps): bump github.com/tetratelabs/wazero from 1.9.0 to 1.10.1 72a84fb369d86eaae2b6b1d4aa0cee74cbc1ee03 (dependabot[bot])
- Publish Helm v4 -> `helm-latest-version` e4353dc8dba01062851a26a8d1227b0c42854f11 (George Jenkins)
- Adding script to download Helm v4 5ae85868d45ca7bb9ac3ef7a10e0db54b8a8695c (Matt Farina)
- chore(deps): bump golang.org/x/term from 0.36.0 to 0.37.0 6cd0bf81713d20a1ba609d7b6d10816410a1ebd4 (dependabot[bot])
- refactor: use strings.Builder to improve performance d8c40403364c817315ca9de85ba5e371905e5d03 (promalert)
- chore(deps): bump sigs.k8s.io/kustomize/kyaml from 0.20.1 to 0.21.0 0089a07bb855e2dc8169d5426bf22d33547b38ad (dependabot[bot])
- chore(deps): bump golangci/golangci-lint-action from 8.0.0 to 9.0.0 7a8535810acba53b4cf4ad65af040c58b37a5242 (dependabot[bot])
- Update pkg/cmd/flags.go 02312a1cf2124abc27e2cd261d8df8dcc0c6f1e4 (Benoit Tigeot)
- Error strategy list match help 277c140c871ed112da916d8997c7d243e39f41b3 (Benoit Tigeot)
- Prevent surprising failure with SDK when timeout is not set 5f6fa437b2c2954092b6c3f8af5b83aef7dcb874 (Benoit Tigeot)
- Do not change the default waiting strategy when --wait is not set 52a282832fad5691bbcfb28cf8c3dfade914a597 (Benoit Tigeot)
- Provide more help for SDK user when setting up WaitStrategy 11128659aa76b09aae2e7903c7790dabbe7a4c95 (Benoit Tigeot)
- Avoid confusion between `--wait` (watcher) and no --wait (hookOnly) 8535e9f4ab5c143fcbd429f45a0f15cf510a0cc0 (Benoit Tigeot)
- The default is not HookOnlyStrategy but WaitStrategy 1836f37f4d5a59f8e8fa9b78bb2517e6069292ac (Benoit Tigeot)
- Make wait strategy selection more obvious a5e110fccd9b8ce6f0dc110d2c83ee079f15e8e4 (Benoit Tigeot)
- Update pkg/cmd/flags.go e8b0cff45a21de6fe144789830e46c188e713313 (Benoit Tigeot)
- Increase documentation of --wait flag 95e1ee108936f15657f644e2e87f0b4c8319edb2 (Benoit Tigeot)
- While testing SDK features for v4. I was surprised with the error: 5cbd9b3035cee869566491c686c1f90ce1b52171 (Benoit Tigeot)
- fix: do not run release workflow on forks d93ef03ee400292452dec97e88e821dc3188110e (Terry Howe)
- Convert pkg/cmd/load_plugins.go to slog 6de83c5f60d4b7c463ed1f1d864381f420cee457 (saimanojk1)
- Rename copilot-instructions.md to AGENTS.md caff03fb4ec31bf60009b474020251a63491ce31 (Yarden Shoham)
- fix(rollback): `errors.Is` instead of string comp d158708fbfb08bc452d1733d9b8cc4c7dc9f8902 (Hidde Beydals)
- fix(uninstall): supersede deployed releases 2f1ecc7100868be90d302a299d707c70a7f45276 (Hidde Beydals)
- for remaining local variable case inconsistency 4576a81a00db475980aebeb5aed2502b2f755017 (tison)
- Properly test error messages on pull command's test ed6cf0e8a168517715262cc05409676858f0e26b (Benoit Tigeot)
- Adding a LoadArchive to common loader 0f5eda74c1a0cf49d3a6e52ad3959ad1cfb2af55 (Matt Farina)
- for all other similar cases 90d01915f9c210c7179fd2f9c34edab04619b204 (tison)
- chore(deps): bump github.com/cyphar/filepath-securejoin 21af58b8223a106e5814285b50af91d5d5a78ee9 (dependabot[bot])
- chore(deps): bump sigs.k8s.io/controller-runtime from 0.22.3 to 0.22.4 60aaa8a288b305bca32c4fa84ebe9c2b0105b162 (dependabot[bot])
- chore: increase logging package test coverage 558cea7458a80d0b6b142625a3bc67ddc8fd3c64 (Evans Mungai)
- feat(repo): add --no-headers option to 'helm repo list' 6ef79bb8d54bd4881e60d3e78d633b021f1079ec (Paul Van Laer)
- chore: fix typo of public field 0d6de28bf446b4d1b2cb71e0441e5c8ebc9e91c9 (tison)
- rename interface{} to any ffb3940011c77dd1ef930854e7875dd07c4b8cd4 (Terry Howe)
- test: protect unknown hook delete policies 269a32a6d2089bdddf7b87e185811a661a041ad9 (Marcin Owsiany)
- chore: replace github.com/mitchellh/copystructure bee9c1a108e516922ef4a5cdb3365ff8c3b6b7cf (Terry Howe)
- fix: Fix Helm v4 release distribtion/get-helm-3 script d5d1ea3f5527b4794c624e84c152f28fad860e10 (George Jenkins)
- fix test ae4af69b9dbd5ad01dc9621a90e5b08327a3499e (Artem Vdovin)
- Make test scripts run without /bin/bash 6181e0a873688e42e935147e0e3cb3769a067120 (Tom Wieczorek)
- Ignore duplicated URN in logs 8025a397e6f61c3722e0355d296321d8eced8b13 (Benoit Tigeot)
- jsonschema: warn and ignore unresolved URN $ref to match v3.18.4 03bb62f63dabb9f7f7db70e2e070e5e276384a8b (Benoit Tigeot)
- chore: delete unused var in installer.go 8068578266e87b1b587b4c05cc82eb98e797d992 (zyfy29)
- fix: assign KUBECONFIG environment variable value to env.Kubeconfig b25fa862d5f7de6c20fa4b95ce5c85962669fd3b (LinPr)
- add concurrency test on write & load index file 118d0eb697e52b90ad48e4e09529614be7ada4bc (Artem Vdovin)
- update writing index files to writeAtomicFile 314bd19d1159834699d5ee58fe93d8df2d416e0c (Artem Vdovin)
- fix index concurrency 351bb78ee5a22cb0e68818a310d77d7240edc0b1 (Artem Vdovin)