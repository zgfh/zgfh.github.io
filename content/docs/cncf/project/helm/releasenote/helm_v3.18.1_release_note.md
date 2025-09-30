来源: https://github.com/helm/helm/releases/tag/v3.18.1

# helm/helm v3.18.1 Release Notes

Published at: 2025-05-28T19:25:31Z

Helm v3.18.1 is a patch release. Users are encouraged to upgrade for the best experience. Users are encouraged to upgrade for the best experience.

Notes:

* This release fixes regressions around template generation and OCI registry interaction in 3.18.0
* There are at least 2 known regressions unaddressed in this release. They are being worked on.
  * Empty registry configuration files. When the file exists but it is empty.
  * Login to Docker Hub on some domains fails.

The community keeps growing, and we'd love to see you there!

- Join the discussion in [Kubernetes Slack](https://kubernetes.slack.com):
  -  for questions and just to hang out
  -  for discussing PRs, code, and bugs
- Hang out at the Public Developer Call: Thursday, 9:30 Pacific via [Zoom](https://zoom.us/j/696660622)
- Test, debug, and contribute charts: [ArtifactHub/packages](https://artifacthub.io/packages/search?kind=0)

## Installation and Upgrading

Download Helm v3.18.1. The common platform binaries are here:

- [MacOS amd64](https://get.helm.sh/helm-v3.18.1-darwin-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.1-darwin-amd64.tar.gz.sha256sum) / 3973bda1863d74614e1dca69ee65050928a80b88f6d10ec514fa7886a02de309)
- [MacOS arm64](https://get.helm.sh/helm-v3.18.1-darwin-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.1-darwin-arm64.tar.gz.sha256sum) / 93562d2a0e34a505954e5b9556e319f390bc5bd07bed754ddc038b09cfe6fbd9)
- [Linux amd64](https://get.helm.sh/helm-v3.18.1-linux-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.1-linux-amd64.tar.gz.sha256sum) / b1c7e8e261fd30f34c617282813ecafc63628fcd59a255a9fc51b1fe43394c05)
- [Linux arm](https://get.helm.sh/helm-v3.18.1-linux-arm.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.1-linux-arm.tar.gz.sha256sum) / 6a58bf4091f798ac1a6fa7e21ea142fe138f5b688f2e3af0c49147f99210fff6)
- [Linux arm64](https://get.helm.sh/helm-v3.18.1-linux-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.1-linux-arm64.tar.gz.sha256sum) / 5ddc8fbd4b17857754a95be799543ceafa5aa9532b05f738ee590a76bb049988)
- [Linux i386](https://get.helm.sh/helm-v3.18.1-linux-386.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.1-linux-386.tar.gz.sha256sum) / 890bfd82f9fc8fe829f33c80e3d31463fc22d0f3605aaf3b009b3d7a616ba9cc)
- [Linux ppc64le](https://get.helm.sh/helm-v3.18.1-linux-ppc64le.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.1-linux-ppc64le.tar.gz.sha256sum) / 4d03617f742e4774ddf2170840ec385c67abf0db93e5df1aa9a036bb1275988e)
- [Linux s390x](https://get.helm.sh/helm-v3.18.1-linux-s390x.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.1-linux-s390x.tar.gz.sha256sum) / e17b3574bdd4152ed8962089e3c0143e660db64e828a90a20127c9e5f48ab932)
- [Linux riscv64](https://get.helm.sh/helm-v3.18.1-linux-riscv64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.18.1-linux-riscv64.tar.gz.sha256sum) / 225bdea665c5313e48c0219b39b6f0daea3288b1567f4825c540063784113214)
- [Windows amd64](https://get.helm.sh/helm-v3.18.1-windows-amd64.zip) ([checksum](https://get.helm.sh/helm-v3.18.1-windows-amd64.zip.sha256sum) / d0f74d2043dae67992d4dcdd430844aa4817e4735a42ef9ecb4d2f042e2ed2bb)
- [Windows arm64](https://get.helm.sh/helm-v3.18.1-windows-arm64.zip) ([checksum](https://get.helm.sh/helm-v3.18.1-windows-arm64.zip.sha256sum) / 486f2eabae7b497afc4643e54464b700de6fbc509f4b5b31ca108979a11ba5fd)

The [Quickstart Guide](https://helm.sh/docs/intro/quickstart/) will get you going from there. For **upgrade instructions** or detailed installation notes, check the [install guide](https://helm.sh/docs/intro/install/). You can also use a [script to install](https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3) on any system with `bash`.

## What's Next

- 3.18.2 will contain only bug fixes.
- 3.19.0 on September 11th, 2025 is the next feature release. 

## Changelog

- fix(client): skipnode utilization for PreCopy f6f8700a539c18101509434f3b59e6a21402a1b2 (Brandt Keller)
- fix(client): layers now returns manifest - remove duplicate from descriptors 4da701593f8c8a137fc36a95f9e9ecfe1d01528f (Brandt Keller)
- fix(client): return nil on non-allowed media types 1a8507fd5ad910f466accfd1c784ed0c333c343a (Brandt Keller)
- Prevent fetching newReference again as we have in calling method 015531ca4f386a6fee6c9f48eae63124d19c76a7 (Benoit Tigeot)
- Prevent failure when resolving version tags in oras memory store 9db1a120f9f7404044cc4619ea7379b430004e36 (Benoit Tigeot)
- Update pkg/plugin/plugin.go e8bfa0eed689ee822c6ba9b4bcae45ecdb36b671 (Benoit Tigeot)
- Update pkg/plugin/plugin.go 24b44902a266f911617105273d4afd16f25f4aaf (Benoit Tigeot)
- Wait for Helm v4 before raising when platformCommand and Command are set 7e8f53421a184125cf988814206237ce01d95139 (Benoit Tigeot)
- Fix 3.18.0 regression: registry login with scheme ea04cea48bf2b312e506ae03c412c6fd95929c5c (Scott Rigby)
- Revert "fix (helm) : toToml` renders int as float [ backport to v3 ]" bec66098fdb4ac37298f46701a2d5b28e5776b72 (Matt Farina)

