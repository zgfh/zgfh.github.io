来源: https://github.com/helm/helm/releases/tag/v3.20.2

# helm/helm v3.20.2 Release Notes

Published at: 2026-04-09T21:17:14Z

## v3.20.2

Helm v3.20.2 is a security patch release. Users are encouraged to upgrade for the best experience.

The community keeps growing, and we'd love to see you there!

- Join the discussion in [Kubernetes Slack](https://kubernetes.slack.com):
  -  for questions and just to hang out
  -  for discussing PRs, code, and bugs
- Hang out at the Public Developer Call: Thursday, 9:30 Pacific via [Zoom](https://zoom.us/j/696660622)
- Test, debug, and contribute charts: [ArtifactHub/packages](https://artifacthub.io/packages/search?kind=0)

## Security fixes

- [GHSA-hr2v-4r36-88hr](https://github.com/helm/helm/security/advisories/GHSA-hr2v-4r36-88hr) Helm Chart extraction output directory collapse via `Chart.yaml` name dot-segment

## Installation and Upgrading

Download Helm v3.20.2. The common platform binaries are here:

- [MacOS amd64](https://get.helm.sh/helm-v3.20.2-darwin-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.20.2-darwin-amd64.tar.gz.sha256sum) / 7de04301f28b902a74f6286ed941cadc86ee5e6a9086a18f2ccf1f548e99d618)
- [MacOS arm64](https://get.helm.sh/helm-v3.20.2-darwin-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.20.2-darwin-arm64.tar.gz.sha256sum) / 139c794c22f16b579d08ddd3008c8038b9bb2814f35b5bcca91f50a1f458978d)
- [Linux amd64](https://get.helm.sh/helm-v3.20.2-linux-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.20.2-linux-amd64.tar.gz.sha256sum) / 258e830a9e613c8a7a302d6059b4bb3b9758f2f3e1bb8ea0d707ce10a9a72fea)
- [Linux arm](https://get.helm.sh/helm-v3.20.2-linux-arm.tar.gz) ([checksum](https://get.helm.sh/helm-v3.20.2-linux-arm.tar.gz.sha256sum) / a8a614c740399ff1ef32bcea6be6e4523f17e3376f9cf55c192cc48c8f2d1f19)
- [Linux arm64](https://get.helm.sh/helm-v3.20.2-linux-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.20.2-linux-arm64.tar.gz.sha256sum) / 5ea2d6bc2cda3f8edf985e028809f5a9278f404fb8ab24044de9b7cb9b79a691)
- [Linux i386](https://get.helm.sh/helm-v3.20.2-linux-386.tar.gz) ([checksum](https://get.helm.sh/helm-v3.20.2-linux-386.tar.gz.sha256sum) / 88e4c1834307cdbc9f3b80920e1a383e4ba50bb488fb0be1b1fbd4918bb6ae73)
- [Linux ppc64le](https://get.helm.sh/helm-v3.20.2-linux-ppc64le.tar.gz) ([checksum](https://get.helm.sh/helm-v3.20.2-linux-ppc64le.tar.gz.sha256sum) / 98bb26a2f3c0b0c1a50db3181dff192554e0c204a07427d98d6b01e259f23cbe)
- [Linux s390x](https://get.helm.sh/helm-v3.20.2-linux-s390x.tar.gz) ([checksum](https://get.helm.sh/helm-v3.20.2-linux-s390x.tar.gz.sha256sum) / 584dd77ef8096d6ef939a1822f72840e749fc8311b2b13ae94df5f786862a56b)
- [Linux riscv64](https://get.helm.sh/helm-v3.20.2-linux-riscv64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.20.2-linux-riscv64.tar.gz.sha256sum) / 957391d0710d72678acd09959b5dc77888cd007a78a4b99944d3b2fc7e1895ca)
- [Windows amd64](https://get.helm.sh/helm-v3.20.2-windows-amd64.zip) ([checksum](https://get.helm.sh/helm-v3.20.2-windows-amd64.zip.sha256sum) / 24e8e5b71bab4ee17e6f989931ecf4fb144f9916cbe9990c0b6b2ec7b925c454)
- [Windows arm64](https://get.helm.sh/helm-v3.20.2-windows-arm64.zip) ([checksum](https://get.helm.sh/helm-v3.20.2-windows-arm64.zip.sha256sum) / 7c940a73a6882f50b69aec3282549da4a49917669db18fc503db930fb74b9789)

The [Quickstart Guide](https://helm.sh/docs/intro/quickstart/) will get you going from there. For **upgrade instructions** or detailed installation notes, check the [install guide](https://helm.sh/docs/intro/install/). You can also use a [script to install](https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3) on any system with `bash`.

## What's Next

* 4.1.5 and 3.20.3 are the next patch (bug fix) releases and will be on April 8, 2026
* 4.2.0 and 3.21.0 are the next minor (feature) releases and will be on May 13, 2026

## Changelog

- fix: Chart dot-name path bug 8fb76d6ab555577e98e23b7500009537a471feee (George Jenkins)
- fix: pin codeql-action/upload-sarif to commit SHA in scorecards workflow 3a8927e275c50cecde273872dad2a5576bd46375 (Terry Howe)