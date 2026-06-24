来源: https://github.com/helm/helm/releases/tag/v4.2.0

# helm/helm v4.2.0 Release Notes

Published at: 2026-05-14T01:13:00Z

Helm v4.2.0 is a feature release. Users are encouraged to upgrade for the best experience.

The community keeps growing, and we'd love to see you there!

- Join the discussion in [Kubernetes Slack](https://kubernetes.slack.com):
  -  for questions and just to hang out
  -  for discussing PRs, code, and bugs
- Hang out at the Public Developer Call: Thursday, 9:30 Pacific via [Zoom](https://zoom.us/j/696660622)
- Test, debug, and contribute charts: [ArtifactHub/packages](https://artifacthub.io/packages/search?kind=0)

## Notable Changes

- Switch to `goreleaser` for release builds
- Kubernetes client libraries to v1.36
- Add `mustToToml` template function
- deprecate unused `--hide-notes` and `--render-subchart-notes` flags 
- `--dry-run=server` now respects `generateName:`

## Installation and Upgrading

Download Helm v4.2.0. The common platform binaries are here:

- [MacOS amd64](https://get.helm.sh/helm-v4.2.0-darwin-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.0-darwin-amd64.tar.gz.sha256sum) / 1376ea697140e4db316736e760d5a47d12afc1524dce704476ef06fd7fdeddc6)
- [MacOS arm64](https://get.helm.sh/helm-v4.2.0-darwin-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.0-darwin-arm64.tar.gz.sha256sum) / f13f959015447b6bc309f9fd506509926543988a39035c088b52522ec95e2acb)
- [Linux amd64](https://get.helm.sh/helm-v4.2.0-linux-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.0-linux-amd64.tar.gz.sha256sum) / 97dbeb971be4ac4b27e3839976d9564c0fb35c6f3b1da89dd1e292d236af4096)
- [Linux arm](https://get.helm.sh/helm-v4.2.0-linux-arm.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.0-linux-arm.tar.gz.sha256sum) / ae624870b2d50e655b6462daff117eb9d28c4bad45234ef24c1275113540fcb0)
- [Linux arm64](https://get.helm.sh/helm-v4.2.0-linux-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.0-linux-arm64.tar.gz.sha256sum) / 1f8de130dfbd04de64978e7b852a7a547be1404956a366608276d2520b678670)
- [Linux i386](https://get.helm.sh/helm-v4.2.0-linux-386.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.0-linux-386.tar.gz.sha256sum) / 9cf44acc59081aca98b4d9f09138348836b26761258e02ad2b99616f66eead5c)
- [Linux loong64](https://get.helm.sh/helm-v4.2.0-linux-loong64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.0-linux-loong64.tar.gz.sha256sum) / 5b04f0167b8b415a057c1f4f809ede86d5ead840e0aa560db097da5be19f86d0)
- [Linux ppc64le](https://get.helm.sh/helm-v4.2.0-linux-ppc64le.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.0-linux-ppc64le.tar.gz.sha256sum) / 48f0637b93247717b725e8d4a8d2cf8df0e2fdea91bdd0e36e2426c2d5c76e4e)
- [Linux s390x](https://get.helm.sh/helm-v4.2.0-linux-s390x.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.0-linux-s390x.tar.gz.sha256sum) / 328e9ed27904f9910026240c4311bb1b0bf91c6fde1634f212097694507a702f)
- [Linux riscv64](https://get.helm.sh/helm-v4.2.0-linux-riscv64.tar.gz) ([checksum](https://get.helm.sh/helm-v4.2.0-linux-riscv64.tar.gz.sha256sum) / 5d292d57ab1f40e47e373a87187bafa66e8daac4ddc4a1333421c174e8184755)
- [Windows amd64](https://get.helm.sh/helm-v4.2.0-windows-amd64.zip) ([checksum](https://get.helm.sh/helm-v4.2.0-windows-amd64.zip.sha256sum) / 614f68ddc567ac9bfb0c205f869b1f83ba4e0a9aacd26cbae47743ae6082a579)
- [Windows arm64](https://get.helm.sh/helm-v4.2.0-windows-arm64.zip) ([checksum](https://get.helm.sh/helm-v4.2.0-windows-arm64.zip.sha256sum) / e740e4c19b6e2a0b428f7a52c38b7f0b092f0c43ac49870537d7e7fac9cedc07)

This release was signed by @gjenkins8 with key BF88 8333 D96A 1C18 E268 2AAE D79D 67C9 EC01 6739, which can be found at https://keys.openpgp.org/vks/v1/by-fingerprint/BF888333D96A1C18E2682AAED79D67C9EC016739. Please use the attached signatures for verifying this release using gpg.

The [Quickstart Guide](https://helm.sh/docs/intro/quickstart/) will get you going from there. For **upgrade instructions** or detailed installation notes, check the [install guide](https://helm.sh/docs/intro/install/). You can also use a [script to install](https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-4) on any system with `bash`.

## What's Next

- 4.2.1 will contain only bug fixes
- 4.3.0 is the next feature release

## Changelog

- Bump to version v4.2 06468084e85c244c712834933d25ea232a4c2093 (George Jenkins)
- build: Clean up Goreleaser change (#32098) e23bf3af53c52185123278e83b7023c102707778 (Scott Rigby)
- fix: add -extldflags -static to dist target to match build-cross f60ab7c31c81a73b8e0aade5aff41bfc01c08820 (Terry Howe)
- build: use goreleaser build with manual archive creation 64aa46f2f1cf239cf6535c5e847e14dcb933a847 (Terry Howe)
- chore: remove build-cross dependency from test-acceptance d199a1a42c04bccb287f2c7d9c3f73b669412e5a (Terry Howe)
- ci: add fetch-depth 0 to canary checkout for goreleaser 82899404a68f3826389bb38cf67bf75085db6b2c (Terry Howe)
- fix: address goreleaser build issues flagged in review c075022ce16489f5f7afd45a37b679cf58fa36ea (Terry Howe)
- fix: pass VERSION as GORELEASER_CURRENT_TAG to preserve v-prefix in archive names 04885dd905b6f8a823733dbc9b9f5cb2843a975f (Terry Howe)
- fix: disable goreleaser checksums.txt and restrict zip to windows only 93103ce66cb6374d9d7b552802f53b21ea2c2dd1 (Terry Howe)
- fix: use index for optional env var in version_template e49a1dc16eee526928d8928b8d96c01ee513ebd9 (Terry Howe)
- fix: canary build file names eaa09100b9b18175d878b1e114cbe9df2a3f70c2 (Terry Howe)
- Fix archive name 5a75279c1a017a60b97bd44986288af7399c6ff8 (Terry Howe)
- fix goreleaser archive 37284a9211972f7f41a2acc3c3313517596dd4b0 (Terry Howe)
- add support for loong64 45336ccd5b2621357e3f785c1fe93627c5990a6e (Terry Howe)
- fix artifact directory a9659b07e3eec20ab5b964fddae05f51f478f704 (Terry Howe)
- update configuration to v2 e368f170af8a200e672adac5f765b8101db0c8fa (Terry Howe)
- remove GOTOOLCHAIN e7bea8513c30475664919f031774e18fecdf1f66 (Terry Howe)
- chore: replace mitchellh/gox with goreleaser 075c096afec70155bc43ac3587a119df1ae5fcc6 (Terry Howe)
- chore(deps): bump github.com/distribution/distribution/v3 12f2c41c0d7a74739c58a5995cbbb3125d9247e5 (dependabot[bot])
- chore(deps): bump github/codeql-action from 4.35.2 to 4.35.3 58e8ffdc3302260b1b55718c9b72c6f169a76ee0 (dependabot[bot])
- chore(deps): bump github.com/Masterminds/semver/v3 from 3.4.0 to 3.5.0 e61bbfbfff41958b0ba1984e4d6799fe131f325e (dependabot[bot])
- Upgrade kstatus to 1.2 and controller-runtime to 0.24 081c6dff537087f52ec6e470d8986439e24e8e33 (Matheus Pimenta)
- fix: adds topLevel permissions to improve openSSF scores 277d9702555532d13426119d31c70fffb389d589 (Gagan H R)
- Upgrade Go to 1.26, Kubernetes to 1.36, kstatus to 1.1 a4a9cc7a314d98456a2f23798a78e9ad05d96d0c (Matheus Pimenta)
- fix(templating): hooks conflicting with templates in post-renderers (#32049) 8f56f24d638612a46f3e23265d06338c1f93bccb (Matheus Pimenta)
- docs: fix grammar and spacing in CONTRIBUTING.md db40adb1d13573280b65bc2002df7d75c009235a (Mohit)
- chore(deps): bump the k8s-io group with 7 updates 775e794319639f5c1e6b40448ce15ad3cc10d4e1 (dependabot[bot])
- chore(deps): bump github/codeql-action from 4.35.1 to 4.35.2 934ace35dfaef9eeb9997bf1ee385db0986daecc (dependabot[bot])
- fix(templating): SplitManifests must preserve line endings for downstream YAML parsers (#31952) 265c5eb530a36ec651e79ecf4d37ba2f098b7e59 (Matheus Pimenta)
- chore(deps): bump github.com/mattn/go-shellwords from 1.0.12 to 1.0.13 48e2b7ddd4e960b768fe5daee34a33cb89852a6e (dependabot[bot])
- Update pkg/chart/common/util/coalesce.go a8e249714f5311b9aff44c4bd2bfc433ab1ab952 (Evans Mungai)
- test(values): Add test for nil cleanup in partially overridden subchart maps 52fc971da37cf34aa26e7d7c460f2430dfb01b26 (Johannes Lohmer)
- fix(values): do not copy chart-default nils into coalesced values 00638773d1366dc962c785de3d297cf0279b9a0d (Johannes Lohmer)
- test(values): add test for subchart nil producing %!s(<nil>) 6eb4ebf0e1afb0c63d748bf116145a5b9e0842b7 (Johannes Lohmer)
- test(values): add tests for subchart nil value regressions 5cb4e7d992d85d372f5d86c238330102d936bfe5 (Johannes Lohmer)
- chore(deps): bump actions/upload-artifact from 7.0.0 to 7.0.1 b5c7c80de317643e383ca2926ebc0ad884021bba (dependabot[bot])
- fix(templating): fix wrong YAML separator parsing for post-renderers (#31941) a27f1add79c6c02459413dbb60f8438d8051cf06 (Matheus Pimenta)
- fix: add debug logging to HTTP getter for helm pull c26be60d81e5cb6a147d6088477cf86fd5aaf1f0 (Cairon)
- chore(deps): bump golang.org/x/crypto from 0.49.0 to 0.50.0 953f5f031bb7fa8f3eccdea6520e09fd44fe3923 (dependabot[bot])
- chore(deps): bump golang.org/x/term from 0.41.0 to 0.42.0 10fc5f335b5fbb09f5d04cb0450839790ae15634 (dependabot[bot])
- chore(deps): bump golang.org/x/text from 0.35.0 to 0.36.0 d89e7c60762910204044c4215c7bb2f43ac3ef8f (dependabot[bot])
- chore: Update release notes script for Helm v4 8a954619255a82890a08b7d1fa9e86a437c4cebb (George Jenkins)
- refactor(cli): share RetryingRoundTripper via pkg/kubeenv 213c869a988f2c7390c65673e3d677970d6220fd (Sumit Solanki)
- chore(deps): bump github.com/lib/pq from 1.12.2 to 1.12.3 bd5027a9cf07993d7bfe4b60702b1a489fe8783e (dependabot[bot])
- fix: unnecessary-format lint issues from merge 087736b66e97393ccaa0bdf1e5df13dcc9d88340 (George Jenkins)
- fix: Plugin missing provenance bypass 586eb57338d848e65686a3a9616e2776e87cfd1e (George Jenkins)
- chore(deps): bump github.com/fluxcd/cli-utils c8c5dfad630cd7b238236c619c466488a547725c (dependabot[bot])
- chore(deps): bump go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetrichttp 998466cfcfee189ce7e3df5be8ffe79ed5f1f097 (dependabot[bot])
- chore(deps): bump go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp b0cec589f50a7e16d942ad3385598a6dda2b0a20 (dependabot[bot])
- chore(deps): bump go.opentelemetry.io/otel/exporters/otlp/otlplog/otlploghttp 6ebfb29dbf006ce78e9af8878008bda3578dcd3e (dependabot[bot])
- test(kube): fix flaky WaitForDelete test by avoiding informer sync race a7f84439aacd3864b40055b60a3c3e54292d1646 (Terry Howe)
- test(kube): fix flaky WaitForDelete timing in status wait tests 4c0d21f53f2ca78b525e31dbbf9cc9cfb818a2e3 (Terry Howe)
- chore(deps): bump github.com/distribution/distribution/v3 08dea9c140084b5d9fecb59a45a05f417415b591 (dependabot[bot])
- Minor nit: fix import instructions to comply with canonical import paths de58531ca7ff557342acaa2c906082e58521ef47 (Anmol Virdi)
- chore(deps): bump github.com/distribution/distribution/v3 9b1ad4cf027452b828affb07318db2e931e734a5 (dependabot[bot])
- fix(action): return correct error variable in prepareUpgrade 8ef2d45934ba1b9ca341818f1157112fcf7cdf1d (Rhys McNeill)
- chore(deps): bump github.com/lib/pq from 1.12.1 to 1.12.2 cd7cf76a174e856fd171b391995d9a65f97a79d3 (dependabot[bot])
- chore(deps): bump github/codeql-action from 4.30.7 to 4.35.1 45ee55b83f8ad23798c84560ff65686e2ab298af (dependabot[bot])
- chore(deps): bump github.com/lib/pq from 1.12.0 to 1.12.1 9a0674188412d1dcb2e7f018730aaa71781bd03b (dependabot[bot])
- chore(deps): bump actions/setup-go from 6.2.0 to 6.4.0 d1e31ca507412d770a602e722060e6d7379f4f1a (dependabot[bot])
- fix(kube): clarify server-side apply patch errors f257c95c783f5595e36cb5a7dcc862cc1f6266b5 (abhay1999)
- fix: pin codeql-action/upload-sarif to commit SHA in scorecards workflow 7025480397d8b6b7fd8cdb5e083dc37b62dbd3d8 (Terry Howe)
- refactor(cli): decouple EnvSettings from pkg/kube 64f1d0af5b53f0a9292af2ba1efc42a46a57ed00 (Sumit Solanki)
- docs(registry): fix incorrect and improve clarity of comments in client.go 85bf56ea82fd21452e53cae91b380b0afb3e8b83 (Debasish Mohanty)
- refactor(cli): decouple EnvSettings from pkg/kube to avoid import cycles 154993723aadf45601d124c6750e8f4ae3b9f2fd (Sumit Solanki)
- chore(deps): bump github.com/ProtonMail/go-crypto from 1.3.0 to 1.4.1 c7a75b16cb8b0859bf32bf74ae98300e5b55361b (dependabot[bot])
- chore(deps): bump github.com/lib/pq from 1.11.2 to 1.12.0 3a7573a81ed5be2e00dfb74fa8d95c0cbe1c4f0d (dependabot[bot])
- chore(deps): bump github.com/fatih/color from 1.18.0 to 1.19.0 0229da1803a29671b1becc4561c77f85db609aac (dependabot[bot])
- docs(engine): fix misleading toTOML doc comment c1a5a6e260bd070bce9a8299795400340e10c468 (Ilya Kiselev)
- feat(engine): add mustToToml template function b075f7a35d25ec0a4414b011142744f8f1821b47 (Ilya Kiselev)
- chore: fix unnecessary-format issues from revive 7edfff33ebcb0f5d961afec34393c222de92de12 (Matthieu MOREL)
- chore(deps): bump google.golang.org/grpc from 1.78.0 to 1.79.3 37185d2ea6a091b93d2e71cc55ab16b2c0f3f9e9 (dependabot[bot])
- chore: fix bool-compare issues from testifylint 071558d69ffbb408dcb56403d387a1aa90a7d3a8 (Matthieu MOREL)
- chore: enable perfsprint linter 62494896e9a105b63df2c76c638c53304a37121e (Matthieu MOREL)
- ignore error plugin loads (cli, getter) 47a084091eeb1c5de221e061866b319f5b5f99f5 (George Jenkins)
- chore(deps): bump golang.org/x/crypto from 0.48.0 to 0.49.0 3d06fd1feb37f11d050e78f7c17df3c713fcd344 (dependabot[bot])
- fix(kube): remove legacy import comments from test files e64d628a139fab8c876a1d2f4c2928096b286bed (Terry Howe)
- pkg/kube: remove legacy import comments d7cdc9e8fb20c42d19a2371f37ee719be6be6b94 (abhay1999)
- fix: Plugin version path traversal 36dcc27ca3c0cd6d0d08713b03dca82f43d7c5f9 (George Jenkins)
- chore(deps): bump golang.org/x/term from 0.40.0 to 0.41.0 c4be7af2a14c1a01f21231ebb5dd41806fcb0797 (dependabot[bot])
- chore: fix some minor issues in the comments 259f181808f267493d56eccd7f6191f78225a6fa (tsinglua)
- fix: Chart dot-name path bug 60184996e5332d26e0b6390cefbf86776829dc46 (George Jenkins)
- chore(deps): bump sigs.k8s.io/controller-runtime from 0.23.1 to 0.23.3 74e7cf877a4a674b65f7b7894d2dfde2832e39b1 (dependabot[bot])
- fix: insert newline after doc separators glued to content by template trimming af94abf976ce69dd635aaf086a0bb4b17bd95bc1 (Matheus Pimenta)
- chore(deps): bump github.com/cloudflare/circl from 1.6.1 to 1.6.3 16073b1e3c7b90cda41ed70c8192eb6d16816723 (dependabot[bot])
- chore: enable modernize linter (#31860) e31a078e6e0667dde72ff3bf4b5dfb625127076f (Matthieu MOREL)
- Restored --atomic flag on install command 16573f87f5aebf8c2f9c40e67cc3cbe5eb93e733 (Travis Leeden)
- fix: bump go.opentelemetry.io/otel/sdk to v1.40.0 for GO-2026-4394 b550ce90946b3b47cecd290fc5d0eee637ddb531 (Terry Howe)
- fix: bump fluxcd/cli-utils to v0.37.2-flux.1 1dfa77ed8ba6f9e26542064248bc9eab40c1a662 (Terry Howe)
- Update pkg/cmd/status.go 5d40f17011a477620841edb740d381a012716ae8 (Matthieu MOREL)
- chore(internal): enable perfsprint linter (#31871) d4f6193a7ec7ae9ea479da3372eeaf22b445ebcc (Matthieu MOREL)
- chore(deps): bump actions/upload-artifact from 6.0.0 to 7.0.0 82d9bedea7d3e342011d82e2e11ff83b396dffbe (dependabot[bot])
- chore(pkg): fix perfsprint linter issues part 6 dc0e3f10c3ba8f25aa71c523d2e273690d338a17 (Matthieu MOREL)
- chore(pkg): enable perfsprint linter e3c74fd9fae52c85899ee0ca9a0c1422d59e2bc2 (Matthieu MOREL)
- chore(pkg): enable perfsprint linter 1d2d63cc4330fcac786e70926f805b69c0b49ca2 (Matthieu MOREL)
- chore(pkg): enable perfsprint linter 63f03c0f5c41b53de3d432b446da9430da99f5bd (Matthieu MOREL)
- chore(pkg): enable perfsprint linter c25c988cfb7bbe3b139dec39cad1db4be33b13c6 (Matthieu MOREL)
- chore(pkg): enable perfsprint linter 0fecfd04c2f9a748046a8421595f3b9da6c895c7 (Matthieu MOREL)
- chore(internal): enable perfsprint linter 6524162a0e39bed187a16b692243703d78735471 (Matthieu MOREL)
- chore(pkg): enable perfsprint linter 6c2cb2f54784b5ef6158dca0660f428a3baf75f5 (Matthieu MOREL)
- chore(internal): enable perfsprint linter 9409226e15b26d05621f0b263f4ad6f597dfb7aa (Matthieu MOREL)
- Replace unneeded use of t.Fatalf with t.Fatal 36cb3a2fe92a4564d2d7d79141f209af19b45d40 (Mads Jensen)
- fix: enable nolinlint linter 5b6c6bbfc7ca9850c69d3823ca1e21b445e75c0d (Matthieu MOREL)
- fixup `strings.Cut` variables b6673174220a2633fe97b5cd70a8386b79103464 (George Jenkins)
- chore: Improve `AGENTS.md` 956c7245c346fc304c24ace930dada5f2c99f2b1 (George Jenkins)
- chore:  fixes 92b64e87ad6245d64d5b49bbbbf8dead83faac22 (George Jenkins)
- fix: correct import comment in statuswait.go from v3 to v4 c59c140ce07ce973f16fe50c0c5e991e1d6308a6 (rohansood10)
- fix: handle OCI digest algorithm prefix in chart downloader (#31601) ee018608f6fbf381fac1bae9759164a65c6a0b1f (Evans Mungai)
- chore(deps): bump actions/stale from 10.1.1 to 10.2.0 304d25ffd34fafccbcb81713cb3cfff1be595ae5 (dependabot[bot])
- chore(deps): bump the k8s-io group with 7 updates 0b134362f442fec44ace35e9cfae6760a6b4e005 (dependabot[bot])
- feat(release): add internal/release/v2 package for chart v3 support (#31709) 4a91f3ad5cc0c1521f6d4dcb5681e2da4baaa157 (Evans Mungai)
- chore(deps): bump golang.org/x/crypto from 0.47.0 to 0.48.0 782385397ce1871f4c8a4d2e3c857937bd8988c9 (dependabot[bot])
- chore(deps): bump golang.org/x/term from 0.39.0 to 0.40.0 aec7aced38d053a2df5d0973abdf21848778a722 (dependabot[bot])
- chore(deps): bump github.com/lib/pq from 1.11.1 to 1.11.2 a23b6388ac74984460fd4055de5120d2fc03d841 (dependabot[bot])
- chore(deps): bump golang.org/x/text from 0.33.0 to 0.34.0 5cddc95bed0572b8d63a910843f0a70477a4ce33 (dependabot[bot])
- chore(deps): bump sigs.k8s.io/kustomize/kyaml from 0.21.0 to 0.21.1 2e266c3ec9d70a6e656f8041bb31475e25e9eb22 (dependabot[bot])
- fix(pkg): errorlint linter 259f76a849391e6ff60a9a2e95ce7310d958c602 (Matthieu MOREL)
- fix(internal): errorlint linter 025418291a7911441e7962895ba4bc24b72b55b3 (Matthieu MOREL)
- fix(pkg): errorlint linter 6d1490ed1ea5968235087658d03bb440e4014a36 (Matthieu MOREL)
- fix(pkg): errorlint linter 4d0ae7f33a09093f8f52d02b952e3822c87b8c5f (Matthieu MOREL)
- fix(internal): errorlint linter abecafa0f507a69888877b9ddb714095714b64c8 (Matthieu MOREL)
- fix(pkg): errorlint linter 4330bdea0409f428e75145f15532bfa0e2bc945c (Matthieu MOREL)
- fix(pkg): errorlint linter c8989d984ff69e8ad21b27d6ac6193dd3150b1a7 (Matthieu MOREL)
- fix(cmd): errorlint linter edbd705bd034246700cc0998016caa303cff42dc (Matthieu MOREL)
- chore: new KEYS entry for George Jenkins 5638c35399464b6432ba81b92a341218991efa5c (George Jenkins)
- fix(downloader): safely handle concurrent file writes on Windows 76eb37c01aaece271343039f44d7803017dd5c81 (Orgad Shaneh)
- fix(install): check nil for restClientGetter and fix tests 9817a68618245370e98e09d7f06c7cc1cefe8a62 (Manuel Alonso)
- feat(create): add --chart-api-version flag (when HELM_EXPERIMENTAL_CHART_V3 env var is set) (#31592) 5aac32077f87ed8cd80da1648abbd323320d4a0b (Evans Mungai)
- chore(pkg): fix modernize linter 0d75d8611d3daa6b820d94fc95347a069b062f72 (Matthieu MOREL)
- chore(internal): fix modernize linter 859292e31bd4ceb170050eaa49e727bcd69572e2 (Matthieu MOREL)
- chore(pkg): fix modernize linter 5cc2e55714d20e6d1bd2663878a00571c084d6c2 (Matthieu MOREL)
- chore(pkg): fix modernize linter ba38159313d4f09280591ba7f860ef0523716220 (Matthieu MOREL)
- chore(internal): fix modernize linter e2d184c79e9049c19bcc466bfe1289ccc6b73717 (Matthieu MOREL)
- chore(pkg): fix modernize linter 111d4e6e0e86af6ba25a355be1a7599f5258ee58 (Matthieu MOREL)
- add image index test e8f386b5aac232c114a036598c2e3015fe296edc (Pedro Tôrres)
- fix pulling charts from OCI indices d983696e354a9e0605cbb3034937dc84af42995c (Pedro Tôrres)
- chore(deps): bump github.com/lib/pq from 1.10.9 to 1.11.1 9c9c3a6b5c0f1cd1e4c4e9f002aa411c58dd656a (dependabot[bot])
- Revert "Consider GroupVersionKind when matching resources" 787b61cedb933d22011e1da1368d0e615ea60ffe (Matheus Pimenta)
- chore(deps): bump sigs.k8s.io/controller-runtime from 0.23.0 to 0.23.1 becf9bf7e33867a3f26affac34e9d51e277767bf (dependabot[bot])
- fix(template): deprecate unused --hide-notes and --render-subchart-notes flags 6d5f56fa6e7c8e4462d80895fcce87b926e4b8ce (Scott Rigby)
- chore(deps): bump github.com/fluxcd/cli-utils b53198e7eee04dab651c15cb7b3b6b77dd92553c (dependabot[bot])
- chore(deps): bump actions/checkout from 6.0.1 to 6.0.2 b59e533b7675122631e0733adbfd6b35dd3515a6 (dependabot[bot])
- whitespace ec0726523e52448eb05c8b5b3faae969e3a79266 (Austin Abro)
- fix(copystructure): handle nil elements in slice copying e3829ebbbb833e159926c6193e474eb9d067ef75 (Philipp Born)
- use logger with waiter 63b40a7a5e0d3f00ef2b4c1de9f50fb7d6df4ead (Austin Abro)
- feat(kstatus): fine-grained context options for waiting b0b35f1231b0b885b1624c5586938cfa69d30995 (Matheus Pimenta)
- Apply suggestions from code review 26e28e846af1ceaf63e16c4f2e52bbfbab411ba1 (George Jenkins)
- Remove legacy sync-repo.sh script 97fd00786f16ebc3b68164bff7133592f19f70b6 (Jeevan Yewale)
- chore(deps): bump sigs.k8s.io/controller-runtime from 0.22.4 to 0.23.0 52620076e21ad6afd0f48df6772001b1466c966b (dependabot[bot])
- docs: document uninstall using cascade foreground flag e70d59de7cd7ea2a501d809b3245ebfa0412e0ec (Evans Mungai)
- bugfix(kstatus): do not wait forever on failed resources bbec77c1f762c4d92678e7f455951757a2e036a3 (Matheus Pimenta)
- Modernize Helm v3 CONTRIBUTING.md 443a2a6924fc384e87ff4251e5ac9c077d607f0f (George Jenkins)
- chore(defaults): server-side apply SDK defaults should always match the CLI defaults c1cc6253232d697ad2ae29957cc49de223306b62 (Matheus Pimenta)
- chore: clarify --wait flag help text 828038a8fe2142599ec557da2d12bb88b76fa0dd (Evans Mungai)
- chore(deps): bump actions/setup-go from 6.1.0 to 6.2.0 e22377124dbca4b032c55f522358def0415a0e8a (dependabot[bot])
- chore(refactor): better testing and functionality for installing crd 6501ef490a45e9b7edfed1432702532c5b11c6d2 (Manuel Alonso)
- bugfix(storage): fix storage not getting logger from driver a8eb5278478c940c615741312ca9f4fec0d84c1a (Matheus Pimenta)
- chore(deps): bump golang.org/x/crypto from 0.46.0 to 0.47.0 da1d68adea91ab13b308c059c39381d48045a73a (dependabot[bot])
- fix(test): fix tests and check nil for restclient 0f949a92c149cf11e5bb19caf4d19d05567be6eb (Manuel Alonso)
- fix(test): merge fix correctly 561410ae1d09c2aa289ff8d8cad5b7fa979cd135 (Manuel Alonso Gonzalez)
- Remove refactorring changes from coalesce_test.go 0298b2ffd0823eead74c75e1b890b0bf47d0db62 (Evans Mungai)
- Fix import b8937ad1922bca47be8bbf8e6274608ebc34a778 (Evans Mungai)
- Update pkg/chart/common/util/coalesce_test.go a333bbaf273645bf53fb873228040ca8edde849a (Evans Mungai)
- Fix rollback for missing resources 374aeb4b4e0463f72e3a0175138ed4bf7e87a156 (Feruzjon Muyassarov)
- fix(install): add more tests and check nil file data 00f0a48a7dae379c2b6bd0dea43984d42b27a494 (Manuel Alonso)
- fix(test): no check empty resources 0357e8d0f7eab074252ca49e1ca3aded834a001d (Manuel Alonso)
- fix(install): check lenght and file nil, add tests 52235cc0bf7d0c8faf17c7dc8cddd77f93434aea (Manuel Alonso)
- fix(action): crd resources can be empty 268593bf2e9769ef4b75328b33dfb4195e6e9e5a (Manuel Alonso)
- fix: casing issue fixed 170911459bc4f2b5efea7e549e09bd45c7578cc4 (Mujib Ahasan)
- fix: error handled correctly 94860626ce9c83a9227b5bce02a5c03a050816ac (Mujib Ahasan)
- fix: doc string added 12e8b715aa0732b613c3a9896fa6af29b3201536 (Mujib Ahasan)
- Fix lint warning 3416dd5f215a6421a70c6ab22340a96312ce8c0b (Evans Mungai)
- Preserve nil values in chart already 679f0519804afeaa5ce8b930a30976ade2860fe0 (Evans Mungai)
- fix(values): preserve nil values when chart default is empty map 292fe702193e8ba9ce4c8ffffdd90cdfa761501c (Evans Mungai)
- update: test coverage added for helper function validateNameAndGenerateName 115409976b5c3fd94c893eabde114e655c01c573 (Mujib Ahasan)
- update: helper function added for the business logic 522d2fe61508639cfe8f06a43235e7c3eaea3b9a (Mujib Ahasan)
- generateName is also considered in logic 6769fb6fb6704e29fe1215c802ecf0ea62b39715 (Mujib Ahasan)
- fxi: test concurrency download index 64bae717c58e80f05a60b84ddcd1f78387b4caee (Terry Howe)
- update: business logic respected for skipping object missing name b357bcae8640508f110b7e63a8dfacd865c27b6e (Mujib Ahasan)
- fixed: --dry-run=server now respect generateName 2820ebe8c97b7d7b8a447375b74c9cb3741a4ffa (Mujib Ahasan)
- Make error message instructional for the case of lock file being out of date 1836c598f06377fd1571702fb2e0642f004cedef (Andreas Sommer)

## New Contributors
* @JeevanYewale made their first contribution in https://github.com/helm/helm/pull/31742
* @tamcore made their first contribution in https://github.com/helm/helm/pull/31751
* @orgads made their first contribution in https://github.com/helm/helm/pull/31128
* @manute made their first contribution in https://github.com/helm/helm/pull/31578
* @Mujib-Ahasan made their first contribution in https://github.com/helm/helm/pull/31563
* @rohansood10 made their first contribution in https://github.com/helm/helm/pull/31852
* @tleed5 made their first contribution in https://github.com/helm/helm/pull/31901
* @tsinglua made their first contribution in https://github.com/helm/helm/pull/31921
* @abhay1999 made their first contribution in https://github.com/helm/helm/pull/31931
* @Mentigen made their first contribution in https://github.com/helm/helm/pull/31957
* @Debasish-87 made their first contribution in https://github.com/helm/helm/pull/31973
* @AnmolVirdi made their first contribution in https://github.com/helm/helm/pull/32014
* @Y0-L0 made their first contribution in https://github.com/helm/helm/pull/31979
* @MohitSalvi16 made their first contribution in https://github.com/helm/helm/pull/32057
* @rhysmcneill made their first contribution in https://github.com/helm/helm/pull/32008
* @cairon-ab made their first contribution in https://github.com/helm/helm/pull/32034
* @gaganhr94 made their first contribution in https://github.com/helm/helm/pull/31923
* @isumitsolanki made their first contribution in https://github.com/helm/helm/pull/31970

**Full Changelog**: https://github.com/helm/helm/compare/v4.1.0...v4.2.0