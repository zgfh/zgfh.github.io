来源: https://github.com/containerd/containerd/releases/tag/v2.0.10

# containerd/containerd v2.0.10 Release Notes

Published at: 2026-06-18T23:17:50Z

Welcome to the v2.0.10 release of containerd!

The tenth patch release for containerd 2.0 includes various bug fixes and updates including security patches.

### Security Updates

* **containerd**
  * [**CVE-2026-53488**](https://github.com/containerd/containerd/security/advisories/GHSA-xhf5-7wjv-pqxp)
  * [**CVE-2026-47262**](https://github.com/containerd/containerd/security/advisories/GHSA-jpcc-p29g-p8mq)

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Samuel Karp
* Chris Henzie
* Akhil Mohan
* Akihiro Suda
* Ben Cressey
* Davanum Srinivas
* Paweł Gronowski
* Sebastiaan van Stijn

### Changes
<details><summary>17 commits</summary>
<p>

* Prepare release notes for v2.0.10 ([#13630](https://github.com/containerd/containerd/pull/13630))
  * [`cbbd21672`](https://github.com/containerd/containerd/commit/cbbd21672287cdb7f1a01c7af414ac73637f14ca) Prepare release notes for v2.0.10
  * [`200a4005f`](https://github.com/containerd/containerd/commit/200a4005fc5d64e9e0dc1bb5f2991f160f7263ed) Merge commit from fork
  * [`da4098647`](https://github.com/containerd/containerd/commit/da40986474287efcd4c6a39ac03bc098c25ef0a9) Merge commit from fork
  * [`03a19324f`](https://github.com/containerd/containerd/commit/03a19324f9903a12805cab5df83b38313603d542) Bound user-database file reads in openBoundedUserFile
  * [`126177ea4`](https://github.com/containerd/containerd/commit/126177ea411500d7a73da1def31e53a74660c44d) Merge commit from fork
  * [`bbf4a2b8e`](https://github.com/containerd/containerd/commit/bbf4a2b8e6c89483ff1b631f5814197fc8d99a0c) Do not propagate reserved labels from image configs
* update runc binary to v1.3.6 ([#13619](https://github.com/containerd/containerd/pull/13619))
  * [`a15e98122`](https://github.com/containerd/containerd/commit/a15e98122d2551af8af379106a72372aff9ba0b9) update runc binary to v1.3.6
  * [`ba2ed2a5e`](https://github.com/containerd/containerd/commit/ba2ed2a5e5b5a5c8d8111c56a607a53a0423b5cf) [release/2.2] update runc binary to v1.3.5
  * [`474184497`](https://github.com/containerd/containerd/commit/474184497e5bc61256e530a4210eda2d8e03e100) runc: Update runc binary to v1.3.4
* update go to 1.26.4/1.25.11 ([#13581](https://github.com/containerd/containerd/pull/13581))
  * [`becbb802e`](https://github.com/containerd/containerd/commit/becbb802ec9a1453f21262102d4cc12298c3c740) update go to 1.26.4/1.25.11
* Configure udevd children-max for root-test ([#13565](https://github.com/containerd/containerd/pull/13565))
  * [`55bdc8bc5`](https://github.com/containerd/containerd/commit/55bdc8bc5b0de8b975c7f5328f609dc5ad79b3b7) Configure udevd children-max for root-test
* Clean up disk space in node e2e workflow ([#13553](https://github.com/containerd/containerd/pull/13553))
  * [`6d81e8867`](https://github.com/containerd/containerd/commit/6d81e88679f88daaa0612849edb5c8afd96a3432) Clean up disk space in node e2e workflow
</p>
</details>

### Dependency Changes

This release has no dependency changes

Previous release can be found at [v2.0.9](https://github.com/containerd/containerd/releases/tag/v2.0.9)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.31 (Ubuntu 20.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on non-glibc Linux distributions. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
