来源: https://github.com/containerd/containerd/releases/tag/v2.1.4

# containerd/containerd v2.1.4 Release Notes

Published at: 2025-07-30T18:51:10Z

Welcome to the v2.1.4 release of containerd!

The fourth patch release for containerd 2.1 contains various fixes and updates.

### Highlights

#### Container Runtime Interface (CRI)

* Fix containerd panic when sandbox extension is missing ([#12076](https://github.com/containerd/containerd/pull/12076))
* Update status response to return stable order for runtime handlers ([#12054](https://github.com/containerd/containerd/pull/12054))

#### Go client

* Fix lazy gRPC connection mode waiting for connect on client creation ([#12079](https://github.com/containerd/containerd/pull/12079))

#### Image Distribution

* Fix resolve deadlock issue in docker fetcher open ([#12127](https://github.com/containerd/containerd/pull/12127))

#### Image Storage

* Update erofs snapshotter to make immutable optional ([#12091](https://github.com/containerd/containerd/pull/12091))
* Fix erofs filesystem UUID for tar-converted layers ([#12058](https://github.com/containerd/containerd/pull/12058))

#### Runtime

* Fix close container io not closed when runtime create failed ([#12009](https://github.com/containerd/containerd/pull/12009))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Derek McGowan
* Phil Estes
* Eric Mountain
* Maksym Pavlenko
* Gao Xiang
* Kirtana Ashok
* ningmingxiao
* Akihiro Suda
* Austin Vazquez
* Paweł Gronowski
* Sebastiaan van Stijn
* Wei Fu
* jinda.ljd

### Changes
<details><summary>26 commits</summary>
<p>

* Prepare release notes for v2.1.4 ([#12159](https://github.com/containerd/containerd/pull/12159))
  * [`112e41363`](https://github.com/containerd/containerd/commit/112e41363bc25216c46fe4f3070f7f8b6d982cf2) Add release notes for v2.1.4
* Fix resolve deadlock issue in docker fetcher open ([#12127](https://github.com/containerd/containerd/pull/12127))
  * [`add2dcf86`](https://github.com/containerd/containerd/commit/add2dcf8688019158fc1c015dddffe54c6610e24) Ensure fetcher always closes body and properly calls release
  * [`34a1cb1dd`](https://github.com/containerd/containerd/commit/34a1cb1dd1962520f6821b7273debf06a740ed6d) fix(dockerFetcher): resolve deadlock issue in dockerFetcher open
* ci: bump Go 1.23.11, 1.24.5 ([#12115](https://github.com/containerd/containerd/pull/12115))
  * [`82c4d6875`](https://github.com/containerd/containerd/commit/82c4d68755b6bb6749b8b328ec70fe0b7b776e1c) ci: bump Go 1.23.11, 1.24.5
* Backport windows test fixes ([#12119](https://github.com/containerd/containerd/pull/12119))
  * [`6cc2a8d77`](https://github.com/containerd/containerd/commit/6cc2a8d779e29045f279cef041bec3d0569e75db) Fix intermittent test failures on Windows CIs
  * [`6adc69312`](https://github.com/containerd/containerd/commit/6adc69312f8f929f5e285d8fd3806c269853e850) Remove WS2025 from CIs due to regression
* Update erofs snapshotter to make immutable optional ([#12091](https://github.com/containerd/containerd/pull/12091))
  * [`8d194c19f`](https://github.com/containerd/containerd/commit/8d194c19febc6fd51c91ea5e43c720225cf553a0) erofs-snapshotter: make IMMUTABLE_FL optional
* Fix lazy gRPC connection mode waiting for connect on client creation ([#12079](https://github.com/containerd/containerd/pull/12079))
  * [`2df7175d7`](https://github.com/containerd/containerd/commit/2df7175d71d1e71c3b27f9c0879db4050b183fce) client/New: Don't unlazy the gRPC connection implicitly
* backport: update go-md2man binary to v2.0.7 ([#12074](https://github.com/containerd/containerd/pull/12074))
  * [`4902adb92`](https://github.com/containerd/containerd/commit/4902adb92fa3fb6c7764128eda5dc7ba2b596511) update go-md2man binary to v2.0.7
* Fix containerd panic when sandbox extension is missing ([#12076](https://github.com/containerd/containerd/pull/12076))
  * [`02298e1a0`](https://github.com/containerd/containerd/commit/02298e1a03b92d36dba899c8aba82fc3c50422cd) cri:fix containerd panic when can't find sandbox extension
* Fix erofs filesystem UUID for tar-converted layers ([#12058](https://github.com/containerd/containerd/pull/12058))
  * [`583133e71`](https://github.com/containerd/containerd/commit/583133e7103145fcc338b695b2e6456c69fc52ee) erofs-differ: fix filesystem UUID for tar-converted layers
* Update status response to return stable order for runtime handlers ([#12054](https://github.com/containerd/containerd/pull/12054))
  * [`57db13d50`](https://github.com/containerd/containerd/commit/57db13d50de6d0c8a4587bc166d0a4ebee1dad02) Amend runtime handler test for stable order
  * [`d822c9048`](https://github.com/containerd/containerd/commit/d822c90480c0403d57cead351e8e53c063d07c1a) CRI: Stable sort for RuntimeHandlers
  * [`a2fd70639`](https://github.com/containerd/containerd/commit/a2fd70639e6a2aa82429ed2f4ce4967c15a03c3c) Test showing RuntimeHandlers in Status() are unordered
* Fix close container io not closed when runtime create failed ([#12009](https://github.com/containerd/containerd/pull/12009))
  * [`b74268f86`](https://github.com/containerd/containerd/commit/b74268f8674647234f6a08c005f84b38ba1adf63) bugfix:close container io when runtime create failed
</p>
</details>

### Dependency Changes

This release has no dependency changes

Previous release can be found at [v2.1.3](https://github.com/containerd/containerd/releases/tag/v2.1.3)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.35 (Ubuntu 22.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on Linux distributions that do not use glibc >= 2.35. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
