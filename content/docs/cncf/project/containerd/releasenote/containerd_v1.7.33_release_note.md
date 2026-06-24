来源: https://github.com/containerd/containerd/releases/tag/v1.7.33

# containerd/containerd v1.7.33 Release Notes

Published at: 2026-06-18T23:18:30Z

Welcome to the v1.7.33 release of containerd!

The thirty-third patch release for containerd 1.7 contains various fixes
and updates including security patches.

### Security Updates

* **containerd**
  * [**CVE-2026-53488**](https://github.com/containerd/containerd/security/advisories/GHSA-xhf5-7wjv-pqxp)
  * [**CVE-2026-47262**](https://github.com/containerd/containerd/security/advisories/GHSA-jpcc-p29g-p8mq)

* **go-jose**
  * [**CVE-2026-34986**](https://github.com/go-jose/go-jose/security/advisories/GHSA-78h2-9frx-2jm8)

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Samuel Karp
* Chris Henzie
* Akihiro Suda
* Akhil Mohan
* Ben Cressey
* Davanum Srinivas
* Sopho Merkviladze

### Changes
<details><summary>17 commits</summary>
<p>

* Prepare release notes for v1.7.33 ([#13631](https://github.com/containerd/containerd/pull/13631))
  * [`7517e6737`](https://github.com/containerd/containerd/commit/7517e6737a6077dbdb5d403e693169cb8163549d) Prepare release notes for v1.7.33
  * [`ab306518a`](https://github.com/containerd/containerd/commit/ab306518a326fe7e4c27f64a8cf62b7a0fb3e9c6) Merge commit from fork
  * [`d34cdafda`](https://github.com/containerd/containerd/commit/d34cdafdaf51e1db435f1e0898f16d0da5038557) Merge commit from fork
  * [`9ab2b7a89`](https://github.com/containerd/containerd/commit/9ab2b7a894d15738f8323f69def272c29277b57f) Bound user-database file reads in openBoundedUserFile
  * [`1e9806f90`](https://github.com/containerd/containerd/commit/1e9806f90d934f2e0180c279fa9f0019537f2704) Merge commit from fork
  * [`4d8ba4d23`](https://github.com/containerd/containerd/commit/4d8ba4d23561c9ec21b0113ddcfc22f41792b25e) Do not propagate reserved labels from image configs
* update runc binary to v1.3.6 ([#13615](https://github.com/containerd/containerd/pull/13615))
  * [`74c728c13`](https://github.com/containerd/containerd/commit/74c728c13487844c43620b14cc66dc05dca96836) update runc binary to v1.3.6
* update go to 1.26.4/1.25.11 ([#13579](https://github.com/containerd/containerd/pull/13579))
  * [`947caa4b7`](https://github.com/containerd/containerd/commit/947caa4b7469fd3b71ee62d0f7410b00252f5842) update go to 1.26.4/1.25.11
* Configure udevd children-max for root-test ([#13564](https://github.com/containerd/containerd/pull/13564))
  * [`e884e964e`](https://github.com/containerd/containerd/commit/e884e964e31c4fb61fcdc376a2fa3151ac245a65) Configure udevd children-max for root-test
* Clean up disk space in node e2e workflow ([#13552](https://github.com/containerd/containerd/pull/13552))
  * [`b9e756888`](https://github.com/containerd/containerd/commit/b9e7568888325736b12c9f50271045bc618dc9b9) Clean up disk space in node e2e workflow
* Bump go-jose/go-jose/v3 to v3.0.5 to fix GHSA-78h2-9frx-2jm8 ([#13467](https://github.com/containerd/containerd/pull/13467))
  * [`4dfc1844e`](https://github.com/containerd/containerd/commit/4dfc1844e8cb46a6c04a8c57211ab50e1412ccc1) Bump go-jose to v3.0.5 to address CVE-2026-34986
</p>
</details>

### Dependency Changes

* **github.com/go-jose/go-jose/v3**  v3.0.4 -> v3.0.5

Previous release can be found at [v1.7.32](https://github.com/containerd/containerd/releases/tag/v1.7.32)
