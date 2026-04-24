来源: https://github.com/containerd/containerd/releases/tag/v2.2.3

# containerd/containerd v2.2.3 Release Notes

Published at: 2026-04-14T17:38:30Z

Welcome to the v2.2.3 release of containerd!

The third patch release for containerd 2.2 contains various fixes
and updates including a security patch.

### Security Updates

* **spdystream**
  * [**CVE-2026-35469**](https://github.com/moby/spdystream/security/advisories/GHSA-pc3f-x583-g7j2)

### Highlights

#### Container Runtime Interface (CRI)

* Preserve cgroup mount options for privileged containers ([#13120](https://github.com/containerd/containerd/pull/13120))
* Ensure UpdatePodSandbox returns Unimplemented instead of a generic error ([#13023](https://github.com/containerd/containerd/pull/13023))

#### Go client

* Handle absolute symlinks in rootfs user lookup to fix regressions when using Go 1.24 ([#13015](https://github.com/containerd/containerd/pull/13015))

#### Image Distribution

* Enable mount manager in diff walking to fix layer extraction errors with some snapshotters (e.g., EROFS) ([#13198](https://github.com/containerd/containerd/pull/13198))
* Apply hardening to prevent TOCTOU race during tar extraction ([#12971](https://github.com/containerd/containerd/pull/12971))

#### Runtime

* Restore support for client-mounted roots in Windows containers using process isolation ([#13195](https://github.com/containerd/containerd/pull/13195))
* Update runc to v1.3.5 ([#13061](https://github.com/containerd/containerd/pull/13061))
* Apply absolute symlink resolution to /etc/group in OCI spec to fix lookups on NixOS-style systems ([#13019](https://github.com/containerd/containerd/pull/13019))
* Handle absolute symlinks in rootfs user lookup to fix regressions when using Go 1.24 ([#13015](https://github.com/containerd/containerd/pull/13015))

#### Snapshotters

* Fix bug that caused whiteouts to be ignored when parallel unpack was used ([#13125](https://github.com/containerd/containerd/pull/13125))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Samuel Karp
* Sebastiaan van Stijn
* Maksym Pavlenko
* Chris Henzie
* Derek McGowan
* Paulo Oliveira
* Henry Wang
* Phil Estes
* Wei Fu
* Akihiro Suda
* Gao Xiang
* Ricardo Branco
* Shachar Tal

### Changes
<details><summary>40 commits</summary>
<p>

* Prepare release notes for v2.2.3 ([#13224](https://github.com/containerd/containerd/pull/13224))
  * [`8a0f4ed5d`](https://github.com/containerd/containerd/commit/8a0f4ed5d360171d62ca625bc93f393a36241189) Prepare release notes for v2.2.3
* update github.com/moby/spdystream v0.5.1 ([#13217](https://github.com/containerd/containerd/pull/13217))
  * [`31bd34a06`](https://github.com/containerd/containerd/commit/31bd34a064dc7136413efde09b99a2bdd14dabe9) update github.com/moby/spdystream v0.5.1
* vendor: github.com/klauspost/compress v1.18.5 ([#13197](https://github.com/containerd/containerd/pull/13197))
  * [`1336f6c45`](https://github.com/containerd/containerd/commit/1336f6c45d25c674963e5cb86ee1ea522e6f513e) vendor: github.com/klauspost/compress v1.18.5
* diff/walking: enable mount manager ([#13198](https://github.com/containerd/containerd/pull/13198))
  * [`409f75be8`](https://github.com/containerd/containerd/commit/409f75be8791d53e2e4e96ab060d8db56fd46b1e) diff/walking: enable mount manager
* update runhcs to v0.14.1 ([#13195](https://github.com/containerd/containerd/pull/13195))
  * [`3f33146c1`](https://github.com/containerd/containerd/commit/3f33146c1c199f1d9479d791b105197cebf7b1bc) update runhcs to v0.14.1
* vendor: github.com/Microsoft/hcsshim v0.14.1 ([#13196](https://github.com/containerd/containerd/pull/13196))
  * [`8bd1b74e5`](https://github.com/containerd/containerd/commit/8bd1b74e5dbcd6aad671666e13861a6c8a7bf13c) vendor: github.com/Microsoft/hcsshim v0.14.1
  * [`c6b0be8e1`](https://github.com/containerd/containerd/commit/c6b0be8e1317166d53a05c308db3223293f36f85) vendor: github.com/Microsoft/hcsshim v0.14.0
* update to Go 1.25.9, 1.26.2 ([#13190](https://github.com/containerd/containerd/pull/13190))
  * [`2ecde8cfe`](https://github.com/containerd/containerd/commit/2ecde8cfe12320fefd05e08c83e413a4046bb72c) update to Go 1.25.9, 1.26.2
* Skip TestExportAndImportMultiLayer on s390x ([#13154](https://github.com/containerd/containerd/pull/13154))
  * [`be554f478`](https://github.com/containerd/containerd/commit/be554f478ceb629d3dc3fbd5331b9167cc7a4870) Skip TestExportAndImportMultiLayer on s390x
* Tweak mount info for overlayfs in case of parallel unpack ([#13125](https://github.com/containerd/containerd/pull/13125))
  * [`660de195b`](https://github.com/containerd/containerd/commit/660de195b07db576cbe8aab53a4b6e87cc931347) Tweak mount info for overlayfs in case of parallel unpack
  * [`bc9274a4b`](https://github.com/containerd/containerd/commit/bc9274a4b05342ba1096c73ce6ce8a505ce243ce) Add integration test for issue 13030
* Preserve cgroup mount options for privileged containers ([#13120](https://github.com/containerd/containerd/pull/13120))
  * [`c387890b5`](https://github.com/containerd/containerd/commit/c387890b582324c4cf11e940efe4268a21524ed6) Add integration test for privileged container cgroup mounts
  * [`047a335a6`](https://github.com/containerd/containerd/commit/047a335a69d66e673ddc155fed779152e00a5652) Forward RUNC_FLAVOR env var down to integration tests
  * [`9b2d72ee0`](https://github.com/containerd/containerd/commit/9b2d72ee03b548c8344cd243670e06f863a701a2) Preserve host cgroup mount options for privileged containers
  * [`5b66cd6a0`](https://github.com/containerd/containerd/commit/5b66cd6a0902b7927eeb8107bb5a30d78436eaa3) Move cgroup namespace placement higher in spec builder
* update runc binary to v1.3.5 ([#13061](https://github.com/containerd/containerd/pull/13061))
  * [`584205c2f`](https://github.com/containerd/containerd/commit/584205c2fa986334d22b840293b1060b10ab724e) [release/2.2] update runc binary to v1.3.5
* Fix vagrant on CI ([#13066](https://github.com/containerd/containerd/pull/13066))
  * [`77c6886df`](https://github.com/containerd/containerd/commit/77c6886df6510bf1ac9326436e7b371a28eb5678) Ignore NOCHANGE error
* Fix TOCTOU race bug in tar extraction ([#12971](https://github.com/containerd/containerd/pull/12971))
  * [`fbed68b8f`](https://github.com/containerd/containerd/commit/fbed68b8fb97b778b0caf68167cb0c4ab4af27df) Fix TOCTOU race bug in tar extraction
* cri: UpdatePodSandbox should return Unimplemented ([#13023](https://github.com/containerd/containerd/pull/13023))
  * [`a83510103`](https://github.com/containerd/containerd/commit/a835101036b106386be8e5b433d5ca0f1f0529cd) cri: UpdatePodSandbox should return Unimplemented
* fix(oci): apply absolute symlink resolution to /etc/group ([#13019](https://github.com/containerd/containerd/pull/13019))
  * [`ee4179e52`](https://github.com/containerd/containerd/commit/ee4179e5212c09e7bc4c429bf5b77eabb2b84662) fix(oci): apply absolute symlink resolution to /etc/group
* fix(oci): handle absolute symlinks in rootfs user lookup ([#13015](https://github.com/containerd/containerd/pull/13015))
  * [`fd061b848`](https://github.com/containerd/containerd/commit/fd061b84887177b969e8f8e2499e780341cde0ae) test(oci): use fstest and mock fs for better symlink coverage
  * [`5d44d2c22`](https://github.com/containerd/containerd/commit/5d44d2c220d6296156c1c4fe3a500958667a3708) fix(oci): handle absolute symlinks in rootfs user lookup
* update to go1.25.8, test go1.26.1 ([#13011](https://github.com/containerd/containerd/pull/13011))
  * [`00c776f07`](https://github.com/containerd/containerd/commit/00c776f075f06e4eeb4bfd97e23b3331c5c96bbc) update to go1.25.8, test go1.26.1
</p>
</details>

### Dependency Changes

* **github.com/Microsoft/hcsshim**   v0.14.0-rc.1 -> v0.14.1
* **github.com/klauspost/compress**  v1.18.1 -> v1.18.5
* **github.com/moby/spdystream**     v0.5.0 -> v0.5.1

Previous release can be found at [v2.2.2](https://github.com/containerd/containerd/releases/tag/v2.2.2)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.35 (Ubuntu 22.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on Linux distributions that do not use glibc >= 2.35. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
