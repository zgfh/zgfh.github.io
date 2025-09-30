来源: https://github.com/helm/helm/releases/tag/v3.19.0

# helm/helm v3.19.0 Release Notes

Published at: 2025-09-11T21:06:02Z

Helm v3.19.0 is a feature release. Users are encouraged to upgrade for the best experience.

The community keeps growing, and we'd love to see you there!

- Join the discussion in [Kubernetes Slack](https://kubernetes.slack.com):
  -  for questions and just to hang out
  -  for discussing PRs, code, and bugs
- Hang out at the Public Developer Call: Thursday, 9:30 Pacific via [Zoom](https://zoom.us/j/696660622)
- Test, debug, and contribute charts: [ArtifactHub/packages](https://artifacthub.io/packages/search?kind=0)

## Notable Changes

- Fixed a `helm pull` regression from 3.18 - error pulling OCI charts with --password #31230
- Fixed a `helm lint` regression from Helm 3.18 - rejected JSON Schema $ref URLs that worked in 3.17.x #31166
- Fixed go mod tidy #31154
- Fixed k8s version parsing not matching original #31091
- Fixed charts failing when using a redirect registry #31087
- Fixed missing debug logging for OCI transport 
- Fixed broken legacy docker support for login #30941
- Fixed bugs from the move to ORAS v2
- Fixed processing all hook deletions on failure #30673
- Feature for `helm create` added httproute from gateway-api to create chart template #30658

## Installation and Upgrading

Download Helm v3.19.0. The common platform binaries are here:

- [MacOS amd64](https://get.helm.sh/helm-v3.19.0-darwin-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.19.0-darwin-amd64.tar.gz.sha256sum) / 09a108c0abda42e45af172be65c49125354bf7cd178dbe10435e94540e49c7b9)
- [MacOS arm64](https://get.helm.sh/helm-v3.19.0-darwin-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.19.0-darwin-arm64.tar.gz.sha256sum) / 31513e1193da4eb4ae042eb5f98ef9aca7890cfa136f4707c8d4f70e2115bef6)
- [Linux amd64](https://get.helm.sh/helm-v3.19.0-linux-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.19.0-linux-amd64.tar.gz.sha256sum) / a7f81ce08007091b86d8bd696eb4d86b8d0f2e1b9f6c714be62f82f96a594496)
- [Linux arm](https://get.helm.sh/helm-v3.19.0-linux-arm.tar.gz) ([checksum](https://get.helm.sh/helm-v3.19.0-linux-arm.tar.gz.sha256sum) / 8708367b8e8bed9bdf8429bb57536e4223cdca96245dffc205cb0cb670b151f4)
- [Linux arm64](https://get.helm.sh/helm-v3.19.0-linux-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.19.0-linux-arm64.tar.gz.sha256sum) / 440cf7add0aee27ebc93fada965523c1dc2e0ab340d4348da2215737fc0d76ad)
- [Linux i386](https://get.helm.sh/helm-v3.19.0-linux-386.tar.gz) ([checksum](https://get.helm.sh/helm-v3.19.0-linux-386.tar.gz.sha256sum) / ca0329cd1b09267e7c63c563e32462265949c31512b537dd6615d0b5190040fc)
- [Linux ppc64le](https://get.helm.sh/helm-v3.19.0-linux-ppc64le.tar.gz) ([checksum](https://get.helm.sh/helm-v3.19.0-linux-ppc64le.tar.gz.sha256sum) / f57ea04d7fa62cc3e90a831eb67edb1400c810df6083875bee3a7c195a795ce4)
- [Linux s390x](https://get.helm.sh/helm-v3.19.0-linux-s390x.tar.gz) ([checksum](https://get.helm.sh/helm-v3.19.0-linux-s390x.tar.gz.sha256sum) / 0dff2f249f71690e3b420ebb5efc573eb26a51b4a614c4391c8c7fa3e47863f2)
- [Linux riscv64](https://get.helm.sh/helm-v3.19.0-linux-riscv64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.19.0-linux-riscv64.tar.gz.sha256sum) / 978af545a3d72a253ce1d4c03c9febb509a239a48b2581107e548883ab61a227)
- [Windows amd64](https://get.helm.sh/helm-v3.19.0-windows-amd64.zip) ([checksum](https://get.helm.sh/helm-v3.19.0-windows-amd64.zip.sha256sum) / 6488630c2e5d5945ed990fa02fd9e99f9c6792cdbcd79eb264b6cfb90179d2d1)
- [Windows arm64](https://get.helm.sh/helm-v3.19.0-windows-arm64.zip) ([checksum](https://get.helm.sh/helm-v3.19.0-windows-arm64.zip.sha256sum) / 488f7530a1776da1b46b14e988bf305c9d7419c78e7e73aeb92f198a41c9ef6b)

The [Quickstart Guide](https://helm.sh/docs/intro/quickstart/) will get you going from there. For **upgrade instructions** or detailed installation notes, check the [install guide](https://helm.sh/docs/intro/install/). You can also use a [script to install](https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3) on any system with `bash`.

## What's Next

- 3.19.1 will contain only bug fixes.
- 3.20.0 is the next feature release.

## Changelog

- bump version to v3.19.0 3d8990f0836691f0229297773f3524598f46bda6 (Scott Rigby)
- fix: use username and password if provided 9a54bf1df6245232aff6235ebc5da7616f06afa7 (Evans Mungai)
- chore(deps): bump the k8s-io group with 7 updates 5af0f68365132bf40d6da38eac87cb94d113b5c3 (dependabot[bot])
- chore(deps): bump github.com/spf13/cobra from 1.9.1 to 1.10.1 e485606fa6c637f9d33c85d449f5add15fa75f64 (dependabot[bot])
- chore(deps): bump github.com/stretchr/testify from 1.11.0 to 1.11.1 6355c3de11a76acc934348b2b2365c795327517b (dependabot[bot])
- chore(deps): bump github.com/stretchr/testify from 1.10.0 to 1.11.0 ec61f666994ca6572278ff05a45850606d18f12d (dependabot[bot])
- fix(helm-lint): fmt b27802031110bcfcaf0b685f7f3efda8a309ce8c (Isaiah Lewis)
- fix(helm-lint): Add TLSClientConfig d33ac5e44b4eb884d67141b00753817b091054ca (Isaiah Lewis)
- fix(helm-lint): Add HTTP/HTTPS URL support for json schema references 854370978eb4664ed75e1918df733ecf1503e904 (Isaiah Lewis)
- chore(deps): bump the k8s-io group with 7 updates 89a3f90e7545857edbfbb7d46af1796f0fee7097 (dependabot[bot])
- fix: go mod tidy for v3 da4c583145cf4de6a291e81b499ba53785739c2b (Terry Howe)
- chore(deps): bump golang.org/x/crypto from 0.40.0 to 0.41.0 e40b1b3b367cae275d823eadcfcef43729e16260 (dependabot[bot])
- chore(deps): bump golang.org/x/term from 0.33.0 to 0.34.0 a27e9db724540bc53b066dff7d80d075a9fa86d8 (dependabot[bot])
- fix Chart.yaml handling f13afaacd6f8f9dca4ad914d87fabbe129692eda (Matt Farina)
- Handle messy index files 039b0b18d3c83c9aa3a80da67f3cf1c2d965a598 (Matt Farina)
- chore(deps): bump github.com/containerd/containerd from 1.7.27 to 1.7.28 bec98a91aa1f810220f4fd2a7f06b155afe68970 (dependabot[bot])
- json schema fix 6d9509aadcfb44aaaa6fc6528443815343a551b4 (Robert Sirchia)
- fix: k8s version parsing to match original 807225ed62b2901fcbaf56923111d9d7f9204a59 (Borys Hulii)
- chore(deps): bump sigs.k8s.io/yaml from 1.5.0 to 1.6.0 cbbd569aba384d6bf04328645d8befd8555c7879 (dependabot[bot])
- Do not explicitly set SNI in HTTPGetter 5e8ff72b71fab9bda848bc2c980b2139401e1057 (Terry Howe)
- chore(deps): bump github.com/spf13/pflag from 1.0.6 to 1.0.7 5b5fb5b6832fd210e6dfeda01ef91d6eea73abe4 (dependabot[bot])
- chore(deps): bump the k8s-io group with 7 updates d12538a23df05acb027f319766dde19a90f0c78a (dependabot[bot])
- chore(deps): bump golang.org/x/crypto from 0.39.0 to 0.40.0 303f8031bdfbd18fa8630def8199957fa4784a20 (dependabot[bot])
- chore(deps): bump golang.org/x/term from 0.32.0 to 0.33.0 abcc2edc2722406928df731dfac8981032d7831a (dependabot[bot])
- chore(deps): bump golang.org/x/text from 0.26.0 to 0.27.0 521c67b3588a37ccb1e19fc90130813587015291 (dependabot[bot])
- Disabling linter due to unknown issue 227c9cb6b6c4ba190fa4064c0dba91f8a3106b79 (Matt Farina)
- Updating link handling 4389fa639a4d8e6836fa8df9bb70dd69c2820c12 (Matt Farina)
- Bump github.com/Masterminds/semver/v3 from 3.3.0 to 3.3.1 372e40376a15568ba1d9920beb9ab4fe91b90a55 (dependabot[bot])
- build(deps): bump the k8s-io group with 7 updates 4fa5a64127532cb9e69986f584aef491f36a925b (dependabot[bot])
- build(deps): bump sigs.k8s.io/yaml from 1.4.0 to 1.5.0 6284ed853892c95b87d08a08d64199af63ed3e13 (dependabot[bot])
- fix: user username password for login 2c55a4e8ce483fe1a03d7afa46a89e26852bc3c5 (Terry Howe)
- Update pkg/registry/transport.go a16e986d4e184b4e065968c5f5c30198a12d880e (Terry Howe)
- Update pkg/registry/transport.go cea26d8bcac27f888ebb43a8ac8fe87f5851d380 (Terry Howe)
- fix: add debug logging to oci transport b52bb41484bca2eab616aed83aa922cbb5ef1e3b (Terry Howe)
- build(deps): bump golang.org/x/crypto from 0.38.0 to 0.39.0 45075cf9434456c8d1cd59a6355265e958b71b2f (dependabot[bot])
- build(deps): bump golang.org/x/text from 0.25.0 to 0.26.0 73a78263956bf738008e158afb8d641acbb8f3b9 (dependabot[bot])
- fix: legacy docker support broken for login 733f94c86a98f2fc4a12eba510e26615d4b8aa59 (Terry Howe)
- fix: plugin installer test with no Internet fc360417024f4734e5b7356385512a08a31c743e (Terry Howe)
- Handle an empty registry config file. cfe8cef46f04f36ca33e8696573e243d14e17e79 (Matt Farina)
- Prevent fetching newReference again as we have in calling method c33215d765e291bc9321984d4f60a0182c738938 (Benoit Tigeot)
- Prevent failure when resolving version tags in oras memory store f552b672305a420b54a725185f98e34e51fbd7ba (Benoit Tigeot)
- fix(client): skipnode utilization for PreCopy a18a52e8982b399101f7f20e2473de8514e85226 (Brandt Keller)
- test: Skip instead of returning early. looks more intentional fedf5024d60bcb4efce9cf7f6f1b7bca642a66eb (Jesse Simpson)
- test: tests repo stripping functionality fe512bae439b5271dd7d2cdb75fadf3c39abd800 (Jesse Simpson)
- test: include tests for Login based on different protocol prefixes 099a9e18f30db9c90a3a5e52b2af6dd630a6d757 (Jesse Simpson)
- fix(client): layers now returns manifest - remove duplicate from descriptors b07ab77da3a2d20508b8e775981e233a81d4c753 (Brandt Keller)
- fix(client): return nil on non-allowed media types c225c124ac76eedc3ca6e013df40da8d2c50650d (Brandt Keller)
- Fix 3.18.0 regression: registry login with scheme c0f3ace52d974b7465f33079bbf54ed961f875f1 (Scott Rigby)
- Update pkg/plugin/plugin.go dce60adb5141695b9deab023dbfa25bba681d8fa (Benoit Tigeot)
- Update pkg/plugin/plugin.go cda0865d64a4deec682fd044aa4412eb9ab643db (Benoit Tigeot)
- Wait for Helm v4 before raising when platformCommand and Command are set 5d9d9a0fb8c1700c5aa9051e3768dcdabfed642d (Benoit Tigeot)
- Revert "fix (helm) : toToml` renders int as float [ backport to v3 ]" c5249c1f8d83d44081afee41efeac3ee36d6e9bc (Matt Farina)
- build(deps): bump the k8s-io group with 7 updates 5b0520d6b323b291546cb6fbc4dc0f76b570a6eb (dependabot[bot])
- chore: update generalization warning message afefca8b2dcb3c220e24075e8dabf0cffd170daf (Feng Cao)
- build(deps): bump oras.land/oras-go/v2 from 2.5.0 to 2.6.0 8d6d27c26aad581c3da61f7e67786949c9201fcd (dependabot[bot])
- build(deps): bump the k8s-io group with 7 updates 502c0d5f5b8563be076de69be85f8e0add11b69c (dependabot[bot])
- build(deps): bump golang.org/x/crypto from 0.37.0 to 0.38.0 92be9ac0c8abab27efd740be6a671d6e8dd535fd (dependabot[bot])
- fix: move warning to top of block eb5b6d50474842db17330b11e0db70077e1c4510 (Feng Cao)
- fix: govulncheck workflow 6b15f26bd45c2856b36bdf3e8c32b44595e4580f (Matthieu MOREL)
- fix: replace fmt warning with slog 6b5c94475db950a981523344029f0a7c620a2e32 (Feng Cao)
- fix: add warning when ignore repo flag 247bf7c2e0c591554b6cfd4c2f62cb2700b034ee (Feng Cao)
- bump version to v3.18.0 94044595c79ddf1311a4cd3df0353fe62a7ed633 (Robert Sirchia)
- backport #30673 to dev-v3 0a800e84b033ae03fc31a46215378ac7761cb9c5 (Gerard Nguyen)
- feat: add httproute from gateway-api to create chart template bd1b67b082122ad1264d07c5d28bbc4c4171b826 (Henrik Gerdes)

**Full Changelog**: https://github.com/helm/helm/compare/v3.18.6...v3.19.0