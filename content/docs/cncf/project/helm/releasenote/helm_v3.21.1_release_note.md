来源: https://github.com/helm/helm/releases/tag/v3.21.1

# helm/helm v3.21.1 Release Notes

Published at: 2026-06-12T14:51:31Z

Helm v3.21.1 is a patch release. Users are encouraged to upgrade for the best experience.

The community keeps growing, and we'd love to see you there!

- Join the discussion in [Kubernetes Slack](https://kubernetes.slack.com):
  -  for questions and just to hang out
  -  for discussing PRs, code, and bugs
- Hang out at the Public Developer Call: Thursday, 9:30 Pacific via [Zoom](https://zoom.us/j/696660622)
- Test, debug, and contribute charts: [ArtifactHub/packages](https://artifacthub.io/packages/search?kind=0)

## Notable Changes

- Fixed nil pointer panic that could happen with helm template in ClientOnly flows. Now correctly returns a template error https://github.com/helm/helm/pull/31920
- Bumped golang.org/x/net to v0.55.0 to address GO-2026-5026 #32152
- Bumped Go from 1.25 to 1.26 #32168
- Dependency version updates

## Installation and Upgrading

Download Helm v3.21.1. The common platform binaries are here:

- [MacOS amd64](https://get.helm.sh/helm-v3.21.1-darwin-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.1-darwin-amd64.tar.gz.sha256sum) / dd353172bc8cef8c1845501043b82224520a79ff8b2cd4388ec5bfa060ce96b9)
- [MacOS arm64](https://get.helm.sh/helm-v3.21.1-darwin-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.1-darwin-arm64.tar.gz.sha256sum) / 779ac09ad0cf333b12402555a32bd26174462384aba2f5a3845876f45d34146a)
- [Linux amd64](https://get.helm.sh/helm-v3.21.1-linux-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.1-linux-amd64.tar.gz.sha256sum) / a349c62d6ab2d5d11f044fc0d3afa6deed7d27cc7d5c351f536b169d9fc2cc1a)
- [Linux arm](https://get.helm.sh/helm-v3.21.1-linux-arm.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.1-linux-arm.tar.gz.sha256sum) / ae52acbd13d1efa0d787aa679519da813c114c1b29b68e09a781fe258fc5c696)
- [Linux arm64](https://get.helm.sh/helm-v3.21.1-linux-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.1-linux-arm64.tar.gz.sha256sum) / 9b3deeecb56c4795aa806858fa4d6388c049e3edfcd771723bd12c1cbef66893)
- [Linux i386](https://get.helm.sh/helm-v3.21.1-linux-386.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.1-linux-386.tar.gz.sha256sum) / 1901a40be004699a2ac2cf05874bd84dfbed1f791327a0bc65c351d537b0f139)
- [Linux ppc64le](https://get.helm.sh/helm-v3.21.1-linux-ppc64le.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.1-linux-ppc64le.tar.gz.sha256sum) / 136daecc0f4650158b2adedf14f29022402d92fd111041e55b4038c3df97c3bb)
- [Linux s390x](https://get.helm.sh/helm-v3.21.1-linux-s390x.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.1-linux-s390x.tar.gz.sha256sum) / e5601b71342cba12ffd504c03c710769134fbec5bbdea6c90c859506e54d7591)
- [Linux riscv64](https://get.helm.sh/helm-v3.21.1-linux-riscv64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.1-linux-riscv64.tar.gz.sha256sum) / e22b20fe16f6bd0d9729034ae76a9e81708bd94b0aa9628f617dc3dfbe876a2b)
- [Windows amd64](https://get.helm.sh/helm-v3.21.1-windows-amd64.zip) ([checksum](https://get.helm.sh/helm-v3.21.1-windows-amd64.zip.sha256sum) / e9d0dbeac9c9923c1b444ac4a1fc8e59d9f9afbeb30b4b6e9a00ac60a45b9459)
- [Windows arm64](https://get.helm.sh/helm-v3.21.1-windows-arm64.zip) ([checksum](https://get.helm.sh/helm-v3.21.1-windows-arm64.zip.sha256sum) / 9b8b803b27a5c1bdcbc75bcf8d1bf45c8f2ffede8ae29bed3ec093746b9807f9)

This release was signed with `208D D36E D5BB 3745 A167 43A4 C7C6 FBB5 B91C 1155` and can be found at @scottrigby [keybase account](https://keybase.io/r6by). Please use the attached signatures for verifying this release using `gpg`.

The [Quickstart Guide](https://helm.sh/docs/intro/quickstart/) will get you going from there. For **upgrade instructions** or detailed installation notes, check the [install guide](https://helm.sh/docs/intro/install/). You can also use a [script to install](https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3) on any system with `bash`.

## What's Next

- 4.2.2 and 3.21.2 are the next patch releases scheduled for July 8, 2026
- 4.3.0 and 3.22.0 are the next minor releases scheduled for September 9, 2026

## Changelog

- fix(action): avoid nil REST client getter panic when installing CRDs c56dd0095fd76da5d7b30ecdf506103e7f26745e (sergiochan)
- fix(registry): keep credentials on plain-HTTP fallback with oras-go v2.6.1 702529f90a0021e4d9df4880d6589198ec0e05f7 (Terry Howe)
- chore(deps): bump oras.land/oras-go/v2 from 2.6.0 to 2.6.1 178e120e16f5d61f769ee2c56a0d2a45ab7303bd (dependabot[bot])
- chore(deps): bump golang.org/x/crypto from 0.52.0 to 0.53.0 dcf35f86551322d93c1cb695f08435b3287e5ad0 (dependabot[bot])
- chore(deps): bump golang.org/x/term from 0.43.0 to 0.44.0 44aff8bf51809ec9f8a906d050818776cd47b264 (dependabot[bot])
- chore(deps): bump golang.org/x/text from 0.37.0 to 0.38.0 ae2f31f5a7d0cd789ca9fd83a6a2fe5fc7c3a1a3 (dependabot[bot])
- Update .github/env 402225fffdc82a28a213af94ea269c4300f12700 (Terry Howe)
- ci: bump golangci-lint to v2.11.3 for go 1.26 00eac21a89cd977868c0304917acd90220e07895 (Terry Howe)
- chore: bump go to 1.26 bec346ac983fd0b860a13ef7750616e088143f01 (Terry Howe)
- chore(deps): bump github.com/lib/pq from 1.11.2 to 1.12.3 58b6ccffd3e3ade58543c50e76e6fb6c39393be5 (dependabot[bot])
- chore(deps): bump github.com/distribution/distribution/v3 30b9f51d80b5853ef4031af168dd02491bbef9ab (dependabot[bot])
- chore(deps): bump github.com/containerd/containerd from 1.7.30 to 1.7.32 858aa47b455f08516a6d977f93d609c24f985853 (dependabot[bot])
- chore(deps): bump github.com/Masterminds/semver/v3 from 3.4.0 to 3.5.0 1af25d46939584205f0e3810fc547fcda727b1ec (dependabot[bot])
- chore(deps): bump github.com/mattn/go-shellwords from 1.0.12 to 1.0.13 97e4bc30e57290d81b36972ce49f908d68fd9241 (dependabot[bot])
- chore(deps): bump golang.org/x/crypto from 0.51.0 to 0.52.0 29bdd1bedd28bf816c7e26d356126489edf22945 (dependabot[bot])
- fix(deps): bump golang.org/x/net to v0.55.0 to address GO-2026-5026 bad6cd478f5b3f3c96b795f4d6a010f04a89624f (Terry Howe)
- chore(deps): bump k8s.io/klog/v2 from 2.130.1 to 2.140.0 75c2e9bf370eabf35a00e60cfceaee2b969ebe00 (dependabot[bot])
- chore(deps): bump golang.org/x/text from 0.35.0 to 0.37.0 cd4dac334caf38105aaae00ee8d4a9cb03de0b2c (dependabot[bot])

**Full Changelog**: https://github.com/helm/helm/compare/v3.21.0...v3.21.1