来源: https://github.com/containerd/containerd/releases/tag/v2.1.8

# containerd/containerd v2.1.8 Release Notes

Published at: 2026-06-02T18:58:41Z

Welcome to the v2.1.8 release of containerd!

The eighth patch release for containerd 2.1 contains various fixes and updates.

### Security Updates

* [**CVE-2026-46680**](https://github.com/containerd/containerd/security/advisories/GHSA-fqw6-gf59-qr4w)

### Highlights

#### Runtime

* Fix handling of out-of-range USER values in OCI spec to avoid unexpected username/group lookups ([#13497](https://github.com/containerd/containerd/pull/13497))
* Fix bugs in sandbox service affecting sandbox creation configuration and event publishing ([#13272](https://github.com/containerd/containerd/pull/13272))
* Set AppArmor abi conditionally to support versions < 3.0 ([#13274](https://github.com/containerd/containerd/pull/13274))

#### Snapshotters

* Support both "volatile" and "fsync=volatile" mount options for volatile snapshotter ([#13297](https://github.com/containerd/containerd/pull/13297))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Wei Fu
* Brian Goff
* Chris Henzie
* Samuel Karp
* LEI WANG
* William Myers

### Changes
<details><summary>12 commits</summary>
<p>

* Prepare release notes for v2.1.8 ([#13489](https://github.com/containerd/containerd/pull/13489))
  * [`07f2265d4`](https://github.com/containerd/containerd/commit/07f2265d48d5928733ff547ad5db005cfd93b2bd) Prepare release notes for v2.1.8
* oci: return explicit error for out-of-range USER values ([#13497](https://github.com/containerd/containerd/pull/13497))
  * [`2054cc54c`](https://github.com/containerd/containerd/commit/2054cc54c101831e44c83b4185e1e3d09ff50840) oci: return explicit error for out-of-range USER values
* Support both styles of volatile mount option ([#13297](https://github.com/containerd/containerd/pull/13297))
  * [`677e8f08a`](https://github.com/containerd/containerd/commit/677e8f08a0492ed68144931f37513c8f9d69c411) Support both styles of volatile mount option
* backport: sandbox: forward Create fields, fix event topics ([#13272](https://github.com/containerd/containerd/pull/13272))
  * [`f3b4b35c9`](https://github.com/containerd/containerd/commit/f3b4b35c94cab35c398df89800b198e94984e2f6) sandbox: forward Create fields, fix event topics
* apparmor: Set abi conditionally ([#13274](https://github.com/containerd/containerd/pull/13274))
  * [`eba90da61`](https://github.com/containerd/containerd/commit/eba90da61a53494bacfbe0e97f5f9559000b068f) apparmor: Set abi conditionally
* Add GitHub Action for k8s node e2e tests ([#13249](https://github.com/containerd/containerd/pull/13249))
  * [`b8b110584`](https://github.com/containerd/containerd/commit/b8b1105842ba6df2e956f88448253545be6d8785) Add GitHub Action for k8s node e2e tests
</p>
</details>

### Dependency Changes

This release has no dependency changes

Previous release can be found at [v2.1.7](https://github.com/containerd/containerd/releases/tag/v2.1.7)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.35 (Ubuntu 22.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on Linux distributions that do not use glibc >= 2.35. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
