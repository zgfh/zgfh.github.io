来源: https://github.com/helm/helm/releases/tag/v4.1.1

# helm/helm v4.1.1 Release Notes

Published at: 2026-02-09T18:33:58Z

Helm v4.1.1 is a patch release. Users are encouraged to upgrade for the best experience.

The community keeps growing, and we'd love to see you there!

- Join the discussion in [Kubernetes Slack](https://kubernetes.slack.com):
  -  for questions and just to hang out
  -  for discussing PRs, code, and bugs
- Hang out at the Public Developer Call: Thursday, 9:30 Pacific via [Zoom](https://zoom.us/j/696660622)
- Test, debug, and contribute charts: [ArtifactHub/packages](https://artifacthub.io/packages/search?kind=0)

## Notable Changes

- fix: fine-grained context options for waiting #31735
- fix: kstatus do not wait forever on failed resources #31730
- fix: Revert "Consider GroupVersionKind when matching resources" #31772
- fix: handle nil elements in slice copying #31751

## Installation and Upgrading

Download Helm v4.1.1. The common platform binaries are here:

- [MacOS amd64](https://get.helm.sh/helm-v4.1.1-darwin-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.1-darwin-amd64.tar.gz.sha256sum) / 6b8dbb03abb74e9ab8e69ca3f9b6459178be11317d0ac502f922621c05fdc866)
- [MacOS arm64](https://get.helm.sh/helm-v4.1.1-darwin-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.1-darwin-arm64.tar.gz.sha256sum) / b8f49e105b1d2fd8c8a90ba3fc9af48db91d2d1ca3b9e788352fc7c896bbb71a)
- [Linux amd64](https://get.helm.sh/helm-v4.1.1-linux-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.1-linux-amd64.tar.gz.sha256sum) / 5d4c7623283e6dfb1971957f4b755468ab64917066a8567dd50464af298f4031)
- [Linux arm](https://get.helm.sh/helm-v4.1.1-linux-arm.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.1-linux-arm.tar.gz.sha256sum) / e8b42ce9210ca6dc96c8dad24192544fc99ddbdf93292e25d762569156c09b85)
- [Linux arm64](https://get.helm.sh/helm-v4.1.1-linux-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.1-linux-arm64.tar.gz.sha256sum) / 02a5fb7742469d2d132e24cb7c3f52885894043576588c6788b6813297629edd)
- [Linux i386](https://get.helm.sh/helm-v4.1.1-linux-386.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.1-linux-386.tar.gz.sha256sum) / a5d237c606a7b520340d288a94dbd54aa7f1ab09f882221272227515b9bc4a74)
- [Linux ppc64le](https://get.helm.sh/helm-v4.1.1-linux-ppc64le.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.1-linux-ppc64le.tar.gz.sha256sum) / 080c411ba2bbed1c0a6d1c91c31c5079e23ae5db1e82ef563d5db6edbc3be2bf)
- [Linux s390x](https://get.helm.sh/helm-v4.1.1-linux-s390x.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.1-linux-s390x.tar.gz.sha256sum) / d2af312a4cfb525133ede9990daafd36381d3e000ccec32ad5ab08ba400b0ad0)
- [Linux riscv64](https://get.helm.sh/helm-v4.1.1-linux-riscv64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.1.1-linux-riscv64.tar.gz.sha256sum) / 2d2aa1cdd4d53cdd50204c9548ab8a696f2a0603bd04c98ec4b34cbc3294ada8)
- [Windows amd64](https://get.helm.sh/helm-v4.1.1-windows-amd64.zip) ([checksum](https://get.helm.sh/helm-v4.1.1-windows-amd64.zip.sha256sum) / 665161eba861d86bdb6969aa15d0d0cac3f04ce950ca12b4ee0552d7967a61fa)
- [Windows arm64](https://get.helm.sh/helm-v4.1.1-windows-arm64.zip) ([checksum](https://get.helm.sh/helm-v4.1.1-windows-arm64.zip.sha256sum) / bd73ebc89311de201d6d86fc20ced76d7f448579332c54093fc086a2279d905d)

This release was signed by @gjenkins8 with key `BF88 8333 D96A 1C18 E268 2AAE D79D 67C9 EC01 6739`, which can be found at <https://keys.openpgp.org/vks/v1/by-fingerprint/BF888333D96A1C18E2682AAED79D67C9EC016739>. Please use the attached signatures for verifying this release using `gpg`.

The [Quickstart Guide](https://helm.sh/docs/intro/quickstart/) will get you going from there. For **upgrade instructions** or detailed installation notes, check the [install guide](https://helm.sh/docs/intro/install/). You can also use a [script to install](https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3) on any system with `bash`.

## What's Next

- 4.2.0 and 3.21.0 are the next minor releases and will be on May 13, 2026
- 4.1.2 and 3.20.1 are the next patch releases and will be on March 11, 2026

## Changelog

- feat(kstatus): fine-grained context options for waiting 5caf0044d4ef3d62a955440272999e139aafbbed (Matheus Pimenta)
- bugfix(kstatus): do not wait forever on failed resources 2519a88b0b8ec7c69623f616617b01f626d9aaf5 (Matheus Pimenta)
- Revert "Consider GroupVersionKind when matching resources" b2c487c4368db88fe9267d2ed62de9a52b333b5b (Matheus Pimenta)
- fix(copystructure): handle nil elements in slice copying 261387a112bd91edca6511d34de23f7cc5ce9f8b (Philipp Born)