来源: https://github.com/containerd/containerd/releases/tag/v2.2.8

# containerd/containerd v2.2.8 Release Notes

Published at: 2026-09-04T20:49:19Z

Welcome to the v2.2.8 release of containerd!

The eighth patch release for containerd 2.2 contains various fixes
and updates including security patches.

### Security Updates

* **containerd**
  * [**CVE-2026-53495**](https://github.com/containerd/containerd/security/advisories/GHSA-7jxh-36q5-gcqv)
  * [**GHSA-rp3h-jf77-q9p4**](https://github.com/containerd/containerd/security/advisories/GHSA-rp3h-jf77-q9p4)

### Highlights

#### Image Distribution

* Apply hardening to strip sensitive authentication headers when fetching descriptor URLs ([#14044](https://github.com/containerd/containerd/pull/14044))

#### Runtime

* Set SystemTemp environment variable on Windows so temp directory overrides work for SYSTEM services ([#14102](https://github.com/containerd/containerd/pull/14102))
* Fix user and group lookup failures in container rootfs containing symlinked /etc/passwd or /etc/group ([#14005](https://github.com/containerd/containerd/pull/14005))

#### Snapshotters

* Fix EROFS snapshot creation failure caused by concurrent snapshot removal ([#13950](https://github.com/containerd/containerd/pull/13950))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Samuel Karp
* Wei Fu
* Oleh Konko
* Chris Ayoub
* Maksim An
* XlabAI

### Changes
<details><summary>14 commits</summary>
<p>

  * [`4864b1814`](https://github.com/containerd/containerd/commit/4864b18144ed746eda776112370bf83121348275) Prepare release notes for v2.2.8
  * [`3458b7fd3`](https://github.com/containerd/containerd/commit/3458b7fd367be3981b57262c5f0c267bf0570a71) Merge commit from fork
  * [`22ccf4314`](https://github.com/containerd/containerd/commit/22ccf4314d1fe0834f8e28f10d37d5305ef9880c) cri: cancel ExecSync IO drain on context cancellation
  * [`2bf01ce17`](https://github.com/containerd/containerd/commit/2bf01ce17baa2cc3904f377f2cc9d815631ac704) Merge commit from fork
  * [`45166eb82`](https://github.com/containerd/containerd/commit/45166eb828c9f8605db44299836a87b78bda701b) archive: skip redundant opaque whiteout walks
* Set SystemTemp env var to config temp on Windows ([#14102](https://github.com/containerd/containerd/pull/14102))
  * [`2c722ad04`](https://github.com/containerd/containerd/commit/2c722ad0418df21ff173c3f54dd3dd4713302cd8) Set SystemTemp env var to config temp on Windows
* pkg/oci: resolve rootfs symlinks for user lookup ([#14005](https://github.com/containerd/containerd/pull/14005))
  * [`196664bc0`](https://github.com/containerd/containerd/commit/196664bc020998bf20f3d96708edcaacc5c891d0) pkg/oci: resolve rootfs symlinks for user lookup
* docker fetcher: strip sensitive headers on descriptor URLs ([#14044](https://github.com/containerd/containerd/pull/14044))
  * [`6da9d9528`](https://github.com/containerd/containerd/commit/6da9d9528820212d3e0d357738acff1b34ee4188) core/remotes/docker: normalize descriptor URL origins
  * [`4f7851699`](https://github.com/containerd/containerd/commit/4f7851699263c4b7fff39e80af3464ad07d5bdc1) core/remotes/docker: strip sensitive headers on desc.urls fetch
* snapshots/erofs: protect snapshot staging from cleanup ([#13950](https://github.com/containerd/containerd/pull/13950))
  * [`f7075a224`](https://github.com/containerd/containerd/commit/f7075a224aa2f17d5e4afcc3026a6ac644b5c93b) snapshots/erofs: protect snapshot staging from cleanup
</p>
</details>

### Dependency Changes

This release has no dependency changes

Previous release can be found at [v2.2.7](https://github.com/containerd/containerd/releases/tag/v2.2.7)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.35 (Ubuntu 22.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on Linux distributions that do not use glibc >= 2.35. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
