来源: https://github.com/containerd/containerd/releases/tag/v2.1.7

# containerd/containerd v2.1.7 Release Notes

Published at: 2026-04-14T17:10:00Z

Welcome to the v2.1.7 release of containerd!

The seventh patch release for containerd 2.1 contains various fixes
and updates including a security patch.

### Security Updates

* **spdystream**
  * [**CVE-2026-35469**](https://github.com/moby/spdystream/security/advisories/GHSA-pc3f-x583-g7j2)

### Highlights

#### Container Runtime Interface (CRI)

* Preserve host cgroup mount options for privileged containers ([#13119](https://github.com/containerd/containerd/pull/13119))
* Fix image volumes when using user namespaces in CRI ([#12894](https://github.com/containerd/containerd/pull/12894))
* Fix issue where CNI DEL was never executed after a restart ([#12930](https://github.com/containerd/containerd/pull/12930))
* Hardening: sanitize errors before returning via gRPC to prevent possible credential leaks in pod events ([#12803](https://github.com/containerd/containerd/pull/12803))
* Enable options for pulling encrypted images in CRI ([#12713](https://github.com/containerd/containerd/pull/12713))

#### Image Distribution

* Fix possible panic from WithMediaTypeKeyPrefix ([#13135](https://github.com/containerd/containerd/pull/13135))

#### Runtime

* Update runc binary to v1.3.5 ([#13060](https://github.com/containerd/containerd/pull/13060))
* Hardening: fix possible TOCTOU race bug in tar extraction ([#12969](https://github.com/containerd/containerd/pull/12969))
* Fix unintended dropping of mount flags for read-only bind-mounts in user namespaces ([#12943](https://github.com/containerd/containerd/pull/12943))
* Explicitly set AppArmor ABI to 3.0 ([#12898](https://github.com/containerd/containerd/pull/12898))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* yashsingh74
* Samuel Karp
* Maksym Pavlenko
* Phil Estes
* Wei Fu
* Akhil Mohan
* Chris Henzie
* Sebastiaan van Stijn
* Akihiro Suda
* Rodrigo Campos
* user.email
* Aadhar Agarwal
* Alex Chernyakhovsky
* Chris Adeniyi-Jones
* Derek McGowan
* Justin Alvarez
* Michael Zappa
* Ricardo Branco
* Shachar Tal
* Tõnis Tiigi
* ningmingxiao

### Changes
<details><summary>67 commits</summary>
<p>

* Prepare release notes for v2.1.7 ([#13223](https://github.com/containerd/containerd/pull/13223))
  * [`3a06b6847`](https://github.com/containerd/containerd/commit/3a06b6847e1e285c1f08bd579ac871130e62f8fb) Prepare release notes for v2.1.7
* update github.com/moby/spdystream v0.5.1 ([#13218](https://github.com/containerd/containerd/pull/13218))
  * [`82910b8c1`](https://github.com/containerd/containerd/commit/82910b8c115af227e469a6ea060c7d5188360a43) update github.com/moby/spdystream v0.5.1
* update to Go 1.25.9, 1.26.2 ([#13189](https://github.com/containerd/containerd/pull/13189))
  * [`295bdbbff`](https://github.com/containerd/containerd/commit/295bdbbff7348c99126f726fdf0738f910c9ea92) update to Go 1.25.9, 1.26.2
* Skip TestExportAndImportMultiLayer on s390x ([#13153](https://github.com/containerd/containerd/pull/13153))
  * [`8d0c87494`](https://github.com/containerd/containerd/commit/8d0c874949e54adc16fa94705dcecdbe4a4d4a06) Skip TestExportAndImportMultiLayer on s390x
* Fix possible panic from WithMediaTypeKeyPrefix ([#13135](https://github.com/containerd/containerd/pull/13135))
  * [`fe316cc1f`](https://github.com/containerd/containerd/commit/fe316cc1f8cad5cd9246e2f4eadd6806b94d866d) remotes: fix possible panic from WithMediaTypeKeyPrefix
* Preserve cgroup mount options for privileged containers ([#13119](https://github.com/containerd/containerd/pull/13119))
  * [`c5ee417ab`](https://github.com/containerd/containerd/commit/c5ee417abb903f9c3b5e0c47cae29182d821e4cf) Add integration test for privileged container cgroup mounts
  * [`a5d5a70ed`](https://github.com/containerd/containerd/commit/a5d5a70edda5455286a870b4f7557c24822107fd) Forward RUNC_FLAVOR env var down to integration tests
  * [`515c7f98d`](https://github.com/containerd/containerd/commit/515c7f98d8ca0cc203fc5a459ec2403d94588e92) Preserve host cgroup mount options for privileged containers
  * [`ffd9b61c9`](https://github.com/containerd/containerd/commit/ffd9b61c9e6da45d1ec69d17499afb2392c591d6) Move cgroup namespace placement higher in spec builder
* update runc binary to v1.3.5 ([#13060](https://github.com/containerd/containerd/pull/13060))
  * [`2f025ff8e`](https://github.com/containerd/containerd/commit/2f025ff8ee66f1abb3d76a3a41450eef4a960021) [release/2.1] update runc binary to v1.3.5
* Fix vagrant on CI ([#13065](https://github.com/containerd/containerd/pull/13065))
  * [`f198b7f87`](https://github.com/containerd/containerd/commit/f198b7f8775d887f93e1a024696b095805440e9d) Ignore NOCHANGE error
* Fix TOCTOU race bug in tar extraction ([#12969](https://github.com/containerd/containerd/pull/12969))
  * [`aecfb3dc6`](https://github.com/containerd/containerd/commit/aecfb3dc641561a46a8d7dd6d444163cbae5ff88) Fix TOCTOU race bug in tar extraction
* update to go1.25.8, test go1.26.1 ([#13013](https://github.com/containerd/containerd/pull/13013))
  * [`b71360b59`](https://github.com/containerd/containerd/commit/b71360b59b70e06a43ed3087b1fe178eeaea70aa) update to go1.25.8, test go1.26.1
  * [`ec7320b8b`](https://github.com/containerd/containerd/commit/ec7320b8bb051d054e463f07074757d16d43c70f) update golangci-lint to v2.9.0 with go1.26 support
  * [`01606226e`](https://github.com/containerd/containerd/commit/01606226e6bce9eec8368de8ad8b70f3ff75eb1f) remove windows/arm from cross build
  * [`e082c2e05`](https://github.com/containerd/containerd/commit/e082c2e0572e328f3845a44a200943ce8e3bbe9b) ci: build/test go1.26.0
* update golangci-lint to v2.1.5 ([#13012](https://github.com/containerd/containerd/pull/13012))
  * [`f9528d2d9`](https://github.com/containerd/containerd/commit/f9528d2d958c99132881910940c19e0289f4a97c) build(deps): bump golangci/golangci-lint-action from 9.0.0 to 9.2.0
  * [`de0d60a17`](https://github.com/containerd/containerd/commit/de0d60a17a32e267849b37c344ed844f0b4e51d9) build(deps): bump golangci/golangci-lint-action from 8.0.0 to 9.0.0
  * [`1b240d0e0`](https://github.com/containerd/containerd/commit/1b240d0e0687f66304adb8de1ec4095982d6eb64) build(deps): bump golangci/golangci-lint-action from 6.5.2 to 8.0.0
  * [`67ec314fa`](https://github.com/containerd/containerd/commit/67ec314fa854e2cdf72f74f12a83f980f861dd62) ci: bump golangci from 6.5.2 to 7.0.0
  * [`7fe19a6b2`](https://github.com/containerd/containerd/commit/7fe19a6b26d8a3b288d5a259e9b91b65350e6240) Disable ST1003: struct field Uid should be UID (staticcheck)
  * [`88470c519`](https://github.com/containerd/containerd/commit/88470c51901efcb0db417c046be4313161fcc377) Disable QF1003: could use tagged switch on base (staticcheck)
  * [`1ea353741`](https://github.com/containerd/containerd/commit/1ea353741ee6033a3deebe720a72df1b0fe1dc86) fix: Used nolint to ignore the static checks
  * [`f6ddff11b`](https://github.com/containerd/containerd/commit/f6ddff11bbc321a1cba2cf747aea2767c48a3faf) fix: ST1001: should not use dot imports (staticcheck)
  * [`4ed50edce`](https://github.com/containerd/containerd/commit/4ed50edce7c2d5f1444830471958c3340fd7b787) fix: ST1019: removed the duplicate imports
  * [`808c623d1`](https://github.com/containerd/containerd/commit/808c623d19ea9a2b68643cfc0cb05fe2f804bf08) fix: QF1012: Use of fmt.Fprintln(...)
  * [`e98bc32cd`](https://github.com/containerd/containerd/commit/e98bc32cd51f6014415739924ff58408326be0e2) fix: QF1001: could apply De Morgan's law (staticcheck)
  * [`cebb3583e`](https://github.com/containerd/containerd/commit/cebb3583e1585842f00f46eeefe6a9c3149a57f6) fix: ST1005: error strings should not end with punctuation or newlines
  * [`1852b5d07`](https://github.com/containerd/containerd/commit/1852b5d07e362ab0d5768710f0b65c0de3c5cc2c) fix: QF1004: strings.ReplaceAll instead (staticcheck)
  * [`9b0b270cd`](https://github.com/containerd/containerd/commit/9b0b270cdf7665d734fb021e886951c87674f974) fix: QF1002: could use tagged switch on host (staticcheck)
* cri: Fix image volumes with user namespaces ([#12894](https://github.com/containerd/containerd/pull/12894))
  * [`8d5351929`](https://github.com/containerd/containerd/commit/8d5351929995719667e375a89a55e6463a6957bb) cri: Fix image volumes with user namespaces
* ci: modprobe xt_comment on almalinux ([#12958](https://github.com/containerd/containerd/pull/12958))
  * [`37a98b239`](https://github.com/containerd/containerd/commit/37a98b239c27f32343cf6a11ad5cb431ca74010a) ci: modprobe xt_comment on almalinux
* core/mount: fix getUnprivilegedMountFlags iterating over indices instead of values ([#12943](https://github.com/containerd/containerd/pull/12943))
  * [`74e575ce8`](https://github.com/containerd/containerd/commit/74e575ce8ce95c2616acbffd3711c684757807b5) core/mount: add test for getUnprivilegedMountFlags
  * [`c62466642`](https://github.com/containerd/containerd/commit/c624666429168da3a308697c90e3842681a7a9e8) core/mount: fix getUnprivilegedMountFlags iterating over indices instead of values
* Fix CNI issue where CNI DEL is never executed ([#12930](https://github.com/containerd/containerd/pull/12930))
  * [`9710aed4a`](https://github.com/containerd/containerd/commit/9710aed4a05c964b7fbcee9a13d2ae58a6ee08c2) fix issue where cni del is never executed
* apparmor: explicitly set abi/3.0 ([#12898](https://github.com/containerd/containerd/pull/12898))
  * [`735fcb316`](https://github.com/containerd/containerd/commit/735fcb3164349f11fe2f4615b2e7d26abe25b2d4) apparmor: explicitly set abi/3.0
* integration: Fix TestImageLoad() failure on CI ([#12907](https://github.com/containerd/containerd/pull/12907))
  * [`51a63212f`](https://github.com/containerd/containerd/commit/51a63212ffd7ec0ecf05bd46429561b2fc847896) integration: Fix TestImageLoad() failure on CI
* update to go1.24.13, go1.25.7 ([#12872](https://github.com/containerd/containerd/pull/12872))
  * [`e13f28dbd`](https://github.com/containerd/containerd/commit/e13f28dbdfffdb04a5950ecb0d0e2f16959d5d33) update to go1.24.13, go1.25.7
  * [`c0f18dd59`](https://github.com/containerd/containerd/commit/c0f18dd596374320bb885292218acb840b752837) ci: bump go 1.24.12, 1.25.6
* fix: sanitize error before gRPC return to prevent credential leak in pod events ([#12803](https://github.com/containerd/containerd/pull/12803))
  * [`b65f34e15`](https://github.com/containerd/containerd/commit/b65f34e15c8a5b00dba6f18b976bb65202edfc1b) fix: sanitize error before gRPC return to prevent credential leak in pod events
* build(deps): bump google.golang.org/grpc from 1.72.2 to 1.78.0 ([#12750](https://github.com/containerd/containerd/pull/12750))
  * [`2e5ab3f84`](https://github.com/containerd/containerd/commit/2e5ab3f84da79520198cb8e5068a0ae6a7dc5f99) build(deps): bump google.golang.org/grpc from 1.72.2 to 1.78.0
* cri: emit warning for concurrent CreateContainer ([#12743](https://github.com/containerd/containerd/pull/12743))
  * [`5ef24ddd2`](https://github.com/containerd/containerd/commit/5ef24ddd2773a6a1f681cf0eec5bdb5188b80fe6) cri: emit warning for concurrent CreateContainer
* cri: move noisy CDI logs to debug level ([#12716](https://github.com/containerd/containerd/pull/12716))
  * [`6acd41e02`](https://github.com/containerd/containerd/commit/6acd41e02b94dbcb8d1e5fed63d3716f3529b81b) cri: move noisy CDI logs to debug level
* Uncomment call to add options for pulling encrypted images ([#12713](https://github.com/containerd/containerd/pull/12713))
  * [`3477d705d`](https://github.com/containerd/containerd/commit/3477d705d01962b0c66ed6979e0481e852a517aa) Reinstate image decryption
</p>
</details>

### Dependency Changes

* **github.com/go-jose/go-jose/v4**              v4.0.5 -> v4.1.3
* **github.com/moby/spdystream**                 v0.5.0 -> v0.5.1
* **github.com/stretchr/testify**                v1.10.0 -> v1.11.1
* **go.opentelemetry.io/auto/sdk**               v1.1.0 -> v1.2.1
* **go.opentelemetry.io/otel**                   v1.35.0 -> v1.38.0
* **go.opentelemetry.io/otel/metric**            v1.35.0 -> v1.38.0
* **go.opentelemetry.io/otel/sdk**               v1.35.0 -> v1.38.0
* **go.opentelemetry.io/otel/trace**             v1.35.0 -> v1.38.0
* **golang.org/x/oauth2**                        v0.27.0 -> v0.32.0
* **google.golang.org/genproto/googleapis/api**  56aae31c358a -> ab9386a59fda
* **google.golang.org/genproto/googleapis/rpc**  56aae31c358a -> ab9386a59fda
* **google.golang.org/grpc**                     v1.72.2 -> v1.78.0
* **google.golang.org/protobuf**                 v1.36.7 -> v1.36.10

Previous release can be found at [v2.1.6](https://github.com/containerd/containerd/releases/tag/v2.1.6)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.35 (Ubuntu 22.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on Linux distributions that do not use glibc >= 2.35. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
