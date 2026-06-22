来源: https://github.com/helm/helm/releases/tag/v3.21.2

# helm/helm v3.21.2 Release Notes

Published at: 2026-06-20T04:36:23Z

Helm v3.21.2 is a patch release to correct bump the Kubernetes client libraries (client-go, etc) to match the expected Kubernetes v1.36 release. Users are encouraged to upgrade for the best experience.

The community keeps growing, and we'd love to see you there!

- Join the discussion in [Kubernetes Slack](https://kubernetes.slack.com):
  -  for questions and just to hang out
  -  for discussing PRs, code, and bugs
- Hang out at the Public Developer Call: Thursday, 9:30 Pacific via [Zoom](https://zoom.us/j/696660622)
- Test, debug, and contribute charts: [ArtifactHub/packages](https://artifacthub.io/packages/search?kind=0)

## Notable Changes

- Update Kubernetes client libraries to v1.36

## Installation and Upgrading

Download Helm v3.21.2. The common platform binaries are here:

- [MacOS amd64](https://get.helm.sh/helm-v3.21.2-darwin-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.2-darwin-amd64.tar.gz.sha256sum) / 82ac9105e657267cb029b5bf27ed28e35db104777328a036a84d345046f9f329)
- [MacOS arm64](https://get.helm.sh/helm-v3.21.2-darwin-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.2-darwin-arm64.tar.gz.sha256sum) / aea537342b4c03cf58e089cb8dc99468087bb1a0218531df40462faca3f6c5d3)
- [Linux amd64](https://get.helm.sh/helm-v3.21.2-linux-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.2-linux-amd64.tar.gz.sha256sum) / 0a745198de24545d0055cd8414bc8d2ba10363ef5f5d38369ea1b399671cc083)
- [Linux arm](https://get.helm.sh/helm-v3.21.2-linux-arm.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.2-linux-arm.tar.gz.sha256sum) / d6c5ea4a0c0d8b68a525caa4fe969c5db5627365c66dc2878fe72ac1d6325f15)
- [Linux arm64](https://get.helm.sh/helm-v3.21.2-linux-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.2-linux-arm64.tar.gz.sha256sum) / bbd559fc0547f1d96ccbc68fe4f1cb98f01808f36538139e669369066b781267)
- [Linux i386](https://get.helm.sh/helm-v3.21.2-linux-386.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.2-linux-386.tar.gz.sha256sum) / 4f1d9f68c884cc143fc768d583c32cf23317713fc1e8ccbf309bb1d1ddafa15f)
- [Linux ppc64le](https://get.helm.sh/helm-v3.21.2-linux-ppc64le.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.2-linux-ppc64le.tar.gz.sha256sum) / 8f0e57e13260e0c0008fec80629b560dc8891281ba3f0cd5d57895b8a5f76d8e)
- [Linux s390x](https://get.helm.sh/helm-v3.21.2-linux-s390x.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.2-linux-s390x.tar.gz.sha256sum) / daf652ddbf37d5e896187d1ccc1f2868df8f261c1af5b5f2f1639022623aeefb)
- [Linux riscv64](https://get.helm.sh/helm-v3.21.2-linux-riscv64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.2-linux-riscv64.tar.gz.sha256sum) / 9e4dbd48868bf92835dd0de11387b1d82636330740b8943064da233b12791964)
- [Windows amd64](https://get.helm.sh/helm-v3.21.2-windows-amd64.zip) ([checksum](https://get.helm.sh/helm-v3.21.2-windows-amd64.zip.sha256sum) / 5f346e3338617e9fd1b8c216065383061bdb3bde26cb6b3abc8ce0481354a513)
- [Windows arm64](https://get.helm.sh/helm-v3.21.2-windows-arm64.zip) ([checksum](https://get.helm.sh/helm-v3.21.2-windows-arm64.zip.sha256sum) / e77859867482549e5613255605e7680bc72b308ea62b91ecc4626ed4ba116670)

This release was signed by @gjenkins8 with key BF88 8333 D96A 1C18 E268 2AAE D79D 67C9 EC01 6739, which can be found at https://keys.openpgp.org/vks/v1/by-fingerprint/BF888333D96A1C18E2682AAED79D67C9EC016739. Please use the attached signatures for verifying this release using gpg.

The [Quickstart Guide](https://helm.sh/docs/intro/quickstart/) will get you going from there. For **upgrade instructions** or detailed installation notes, check the [install guide](https://helm.sh/docs/intro/install/). You can also use a [script to install](https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3) on any system with `bash`.

## What's Next

- 3.21.3 will contain only bug fixes.
- 3.22.0 is the next (and final) Helm 3 feature release

## Changelog

- chore(deps): bump the k8s-io group with 2 updates 125963406833fe0525be91f46c8b5b0f22fb9e32 (dependabot[bot])
- fixes b52e27609b4420d206c1874ce9b0c75e271665e7 (Matheus Pimenta)
- chore(deps): bump the k8s-io group across 1 directory with 2 updates 3342dbfec8f39776a9accd50fa91a52d68673af1 (dependabot[bot])

**Full Changelog**: https://github.com/helm/helm/compare/v3.21.1...v3.21.2