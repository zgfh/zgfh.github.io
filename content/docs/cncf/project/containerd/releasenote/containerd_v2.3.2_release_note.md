来源: https://github.com/containerd/containerd/releases/tag/v2.3.2

# containerd/containerd v2.3.2 Release Notes

Published at: 2026-06-18T23:16:02Z

Welcome to the v2.3.2 release of containerd!

The second patch release for containerd 2.3 contains various fixes
and updates including security patches.

### Security Updates

* **containerd**
  * [**CVE-2026-50195**](https://github.com/containerd/containerd/security/advisories/GHSA-cvxm-645q-p574)
  * [**CVE-2026-53488**](https://github.com/containerd/containerd/security/advisories/GHSA-xhf5-7wjv-pqxp)
  * [**CVE-2026-53492**](https://github.com/containerd/containerd/security/advisories/GHSA-33vj-92qq-66hc)
  * [**CVE-2026-53489**](https://github.com/containerd/containerd/security/advisories/GHSA-rgh6-rfwx-v388)
  * [**CVE-2026-47262**](https://github.com/containerd/containerd/security/advisories/GHSA-jpcc-p29g-p8mq)

### Highlights

* Fix a data race when reading shim logs on Windows ([#13522](https://github.com/containerd/containerd/pull/13522))

#### Image Distribution

* Allow the last host to retry on transient network errors ([#13591](https://github.com/containerd/containerd/pull/13591))

#### Runtime

* Fix container startup failures caused by concurrent task RPC timeouts during slow container creation ([#13512](https://github.com/containerd/containerd/pull/13512))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Samuel Karp
* Chris Henzie
* Akihiro Suda
* Derek McGowan
* Akhil Mohan
* Austin Vazquez
* Ben Cressey
* Brian Goff
* Maksym Pavlenko
* Sebastiaan van Stijn
* Sergey Kanzhelev

### Changes
<details><summary>30 commits</summary>
<p>

* Prepare release notes for v2.3.2 ([#13627](https://github.com/containerd/containerd/pull/13627))
  * [`fb8ca00b0`](https://github.com/containerd/containerd/commit/fb8ca00b051fa9a9187502b16620fdb46595f1b7) Prepare release notes for v2.3.2
  * [`9c69960ba`](https://github.com/containerd/containerd/commit/9c69960ba495c0aa08797be3f17b3c7712d17a22) Merge commit from fork
  * [`0f6251520`](https://github.com/containerd/containerd/commit/0f6251520569a25f0b52158a97d035726e6af9d2) Merge commit from fork
  * [`91d7471e2`](https://github.com/containerd/containerd/commit/91d7471e2cc7113c31dbcc62007756ba88f8cf9f) cri: filter CDI annotations on checkpoint restore
  * [`7c2e086bf`](https://github.com/containerd/containerd/commit/7c2e086bf31a4402cc19817df3b05ffd74d454e6) Merge commit from fork
  * [`dae67765f`](https://github.com/containerd/containerd/commit/dae67765f2d51ca3e67190c26e51edf496dd4cf4) cri: do not re-tag restored checkpoints
  * [`94aa1e2c1`](https://github.com/containerd/containerd/commit/94aa1e2c1a6ebadf2578fabe85ba7845e1e553c0) Merge commit from fork
  * [`09599078f`](https://github.com/containerd/containerd/commit/09599078f66bb98f6e83087893e3f2349b019fe7) cri: make checkpoint restore robust to unexpected archive content
  * [`e1fdb8d22`](https://github.com/containerd/containerd/commit/e1fdb8d221a27ce017264875e3658d021511ba0c) Merge commit from fork
  * [`ff1d116ef`](https://github.com/containerd/containerd/commit/ff1d116ef9c2d7505306d7d367ef46ff0756460b) Bound user-database file reads in openUserFile
  * [`d156e07cb`](https://github.com/containerd/containerd/commit/d156e07cbe61331f77b72e3603d8b6d67dda59e5) Merge commit from fork
  * [`f99aad54a`](https://github.com/containerd/containerd/commit/f99aad54af507168a1393dfae1559fde4cae9b2c) Do not propagate reserved labels from image configs
* vendor: golang.org/x/crypto v0.53.0 ([#13608](https://github.com/containerd/containerd/pull/13608))
  * [`0b9469501`](https://github.com/containerd/containerd/commit/0b9469501257584fc8ff32c8160dbda3501e99cc) [release/2.3] vendor: golang.org/x/crypto v0.53.0
* resolver: retry on transient network errors ([#13591](https://github.com/containerd/containerd/pull/13591))
  * [`983bbddc1`](https://github.com/containerd/containerd/commit/983bbddc139c607700259a2bec519e7026018c6f) resolver: retry on transient network errors
* update runc binary to v1.4.3 ([#13601](https://github.com/containerd/containerd/pull/13601))
  * [`3f76f2dc1`](https://github.com/containerd/containerd/commit/3f76f2dc1863820a2192af9dcf07584b61db778e) update runc binary to v1.4.3
* update go to 1.26.4 ([#13580](https://github.com/containerd/containerd/pull/13580))
  * [`8a49dfe85`](https://github.com/containerd/containerd/commit/8a49dfe854c1fe869e1531662bef76720104f20b) update go to 1.26.4
  * [`5aa6bb2b7`](https://github.com/containerd/containerd/commit/5aa6bb2b7155a246a05872c70ea8e63e1e69ee70) remove 1.26.2 from CI builds as it is not supported any longer due to the dependency
* Configure udevd children-max for root-test ([#13568](https://github.com/containerd/containerd/pull/13568))
  * [`bfb8aebc0`](https://github.com/containerd/containerd/commit/bfb8aebc07d75608fdb70a6f5592a5bfd753475b) Configure udevd children-max for root-test
* core/runtime/v2: fix race on Windows deferredPipeConnection.c in Read ([#13522](https://github.com/containerd/containerd/pull/13522))
  * [`62ceafff0`](https://github.com/containerd/containerd/commit/62ceafff0a9b37ab01f73d4d5acd2ff105ef4023) core/runtime/v2: fix race on Windows deferredPipeConnection.c in Read
* runc-shim: don't hold the service lock across runc create ([#13512](https://github.com/containerd/containerd/pull/13512))
  * [`9b0c0dc58`](https://github.com/containerd/containerd/commit/9b0c0dc584f275269e29a8b8365ab155705f6ec8) runc-shim: don't hold the service lock across runc create
* contrib/checkpoint: increase timeouts to 30s ([#13459](https://github.com/containerd/containerd/pull/13459))
  * [`f588bc6fb`](https://github.com/containerd/containerd/commit/f588bc6fb7c6001865461ece541cc8a6e12a33fe) contrib/checkpoint: increase timeouts to 30s
</p>
</details>

### Dependency Changes

* **golang.org/x/crypto**  v0.49.0 -> v0.53.0
* **golang.org/x/mod**     v0.35.0 -> v0.36.0
* **golang.org/x/net**     v0.52.0 -> v0.55.0
* **golang.org/x/sync**    v0.20.0 -> v0.21.0
* **golang.org/x/sys**     v0.43.0 -> v0.46.0
* **golang.org/x/term**    v0.41.0 -> v0.44.0
* **golang.org/x/text**    v0.35.0 -> v0.38.0

Previous release can be found at [v2.3.1](https://github.com/containerd/containerd/releases/tag/v2.3.1)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.35 (Ubuntu 22.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on Linux distributions that do not use glibc >= 2.35. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
