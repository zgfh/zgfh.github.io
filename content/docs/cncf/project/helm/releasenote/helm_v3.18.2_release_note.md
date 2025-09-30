来源: https://github.com/helm/helm/releases/tag/v3.18.2

# helm/helm v3.18.2 Release Notes

Published at: 2025-06-02T13:41:33Z

Helm v3.18.2 is a patch release. Users are encouraged to upgrade for the best experience. Users are encouraged to upgrade for the best experience.

The community keeps growing, and we'd love to see you there!

- Join the discussion in [Kubernetes Slack](https://kubernetes.slack.com):
  -  for questions and just to hang out
  -  for discussing PRs, code, and bugs
- Hang out at the Public Developer Call: Thursday, 9:30 Pacific via [Zoom](https://zoom.us/j/696660622)
- Test, debug, and contribute charts: [ArtifactHub/packages](https://artifacthub.io/packages/search?kind=0)

## Installation and Upgrading

Download Helm v3.18.2. The common platform binaries are here:

- [MacOS amd64](https://get.helm.sh/helm-v3.18.2-darwin-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.2-darwin-amd64.tar.gz.sha256sum) / 8bfc850d4451dccecb01c73bdc844cb1b3ed2f1b90a89fc47e7b1670e1f369ec)
- [MacOS arm64](https://get.helm.sh/helm-v3.18.2-darwin-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.2-darwin-arm64.tar.gz.sha256sum) / d82a30d654862668ae1e58dbbba5ea6ed5f84312da59666ef628bf73b2188d39)
- [Linux amd64](https://get.helm.sh/helm-v3.18.2-linux-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.2-linux-amd64.tar.gz.sha256sum) / c5deada86fe609deefdf40e9cbbe3da2f8cf3f6a4551a0ebe7886dc8fcf98bce)
- [Linux arm](https://get.helm.sh/helm-v3.18.2-linux-arm.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.2-linux-arm.tar.gz.sha256sum) / a848c9db5e51f7cc4975bcfbba415c30cdfb67e141b6efc0e8b3a66cd89e8607)
- [Linux arm64](https://get.helm.sh/helm-v3.18.2-linux-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.2-linux-arm64.tar.gz.sha256sum) / 03181a494a0916b370a100a5b2536104963b095be53fb23d1e29b2afb1c7de8d)
- [Linux i386](https://get.helm.sh/helm-v3.18.2-linux-386.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.2-linux-386.tar.gz.sha256sum) / dae13caca7a24d0adff3f59183a269275522964d75c1e4cbdb0ffaddc659e7bc)
- [Linux ppc64le](https://get.helm.sh/helm-v3.18.2-linux-ppc64le.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.2-linux-ppc64le.tar.gz.sha256sum) / 1d21b2acdd79a13d20585b61fe90bababdd3f7047530d66aad650869c772b5c3)
- [Linux s390x](https://get.helm.sh/helm-v3.18.2-linux-s390x.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.2-linux-s390x.tar.gz.sha256sum) / 382920a48a0800cf2bb67bf6ab403aab15f7631b369bed9df9bdcfdd5ebd5ae9)
- [Linux riscv64](https://get.helm.sh/helm-v3.18.2-linux-riscv64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.2-linux-riscv64.tar.gz.sha256sum) / d702db0191e6a4091d631760aded83f809d8d7edf962d5252f1ea46804183ebf)
- [Windows amd64](https://get.helm.sh/helm-v3.18.2-windows-amd64.zip) ([checksum](https://get.helm.sh/helm-v3.18.2-windows-amd64.zip.sha256sum) / 49fc2d74a351974ebf544f8252a4e43d7e5f9e0137472415393178c2d3996e9f)
- [Windows arm64](https://get.helm.sh/helm-v3.18.2-windows-arm64.zip) ([checksum](https://get.helm.sh/helm-v3.18.2-windows-arm64.zip.sha256sum) / 6ecdf10aa6f356ebb841d1732225437100e65fdb90f99170e1b2e5726e4fd10d)

This release was signed with `672C 657B E06B 4B30 969C 4A57 4614 49C2 5E36 B98E ` and can be found at @mattfarina [keybase account](https://keybase.io/mattfarina). Please use the attached signatures for verifying this release using `gpg`.

The [Quickstart Guide](https://helm.sh/docs/intro/quickstart/) will get you going from there. For **upgrade instructions** or detailed installation notes, check the [install guide](https://helm.sh/docs/intro/install/). You can also use a [script to install](https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3) on any system with `bash`.

## What's Next

- 3.18.3 is the next patch release and will be on July 09, 2025
- 3.19.0 is the next minor release and will be on September 11, 2025

## Changelog

- fix: legacy docker support broken for login 04cad4610054e5d546aa5c5d9c1b1d5cf68ec1f8 (Terry Howe)
- Handle an empty registry config file. bc9f8a2d8baad5a54f7b421275f44c04117eb5cb (Matt Farina)
