来源: https://github.com/helm/helm/releases/tag/v3.20.0

# helm/helm v3.20.0 Release Notes

Published at: 2026-01-21T23:27:45Z

Helm v3.20.0 is a feature release. Users are encouraged to upgrade for the best experience.

The community keeps growing, and we'd love to see you there!

- Join the discussion in [Kubernetes Slack](https://kubernetes.slack.com):
  -  for questions and just to hang out
  -  for discussing PRs, code, and bugs
- Hang out at the Public Developer Call: Thursday, 9:30 Pacific via [Zoom](https://zoom.us/j/696660622)
- Test, debug, and contribute charts: [ArtifactHub/packages](https://artifacthub.io/packages/search?kind=0)

## Notable Changes

- SDK: bump k8s API versions to v0.35.0
- v3 backport: Fixed a bug where helm uninstall with --keep-history did not suspend previous deployed releases https://github.com/helm/helm/pull/12564
- v3 backport: Bump Go version to v1.25

## Installation and Upgrading

Download Helm v3.20.0. The common platform binaries are here:

- [MacOS amd64](https://get.helm.sh/helm-v3.20.0-darwin-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.20.0-darwin-amd64.tar.gz.sha256sum) / 724aef60f737ca73cfcc77924219dbfb229dde8492b2722cb372da617fd77367)
- [MacOS arm64](https://get.helm.sh/helm-v3.20.0-darwin-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.20.0-darwin-arm64.tar.gz.sha256sum) / 1cb8022ef9c88026adf236cbdf02a80bf7678632d1c39d3d8045e815959ab20e)
- [Linux amd64](https://get.helm.sh/helm-v3.20.0-linux-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.20.0-linux-amd64.tar.gz.sha256sum) / dbb4c8fc8e19d159d1a63dda8db655f9ffa4aac1b9a6b188b34a40957119b286)
- [Linux arm](https://get.helm.sh/helm-v3.20.0-linux-arm.tar.gz) ([checksum](https://get.helm.sh/helm-v3.20.0-linux-arm.tar.gz.sha256sum) / e66b9bcb51130f372b4750b2da83679e59d04633bfa825a1936c0b1039035bf0)
- [Linux arm64](https://get.helm.sh/helm-v3.20.0-linux-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.20.0-linux-arm64.tar.gz.sha256sum) / bfb14953295d5324d47ab55f3dfba6da28d46c848978c8fbf412d4271bdc29f1)
- [Linux i386](https://get.helm.sh/helm-v3.20.0-linux-386.tar.gz) ([checksum](https://get.helm.sh/helm-v3.20.0-linux-386.tar.gz.sha256sum) / e8e39f6df8b1c6d9d0f98f658d619c22c5a249a72975510d367def5e19adc7eb)
- [Linux ppc64le](https://get.helm.sh/helm-v3.20.0-linux-ppc64le.tar.gz) ([checksum](https://get.helm.sh/helm-v3.20.0-linux-ppc64le.tar.gz.sha256sum) / 3a44cf2df45274f907743997b9cef069e94589238324cf5116f9a3c092c743bf)
- [Linux s390x](https://get.helm.sh/helm-v3.20.0-linux-s390x.tar.gz) ([checksum](https://get.helm.sh/helm-v3.20.0-linux-s390x.tar.gz.sha256sum) / f38b6bb56db05fb7da82668d0cc82470a07fe17a5f881378d536cee68384c974)
- [Linux riscv64](https://get.helm.sh/helm-v3.20.0-linux-riscv64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.20.0-linux-riscv64.tar.gz.sha256sum) / b4336a2bf9b9a914897cb36b4343d4fd583cb4703dc2478d696a667391f30f2c)
- [Windows amd64](https://get.helm.sh/helm-v3.20.0-windows-amd64.zip) ([checksum](https://get.helm.sh/helm-v3.20.0-windows-amd64.zip.sha256sum) / f9c7f686788d7b78775d3a3592fd98596aa825010cb9d157c9fbe3baabee1084)
- [Windows arm64](https://get.helm.sh/helm-v3.20.0-windows-arm64.zip) ([checksum](https://get.helm.sh/helm-v3.20.0-windows-arm64.zip.sha256sum) / 4095cb1c46e29e9a7487fdbbee384d14656d3fa43dd8ef789061db6e29f0457b)

This release was signed with `208D D36E D5BB 3745 A167 43A4 C7C6 FBB5 B91C 1155` and can be found at @scottrigby [keybase account](https://keybase.io/r6by). Please use the attached signatures for verifying this release using `gpg`.

The [Quickstart Guide](https://helm.sh/docs/intro/quickstart/) will get you going from there. For **upgrade instructions** or detailed installation notes, check the [install guide](https://helm.sh/docs/intro/install/). You can also use a [script to install](https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3) on any system with `bash`.

## What's Next

- 4.1.1 and 3.20.1 are the next patch releases, scheduled for March 11, 2026
- 4.2.0 and 3.21.0 are the next minor releases, scheduled for May 13, 2026

## Changelog

- bump version to v3.20 f6e17f673581b076782a0480d9c76938eca13e10 (Scott Rigby)
- chore(deps): bump golang.org/x/text from 0.32.0 to 0.33.0 4f5a655876a97f46458c488d96c3c486e8f8463d (dependabot[bot])
- chore(deps): bump golang.org/x/term from 0.38.0 to 0.39.0 65c504a4ae9f9fd7b6ed6e4fbc29a1380a2da211 (dependabot[bot])
- chore(deps): bump github.com/foxcpp/go-mockdns from 1.1.0 to 1.2.0 f3b8af418e4379ef76d95c889435b6bda4e7edfa (dependabot[bot])
- chore(deps): bump the k8s-io group with 7 updates 89c2c615929dbefd2a9c91a0057136d1f7924e6d (dependabot[bot])
- [dev-v3] Replace deprecated `NewSimpleClientset` 526076ee3bb864707badb22b7f0f446181f628f6 (George Jenkins)
- [dev-v3] Bump Go v1.25, `golangci-lint` v2 0ae8e4f2cbe418b5262b7f6d1acfe69d9de3e4e4 (George Jenkins)
- chore(deps): bump github.com/BurntSushi/toml from 1.5.0 to 1.6.0 e0d2595407bb97cfb4c6049e6de4cc518530a168 (dependabot[bot])
- chore(deps): bump github.com/containerd/containerd from 1.7.29 to 1.7.30 858acb17c3b1c505b806d9fe936b0336dd7f8bfd (dependabot[bot])
- fix(rollback): `errors.Is` instead of string comp 0cd9a60723d2fde199a625582ff068f5a253886c (Hidde Beydals)
- fix(uninstall): supersede deployed releases 8bb0b372268b45b260593061450f1c9dca9ddbb8 (Hidde Beydals)
- Use latest patch release of Go in releases 930ba6fc1333855a6e5ad2124ff2fb696805a169 (Matt Farina)
- chore(deps): bump the k8s-io group with 7 updates 582211cc451ed386c90f6cd22ba9649d5f97fe12 (dependabot[bot])
- chore(deps): bump golang.org/x/crypto from 0.45.0 to 0.46.0 585c25c5c5f86907ece4de4a3be57f80539e4459 (dependabot[bot])
- chore(deps): bump golang.org/x/text from 0.31.0 to 0.32.0 6f17d460bd31896add1655644339755b8295fd82 (dependabot[bot])
- chore(deps): bump golang.org/x/term from 0.37.0 to 0.38.0 46ff4277006b4b40844f9239ca08a55dd9f1aed9 (dependabot[bot])
- chore(deps): bump github.com/spf13/cobra from 1.10.1 to 1.10.2 28b813a7f4fe0c9f001aa3dd9c0250761ff062f8 (dependabot[bot])
- chore(deps): bump github.com/rubenv/sql-migrate from 1.8.0 to 1.8.1 5dde5d67b4a2dc7e6d63db3b42ce7a69c5ef6412 (dependabot[bot])
- chore(deps): bump golang.org/x/crypto from 0.44.0 to 0.45.0 362900b0644c18de506630573310dee9b29c1337 (dependabot[bot])
- chore(deps): bump github.com/cyphar/filepath-securejoin ec61de556e238a31f560b093b9ed8ccb5f3d0c78 (dependabot[bot])
- chore(deps): bump the k8s-io group with 7 updates a490607e2bcf64f61b99b01919aa3b1265afd4ad (dependabot[bot])
- chore(deps): bump golang.org/x/text from 0.30.0 to 0.31.0 8509bcc2af0cf49734ad41153604aaedcd3de0ad (dependabot[bot])
- chore(deps): bump golang.org/x/crypto from 0.43.0 to 0.44.0 d495a9402f620ed1d627021c44fb0259bf915b71 (dependabot[bot])
- Remove dev-v3 `helm-latest-version` publish 01dc6cc2cd63f121d0226544b3e5eb4b4dc6159e (George Jenkins)
- chore(deps): bump golang.org/x/term from 0.36.0 to 0.37.0 6647f847c235828f2a87bfa3e63ca94aad8f0c54 (dependabot[bot])
- chore(deps): bump github.com/containerd/containerd from 1.7.28 to 1.7.29 b548118d29bd2eff97815a2f71ebd7db25e33f85 (dependabot[bot])
- Revert "pkg/registry: Login option for passing TLS config in memory" 6a67b553b478a8f2ad0b5bebbf79e1debdc839a4 (Scott Rigby)
- chore(deps): bump github.com/cyphar/filepath-securejoin 6d4f8c01be77831b1fcab035bab24f828c093958 (dependabot[bot])
- jsonschema: warn and ignore unresolved URN $ref to match v3.18.4 3f0da15437c0f0c9b38816baf609b87d94a46f40 (Benoit Tigeot)
- Fix `helm pull` untar dir check with repo urls e5e101cced707693ff7fd26880fd8c537c4297f0 (Luna Stadler)
- chore(deps): bump golang.org/x/crypto from 0.42.0 to 0.43.0 6aae923d7f6cae85be0988605b2148bb006679b8 (dependabot[bot])
- chore(deps): bump github.com/gofrs/flock from 0.12.1 to 0.13.0 1900c6a316ca12bcdcf8505d1e3ce17d4e681855 (dependabot[bot])
- chore(deps): bump golang.org/x/text from 0.29.0 to 0.30.0 43e9297d0f9e2d43dd54a45820b900586815186a (dependabot[bot])
- chore(deps): bump github.com/cyphar/filepath-securejoin d347e2bab9b60b8c58ce59b16cbcb4a6639a182f (dependabot[bot])
- [backport] fix: get-helm-3 script use helm3-latest-version bd337b46bcce12bd903dc41c73340940fdcf8dab (George Jenkins)
- pkg/registry: Login option for passing TLS config in memory b80959f24fab6e081eb3fd73bae35729f239d07c (Matheus Pimenta)
- chore(deps): bump the k8s-io group with 7 updates 1ac9d34346c65fc3d44e6bfea73d2271528923eb (dependabot[bot])
- Fix deprecation warning 9a366b447452e78b092b1a5267d7efc9bbe74f11 (Benoit Tigeot)
- chore(deps): bump golang.org/x/crypto from 0.41.0 to 0.42.0 0c5a17e49539e3f973081ba5961030702bf01508 (dependabot[bot])
- chore(deps): bump golang.org/x/term from 0.34.0 to 0.35.0 b9990214c9b20a553bf12ee1c2e0a35b93964099 (dependabot[bot])
- Avoid "panic: interface conversion: interface {} is nil" 2fe49f99ce39e9a33c77b664a8b9cef6117c1c3b (Benoit Tigeot)
- bump version to v3.19.0 c3610abd2dfd1bf21914db480e76f2358039defb (Scott Rigby)
- chore(deps): bump github.com/spf13/pflag from 1.0.7 to 1.0.10 73b449f80b4eb98fd099d40272132bced948259b (dependabot[bot])
- fix: set repo authorizer in registry.Client.Resolve() ffbc53723a47fe0b47551c35963ef8b7f7523832 (Eric Stroczynski)
- fix null merge f0b699eabba56ef3057561779dc30fafc5c07064 (Ben Foster)
- Add timeout flag to repo add and update flags 79a9cc5653eb5a6f58e5e10fcc1e7f00f43653c0 (Reinhard Nägele)