来源: https://github.com/helm/helm/releases/tag/v4.1.4

# helm/helm v4.1.4 Release Notes

Published at: 2026-04-09T06:01:47Z

Helm v4.1.4 is a security fix patch release. Users are encouraged to upgrade for the best experience.

The community keeps growing, and we'd love to see you there!

- Join the discussion in [Kubernetes Slack](https://kubernetes.slack.com):
  -  for questions and just to hang out
  -  for discussing PRs, code, and bugs
- Hang out at the Public Developer Call: Thursday, 9:30 Pacific via [Zoom](https://zoom.us/j/696660622)
- Test, debug, and contribute charts: [ArtifactHub/packages](https://artifacthub.io/packages/search?kind=0)

## Security fixes

- [GHSA-hr2v-4r36-88hr ](https://github.com/helm/helm/security/advisories/GHSA-hr2v-4r36-88hr) Helm Chart extraction output directory collapse via `Chart.yaml` name dot-segment
- [GHSA-q5jf-9vfq-h4h7](https://github.com/helm/helm/security/advisories/GHSA-q5jf-9vfq-h4h7) Plugin verification fails open when `.prov` is missing, allowing unsigned plugin install
- [GHSA-vmx8-mqv2-9gmg](https://github.com/helm/helm/security/advisories/GHSA-vmx8-mqv2-9gmg) Path traversal in plugin metadata version enables arbitrary file write outside Helm plugin directory

A big thank you to the reporters of these issues (@maru1009, @1seal). 

## Installation and Upgrading

Download Helm v4.1.4. The common platform binaries are here:

- [MacOS amd64](https://get.helm.sh/helm-v4.1.4-darwin-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.4-darwin-amd64.tar.gz.sha256sum) / abf09c8503ad1d8ef76d3737a058c3456a998aae5f5966fce4bb3031aeb1654e)
- [MacOS arm64](https://get.helm.sh/helm-v4.1.4-darwin-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.4-darwin-arm64.tar.gz.sha256sum) / 7c2eca678e8001fa863cdf8cbf6ac1b3799f9404a89eb55c08260ef5732e658d)
- [Linux amd64](https://get.helm.sh/helm-v4.1.4-linux-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.4-linux-amd64.tar.gz.sha256sum) / 70b2c30a19da4db264dfd68c8a3664e05093a361cefd89572ffb36f8abfa3d09)
- [Linux arm](https://get.helm.sh/helm-v4.1.4-linux-arm.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.4-linux-arm.tar.gz.sha256sum) / c4a7d37032379cc7e82c9c76487d1041b193c9a0fbb4b8f3790230899b830a4f)
- [Linux arm64](https://get.helm.sh/helm-v4.1.4-linux-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.4-linux-arm64.tar.gz.sha256sum) / 13d03672be289045d2ff00e4e345d61de1c6f21c1257a45955a30e8ae036d8f1)
- [Linux i386](https://get.helm.sh/helm-v4.1.4-linux-386.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.4-linux-386.tar.gz.sha256sum) / 3e9bcefb85293854367bea931d669bb742974bbd978b3960df921ed129ff40f9)
- [Linux ppc64le](https://get.helm.sh/helm-v4.1.4-linux-ppc64le.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.4-linux-ppc64le.tar.gz.sha256sum) / 35a48f5db5c655b4471b37be75e76bfb2b23fc8a95d0fa2f0f344f0694336358)
- [Linux s390x](https://get.helm.sh/helm-v4.1.4-linux-s390x.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.4-linux-s390x.tar.gz.sha256sum) / c5653d0b3687f008dc48f80219906b574af3b623ddc114f92383327299ad935e)
- [Linux riscv64](https://get.helm.sh/helm-v4.1.4-linux-riscv64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.4-linux-riscv64.tar.gz.sha256sum) / 9d747ed5761a6a5c15aa7ad108b65aee917d8e33448690e83a6451b6a48748e6)
- [Windows amd64](https://get.helm.sh/helm-v4.1.4-windows-amd64.zip) ([checksum](https://get.helm.sh/helm-v4.1.4-windows-amd64.zip.sha256sum) / bd60f567f667631a2c9b698dfabe5e3cd52eaaf4264163c0a9cae566db8560e8)
- [Windows arm64](https://get.helm.sh/helm-v4.1.4-windows-arm64.zip) ([checksum](https://get.helm.sh/helm-v4.1.4-windows-arm64.zip.sha256sum) / d0a651026da4a26b28bdfc3d455ce3dfacbc267182dc2225c2172b1dcc549643)

The [Quickstart Guide](https://helm.sh/docs/intro/quickstart/) will get you going from there. For **upgrade instructions** or detailed installation notes, check the [install guide](https://helm.sh/docs/intro/install/). You can also use a [script to install](https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-4) on any system with `bash`.
## What's Next

- 4.1.5 and 3.20.3 are the next patch (bug fix) releases and will be on April 8, 2026
- 4.2.0 and 3.21.0 are the next minor (feature) releases and will be on May 13, 2026

## Changelog

- fix: Plugin missing provenance bypass 05fa37973dc9e42b76e1d2883494c87174b6074f (George Jenkins)
- fix: Chart dot-name path bug 4e7994d4467182f535b6797c94b5b0e994a91436 (George Jenkins)
- ignore error plugin loads (cli, getter) 25819432bf87ac0b54f0d3fa54982add2cac609e (George Jenkins)
- fix: Plugin version path traversal 36c8539e99bc42d7aef9b87d136254662d04f027 (George Jenkins)
- fix: pin codeql-action/upload-sarif to commit SHA in scorecards workflow c61e0860ec797330a4c26a78dde7020cdc6743b1 (Terry Howe)