来源: https://github.com/containerd/containerd/releases/tag/v2.0.11

# containerd/containerd v2.0.11 Release Notes

Published at: 2026-07-09T23:49:40Z

Welcome to the v2.0.11 release of containerd!

The eleventh patch release for containerd 2.0 contains various fixes and updates.

### Highlights

#### Image Distribution

* Limit fallback to /blobs endpoint during ref resolution to prevent content store pollution ([#13622](https://github.com/containerd/containerd/pull/13622))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Samuel Karp
* Chris Henzie
* Joseph Zhang
* Phil Estes

### Changes
<details><summary>4 commits</summary>
<p>

* Prepare release notes for v2.0.11 ([#13752](https://github.com/containerd/containerd/pull/13752))
  * [`24a2ac9db`](https://github.com/containerd/containerd/commit/24a2ac9db44440a5c23314bbbe265a0be5330d30) Prepare release notes for v2.0.11
* Update go to 1.26.5/1.25.12 ([#13730](https://github.com/containerd/containerd/pull/13730))
  * [`8f0774f1a`](https://github.com/containerd/containerd/commit/8f0774f1a0c7b07fc4cd8ae8a7fdefdc212ea620) Update go to 1.26.5/1.25.12
* ci: pin fog-json to resolve gem conflict ([#13713](https://github.com/containerd/containerd/pull/13713))
  * [`f89266ecb`](https://github.com/containerd/containerd/commit/f89266ecb9d2bcb7b8677ddabda09d6dc4e21aca) ci: pin fog-json to resolve gem conflict
* fix: avoid content storage pollution by limiting the fallback on ref resolution ([#13622](https://github.com/containerd/containerd/pull/13622))
  * [`179b642d6`](https://github.com/containerd/containerd/commit/179b642d662ddbaeebe57214164a399ceaed5fbd) fix:avoid content storage pollution by limiting the fallback on ref resolution
</p>
</details>

### Dependency Changes

This release has no dependency changes

Previous release can be found at [v2.0.10](https://github.com/containerd/containerd/releases/tag/v2.0.10)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.31 (Ubuntu 20.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on non-glibc Linux distributions. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
