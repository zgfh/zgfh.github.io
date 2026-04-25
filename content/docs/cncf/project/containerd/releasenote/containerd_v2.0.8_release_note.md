来源: https://github.com/containerd/containerd/releases/tag/v2.0.8

# containerd/containerd v2.0.8 Release Notes

Published at: 2026-04-14T17:20:04Z

Welcome to the v2.0.8 release of containerd!

The eighth patch release for containerd 2.0 includes various bug fixes and updates, including a security fix.

### Security Updates

* **spdystream**
  * [**CVE-2026-35469**](https://github.com/moby/spdystream/security/advisories/GHSA-pc3f-x583-g7j2)

### Highlights

#### Container Runtime Interface (CRI)

* Sanitize error before gRPC return to prevent possible credential leak in pod events ([#13181](https://github.com/containerd/containerd/pull/13181))
* Fix CNI issue where DEL is never executed after a restart ([#13179](https://github.com/containerd/containerd/pull/13179))

#### Runtime

* Update selinux to v1.13.1 ([#13193](https://github.com/containerd/containerd/pull/13193))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Samuel Karp
* Michael Zappa
* Akhil Mohan
* Laura Lorenz
* Phil Estes
* Aadhar Agarwal
* Andrey Noskov
* Chris Henzie
* Davanum Srinivas
* Maksym Pavlenko
* Rodrigo Campos
* Sebastiaan van Stijn
* ningmingxiao
* yashsingh74

### Changes
<details><summary>32 commits</summary>
<p>

* Prepare release notes for v2.0.8 (missed line) ([#13235](https://github.com/containerd/containerd/pull/13235))
  * [`c07b94f19`](https://github.com/containerd/containerd/commit/c07b94f19bc7c473c04105749ee84c27d28bec55) Prepare release notes for v2.0.8 (missed line)
* Prepare release notes for v2.0.8 ([#13222](https://github.com/containerd/containerd/pull/13222))
  * [`c54b69f1a`](https://github.com/containerd/containerd/commit/c54b69f1a1552ac0d579c255a9befde271087898) Prepare release notes for v2.0.8
* update github.com/moby/spdystream v0.5.1 ([#13219](https://github.com/containerd/containerd/pull/13219))
  * [`fde1480df`](https://github.com/containerd/containerd/commit/fde1480df4c6f54a41e447b4ee0ddc90b21802e4) update github.com/moby/spdystream v0.5.1
* update to Go 1.25.9, 1.26.2 ([#13199](https://github.com/containerd/containerd/pull/13199))
  * [`5b2eee8a2`](https://github.com/containerd/containerd/commit/5b2eee8a29366afb5035e0fa814365f16529a1a8) update to Go 1.25.9, 1.26.2
  * [`c579db16e`](https://github.com/containerd/containerd/commit/c579db16e21022d1ccd2df3ae8790319674b06f7) update golangci-lint to v2.9.0 with go1.26 support
  * [`185ddcfd0`](https://github.com/containerd/containerd/commit/185ddcfd0cda36ca0e93a794fb455f5b219f7b0d) remove windows/arm from cross build
  * [`8538158df`](https://github.com/containerd/containerd/commit/8538158dfacc448ef330eb419d816eaec29c7765) Ignore warnings for golangci-lint bump
  * [`1cff32695`](https://github.com/containerd/containerd/commit/1cff32695c410065612ad5f75f74bae43726ef3f) ci: bump golangci from 6.5.2 to 7.0.0
* Updating selinux to v1.13.1 ([#13193](https://github.com/containerd/containerd/pull/13193))
  * [`2e02b8bb3`](https://github.com/containerd/containerd/commit/2e02b8bb316e0a72ee78921ae7090cdb22330a5e) Skip github.com/cyphar/filepath-securejoin license checks
  * [`e71fc560b`](https://github.com/containerd/containerd/commit/e71fc560b19bddbe5c623bdec0446e9f52963f5f) Updating selinux to v1.13.1
* fix: sanitize error before gRPC return to prevent credential leak in pod events ([#13181](https://github.com/containerd/containerd/pull/13181))
  * [`868869eb9`](https://github.com/containerd/containerd/commit/868869eb9eff7a639bee9ba6324bd654a0449232) fix: sanitize error before gRPC return to prevent credential leak in pod events
  * [`40632e4f2`](https://github.com/containerd/containerd/commit/40632e4f2aa7b8996afe29071db2d7ca072df0a6) fix: redact all query parameters in CRI error logs
* CODEOWNERS: mark Sam and Chris as owners for 2.0 ([#13174](https://github.com/containerd/containerd/pull/13174))
  * [`85c3b2b02`](https://github.com/containerd/containerd/commit/85c3b2b0276b1a9786b76d264c16be2fec8e8356) CODEOWNERS: mark Sam and Chris as owners for 2.0
* Update github.com/moby/spdystream v0.4.0->v0.5.0 ([#13182](https://github.com/containerd/containerd/pull/13182))
  * [`902d804c9`](https://github.com/containerd/containerd/commit/902d804c99143d06b8fa0cd569610800e72f885a) Update github.com/moby/spdystream v0.4.0->v0.5.0
* Fix CNI issue where CNI DEL is never executed ([#13179](https://github.com/containerd/containerd/pull/13179))
  * [`e92d7b131`](https://github.com/containerd/containerd/commit/e92d7b131182de4738ef7d6973e20048f9a9f658) make linter happy in release
  * [`12fc0e6ca`](https://github.com/containerd/containerd/commit/12fc0e6ca205bae9c97ef4e6ad534549818a8456) add integration test for cni result nil
  * [`8d912c6a2`](https://github.com/containerd/containerd/commit/8d912c6a2be3546e5de0b221d9beb76e62c148ed) address comment
  * [`742f8b8f6`](https://github.com/containerd/containerd/commit/742f8b8f60a2d5e806ea858265d491d9b4930eab) fix issue where cni del is never executed
* Cherry-picks to fix CI ([#13175](https://github.com/containerd/containerd/pull/13175))
  * [`f24653597`](https://github.com/containerd/containerd/commit/f246535975c99ad48b3c7f5faa3eed9cfc2aa728) Ignore NOCHANGE error
  * [`9c656fab4`](https://github.com/containerd/containerd/commit/9c656fab42dc6a14a929f09bc4e6e24f8fe1a7b1) ci: update CIFuzz actions to support Ubuntu 24.04
  * [`c71c4a091`](https://github.com/containerd/containerd/commit/c71c4a091aebff6af86c107e26235ead10cf9b4b) integration: Fix TestImageLoad() failure on CI
  * [`bfee29999`](https://github.com/containerd/containerd/commit/bfee299990b409f709d03d026b74393cf6396cc9) ci: modprobe xt_comment on almalinux
</p>
</details>

### Dependency Changes

* **github.com/cyphar/filepath-securejoin**  v0.5.1 **_new_**
* **github.com/moby/spdystream**             v0.4.0 -> v0.5.1
* **github.com/opencontainers/selinux**      v1.11.1 -> v1.13.1

Previous release can be found at [v2.0.7](https://github.com/containerd/containerd/releases/tag/v2.0.7)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.31 (Ubuntu 20.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on non-glibc Linux distributions. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
