来源: https://github.com/containerd/containerd/releases/tag/v2.1.9

# containerd/containerd v2.1.9 Release Notes

Published at: 2026-06-18T23:20:04Z

Welcome to the v2.1.9 release of containerd!

The ninth patch release for containerd 2.1 contains various fixes
and updates including security patches.

### Security Updates

* **containerd**
  * [**CVE-2026-50195**](https://github.com/containerd/containerd/security/advisories/GHSA-cvxm-645q-p574)
  * [**CVE-2026-53488**](https://github.com/containerd/containerd/security/advisories/GHSA-xhf5-7wjv-pqxp)
  * [**CVE-2026-53492**](https://github.com/containerd/containerd/security/advisories/GHSA-33vj-92qq-66hc)
  * [**CVE-2026-53489**](https://github.com/containerd/containerd/security/advisories/GHSA-rgh6-rfwx-v388)
  * [**CVE-2026-47262**](https://github.com/containerd/containerd/security/advisories/GHSA-jpcc-p29g-p8mq)

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Chris Henzie
* Samuel Karp
* Akihiro Suda
* Wei Fu
* Akhil Mohan
* Ben Cressey
* Brian Goff
* Davanum Srinivas
* Derek McGowan
* Jared Ledvina

### Changes
<details><summary>23 commits</summary>
<p>

* Prepare release notes for v2.1.9 ([#13629](https://github.com/containerd/containerd/pull/13629))
  * [`b8b3a86e9`](https://github.com/containerd/containerd/commit/b8b3a86e9e5c240943379f9f89c56943688003c8) Prepare release notes for v2.1.9
  * [`ee965da63`](https://github.com/containerd/containerd/commit/ee965da639fa919559b9cf3717c6647567da9181) Merge commit from fork
  * [`b5e0c4733`](https://github.com/containerd/containerd/commit/b5e0c473300aa973730c90c2117010821640790d) Merge commit from fork
  * [`02045fd46`](https://github.com/containerd/containerd/commit/02045fd4696d21db11767226ff14576522809066) cri: filter CDI annotations on checkpoint restore
  * [`e9c26cf3c`](https://github.com/containerd/containerd/commit/e9c26cf3c8635232ab14956c5e9b788439b0fbc2) Merge commit from fork
  * [`2e4583a9f`](https://github.com/containerd/containerd/commit/2e4583a9f7934961f47a5c4bba6ea779dce95635) cri: do not re-tag restored checkpoints
  * [`6e4ec908a`](https://github.com/containerd/containerd/commit/6e4ec908add52a98cd39137beb3a5a1f3c50232b) Merge commit from fork
  * [`570e69884`](https://github.com/containerd/containerd/commit/570e69884650eb6b0bcee19edd812428adbac8c2) cri: make checkpoint restore robust to unexpected archive content
  * [`3788b4b9e`](https://github.com/containerd/containerd/commit/3788b4b9e0555e0967d4aebd9562a8312fca135f) Merge commit from fork
  * [`290420fa7`](https://github.com/containerd/containerd/commit/290420fa7bbe3c77f5b8e96f6a7946ec3d6cb188) Bound user-database file reads in openBoundedUserFile
  * [`bc5014f45`](https://github.com/containerd/containerd/commit/bc5014f451157074562015677d2bf9633de7fb6a) Merge commit from fork
  * [`429bcb924`](https://github.com/containerd/containerd/commit/429bcb924c278571f3d135933f562a87af1b6a53) Do not propagate reserved labels from image configs
* update runc binary to v1.3.6 ([#13616](https://github.com/containerd/containerd/pull/13616))
  * [`698f2fd66`](https://github.com/containerd/containerd/commit/698f2fd664b09497f7b2c4d63b21ba97debd2f5b) update runc binary to v1.3.6
* update go to 1.26.4/1.25.11 ([#13578](https://github.com/containerd/containerd/pull/13578))
  * [`b8b75a90e`](https://github.com/containerd/containerd/commit/b8b75a90ef06d91f96dbea5d56fcabe00ad376bf) update go to 1.26.4/1.25.11
* Configure udevd children-max for root-test ([#13566](https://github.com/containerd/containerd/pull/13566))
  * [`22515b56f`](https://github.com/containerd/containerd/commit/22515b56fb7c242cf5629f7a9d53537dc77ae42b) Configure udevd children-max for root-test
* Clean up disk space in node e2e workflow ([#13554](https://github.com/containerd/containerd/pull/13554))
  * [`af88d4f60`](https://github.com/containerd/containerd/commit/af88d4f604da9b62dbf61dac72e5835e51ebf474) Clean up disk space in node e2e workflow
* [github-action] release - Empty allowedSignersFile ([#13517](https://github.com/containerd/containerd/pull/13517))
  * [`06df49576`](https://github.com/containerd/containerd/commit/06df495767f744cc9074cec21fe1920e4bd33a21) release - Empty allowedSignersFile
</p>
</details>

### Dependency Changes

This release has no dependency changes

Previous release can be found at [v2.1.8](https://github.com/containerd/containerd/releases/tag/v2.1.8)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.35 (Ubuntu 22.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on Linux distributions that do not use glibc >= 2.35. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
