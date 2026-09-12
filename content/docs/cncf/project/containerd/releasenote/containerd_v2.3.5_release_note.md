来源: https://github.com/containerd/containerd/releases/tag/v2.3.5

# containerd/containerd v2.3.5 Release Notes

Published at: 2026-09-04T20:49:28Z

Welcome to the v2.3.5 release of containerd!

The fifth patch release for containerd 2.3 contains various fixes
and updates including security patches.

### Security Updates

* **containerd**
  * [**CVE-2026-53495**](https://github.com/containerd/containerd/security/advisories/GHSA-7jxh-36q5-gcqv)
  * [**GHSA-rp3h-jf77-q9p4**](https://github.com/containerd/containerd/security/advisories/GHSA-rp3h-jf77-q9p4)

### Highlights

#### Image Distribution

* Apply hardening to strip sensitive authentication headers when fetching descriptor URLs ([#14030](https://github.com/containerd/containerd/pull/14030))

#### Runtime

* Avoid hangs and data races when streaming container standard I/O in CRI ([#14094](https://github.com/containerd/containerd/pull/14094))
* Fix missing error messages in OpenTelemetry trace attributes ([#14049](https://github.com/containerd/containerd/pull/14049))
* Fix user and group lookup failures in container rootfs containing symlinked /etc/passwd or /etc/group ([#13999](https://github.com/containerd/containerd/pull/13999))
* Fix configuration loading error when drop-in configuration files have a higher version than the root configuration ([#13995](https://github.com/containerd/containerd/pull/13995))
* Avoid containerd startup hangs when loading shims ([#13983](https://github.com/containerd/containerd/pull/13983))
* Add context to error when shim delete times out ([#13921](https://github.com/containerd/containerd/pull/13921))
* Fix Windows Server 2022 container compatibility on host builds newer than the latest LTSC ([containerd/platforms#34](https://github.com/containerd/platforms/pull/34))

#### Snapshotters

* Fix unpack failure for EROFS images containing the erofs OS feature ([#14062](https://github.com/containerd/containerd/pull/14062))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Phil Estes
* Samuel Karp
* Derek McGowan
* Sebastiaan van Stijn
* Akhil Mohan
* Maksym Pavlenko
* Wei Fu
* Oleh Konko
* Austin Vazquez
* Jing Chen
* Martín Fernández
* Paco Xu
* XlabAI
* Yuanliang Zhang

### Changes
<details><summary>33 commits</summary>
<p>

  * [`934efa5e0`](https://github.com/containerd/containerd/commit/934efa5e09193139c810bcab1fb5ca547dbb6b90) Prepare release notes for v2.3.5
  * [`be419b070`](https://github.com/containerd/containerd/commit/be419b070c178548c8e384d8bc3c8fe0ad6f154a) Merge commit from fork
  * [`9ec55f024`](https://github.com/containerd/containerd/commit/9ec55f024041d0641f6d79841e45c8781141ddaa) cri: cancel ExecSync IO drain on context cancellation
  * [`84ea25bc1`](https://github.com/containerd/containerd/commit/84ea25bc1d7e9f71390ce9d647dbdec4408c05bc) Merge commit from fork
  * [`c53577965`](https://github.com/containerd/containerd/commit/c535779652bc8d541328a36ba598088c09819b97) archive: skip redundant opaque whiteout walks
* Fix data races and a deadlock in the byte stream helpers ([#14094](https://github.com/containerd/containerd/pull/14094))
  * [`9f6be869c`](https://github.com/containerd/containerd/commit/9f6be869c8a6144dc66befde081d6e262b7c4c7d) Fix data races and a deadlock in the byte stream helpers
* plugins: remove some stray logrus imports ([#14063](https://github.com/containerd/containerd/pull/14063))
  * [`6c59399bf`](https://github.com/containerd/containerd/commit/6c59399bf07df45110770dbe28710e2e65c3e8c6) plugins: remove some stray logrus imports
* snapshots/erofs: advertise the erofs OS feature from the snapshotter plugin ([#14062](https://github.com/containerd/containerd/pull/14062))
  * [`f65732115`](https://github.com/containerd/containerd/commit/f65732115d1319a62fd35dc694d5fbe3045594f7) snapshots/erofs: test the advertised erofs feature platform
  * [`5ffc2bbda`](https://github.com/containerd/containerd/commit/5ffc2bbda2a878f87b56ffa2496157f3b814fbc1) erofs: advertise the erofs OS feature platform from the snapshotter
* update runc to v1.5.1 ([#14059](https://github.com/containerd/containerd/pull/14059))
  * [`af445ea0a`](https://github.com/containerd/containerd/commit/af445ea0afd99c4925e5aa2c01a3210146675e2d) update runc to v1.5.1
  * [`c077e43bd`](https://github.com/containerd/containerd/commit/c077e43bd7f2fe75284e10974cec0ff82d38024a) update runc to v1.5.0
* vendor: github.com/containerd/platforms v1.0.0-rc.5 ([#14048](https://github.com/containerd/containerd/pull/14048))
  * [`676a64cad`](https://github.com/containerd/containerd/commit/676a64cad58b76448d3978bc5c7c663c97f99656) vendor: github.com/containerd/platforms v1.0.0-rc.5
* pkg/tracing: handle error and typed-nil Stringer attributes ([#14049](https://github.com/containerd/containerd/pull/14049))
  * [`c7ffd8b00`](https://github.com/containerd/containerd/commit/c7ffd8b006b52ee329757d71430193e91b16b09d) pkg/tracing: handle error and typed-nil Stringer attributes
* docker fetcher: strip sensitive headers on descriptor URLs ([#14030](https://github.com/containerd/containerd/pull/14030))
  * [`58fb846d5`](https://github.com/containerd/containerd/commit/58fb846d53f212330dc6be8f0b13fdf550a741dd) core/remotes/docker: normalize descriptor URL origins
  * [`c7625a1ff`](https://github.com/containerd/containerd/commit/c7625a1ff2826ee58fe5d8924f5612213aefa109) core/remotes/docker: strip sensitive headers on desc.urls fetch
* update runhcs to v0.15.0-rc.4 ([#13990](https://github.com/containerd/containerd/pull/13990))
  * [`6fbb92c33`](https://github.com/containerd/containerd/commit/6fbb92c33c58952735577e8943adc39a8528b888) update runhcs to v0.15.0-rc.4
* pkg/oci: resolve rootfs symlinks for user lookup ([#13999](https://github.com/containerd/containerd/pull/13999))
  * [`53bf030ea`](https://github.com/containerd/containerd/commit/53bf030ea230c8c6c7b2a74f49b4860950b1af93) pkg/oci: resolve rootfs symlinks for user lookup
* Revert "add check on version of drop in configs" ([#13995](https://github.com/containerd/containerd/pull/13995))
  * [`7790c4c21`](https://github.com/containerd/containerd/commit/7790c4c2108ff6667e6a222cb3c9a7a02bc459ec) ensure that the final config version is the higest in the config list
  * [`1125b053f`](https://github.com/containerd/containerd/commit/1125b053f59ed3d4cacc07d1b6cb9e4da17d7fc7) Revert "add check on version of drop in configs"
* fix(runtime): apply load timeout to load shim ([#13983](https://github.com/containerd/containerd/pull/13983))
  * [`460c47b28`](https://github.com/containerd/containerd/commit/460c47b28dbc0f7ef463c94129489532fd708290) fix(runtime): bound shim loading with the load timeout
* Add more context to the shim delete error ([#13921](https://github.com/containerd/containerd/pull/13921))
  * [`7f97bc122`](https://github.com/containerd/containerd/commit/7f97bc1220b50dab542a88b39b09e7ac78ffda42) Add more context to the shim delete error
</p>
</details>

### Changes from containerd/platforms
<details><summary>2 commits</summary>
<p>

* Fix WS2022 compat on hosts past the latest LTSC ([containerd/platforms#34](https://github.com/containerd/platforms/pull/34))
  * [`bacc690`](https://github.com/containerd/platforms/commit/bacc69061152115965f5b17fa59dc4e051ba8dc3) Fix WS2022 compat on hosts past the latest LTSC
</p>
</details>

### Dependency Changes

* **github.com/containerd/platforms**  v1.0.0-rc.4 -> v1.0.0-rc.5

Previous release can be found at [v2.3.4](https://github.com/containerd/containerd/releases/tag/v2.3.4)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.35 (Ubuntu 22.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on Linux distributions that do not use glibc >= 2.35. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
