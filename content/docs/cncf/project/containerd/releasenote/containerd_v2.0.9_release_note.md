来源: https://github.com/containerd/containerd/releases/tag/v2.0.9

# containerd/containerd v2.0.9 Release Notes

Published at: 2026-05-20T22:25:01Z

Welcome to the v2.0.9 release of containerd!

The ninth patch release for containerd 2.0 includes various bug fixes and updates, including a security fix.

* **containerd**
  * [**CVE-2026-46680**](https://github.com/containerd/containerd/security/advisories/GHSA-fqw6-gf59-qr4w)

* Ensure container exit events are not lost during containerd restart ([#11633](https://github.com/containerd/containerd/pull/11633))

* Apply hardening to avoid TOCTOU race in tar extraction ([#13237](https://github.com/containerd/containerd/pull/13237))

* Fix handling of out-of-range USER values in OCI spec to avoid unexpected username/group lookups ([#13449](https://github.com/containerd/containerd/pull/13449))
* Apply hardening to block AF_ALG in default socket policy ([#13407](https://github.com/containerd/containerd/pull/13407))
* Support both "volatile" and "fsync=volatile" mount options for volatile snapshotter ([#13298](https://github.com/containerd/containerd/pull/13298))
* Fix bugs in sandbox service affecting sandbox creation configuration and event publishing ([#13271](https://github.com/containerd/containerd/pull/13271))
* Set AppArmor abi conditionally to support versions < 3.0 ([#13277](https://github.com/containerd/containerd/pull/13277))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

* Samuel Karp
* Chris Henzie
* Maksym Pavlenko
* Paweł Gronowski
* Wei Fu
* Brian Goff
* LEI WANG
* Shachar Tal
* William Myers
* ningmingxiao

<details><summary>18 commits</summary>
<p>

  * [`2da65b8bd`](https://github.com/containerd/containerd/commit/2da65b8bd9b32ad7b2e75161306b6dc0e08bd57f) Prepare release notes for v2.0.9
* oci: return explicit error for out-of-range USER values ([#13449](https://github.com/containerd/containerd/pull/13449))
  * [`1a3d1c85e`](https://github.com/containerd/containerd/commit/1a3d1c85e0d048ca15a735805a4a71a7c09e5906) oci: return explicit error for out-of-range USER values
* seccomp: Block AF_ALG in default socket policy ([#13407](https://github.com/containerd/containerd/pull/13407))
  * [`fa2a97505`](https://github.com/containerd/containerd/commit/fa2a9750584401a50f3a07e39d9efdd5097c76e2) seccomp: Block AF_ALG in default socket policy
  * [`4b2b07879`](https://github.com/containerd/containerd/commit/4b2b07879d7c11ef05074e7b2fa9cb636f7b63cb) seccomp: Document socket rule scope and socketcall limitation
* Support both styles of volatile mount option ([#13298](https://github.com/containerd/containerd/pull/13298))
  * [`ea56c9605`](https://github.com/containerd/containerd/commit/ea56c960571d981f66b005df82bee9ce0ccaf79f) Support both styles of volatile mount option
* backport: sandbox: forward Create fields, fix event topics ([#13271](https://github.com/containerd/containerd/pull/13271))
  * [`3d34dc820`](https://github.com/containerd/containerd/commit/3d34dc82065b8cab9d20188583ce6979cdf6d30b) sandbox: forward Create fields, fix event topics
* apparmor: Set abi conditionally ([#13277](https://github.com/containerd/containerd/pull/13277))
  * [`4b260843e`](https://github.com/containerd/containerd/commit/4b260843e3f6c5b75962829a1e8c878f344dbb71) apparmor: Set abi conditionally
* Add GitHub Action for k8s node e2e tests ([#13257](https://github.com/containerd/containerd/pull/13257))
  * [`3e9c4d1e0`](https://github.com/containerd/containerd/commit/3e9c4d1e0c12d0fc7f26fe57fa9c44e4803874b9) Add GitHub Action for k8s node e2e tests
* Fix TOCTOU race bug in tar extraction ([#13237](https://github.com/containerd/containerd/pull/13237))
  * [`cf73e6873`](https://github.com/containerd/containerd/commit/cf73e68731f80077fad3124bee8c0cfe6aa063f8) Fix TOCTOU race bug in tar extraction
* cri:fix lost container exit events if they arrive before info is cached ([#11633](https://github.com/containerd/containerd/pull/11633))
  * [`2320b319e`](https://github.com/containerd/containerd/commit/2320b319e096c5926f956d4abfe52177c5e05727) cri:fix lost container exit events if they arrive before info is cached
</p>
</details>

This release has no dependency changes

Previous release can be found at [v2.0.8](https://github.com/containerd/containerd/releases/tag/v2.0.8)
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.31 (Ubuntu 20.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on non-glibc Linux distributions. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
