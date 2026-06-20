来源: https://github.com/helm/helm/releases/tag/v4.2.2

# helm/helm v4.2.2 Release Notes

Published at: 2026-06-17T20:50:16Z

Helm v4.2.2 is a patch release. Users are encouraged to upgrade for the best experience.

The community keeps growing, and we'd love to see you there!

- Join the discussion in [Kubernetes Slack](https://kubernetes.slack.com):
  -  for questions and just to hang out
  -  for discussing PRs, code, and bugs
- Hang out at the Public Developer Call: Thursday, 9:30 Pacific via [Zoom](https://zoom.us/j/696660622)
- Test, debug, and contribute charts: [ArtifactHub/packages](https://artifacthub.io/packages/search?kind=0)

## Notable Changes

- Revert: Fixed a race condition in WaitForDelete where the status observer canceled the watch too early, causing intermittent failures when running a full test suite #32214

## Installation and Upgrading

Download Helm v4.2.2. The common platform binaries are here:

- [MacOS amd64](https://get.helm.sh/helm-v4.2.2-darwin-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.2-darwin-amd64.tar.gz.sha256sum) / 10c1e36ee8c5f2e2ee25a16599cb03ab74c0953cd889cacb980a49ba4b6574ba)
- [MacOS arm64](https://get.helm.sh/helm-v4.2.2-darwin-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.2-darwin-arm64.tar.gz.sha256sum) / 5410a0dae3d5d91f45653b161260d9301aabc4ae80ae50a6605d66884b6df8ea)
- [Linux amd64](https://get.helm.sh/helm-v4.2.2-linux-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.2-linux-amd64.tar.gz.sha256sum) / 9adafecab4d406853bba163a70e9f104f47dbbf65ce24b7653bae7e36150bcb6)
- [Linux arm](https://get.helm.sh/helm-v4.2.2-linux-arm.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.2-linux-arm.tar.gz.sha256sum) / 7e9490169874695e04ab1af47c5620621fc13c84219a258fcc1afdcd40ca7438)
- [Linux arm64](https://get.helm.sh/helm-v4.2.2-linux-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.2-linux-arm64.tar.gz.sha256sum) / 78803142087a0069fa4b50d3f32a84d3ef25c14d1ee8a40fbccf86a6216d2f36)
- [Linux i386](https://get.helm.sh/helm-v4.2.2-linux-386.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.2-linux-386.tar.gz.sha256sum) / 8e1fdcda4a476ffc5d1179c7f16d33a3d54267efa08fd720f7678277d68bc2d5)
- [Linux loong64](https://get.helm.sh/helm-v4.2.2-linux-loong64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.2-linux-loong64.tar.gz.sha256sum) / b8bfe96b8b0b0e2af51af4a00ef521cc5a7e03793aea3568cf8500a63ae05041)
- [Linux ppc64le](https://get.helm.sh/helm-v4.2.2-linux-ppc64le.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.2-linux-ppc64le.tar.gz.sha256sum) / 814a80fd98eb9e4c5a9d610f3b9c15ffe120c2f5e39df16a2f491723ebc90126)
- [Linux s390x](https://get.helm.sh/helm-v4.2.2-linux-s390x.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.2-linux-s390x.tar.gz.sha256sum) / d84cdf1123f20cfbef19a2af1cd6afe8b00626bd9846bccb9dae978c810c8274)
- [Linux riscv64](https://get.helm.sh/helm-v4.2.2-linux-riscv64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.2-linux-riscv64.tar.gz.sha256sum) / f07c105180dff2619ab45134b9b47b7845387e8f3299e12ebe0efb87c7548717)
- [Windows amd64](https://get.helm.sh/helm-v4.2.2-windows-amd64.zip) ([checksum](https://get.helm.sh/helm-v4.2.2-windows-amd64.zip.sha256sum) / 5fad8562e98c34fa5af3ef904086a5874a6701050f9bf36e30238c975df94dcd)
- [Windows arm64](https://get.helm.sh/helm-v4.2.2-windows-arm64.zip) ([checksum](https://get.helm.sh/helm-v4.2.2-windows-arm64.zip.sha256sum) / 2e993d6a1dd8197a33e65d8e90b26df9d248ff3501701dea401856aa265a2dab)

This release was signed by @gjenkins8 with key BF88 8333 D96A 1C18 E268 2AAE D79D 67C9 EC01 6739, which can be found at https://keys.openpgp.org/vks/v1/by-fingerprint/BF888333D96A1C18E2682AAED79D67C9EC016739. Please use the attached signatures for verifying this release using gpg.

The [Quickstart Guide](https://helm.sh/docs/intro/quickstart/) will get you going from there. For **upgrade instructions** or detailed installation notes, check the [install guide](https://helm.sh/docs/intro/install/). You can also use a [script to install](https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-4) on any system with `bash`.

## What's Next

- 4.2.3 and 3.21.2 are the next patch releases scheduled for July 8, 2026
- 4.3.0 and 3.22.0 are the next minor releases scheduled for September 9, 2026

## Changelog

- Revert "fix(kube): prevent spurious early exit in WaitForDelete during informer sync" b05881cf967a5a09e19866799d0edfd40675803a (George Jenkins)

**Full Changelog**: https://github.com/helm/helm/compare/v4.2.1...v4.2.2