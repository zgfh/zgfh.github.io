来源: https://github.com/helm/helm/releases/tag/v3.21.3

# helm/helm v3.21.3 Release Notes

Published at: 2026-07-09T21:20:27Z

Helm v3.21.3 is a patch release. Users are encouraged to upgrade for the best experience.

The community keeps growing, and we'd love to see you there!

- Join the discussion in [Kubernetes Slack](https://kubernetes.slack.com):
  -  for questions and just to hang out
  -  for discussing PRs, code, and bugs
- Hang out at the Public Developer Call: Thursday, 9:30 Pacific via [Zoom](https://zoom.us/j/696660622)
- Test, debug, and contribute charts: [ArtifactHub/packages](https://artifacthub.io/packages/search?kind=0)

## Installation and Upgrading

Download Helm v3.21.3. The common platform binaries are here:

- [MacOS amd64](https://get.helm.sh/helm-v3.21.3-darwin-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.3-darwin-amd64.tar.gz.sha256sum) / 76d0db4730b05d3d625eee11e80f0721b32b4d8422f4e5d093de6337bf3ac9f8)
- [MacOS arm64](https://get.helm.sh/helm-v3.21.3-darwin-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.3-darwin-arm64.tar.gz.sha256sum) / 19879a848cad832b7a1ac24b767a481d20fb3b95ab53a220849649422ada144e)
- [Linux amd64](https://get.helm.sh/helm-v3.21.3-linux-amd64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.3-linux-amd64.tar.gz.sha256sum) / 15e041a93a590dce8100f39385cd98c84a765c9e36aeeb9e2dc6ff9e4769e2e0)
- [Linux arm](https://get.helm.sh/helm-v3.21.3-linux-arm.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.3-linux-arm.tar.gz.sha256sum) / 60f3106ba5e24371af51574fccf489d382d2f59c56ce566d02f2a6f00bf4fb3b)
- [Linux arm64](https://get.helm.sh/helm-v3.21.3-linux-arm64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.3-linux-arm64.tar.gz.sha256sum) / 67f58155079ff9ffab98ba5c88daff0ed9b542f3a4732f5dd426dde7dd0f5244)
- [Linux i386](https://get.helm.sh/helm-v3.21.3-linux-386.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.3-linux-386.tar.gz.sha256sum) / 95e7ef76d4631f30e3f6c17d4355420878ca85771dbe7deb7b797521007aebe4)
- [Linux ppc64le](https://get.helm.sh/helm-v3.21.3-linux-ppc64le.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.3-linux-ppc64le.tar.gz.sha256sum) / c8657c0f77b7d3e2f9508c4a9a545b5862d01690f2a528fbbe659a3a4d534382)
- [Linux s390x](https://get.helm.sh/helm-v3.21.3-linux-s390x.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.3-linux-s390x.tar.gz.sha256sum) / d6c2dd29b32da1cb9dfef5af0cb93a1f391beca4e714779186330681b39f4b59)
- [Linux riscv64](https://get.helm.sh/helm-v3.21.3-linux-riscv64.tar.gz) ([checksum](https://get.helm.sh/helm-v3.21.3-linux-riscv64.tar.gz.sha256sum) / ff063cc304a60af858242aa71b5635852d65aa7d3301a46eca17a31c54e8d994)
- [Windows amd64](https://get.helm.sh/helm-v3.21.3-windows-amd64.zip) ([checksum](https://get.helm.sh/helm-v3.21.3-windows-amd64.zip.sha256sum) / ff490897e07e976c65a9bd7690cfc139b35ba5e8f25d00eaf1e53a30f1ad3f62)
- [Windows arm64](https://get.helm.sh/helm-v3.21.3-windows-arm64.zip) ([checksum](https://get.helm.sh/helm-v3.21.3-windows-arm64.zip.sha256sum) / 1d409b98f99a38704ccb3f0917cbad2417ed53f75751902b6bd84447803b69a9)

The [Quickstart Guide](https://helm.sh/docs/intro/quickstart/) will get you going from there. For **upgrade instructions** or detailed installation notes, check the [install guide](https://helm.sh/docs/intro/install/). You can also use a [script to install](https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3) on any system with `bash`.

## What's Next

- 4.2.4 and 3.21.4 are the next patch releases scheduled for August 12, 2026
- 4.3.0 and 3.22.0 are the next minor releases scheduled for September 9, 2026

## Changelog

- Apply suggestions from code review 1ad6e68924fdf6fb0c7dcef8e9e1dfc0f36eaed6 (Benoit Tigeot)
- fix: drop containerd v1 dep to resolve govulncheck CVEs 037733e7d51b08e30a0233bd546c345ab3ea3bba (Benoit Tigeot)
- chore(deps): bump github.com/containerd/containerd from 1.7.32 to 1.7.33 d3e178ba06a8a1eeacaab1df9162b658b1e07fe9 (dependabot[bot])

