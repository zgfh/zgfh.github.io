来源: https://github.com/helm/helm/releases/tag/v4.0.4

# helm/helm v4.0.4 Release Notes

Published at: 2025-12-13T01:22:50Z

Helm v4.0.4 is a security fix for a Go CVE in the previous tag. This patch release rebuilds the Helm `v4.0.2` release with the latest Go toolchain, to fix the Go CVE. Users are encouraged to upgrade. Note that tag v4.0.3 was skipped due to a build failure.

The community keeps growing, and we'd love to see you there!

- Join the discussion in [Kubernetes Slack](https://kubernetes.slack.com):
  -  for questions and just to hang out
  -  for discussing PRs, code, and bugs
- Hang out at the Public Developer Call: Thursday, 9:30 Pacific via [Zoom](https://zoom.us/j/696660622)
- Test, debug, and contribute charts: [ArtifactHub/packages](https://artifacthub.io/packages/search?kind=0)

## Installation and Upgrading

Download Helm v4.0.4. The common platform binaries are here:

- [MacOS amd64](https://get.helm.sh/helm-v4.0.4-darwin-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.0.4-darwin-amd64.tar.gz.sha256sum) / 73bcfd6ab000fdc95acf9fe1c59e8e47179426a653e45ae485889869d4a00523)
- [MacOS arm64](https://get.helm.sh/helm-v4.0.4-darwin-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.0.4-darwin-arm64.tar.gz.sha256sum) / a7ea99937a9679b3935fa0a2b70e577aa1ea84e5856e7c0821ca6ffa064ea976)
- [Linux amd64](https://get.helm.sh/helm-v4.0.4-linux-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.0.4-linux-amd64.tar.gz.sha256sum) / 29454bc351f4433e66c00f5d37841627cbbcc02e4c70a6d796529d355237671c)
- [Linux arm](https://get.helm.sh/helm-v4.0.4-linux-arm.tar.gz) ([checksum](https://get.helm.sh/helm-v4.0.4-linux-arm.tar.gz.sha256sum) / 9255732e31b5aa5ee7b55be8497eea4723e3dfb08a63c37603ae0d15a9a9d82c)
- [Linux arm64](https://get.helm.sh/helm-v4.0.4-linux-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.0.4-linux-arm64.tar.gz.sha256sum) / 16b88acc6503d646b7537a298e7389bef469c5cc9ebadf727547abe9f6a35903)
- [Linux i386](https://get.helm.sh/helm-v4.0.4-linux-386.tar.gz) ([checksum](https://get.helm.sh/helm-v4.0.4-linux-386.tar.gz.sha256sum) / e6dbf45313bab48e51a2b7a5f3271a19bb3d8b9f07b4bb48ba342389d902af53)
- [Linux loong64](https://get.helm.sh/helm-v4.0.4-linux-loong64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.0.4-linux-loong64.tar.gz.sha256sum) / ﻿<?xml version="1.0" encoding="utf-8"?><Error><Code>BlobNotFound</Code><Message>The specified blob does not exist.
RequestId:11673868-901e-003e-10cd-6b624b000000
Time:2025-12-13T01:15:26.0922049Z</Message></Error>)
- [Linux ppc64le](https://get.helm.sh/helm-v4.0.4-linux-ppc64le.tar.gz) ([checksum](https://get.helm.sh/helm-v4.0.4-linux-ppc64le.tar.gz.sha256sum) / c108d181a0e29dadf281fbb4f4a0e0f2149922b119ec745ced1a5ae6f0918703)
- [Linux s390x](https://get.helm.sh/helm-v4.0.4-linux-s390x.tar.gz) ([checksum](https://get.helm.sh/helm-v4.0.4-linux-s390x.tar.gz.sha256sum) / cdf172c59379f0a3fe1db4743c16f122745fdaaebb2fbbfa40ce5722a4787717)
- [Linux riscv64](https://get.helm.sh/helm-v4.0.4-linux-riscv64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.0.4-linux-riscv64.tar.gz.sha256sum) / 2cf1c77d993bf5386e85249007bdaf38358d2516b18454212206a81b132e1330)
- [Windows amd64](https://get.helm.sh/helm-v4.0.4-windows-amd64.zip) ([checksum](https://get.helm.sh/helm-v4.0.4-windows-amd64.zip.sha256sum) / 135bffadd3c87aff8856e06efb366bea2a48ac4d1742d73af80250410246f14d)
- [Windows arm64](https://get.helm.sh/helm-v4.0.4-windows-arm64.zip) ([checksum](https://get.helm.sh/helm-v4.0.4-windows-arm64.zip.sha256sum) / b65d05f15260e78311f463773f54fe68f6d74444b3c3e84cecf270cdb927cd8a)

This release was signed with `208D D36E D5BB 3745 A167 43A4 C7C6 FBB5 B91C 1155` and can be found at @scottrigby [keybase account](https://keybase.io/r6by). Please use the attached signatures for verifying this release using `gpg`.

The [Quickstart Guide](https://helm.sh/docs/intro/quickstart/) will get you going from there. For **upgrade instructions** or detailed installation notes, check the [install guide](https://helm.sh/docs/intro/install/). You can also use a [script to install](https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3) on any system with `bash`.

## What's Next

- 3.19.5 and 4.0.5 are the next patch releases and will be on January 14, 2026
- 3.20.0 and 4.1.0 is the next minor releases and will be on January 21, 2026

## Changelog

- Bump v4.0.2 CVE deps cd700e0627b8d9a4997a7ab2bc3b712d0de4dcd3 (George Jenkins)
- Use latest patch release of Go in releases 9db13ee5c343196f642c568a03e58d3221b324d6 (Matt Farina)