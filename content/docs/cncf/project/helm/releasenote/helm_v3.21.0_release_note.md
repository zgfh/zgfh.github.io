来源: https://github.com/helm/helm/releases/tag/v3.21.0

# helm/helm v3.21.0 Release Notes

Published at: 2026-05-14T01:22:37Z

Helm v3.21.0 is a feature release. Users are encouraged to upgrade for the best experience.

> [!WARNING]
> Helm v3 is approaching end-of-life. Please update to Helm v4.

The community keeps growing, and we'd love to see you there!

- Join the discussion in [Kubernetes Slack](https://kubernetes.slack.com):
  -  for questions and just to hang out
  -  for discussing PRs, code, and bugs
- Hang out at the Public Developer Call: Thursday, 9:30 Pacific via [Zoom](https://zoom.us/j/696660622)
- Test, debug, and contribute charts: [ArtifactHub/packages](https://artifacthub.io/packages/search?kind=0)

## Notable Changes

- Kubernetes client libraries to v1.36
- notable changes here

## Installation and Upgrading

Download Helm v3.21.0. The common platform binaries are here:

- [MacOS amd64](https://get.helm.sh/helm-v3.21.0-darwin-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.0-darwin-amd64.tar.gz.sha256sum) / 8bc0c1f85f8738cc3cda4a2cc73047145bcdcb1f4d9cdcc29073037bfb22fa2e)
- [MacOS arm64](https://get.helm.sh/helm-v3.21.0-darwin-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.0-darwin-arm64.tar.gz.sha256sum) / 68bfbdc022c543a2a022597b20298216877e98abe6e4a345d3ecf114d79cae5f)
- [Linux amd64](https://get.helm.sh/helm-v3.21.0-linux-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.0-linux-amd64.tar.gz.sha256sum) / 0093eb572e3d2380f094df162ddb525e219249de88957afe24cfbb19632acd36)
- [Linux arm](https://get.helm.sh/helm-v3.21.0-linux-arm.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.0-linux-arm.tar.gz.sha256sum) / d310ac387324538a37192e8e13628eb1def2596bbac6b6481ae20d8d5e3532bd)
- [Linux arm64](https://get.helm.sh/helm-v3.21.0-linux-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.0-linux-arm64.tar.gz.sha256sum) / 8de5a0c9a47431e59fd560e91e0779c8cf9316c383da7efb84128a4c339ecb2d)
- [Linux i386](https://get.helm.sh/helm-v3.21.0-linux-386.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.0-linux-386.tar.gz.sha256sum) / fc85f14c9ce7e6a48a2b19a97edbc5529ed7aa2bc10f3d2c241e1c2ef12ccd22)
- [Linux ppc64le](https://get.helm.sh/helm-v3.21.0-linux-ppc64le.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.0-linux-ppc64le.tar.gz.sha256sum) / e2dced0f903acda417f879012c7e09ca461000e26a04e8f7a1cfe0dcf495f62c)
- [Linux s390x](https://get.helm.sh/helm-v3.21.0-linux-s390x.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.0-linux-s390x.tar.gz.sha256sum) / a176d7460a615b8df5b1a58ecf09fcc731c7733ca4cf10116cf198575b0371b5)
- [Linux riscv64](https://get.helm.sh/helm-v3.21.0-linux-riscv64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.0-linux-riscv64.tar.gz.sha256sum) / 4935c95c55bc5c3357143698a87185e17a39de9b6148dfd6cce0fc11859dbfeb)
- [Windows amd64](https://get.helm.sh/helm-v3.21.0-windows-amd64.zip) ([checksum](https://get.helm.sh/helm-v3.21.0-windows-amd64.zip.sha256sum) / 3ea6b8383e6c0b7ce45d06a5746313b8e9225edd88d42f4f64582ff3792d7b55)
- [Windows arm64](https://get.helm.sh/helm-v3.21.0-windows-arm64.zip) ([checksum](https://get.helm.sh/helm-v3.21.0-windows-arm64.zip.sha256sum) / 90d8c87e07267e6c71e678c9e33dd11cc121789c823ccc380de9d1dd521c8cba)

This release was signed by @gjenkins8 with key `BF88 8333 D96A 1C18 E268 2AAE D79D 67C9 EC01 6739`, which can be found at https://keys.openpgp.org/vks/v1/by-fingerprint/BF888333D96A1C18E2682AAED79D67C9EC016739. Please use the attached signatures for verifying this release using gpg.

The [Quickstart Guide](https://helm.sh/docs/intro/quickstart/) will get you going from there. For **upgrade instructions** or detailed installation notes, check the [install guide](https://helm.sh/docs/intro/install/). You can also use a [script to install](https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3) on any system with `bash`.

## What's Next

- 3.21.1 will contain only bug fixes.
- 3.22.0 is the next feature release for Kubernetes v1.37

## Changelog

- [v3] Bump to version v3.21 e0878d41b711792be60777fd65ad23a101e6b85f (George Jenkins)
- fix: upgrade opentelemetry packages to patch CVEs 13d5fc4ae0e7222e1af8796ff4fa467b52208471 (Terry Howe)
- fix: Chart dot-name path bug 2552884e3bc1b763c3901c5ea7240b59ef6791f1 (George Jenkins)
- fix: pin codeql-action/upload-sarif to commit SHA in scorecards workflow ec05dd5f0481c2de3a41a554adf3c52a6a2a9bb6 (Terry Howe)
- add image index test b0dfec5af4d7f642d8dea3b9058856541fe5017c (Pedro Tôrres)
- fix pulling charts from OCI indices e629995c5d65ec2d5095ecd6d094bf85d02b3266 (Pedro Tôrres)
- chore(deps): bump the k8s-io group with 7 updates 9c854fbd937ae0efe0e0a5063e7449d8973a85fd (dependabot[bot])
- chore(deps): bump golang.org/x/crypto from 0.47.0 to 0.48.0 a692247486fb6893f00af65fdfb05da538c7b1d5 (dependabot[bot])
- chore(deps): bump golang.org/x/term from 0.39.0 to 0.40.0 9f2a7f696a3e0be43ff9f55ade1dc89c76c6e903 (dependabot[bot])
- chore(deps): bump github.com/lib/pq from 1.11.1 to 1.11.2 79f039be716a0a48d354ffaaf97179bb4fae9d64 (dependabot[bot])
- chore(deps): bump golang.org/x/text from 0.33.0 to 0.34.0 45210d597d7941ebe900bd8f317c0a62aa777395 (dependabot[bot])
- Remove refactorring changes from coalesce_test.go e2df39fc0b3e713df923a7ae64412e327f6e1022 (Evans Mungai)
- Fix import 97affe067aa1e39fe6552c0d46de749f02063183 (Evans Mungai)
- Update pkg/chart/common/util/coalesce_test.go c264166ec6bbf61c400a3457fae87fa058487e76 (Evans Mungai)
- Fix lint warning d409df87ff6c2cbe17cc465b93ce646003b71d28 (Evans Mungai)
- Preserve nil values in chart already 6fdd1017cebc284f7d545c04dd2c8f2d350d69d2 (Evans Mungai)
- fix(values): preserve nil values when chart default is empty map b13743c8d4ef5488f40148af1d6ccd35ee9b97e3 (Evans Mungai)
- chore(deps): bump github.com/lib/pq from 1.10.9 to 1.11.1 703999db8484985f4cafe000a610f10d688b2456 (dependabot[bot])
- chore(deps): bump golang.org/x/crypto from 0.46.0 to 0.47.0 a04be9699efe5c26827397d7004b3490ad4ef029 (dependabot[bot])

## New Contributors
* @KrzysztofDziankowski made their first contribution in https://github.com/helm/helm/pull/31829

**Full Changelog**: https://github.com/helm/helm/compare/v3.20.0...v3.21.0