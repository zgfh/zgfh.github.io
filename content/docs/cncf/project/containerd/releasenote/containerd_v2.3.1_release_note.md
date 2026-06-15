来源: https://github.com/containerd/containerd/releases/tag/v2.3.1

# containerd/containerd v2.3.1 Release Notes

Published at: 2026-05-20T20:46:56Z

Welcome to the v2.3.1 release of containerd!

The first patch release for containerd 2.3 contains various fixes and improvements.

### Security Updates

* [**CVE-2026-46680**](https://github.com/containerd/containerd/security/advisories/GHSA-fqw6-gf59-qr4w)

### Highlights

* Fix bug where failed gRPC plugins were not tolerated when starting listeners ([#13390](https://github.com/containerd/containerd/pull/13390))

#### Image Storage

* Ensure metadata and mount plugin boltdb files are closed on server shutdown ([#13379](https://github.com/containerd/containerd/pull/13379))

#### Runtime

* Fix handling of out-of-range USER values in OCI spec to avoid unexpected username/group lookups ([#13447](https://github.com/containerd/containerd/pull/13447))
* Fix sandbox task API endpoints for non-runc runtimes and deprecate task fields in Runc options ([#13422](https://github.com/containerd/containerd/pull/13422))
* Apply hardening to default seccomp socket policy by blocking AF_ALG ([#13409](https://github.com/containerd/containerd/pull/13409))

#### Snapshotters

* Disable overlayfs "rebase" capability when running in user namespace ([#13394](https://github.com/containerd/containerd/pull/13394))
* Fix transfer plugin error when EROFS differ is configured but mkfs.erofs is unavailable ([#13364](https://github.com/containerd/containerd/pull/13364))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Maksym Pavlenko
* Akihiro Suda
* Derek McGowan
* Paweł Gronowski
* Brian Goff
* Austin Vazquez
* LEI WANG
* Samuel Karp

### Changes
<details><summary>24 commits</summary>
<p>

* Prepare release notes for v2.3.1 ([#13405](https://github.com/containerd/containerd/pull/13405))
  * [`58af96519`](https://github.com/containerd/containerd/commit/58af9651939577f81969b387b6b2e2aed45ead7d) Prepare release notes for v2.3.1
  * [`8f0b3ca83`](https://github.com/containerd/containerd/commit/8f0b3ca83015873d643db246202b63b8384f14fd) Update api to v1.11.1
* oci: return explicit error for out-of-range USER values ([#13447](https://github.com/containerd/containerd/pull/13447))
  * [`a05ae7885`](https://github.com/containerd/containerd/commit/a05ae78850384eb24effbc597ebc5b19a5e4ba04) oci: return explicit error for out-of-range USER values
* Prepare release notes for api/v1.11.1 ([#13444](https://github.com/containerd/containerd/pull/13444))
  * [`da7aef299`](https://github.com/containerd/containerd/commit/da7aef299c57cc1f290700ade8fa0a5fec69a462) Prepare release notes for api/v1.11.1
* Fix sandbox task API endpoints for non-runc runtimes ([#13422](https://github.com/containerd/containerd/pull/13422))
  * [`5282d4e09`](https://github.com/containerd/containerd/commit/5282d4e09d3bc8b0957780caa7a4644fac7c86a7) Wire task address and version fields
  * [`e44f5f9ec`](https://github.com/containerd/containerd/commit/e44f5f9ec610d95a712d230e8a19ae516e0a26ac) protos: include task API address to CreateTaskRequest
* seccomp: Block AF_ALG in default socket policy ([#13409](https://github.com/containerd/containerd/pull/13409))
  * [`4d80a31bf`](https://github.com/containerd/containerd/commit/4d80a31bf637bc15e83e50a15941bf5bb0cb3988) seccomp: Block AF_ALG in default socket policy
  * [`2ed0d97b6`](https://github.com/containerd/containerd/commit/2ed0d97b6e58def34684a1bffc2ab6931182f221) seccomp: Document socket rule scope and socketcall limitation
* server: tolerate failed gRPC plugins when starting listeners ([#13390](https://github.com/containerd/containerd/pull/13390))
  * [`3a88fdde0`](https://github.com/containerd/containerd/commit/3a88fdde0c613e62415e61738e946b903f1bf32f) server: tolerate failed gRPC plugins when starting listeners
* overlay: disable "rebase" capability when running in UserNS ([#13394](https://github.com/containerd/containerd/pull/13394))
  * [`2be0710b8`](https://github.com/containerd/containerd/commit/2be0710b81b99f47aa4ef0fa2951cd69f80b7e19) overlay: disable "rebase" capability when running in UserNS
* Update Go to 1.26.3 ([#13374](https://github.com/containerd/containerd/pull/13374))
  * [`3b199c22b`](https://github.com/containerd/containerd/commit/3b199c22b13495bd442b32121c2015f301594387) Update Go to 1.26.3
* fix: close boltdb on metadata and mount plugin close ([#13379](https://github.com/containerd/containerd/pull/13379))
  * [`1d601271a`](https://github.com/containerd/containerd/commit/1d601271a73a649de465ed94fa973564211b7f46) fix: close boltdb on metadata and mount plugin close
* Fix optional EROFS differ setup in transfer plugin ([#13364](https://github.com/containerd/containerd/pull/13364))
  * [`d666d2e42`](https://github.com/containerd/containerd/commit/d666d2e4261da664a50c7b1663461747ba8ebb2e) Refactor transfer unpack configuration setup
  * [`ccc3bd7b9`](https://github.com/containerd/containerd/commit/ccc3bd7b90be7afce7a903391d2a34b83424c5e0) Fix optional transfer differ setup
</p>
</details>

### Dependency Changes

* **github.com/containerd/containerd/api**  v1.11.0 -> v1.11.1

Previous release can be found at [v2.3.0](https://github.com/containerd/containerd/releases/tag/v2.3.0)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.35 (Ubuntu 22.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on Linux distributions that do not use glibc >= 2.35. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
