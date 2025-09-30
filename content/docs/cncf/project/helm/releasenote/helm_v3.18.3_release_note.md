来源: https://github.com/helm/helm/releases/tag/v3.18.3

# helm/helm v3.18.3 Release Notes

Published at: 2025-06-16T19:31:04Z

Helm v3.18.3 is a patch release. Users are encouraged to upgrade for the best experience. Users are encouraged to upgrade for the best experience.

The community keeps growing, and we'd love to see you there!

- Join the discussion in [Kubernetes Slack](https://kubernetes.slack.com):
  -  for questions and just to hang out
  -  for discussing PRs, code, and bugs
- Hang out at the Public Developer Call: Thursday, 9:30 Pacific via [Zoom](https://zoom.us/j/696660622)
- Test, debug, and contribute charts: [ArtifactHub/packages](https://artifacthub.io/packages/search?kind=0)

## Installation and Upgrading

Download Helm v3.18.3. The common platform binaries are here:

- [MacOS amd64](https://get.helm.sh/helm-v3.18.3-darwin-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.3-darwin-amd64.tar.gz.sha256sum) / d186851d40b1999c5d75696bc0b754e4d29e860c8d0cf4c132ac1b1940c5cffc)
- [MacOS arm64](https://get.helm.sh/helm-v3.18.3-darwin-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.3-darwin-arm64.tar.gz.sha256sum) / 3fe3e9739ab3c75d88bfe13e464a79a2a7a804fc692c3258fa6a9d185d53e377)
- [Linux amd64](https://get.helm.sh/helm-v3.18.3-linux-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.3-linux-amd64.tar.gz.sha256sum) / 6ec85f306dd8fe9eb05c61ba4593182b2afcfefb52f21add3fe043ebbdc48e39)
- [Linux arm](https://get.helm.sh/helm-v3.18.3-linux-arm.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.3-linux-arm.tar.gz.sha256sum) / 5ec62879f57d6acc0436440c88459d2a5c8de233273e73ff6498d79fd2d92653)
- [Linux arm64](https://get.helm.sh/helm-v3.18.3-linux-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.3-linux-arm64.tar.gz.sha256sum) / 3382ebdc6d6e027371551a63fc6e0a3073a1aec1061e346692932da61cfd8d24)
- [Linux i386](https://get.helm.sh/helm-v3.18.3-linux-386.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.3-linux-386.tar.gz.sha256sum) / 22d7bad5c6012729e550e09d0b719336ea98c9c7207730456d152f32124609af)
- [Linux ppc64le](https://get.helm.sh/helm-v3.18.3-linux-ppc64le.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.3-linux-ppc64le.tar.gz.sha256sum) / ca5ab0bb205488276095881f04b72bfed5c0ddb92f715940dde6a7ccae72818c)
- [Linux s390x](https://get.helm.sh/helm-v3.18.3-linux-s390x.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.3-linux-s390x.tar.gz.sha256sum) / be261f040b59c04ad4f1ce6fc2f976e500167475cadb468bf78cb9772300fb5d)
- [Linux riscv64](https://get.helm.sh/helm-v3.18.3-linux-riscv64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.3-linux-riscv64.tar.gz.sha256sum) / 1f87dab39ed599af463abba2c8b2d4c625cfcbc2f2010da2c9c47db017b1c2ca)
- [Windows amd64](https://get.helm.sh/helm-v3.18.3-windows-amd64.zip) ([checksum](https://get.helm.sh/helm-v3.18.3-windows-amd64.zip.sha256sum) / 4cb9185cd7b84395853c04c84c4524a6b794cab07211cedc2e36839f53d8e26d)
- [Windows arm64](https://get.helm.sh/helm-v3.18.3-windows-arm64.zip) ([checksum](https://get.helm.sh/helm-v3.18.3-windows-arm64.zip.sha256sum) / 7e83d901af47ca804d99d2eb679b4622fdfe1b5b06b15550f5a432a0e4591bb8)

This release was signed with `672C 657B E06B 4B30 969C 4A57 4614 49C2 5E36 B98E ` and can be found at @mattfarina [keybase account](https://keybase.io/mattfarina). Please use the attached signatures for verifying this release using `gpg`.

The [Quickstart Guide](https://helm.sh/docs/intro/quickstart/) will get you going from there. For **upgrade instructions** or detailed installation notes, check the [install guide](https://helm.sh/docs/intro/install/). You can also use a [script to install](https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3) on any system with `bash`.

## What's Next

- 3.18.4 is the next patch release and will be on July 09, 2025
- 3.19.0 is the next minor release and will be on September 11, 2025

## Changelog

- build(deps): bump golang.org/x/crypto from 0.38.0 to 0.39.0 6838ebcf265a3842d1433956e8a622e3290cf324 (dependabot[bot])
- fix: user username password for login 5b9e2f6b4c4e2c8e21d85dc01fbb9d8a454a1fa9 (Terry Howe)
- Update pkg/registry/transport.go 278241207306c699aa6da71fe9e5922fa5db1743 (Terry Howe)
- Update pkg/registry/transport.go e66cf6afdd4d8f92beb80d2026ff663472fd89df (Terry Howe)
- fix: add debug logging to oci transport 191f05c068a25a80cd206c1256c6b11a63c4068b (Terry Howe)
