来源: https://github.com/containerd/containerd/releases/tag/v2.2.4

# containerd/containerd v2.2.4 Release Notes

Published at: 2026-05-20T23:44:15Z

Welcome to the v2.2.4 release of containerd!

The fourth patch release for containerd 2.2 contains various fixes
and updates including security patches.

* **containerd**
  * [**CVE-2026-46680**](https://github.com/containerd/containerd/security/advisories/GHSA-fqw6-gf59-qr4w)

* **go-jose**
  * [**CVE-2026-34986**](https://github.com/go-jose/go-jose/security/advisories/GHSA-78h2-9frx-2jm8)

* Use mount manager during image volume processing to support snapshotters that require writable block volumes (e.g., EROFS) ([#13242](https://github.com/containerd/containerd/pull/13242))

* Fix handling of out-of-range USER values in OCI spec to avoid unexpected username/group lookups ([#13448](https://github.com/containerd/containerd/pull/13448))
* Apply hardening to block AF_ALG in default socket policy ([#13408](https://github.com/containerd/containerd/pull/13408))
* Fix bugs in sandbox service affecting sandbox creation configuration and event publishing ([#13266](https://github.com/containerd/containerd/pull/13266))
* Set AppArmor abi conditionally to support versions < 3.0 ([#13275](https://github.com/containerd/containerd/pull/13275))

* Disable overlay "rebase" capability when running in a user namespace to fix layer extraction failures ([#13393](https://github.com/containerd/containerd/pull/13393))
* Support both "volatile" and "fsync=volatile" mount options for volatile snapshotter ([#13296](https://github.com/containerd/containerd/pull/13296))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

* Wei Fu
* Akihiro Suda
* Chris Henzie
* Paweł Gronowski
* Samuel Karp
* Brian Goff
* Champ-Goblem
* Chris Chang
* LEI WANG
* Phil Estes
* William Myers

<details><summary>21 commits</summary>
<p>

* oci: return explicit error for out-of-range USER values ([#13448](https://github.com/containerd/containerd/pull/13448))
  * [`d20c6267b`](https://github.com/containerd/containerd/commit/d20c6267b88bfd52277337184916e293c627542a) oci: return explicit error for out-of-range USER values
* seccomp: Block AF_ALG in default socket policy ([#13408](https://github.com/containerd/containerd/pull/13408))
  * [`db34dc4b4`](https://github.com/containerd/containerd/commit/db34dc4b4a111883d21ebf088d0fd0db48d82558) seccomp: Block AF_ALG in default socket policy
  * [`214b141ee`](https://github.com/containerd/containerd/commit/214b141ee94410058db80602efdfa47d21d77513) seccomp: Document socket rule scope and socketcall limitation
* update Go to 1.25.10, 1.26.3 ([#13375](https://github.com/containerd/containerd/pull/13375))
  * [`c2b1856fa`](https://github.com/containerd/containerd/commit/c2b1856fae4f237cda30f59f879b7a0f15ad6033) update Go to 1.25.10, 1.26.3
* overlay: disable "rebase" capability when running in UserNS ([#13393](https://github.com/containerd/containerd/pull/13393))
  * [`63874d262`](https://github.com/containerd/containerd/commit/63874d262ca46871ff291ef5005e739e55702d07) overlay: disable "rebase" capability when running in UserNS
* Support both styles of volatile mount option ([#13296](https://github.com/containerd/containerd/pull/13296))
  * [`2c7d48acf`](https://github.com/containerd/containerd/commit/2c7d48acf2d91a8ac11d11c24c27461acf276101) Support both styles of volatile mount option
* Bump go-jose/go-jose to v4.1.4 to fix GHSA-78h2-9frx-2jm8 ([#13292](https://github.com/containerd/containerd/pull/13292))
  * [`80311db63`](https://github.com/containerd/containerd/commit/80311db633ba2bf339badb18c0ce152994911d27) chore: update go-jose for CVE-2026-34986
* sandbox: forward Create fields, fix event topics ([#13266](https://github.com/containerd/containerd/pull/13266))
  * [`caa29a741`](https://github.com/containerd/containerd/commit/caa29a741321999d2296fc3d89f190b15ce40495) sandbox: forward Create fields, fix event topics
* apparmor: Set abi conditionally ([#13275](https://github.com/containerd/containerd/pull/13275))
  * [`5ab0a1206`](https://github.com/containerd/containerd/commit/5ab0a12065f2a0724d3f8d20012f2065db6d5716) apparmor: Set abi conditionally
* Parameterize K8s version in node-e2e workflow ([#13247](https://github.com/containerd/containerd/pull/13247))
  * [`f9c34f7b1`](https://github.com/containerd/containerd/commit/f9c34f7b1446ff186a717bddd6aa55d68f9e3385) Parameterize K8s version in node-e2e workflow
* cri: use mount manager when image has volumes ([#13242](https://github.com/containerd/containerd/pull/13242))
  * [`39dc2a475`](https://github.com/containerd/containerd/commit/39dc2a47585c42037d6a900dff7570b23fa53745) cri: use mount manager when image has volumes
</p>
</details>

* **github.com/go-jose/go-jose/v4**  v4.1.3 -> v4.1.4

Previous release can be found at [v2.2.3](https://github.com/containerd/containerd/releases/tag/v2.2.3)
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.35 (Ubuntu 22.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on Linux distributions that do not use glibc >= 2.35. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
