来源: https://github.com/containerd/containerd/releases/tag/v2.1.1

# containerd/containerd v2.1.1 Release Notes

Published at: 2025-05-20T18:01:15Z

Welcome to the v2.1.1 release of containerd!

The first patch release for containerd 2.1 fixes a critical vulnernability (CVE-2025-47290)
which was first introduced in 2.1.0. See the [Github Advisory](https://github.com/containerd/containerd/security/advisories/GHSA-cm76-qm8v-3j95)
for more details. This release also contains a few smaller updates and bux fixes.

### Highlights

#### Image Storage

* Fix erofs media type handling ([#11855](https://github.com/containerd/containerd/pull/11855))

#### Runtime

* Reduce shim cleanup log level and add more context ([#11831](https://github.com/containerd/containerd/pull/11831))

#### Deprecations

* Update removal version for deprecated registry config fields ([#11835](https://github.com/containerd/containerd/pull/11835))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Akihiro Suda
* Samuel Karp
* Derek McGowan
* Gao Xiang
* Akhil Mohan
* Chris Henzie
* Phil Estes
* Sebastiaan van Stijn
* ningmingxiao

### Changes
<details><summary>17 commits</summary>
<p>

  * [`cb1076646`](https://github.com/containerd/containerd/commit/cb1076646aa3740577fafbf3d914198b7fe8e3f7) Merge commit from fork
  * [`216667ba0`](https://github.com/containerd/containerd/commit/216667ba0ada456a2647e52dd2181e9dbd857d93) Prepare release notes for 2.1.1
  * [`ac00b8e61`](https://github.com/containerd/containerd/commit/ac00b8e6108c6925ef4ab39e9b87e956a2efdabf) Revert "perf(applyNaive): avoid walking the tree for each file in the same directory"
* build(deps): bump github.com/Microsoft/hcsshim ([#11847](https://github.com/containerd/containerd/pull/11847))
  * [`444ca17cd`](https://github.com/containerd/containerd/commit/444ca17cd9baa2f68572bcf28af4eea7b12c2f1d) update runhcs version to v0.13.0
  * [`0684f1c44`](https://github.com/containerd/containerd/commit/0684f1c44d021e7ef1ba26fc73b8922633d10403) build(deps): bump github.com/Microsoft/hcsshim
* Fix erofs media type handling ([#11855](https://github.com/containerd/containerd/pull/11855))
  * [`e1817a401`](https://github.com/containerd/containerd/commit/e1817a401f94698cdf8fdc01d8d0e2b4f1f463e7) docs/snapshotters/erofs.md: a tip for improved performance
  * [`2168cb92c`](https://github.com/containerd/containerd/commit/2168cb92c9cf89aaad06be9ae49fce49ed4972d8) erofs-differ: fix EROFS native image support
* Reduce shim cleanup log level and add more context ([#11831](https://github.com/containerd/containerd/pull/11831))
  * [`7fcbc3c46`](https://github.com/containerd/containerd/commit/7fcbc3c46a2e0fdf55082216b8eca3f8f09eb4e0) core/runtime/v2: cleanup shim-cleanup logs
* Update removal version for deprecated registry config fields ([#11835](https://github.com/containerd/containerd/pull/11835))
  * [`37d6c4236`](https://github.com/containerd/containerd/commit/37d6c42368a3e139fb516064ff4eb9637f197c7a) Update removal version for deprecated registry config fields
* ctr:make sure containerd socket exist before create client ([#11827](https://github.com/containerd/containerd/pull/11827))
  * [`e7be076d4`](https://github.com/containerd/containerd/commit/e7be076d48eba3ffa11a4be1133b92987227e776) ctr:make sure containerd socket exist before create client
* .github: mark 2.1 releases as latest ([#11821](https://github.com/containerd/containerd/pull/11821))
  * [`c90524d5f`](https://github.com/containerd/containerd/commit/c90524d5f4c8cec87ce3639263a42e6fa4555ef5) .github: mark 2.1 releases as latest
</p>
</details>

### Dependency Changes

* **github.com/Microsoft/hcsshim**  v0.13.0-rc.3 -> v0.13.0

Previous release can be found at [v2.1.0](https://github.com/containerd/containerd/releases/tag/v2.1.0)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.35 (Ubuntu 22.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on Linux distributions that do not use glibc >= 2.35. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
