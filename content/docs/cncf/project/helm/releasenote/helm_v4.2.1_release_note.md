来源: https://github.com/helm/helm/releases/tag/v4.2.1

# helm/helm v4.2.1 Release Notes

Published at: 2026-06-12T15:06:26Z

Helm v4.2.1 is a patch release. Users are encouraged to upgrade for the best experience.

The community keeps growing, and we'd love to see you there!

- Join the discussion in [Kubernetes Slack](https://kubernetes.slack.com):
  -  for questions and just to hang out
  -  for discussing PRs, code, and bugs
- Hang out at the Public Developer Call: Thursday, 9:30 Pacific via [Zoom](https://zoom.us/j/696660622)
- Test, debug, and contribute charts: [ArtifactHub/packages](https://artifacthub.io/packages/search?kind=0)

## Notable Changes

- Fixed data race detected by -race flag when concurrent goroutines (upgrade + rollback, install + uninstall) both call GetWaiterWithOptions on the same FailingKubeClient instance #31925
- Fixed helm command success messages writing to stderr instead of stdout. Now correctly outputing to stdout #32056
- Fixed Helm 4 emitting "unable to find exact version" when using version range constraints #31757
- Fixed a race condition in WaitForDelete where the status observer canceled the watch too early, causing intermittent failures when running a full test suite #32081
- Bumped golang.org/x/net to v0.55.0 to address GO-2026-5026 #32153
- Fixed SDK errors by upgrading dependencies: cli-utils 1.2.1, controller-runtime 0.24.1 and k8s 1.36.1 #32128
- Dependency updates

## Installation and Upgrading

Download Helm v4.2.1. The common platform binaries are here:

- [MacOS amd64](https://get.helm.sh/helm-v4.2.1-darwin-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.1-darwin-amd64.tar.gz.sha256sum) / 2a21c9f368d608bcf6eb794ebc06514eb6b529a846b60fe4a43dea7bcce65228)
- [MacOS arm64](https://get.helm.sh/helm-v4.2.1-darwin-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.1-darwin-arm64.tar.gz.sha256sum) / 896472d2ec0740c60f64a9df0fc30d478beee38a1a2a6ed91aa6e6ee177c1575)
- [Linux amd64](https://get.helm.sh/helm-v4.2.1-linux-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.1-linux-amd64.tar.gz.sha256sum) / 479dca836e5b45e8bd222400c5591b0e3a647378f03ff96597180db97c17fdae)
- [Linux arm](https://get.helm.sh/helm-v4.2.1-linux-arm.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.1-linux-arm.tar.gz.sha256sum) / 49e8f7856de6eab170dc09671cfb0578cc455d820df5b0f54e6453058dc0e3f3)
- [Linux arm64](https://get.helm.sh/helm-v4.2.1-linux-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.1-linux-arm64.tar.gz.sha256sum) / 596b9a73d366c1e72ce67d595c22805480e30914593aafbc9f547694e72814db)
- [Linux i386](https://get.helm.sh/helm-v4.2.1-linux-386.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.1-linux-386.tar.gz.sha256sum) / e038eab680f22b1cebe68fd0536cf2397b0c10798dcb23c28e500e0804ec1a55)
- [Linux loong64](https://get.helm.sh/helm-v4.2.1-linux-loong64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.1-linux-loong64.tar.gz.sha256sum) / 8ae26f15638d951c4ed21d0d3018b8800a137646e5e5151a3856cf324c2852ae)
- [Linux ppc64le](https://get.helm.sh/helm-v4.2.1-linux-ppc64le.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.1-linux-ppc64le.tar.gz.sha256sum) / 6f34eca5e314e941577a07be6c8b356f66b9cdefbed1175da1e7916368febcfc)
- [Linux s390x](https://get.helm.sh/helm-v4.2.1-linux-s390x.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.1-linux-s390x.tar.gz.sha256sum) / e6355691887d4185b7e077f058483c04f353229feb7d4a72edc3ebe0b8738a6a)
- [Linux riscv64](https://get.helm.sh/helm-v4.2.1-linux-riscv64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.1-linux-riscv64.tar.gz.sha256sum) / 16a4299f14ff1ffa79bb22115051911c662fa2ecdd90e85b65d7d143e8de9d02)
- [Windows amd64](https://get.helm.sh/helm-v4.2.1-windows-amd64.zip) ([checksum](https://get.helm.sh/helm-v4.2.1-windows-amd64.zip.sha256sum) / 6e7fa7839444b8ddc407c5bcdb1edd1024f57d09c2db971dec511ee2f2616eb0)
- [Windows arm64](https://get.helm.sh/helm-v4.2.1-windows-arm64.zip) ([checksum](https://get.helm.sh/helm-v4.2.1-windows-arm64.zip.sha256sum) / ae4c9acd0d9acd1f9e9da2f60105f793f65fd49ab7c03c6c7d13804c3b885657)

This release was signed with `208D D36E D5BB 3745 A167 43A4 C7C6 FBB5 B91C 1155` and can be found at @scottrigby [keybase account](https://keybase.io/r6by). Please use the attached signatures for verifying this release using `gpg`.

The [Quickstart Guide](https://helm.sh/docs/intro/quickstart/) will get you going from there. For **upgrade instructions** or detailed installation notes, check the [install guide](https://helm.sh/docs/intro/install/). You can also use a [script to install](https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-4) on any system with `bash`.

## What's Next

- 4.2.2 and 3.21.2 are the next patch releases scheduled for July 8, 2026
- 4.3.0 and 3.22.0 are the next minor releases scheduled for September 9, 2026

## Changelog

- fix: protect FailingKubeClient.RecordedWaitOptions from data race (#31925) d591a19b953bd9cfdf7d9ddd83c2f4ffdaeafb29 (Terry Howe)
- fix: route registry client output to stdout instead of stderr (#32056) 2a9fcae29280472edec988c6bf0528e4ae79b33a (Terry Howe)
- chore(deps): bump oras.land/oras-go/v2 from 2.6.0 to 2.6.1 ffa5bd693eee68ba9c1ba42d160c69114eda962c (dependabot[bot])
- chore(deps): bump golang.org/x/crypto from 0.52.0 to 0.53.0 9f9dbaf94008044a516cda4837565237306578a7 (dependabot[bot])
- chore(deps): bump golang.org/x/term from 0.43.0 to 0.44.0 64a2891699ae9c8f2d0e06d5db3dd117649886a2 (dependabot[bot])
- chore(deps): bump golang.org/x/text from 0.37.0 to 0.38.0 e54a4a2b7d4ed9ca3bb4be7562f76dd5f2fd8f71 (dependabot[bot])
- chore(deps): bump github/codeql-action from 4.36.1 to 4.36.2 acb762b0ef8882b062ba8f6b87261411309875b8 (dependabot[bot])
- chore(deps): bump github/codeql-action from 4.36.0 to 4.36.1 768586df3f2a79fca5202b6713f8675bb097a904 (dependabot[bot])
- fix(version): avoid false range detection on prerelease x/X eabfae560459d1ffe1f7a3268d5441238e9f84b2 (Benoit Tigeot)
- fix(version): version range || can has no space e3fd51f331e14fb4056951540d2f2ffde81b405c (Benoit Tigeot)
- feat: report in debug the version we select with version range arg 1e47395a9566bcaaaf7ed9e31a8367eb1f95e0a3 (Benoit Tigeot)
- fix: prevent warning when using version range constraints a33e23939a85ac60eb9a6bee818f2c5459fda576 (Benoit Tigeot)
- fix(kube): always propagate context.Canceled in WaitForDelete fa06d4455724afe22bbe00af7925549a82d95e6c (Terry Howe)
- fix(kube): prevent spurious early exit in WaitForDelete during informer sync 360d4835df0fb8bd7cbde4cad0cbc79de01a6e93 (Terry Howe)
- chore(deps): bump github.com/tetratelabs/wazero from 1.11.0 to 1.12.0 7651edf21e31b5c33df82e67f23855d1358d021d (dependabot[bot])
- chore(deps): bump golang.org/x/crypto from 0.51.0 to 0.52.0 b132e7e43f3620eb60ef3524527c1b2fceed90e9 (dependabot[bot])
- fix(deps): bump golang.org/x/net to v0.55.0 to address GO-2026-5026 eee491a7461a524b87e5bb73ea5a0c4f82c72469 (Terry Howe)
- chore(deps): bump golangci/golangci-lint-action from 9.2.0 to 9.2.1 3e3c5751b1723239cbce042533db0d84b65c6bc1 (dependabot[bot])
- chore(deps): bump github/codeql-action from 4.35.5 to 4.36.0 c4ce2bb364dbfb781059e628572d7177ba191cc4 (dependabot[bot])
- chore(deps): bump actions/stale from 10.2.0 to 10.3.0 3892dc2a11b2e111acddcbc55d5a4733ba461f20 (dependabot[bot])
- chore(deps): bump github/codeql-action from 4.35.4 to 4.35.5 c4bbb6263f59fe541acd75ce0b508034c65899e1 (dependabot[bot])
- chore(deps): bump golang.org/x/crypto from 0.50.0 to 0.51.0 a0d7f16b58aa4cb9dbaf8c37055faa28b1b350ae (dependabot[bot])
- chore(deps): bump github/codeql-action from 4.35.3 to 4.35.4 8a3de054b5ab1b59f60c790fad39861e294671f1 (dependabot[bot])
- fix(upstream): upgrade to cli-utils 1.2.1, controller-runtime 0.24.1 and k8s 1.36.1 57a4803bd4953d8ef9d51d927f492ecaaf5df9db (Matheus Pimenta)
- chore(deps): bump github.com/fluxcd/cli-utils from 1.2.0 to 1.2.1 b33ae02b9cd7fcba804391ab3d364739cb2a8780 (dependabot[bot])

**Full Changelog**: https://github.com/helm/helm/compare/v4.2.0...v4.2.1