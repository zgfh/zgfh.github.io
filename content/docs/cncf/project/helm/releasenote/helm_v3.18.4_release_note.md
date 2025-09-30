来源: https://github.com/helm/helm/releases/tag/v3.18.4

# helm/helm v3.18.4 Release Notes

Published at: 2025-07-08T20:49:25Z

Helm v3.18.4 is a security release. Users are encouraged to upgrade for the best experience.

The community keeps growing, and we'd love to see you there!

- Join the discussion in [Kubernetes Slack](https://kubernetes.slack.com):
  -  for questions and just to hang out
  -  for discussing PRs, code, and bugs
- Hang out at the Public Developer Call: Thursday, 9:30 Pacific via [Zoom](https://zoom.us/j/696660622)
- Test, debug, and contribute charts: [ArtifactHub/packages](https://artifacthub.io/packages/search?kind=0)

## Security Advisories

- [GHSA-557j-xg8c-q2mm](https://github.com/helm/helm/security/advisories/GHSA-557j-xg8c-q2mm): Chart Dependency Updating With Malicious Chart.yaml Content And Symlink 

## Installation and Upgrading

Download Helm v3.18.4. The common platform binaries are here:

- [MacOS amd64](https://get.helm.sh/helm-v3.18.4-darwin-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.4-darwin-amd64.tar.gz.sha256sum) / 860a7238285b44b5dc7b3c4dad6194316885d7015d77c34e23177e0e9554af8f)
- [MacOS arm64](https://get.helm.sh/helm-v3.18.4-darwin-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.4-darwin-arm64.tar.gz.sha256sum) / 041849741550b20710d7ad0956e805ebd960b483fe978864f8e7fdd03ca84ec8)
- [Linux amd64](https://get.helm.sh/helm-v3.18.4-linux-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.4-linux-amd64.tar.gz.sha256sum) / f8180838c23d7c7d797b208861fecb591d9ce1690d8704ed1e4cb8e2add966c1)
- [Linux arm](https://get.helm.sh/helm-v3.18.4-linux-arm.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.4-linux-arm.tar.gz.sha256sum) / 34ea88aef15fd822e839da262176a36e865bb9cfdb89b1f723811c0cc527f981)
- [Linux arm64](https://get.helm.sh/helm-v3.18.4-linux-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.4-linux-arm64.tar.gz.sha256sum) / c0a45e67eef0c7416a8a8c9e9d5d2d30d70e4f4d3f7bea5de28241fffa8f3b89)
- [Linux i386](https://get.helm.sh/helm-v3.18.4-linux-386.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.4-linux-386.tar.gz.sha256sum) / 75c2d9858725a5907faf8f19d9fb21c0263e4cb864d27d6df8809f96f147d3c0)
- [Linux ppc64le](https://get.helm.sh/helm-v3.18.4-linux-ppc64le.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.4-linux-ppc64le.tar.gz.sha256sum) / dbd74c59e7710f26e058596723abbf73662b553e01f40dfb08508ffffaeb7b81)
- [Linux s390x](https://get.helm.sh/helm-v3.18.4-linux-s390x.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.4-linux-s390x.tar.gz.sha256sum) / c8bafb34bcebd53494f0223239977e1ff7b487e714598a5843a0cb1788e20075)
- [Linux riscv64](https://get.helm.sh/helm-v3.18.4-linux-riscv64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.4-linux-riscv64.tar.gz.sha256sum) / f67f39104c7e695cbba04dc3b4507a80a034ce9e5ccbe55c84e91b1553b787bd)
- [Windows amd64](https://get.helm.sh/helm-v3.18.4-windows-amd64.zip) ([checksum](https://get.helm.sh/helm-v3.18.4-windows-amd64.zip.sha256sum) / 0af12a2233d71ef4207db1eabbf103b554631206ed5b2b34fc56b73a52596888)
- [Windows arm64](https://get.helm.sh/helm-v3.18.4-windows-arm64.zip) ([checksum](https://get.helm.sh/helm-v3.18.4-windows-arm64.zip.sha256sum) / de6bc8fcffeb041f524a92c6026ea22ef6f939118a30e6bb8b996b77a38486b1)

The [Quickstart Guide](https://helm.sh/docs/intro/quickstart/) will get you going from there. For **upgrade instructions** or detailed installation notes, check the [install guide](https://helm.sh/docs/intro/install/). You can also use a [script to install](https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3) on any system with `bash`.

## What's Next

 - 3.18.5 is the next patch release and will be on August 13, 2025
 - 3.19.0 is the next minor release and will be on September 11, 2025


## Changelog

- Disabling linter due to unknown issue f20a4ad1d5c953ca0fb3d3b30aa9aa796d472ef1 (Matt Farina)
- build(deps): bump the k8s-io group with 7 updates 563b0947b995c48354319aa054830db61f793a08 (dependabot[bot])
- Updating link handling 00de613324df4dd930e6d231d9aae7f9dee29c76 (Matt Farina)
