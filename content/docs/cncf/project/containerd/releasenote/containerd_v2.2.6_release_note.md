来源: https://github.com/containerd/containerd/releases/tag/v2.2.6

# containerd/containerd v2.2.6 Release Notes

Published at: 2026-07-09T23:57:48Z

Welcome to the v2.2.6 release of containerd!

The sixth patch release for containerd 2.2 contains various fixes and updates.

### Highlights

#### Container Runtime Interface (CRI)

* Fix nil pointer dereference in NRI GetIPs during pod sandbox teardown or container exit ([#13696](https://github.com/containerd/containerd/pull/13696))
* Reject CreateContainer calls when the target sandbox is not running ([#13669](https://github.com/containerd/containerd/pull/13669))
* Ensure sandbox shutdown on RunPodSandbox hook failures to avoid mount leaks ([#13644](https://github.com/containerd/containerd/pull/13644))

#### Image Distribution

* Limit fallback to /blobs endpoint during ref resolution to prevent content store pollution ([#13620](https://github.com/containerd/containerd/pull/13620))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Samuel Karp
* Chris Henzie
* Phil Estes
* Akihiro Suda
* Joseph Zhang
* Maksym Pavlenko
* crawfordxx
* lauralorenz

### Changes
<details><summary>8 commits</summary>
<p>

* Prepare release notes for v2.2.6 ([#13751](https://github.com/containerd/containerd/pull/13751))
  * [`701734d2f`](https://github.com/containerd/containerd/commit/701734d2f96b150769ef2f0b7be2e1e39e67f2fb) Prepare release notes for v2.2.6
* CI: migrate Vagrant to Lima ([#13745](https://github.com/containerd/containerd/pull/13745))
  * [`672ea355f`](https://github.com/containerd/containerd/commit/672ea355f5a7134160fc66a1a800cd9f89176f40) CI: migrate Vagrant to Lima
* Update go to 1.26.5/1.25.12 ([#13726](https://github.com/containerd/containerd/pull/13726))
  * [`d7eba3f42`](https://github.com/containerd/containerd/commit/d7eba3f429449d19e9ea1f4e5f017a8893d49281) Update go to 1.26.5/1.25.12
* ci: pin fog-json to resolve gem conflict ([#13714](https://github.com/containerd/containerd/pull/13714))
  * [`8f123e4f7`](https://github.com/containerd/containerd/commit/8f123e4f7fbe59cf9ca86999f65cc8f2021dafd6) ci: pin fog-json to resolve gem conflict
* Fix nil pointer dereference in NRI GetIPs ([#13696](https://github.com/containerd/containerd/pull/13696))
  * [`d3e1a2be9`](https://github.com/containerd/containerd/commit/d3e1a2be92e527bf40ea4746b616bd782e108380) Fix nil pointer dereference in NRI GetIPs
* cri: reject CreateContainer when sandbox is not running ([#13669](https://github.com/containerd/containerd/pull/13669))
  * [`872a9502e`](https://github.com/containerd/containerd/commit/872a9502eebee41d58005a8a2eb11c7194025fb1) cri: reject CreateContainer when sandbox is not running
* Add defer in event of mid-function failures in RunPodSandbox to avoid mount leaks ([#13644](https://github.com/containerd/containerd/pull/13644))
  * [`ba7605ee7`](https://github.com/containerd/containerd/commit/ba7605ee7eb74493c464018055b43f0fed5e9289) Add deferred call to ShutdownSandbox to avoid leaks
* fix: avoid content storage pollution by limiting the fallback on ref resolution ([#13620](https://github.com/containerd/containerd/pull/13620))
  * [`36c4275ee`](https://github.com/containerd/containerd/commit/36c4275eed174bdf40df60a5dea2c32191a1e946) fix:avoid content storage pollution by limiting the fallback on ref resolution
</p>
</details>

### Dependency Changes

This release has no dependency changes

Previous release can be found at [v2.2.5](https://github.com/containerd/containerd/releases/tag/v2.2.5)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.35 (Ubuntu 22.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on Linux distributions that do not use glibc >= 2.35. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
