来源: https://github.com/helm/helm/releases/tag/v3.18.5

# helm/helm v3.18.5 Release Notes

Published at: 2025-08-13T19:48:31Z

Helm v3.18.5 is a security release. Users are encouraged to upgrade for the best experience.

The community keeps growing, and we'd love to see you there!

- Join the discussion in [Kubernetes Slack](https://kubernetes.slack.com):
  -  for questions and just to hang out
  -  for discussing PRs, code, and bugs
- Hang out at the Public Developer Call: Thursday, 9:30 Pacific via [Zoom](https://zoom.us/j/696660622)
- Test, debug, and contribute charts: [ArtifactHub/packages](https://artifacthub.io/packages/search?kind=0)

## Security Advisories

-  [Helm Charts with Specific JSON Schema Values Can Cause Memory Exhaustion](https://github.com/helm/helm/security/advisories/GHSA-9h84-qmv7-982p)
-  [Incorrect YAML Content Leads To Panic](https://github.com/helm/helm/security/advisories/GHSA-f9f8-9pmf-xv68)

## Installation and Upgrading

Download Helm v3.18.5. The common platform binaries are here:

- [MacOS amd64](https://get.helm.sh/helm-v3.18.5-darwin-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.5-darwin-amd64.tar.gz.sha256sum) / 3200c32cf19bf69b446e97c0060af39f018d2e441e418ad174ba39052f63fb15)
- [MacOS arm64](https://get.helm.sh/helm-v3.18.5-darwin-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.5-darwin-arm64.tar.gz.sha256sum) / 32ce3f4910d5a96c1170f3f8f230d4c8b8bc007e5d47b085b8416cfe559d7925)
- [Linux amd64](https://get.helm.sh/helm-v3.18.5-linux-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.5-linux-amd64.tar.gz.sha256sum) / 9879bf9c471cdecbbee5ee17cf1de1849b0ffd12871ea01f17ede6861d7134f5)
- [Linux arm](https://get.helm.sh/helm-v3.18.5-linux-arm.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.5-linux-arm.tar.gz.sha256sum) / 4be47fa77476bfd6416a44853e28983e7c8594156259813ecf35d004044fb17d)
- [Linux arm64](https://get.helm.sh/helm-v3.18.5-linux-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.5-linux-arm64.tar.gz.sha256sum) / d25d2c1b1c5a9844755ab5c66e6df4d6b31c25e6d92dd2ce66c137a63ddf9f2c)
- [Linux i386](https://get.helm.sh/helm-v3.18.5-linux-386.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.5-linux-386.tar.gz.sha256sum) / 1ee980e47bb37f388abdce3a7e8da64a9b372352c4cb645bda5ddd401973bee3)
- [Linux ppc64le](https://get.helm.sh/helm-v3.18.5-linux-ppc64le.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.5-linux-ppc64le.tar.gz.sha256sum) / 9d300e0efced9b244aedcc9d11c49647deb4c5afc8d2298c988498dc530bc932)
- [Linux s390x](https://get.helm.sh/helm-v3.18.5-linux-s390x.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.5-linux-s390x.tar.gz.sha256sum) / c779bb4dea8026294378a9ad6447095fb8f56671a8c49437344dd342de2a3156)
- [Linux riscv64](https://get.helm.sh/helm-v3.18.5-linux-riscv64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.5-linux-riscv64.tar.gz.sha256sum) / f79d06dc5e966c341fc8ad1a0d5e032f7d681e62c4a51a4d22badec4b9857144)
- [Windows amd64](https://get.helm.sh/helm-v3.18.5-windows-amd64.zip) ([checksum](https://get.helm.sh/helm-v3.18.5-windows-amd64.zip.sha256sum) / 464bfd7792d6c682778fc1d5e5bcc9ac5ce83457fe3c4b7a3d0af4dc3ef03eb1)
- [Windows arm64](https://get.helm.sh/helm-v3.18.5-windows-arm64.zip) ([checksum](https://get.helm.sh/helm-v3.18.5-windows-arm64.zip.sha256sum) / 82411e3ee4e349d30221ddf6c26397bb0a41666939b338ccf39f4cd2ec4e4410)

The [Quickstart Guide](https://helm.sh/docs/intro/quickstart/) will get you going from there. For **upgrade instructions** or detailed installation notes, check the [install guide](https://helm.sh/docs/intro/install/). You can also use a [script to install](https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3) on any system with `bash`.

## What's Next

- 3.19.0 is the next minor release and will be on September 11, 2025

## Changelog

- fix Chart.yaml handling 7799b483f52ceb665264a4056da3d2569d60f910 (Matt Farina)
- Handle messy index files dd8502f7b4fd5824a696c99909babd0fbed77e9e (Matt Farina)
- json schema fix cb8595bc650e2ec7459427d2b0430599431a3dbe (Robert Sirchia)