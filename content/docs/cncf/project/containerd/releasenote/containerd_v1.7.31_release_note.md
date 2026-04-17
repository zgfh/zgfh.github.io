来源: https://github.com/containerd/containerd/releases/tag/v1.7.31

# containerd/containerd v1.7.31 Release Notes

Published at: 2026-04-14T17:01:36Z

Welcome to the v1.7.31 release of containerd!

The thirty-first patch release for containerd 1.7 contains various fixes
and updates including a security patch.

### Security Updates

* **spdystream**
  * [**CVE-2026-35469**](https://github.com/moby/spdystream/security/advisories/GHSA-pc3f-x583-g7j2)

### Highlights

#### Container Runtime Interface (CRI)

* Fix CNI issue where DEL is never executed after a restart ([#12931](https://github.com/containerd/containerd/pull/12931))
* Sanitize error before gRPC return to prevent possible credential leak in pod events ([#12805](https://github.com/containerd/containerd/pull/12805))
* Improve error message and add warning when concurrent container creation is detected ([#12744](https://github.com/containerd/containerd/pull/12744))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Samuel Karp
* Maksym Pavlenko
* Akhil Mohan
* Phil Estes
* Sebastiaan van Stijn
* Wei Fu
* Akihiro Suda
* Alex Chernyakhovsky
* Chris Henzie
* Michael Zappa
* Ricardo Branco
* Shachar Tal
* ningmingxiao
* yashsingh74

### Changes
<details><summary>37 commits</summary>
<p>

* Prepare release notes for v1.7.31 ([#13221](https://github.com/containerd/containerd/pull/13221))
  * [`7d2662653`](https://github.com/containerd/containerd/commit/7d2662653cd89ae6d81de962425bfcd264031852) Prepare release notes for v1.7.31
* update github.com/moby/spdystream v0.5.1 ([#13220](https://github.com/containerd/containerd/pull/13220))
  * [`3f795c02a`](https://github.com/containerd/containerd/commit/3f795c02a76abfffd60f82d8b4a384fd86e0d8d1) update github.com/moby/spdystream v0.5.1
* update to Go 1.25.9, 1.26.2 ([#13200](https://github.com/containerd/containerd/pull/13200))
  * [`7b1e1b17b`](https://github.com/containerd/containerd/commit/7b1e1b17be279c810e6fe26a59384e2eb1498826) update to Go 1.25.9, 1.26.2
  * [`b673f2d42`](https://github.com/containerd/containerd/commit/b673f2d421384fcf17c51310005df3d5b8bbab67) update golangci-lint to v2.9.0 with go1.26 support
  * [`d88d8513a`](https://github.com/containerd/containerd/commit/d88d8513aa9e791d4de1016c913b319f2c278cc3) remove windows/arm from cross build
  * [`a763407b5`](https://github.com/containerd/containerd/commit/a763407b5f91c1bbb4420e0b956d8bbb2e993734) Ignore warnings for golangci-lint bump
  * [`03dcd8360`](https://github.com/containerd/containerd/commit/03dcd8360961943189e51c05067ee9c3fae4b201) ci: bump golangci from 6.5.2 to 7.0.0
* Update github.com/moby/spdystream v0.2.0->v0.5.0 ([#13176](https://github.com/containerd/containerd/pull/13176))
  * [`c08711218`](https://github.com/containerd/containerd/commit/c087112183c32edc2ec2527d5b1e0532f4af12bd) Update github.com/moby/spdystream v0.2.0->v0.5.0
* Skip TestExportAndImportMultiLayer on s390x ([#13152](https://github.com/containerd/containerd/pull/13152))
  * [`043548f6d`](https://github.com/containerd/containerd/commit/043548f6d70b0c2c775bb7a9e7c1c47d8ed2068f) Skip TestExportAndImportMultiLayer on s390x
* update runc binary to v1.3.5 ([#13059](https://github.com/containerd/containerd/pull/13059))
  * [`e99bd6050`](https://github.com/containerd/containerd/commit/e99bd60504fd6575c252687d0103e0386e6df205) [release/1.7] update runc binary to v1.3.5
* CODEOWNERS: mark Sam and Chris as owners for 1.7 ([#13069](https://github.com/containerd/containerd/pull/13069))
  * [`3a3103aaf`](https://github.com/containerd/containerd/commit/3a3103aaf7354464c2b69211eb5d533477ac0d5c) CODEOWNERS: mark Sam and Chris as owners for 1.7
* Fix vagrant on CI ([#13064](https://github.com/containerd/containerd/pull/13064))
  * [`9b4cfa271`](https://github.com/containerd/containerd/commit/9b4cfa27113b4117e4d47dfca0fe84075ea2ff45) Ignore NOCHANGE error
* ci: modprobe xt_comment on almalinux ([#12959](https://github.com/containerd/containerd/pull/12959))
  * [`53e9e73f0`](https://github.com/containerd/containerd/commit/53e9e73f0281d7f5060fefd1a0af428e03636d6a) ci: modprobe xt_comment on almalinux
* Fix TOCTOU race bug in tar extraction ([#12970](https://github.com/containerd/containerd/pull/12970))
  * [`61c2733fd`](https://github.com/containerd/containerd/commit/61c2733fde2971d2d5fb3b9d5363d626700350fd) Fix TOCTOU race bug in tar extraction
* Fix CNI issue where CNI DEL is never executed ([#12931](https://github.com/containerd/containerd/pull/12931))
  * [`f854c1890`](https://github.com/containerd/containerd/commit/f854c1890468b12e4517c155eee5840f46b22e59) fix issue where cni del is never executed
* apparmor: explicitly set abi/3.0 ([#12899](https://github.com/containerd/containerd/pull/12899))
  * [`5c091d92e`](https://github.com/containerd/containerd/commit/5c091d92ed5c9c9c8968c0836ede8b427b06ef93) apparmor: explicitly set abi/3.0
* backport: integration: Fix TestImageLoad() failure on CI ([#12908](https://github.com/containerd/containerd/pull/12908))
  * [`177ac10fe`](https://github.com/containerd/containerd/commit/177ac10fee6803c41cb39e67f17357ad843a8fe1) integration: Fix TestImageLoad() failure on CI
* update to go1.24.13, go1.25.7 ([#12873](https://github.com/containerd/containerd/pull/12873))
  * [`56da43d0f`](https://github.com/containerd/containerd/commit/56da43d0fd21b7f58a0d84fbb1a21b05fa0135b1) update to go1.24.13, go1.25.7
  * [`5cb3cb9ba`](https://github.com/containerd/containerd/commit/5cb3cb9bad8a9fbac96e2fe52e8eae70cb788a25) ci: bump go 1.24.12, 1.25.6
* fix: sanitize error before gRPC return to prevent credential leak in pod events ([#12805](https://github.com/containerd/containerd/pull/12805))
  * [`b1fa03843`](https://github.com/containerd/containerd/commit/b1fa038433bba840e3be76c0fb125da4defc17e6) fix: sanitize error before gRPC return to prevent credential leak in pod events
* cri: emit warning for concurrent CreateContainer ([#12744](https://github.com/containerd/containerd/pull/12744))
  * [`e2c93a42c`](https://github.com/containerd/containerd/commit/e2c93a42ca703904df6e1013c883d78f51c7f28a) cri: emit warning for concurrent CreateContainer
</p>
</details>

### Dependency Changes

* **github.com/moby/spdystream**  v0.2.0 -> v0.5.1

Previous release can be found at [v1.7.30](https://github.com/containerd/containerd/releases/tag/v1.7.30)
