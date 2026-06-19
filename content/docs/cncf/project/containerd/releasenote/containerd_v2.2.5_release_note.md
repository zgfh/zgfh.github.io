来源: https://github.com/containerd/containerd/releases/tag/v2.2.5

# containerd/containerd v2.2.5 Release Notes

Published at: 2026-06-18T23:11:33Z

Welcome to the v2.2.5 release of containerd!

The fifth patch release for containerd 2.2 contains various fixes
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

* Samuel Karp
* Chris Henzie
* Akihiro Suda
* Derek McGowan
* Maksym Pavlenko
* Akhil Mohan
* Ben Cressey
* Brian Goff
* Davanum Srinivas
* Sebastiaan van Stijn

### Changes
<details><summary>27 commits</summary>
<p>

* Prepare release notes for v2.2.5 ([#13628](https://github.com/containerd/containerd/pull/13628))
  * [`269031099`](https://github.com/containerd/containerd/commit/269031099e51bd875bc8097b79a41fd00af08a28) Prepare release notes for v2.2.5
  * [`ad59aa564`](https://github.com/containerd/containerd/commit/ad59aa5647ac505a97965f521e21fcd4f9403631) Merge commit from fork
  * [`0b4d23690`](https://github.com/containerd/containerd/commit/0b4d23690ead6f34fb990155e1cc19d27f906370) Merge commit from fork
  * [`be8460656`](https://github.com/containerd/containerd/commit/be8460656b84c4a1a4b244a03801e9fff1e914d3) cri: filter CDI annotations on checkpoint restore
  * [`347240f72`](https://github.com/containerd/containerd/commit/347240f72479246a801ea4ec4304e180ac45b85e) Merge commit from fork
  * [`cff578841`](https://github.com/containerd/containerd/commit/cff57884176a1e6ba0857a417753d799958e0f46) cri: do not re-tag restored checkpoints
  * [`668cf2c2f`](https://github.com/containerd/containerd/commit/668cf2c2fd0d9c6394f2aa95c44c4735c353d380) Merge commit from fork
  * [`357652293`](https://github.com/containerd/containerd/commit/357652293053d0cd3ed565f718b0050aa662ae1a) cri: make checkpoint restore robust to unexpected archive content
  * [`d43da05af`](https://github.com/containerd/containerd/commit/d43da05af9b515b89740889a84a91c8ed27a73f0) Merge commit from fork
  * [`30708e8d1`](https://github.com/containerd/containerd/commit/30708e8d1142287e9c6bb839f1b3f84c71ca4485) Bound user-database file reads in openUserFile
  * [`028647ea2`](https://github.com/containerd/containerd/commit/028647ea2597eb3f7add39c6171b62768e0be74c) Merge commit from fork
  * [`b6072a49f`](https://github.com/containerd/containerd/commit/b6072a49f8d3f6efc5ac9895efbb1852b16a2602) Do not propagate reserved labels from image configs
* vendor: golang.org/x/crypto v0.53.0 ([#13607](https://github.com/containerd/containerd/pull/13607))
  * [`cfea2c141`](https://github.com/containerd/containerd/commit/cfea2c1413a55243e5d8db9def5ed5e3e595894e) [release/2.2] vendor: golang.org/x/crypto v0.53.0
* update runc binary to v1.3.6 ([#13606](https://github.com/containerd/containerd/pull/13606))
  * [`fc96ea6b3`](https://github.com/containerd/containerd/commit/fc96ea6b3fbcd8fb467914a3fe5f977a5705efff) update runc binary to v1.3.6
* update go to 1.26.4/1.25.11 ([#13577](https://github.com/containerd/containerd/pull/13577))
  * [`5a125fd66`](https://github.com/containerd/containerd/commit/5a125fd66a384f1d5b2221d3e1b9cfb92d99fd58) update go to 1.26.4/1.25.11
* Configure udevd children-max for root-test ([#13567](https://github.com/containerd/containerd/pull/13567))
  * [`2b7dfbd7f`](https://github.com/containerd/containerd/commit/2b7dfbd7ff229288f8b94ef73c1a26d71df39f51) Configure udevd children-max for root-test
* Clean up disk space in node e2e workflow ([#13548](https://github.com/containerd/containerd/pull/13548))
  * [`1500e586f`](https://github.com/containerd/containerd/commit/1500e586f795216ff8081e995267d31d79cc97d6) Clean up disk space in node e2e workflow
* contrib/checkpoint: increase timeouts to 30s ([#13460](https://github.com/containerd/containerd/pull/13460))
  * [`9991e944e`](https://github.com/containerd/containerd/commit/9991e944ef2b9d7a0407cb2e46c84dbd2b2dcab0) contrib/checkpoint: increase timeouts to 30s
* release: don't mark 2.2 releases as latest ([#13458](https://github.com/containerd/containerd/pull/13458))
  * [`55a1f85d5`](https://github.com/containerd/containerd/commit/55a1f85d587570be1b1852eb17872d59aaf5a5aa) release: don't mark 2.2 releases as latest
</p>
</details>

### Dependency Changes

* **golang.org/x/crypto**  v0.45.0 -> v0.53.0
* **golang.org/x/mod**     v0.29.0 -> v0.36.0
* **golang.org/x/net**     v0.47.0 -> v0.55.0
* **golang.org/x/sync**    v0.18.0 -> v0.21.0
* **golang.org/x/sys**     v0.38.0 -> v0.46.0
* **golang.org/x/term**    v0.37.0 -> v0.44.0
* **golang.org/x/text**    v0.31.0 -> v0.38.0

Previous release can be found at [v2.2.4](https://github.com/containerd/containerd/releases/tag/v2.2.4)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.35 (Ubuntu 22.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on Linux distributions that do not use glibc >= 2.35. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
