来源: https://github.com/containerd/containerd/releases/tag/v2.0.6

# containerd/containerd v2.0.6 Release Notes

Published at: 2025-07-30T17:37:13Z

Welcome to the v2.0.6 release of containerd!

The sixth patch release for containerd 2.0 includes various bug fixes and updates.

### Highlights

* Update containerd config dump to reflect plugin config migrations ([#11772](https://github.com/containerd/containerd/pull/11772))

#### Container Runtime Interface (CRI)

* Fix containerd panic when sandbox extension is missing ([#12077](https://github.com/containerd/containerd/pull/12077))
* Fix the panic caused by the failure of RunPodSandbox ([#12047](https://github.com/containerd/containerd/pull/12047))
* Add extension to sandbox metadata store on create sandbox ([#11808](https://github.com/containerd/containerd/pull/11808))
* Fix issue where Prometheus metric names changed for CRI ([#11750](https://github.com/containerd/containerd/pull/11750))
* Fix issue preventing some v2 shims from shutting down properly ([#11741](https://github.com/containerd/containerd/pull/11741))

#### Go client

* Fix lazy gRPC connection mode waiting for connect on client creation ([#12080](https://github.com/containerd/containerd/pull/12080))

#### Image Distribution

* Fix cross-repo mount fallback after authorization failure ([#11832](https://github.com/containerd/containerd/pull/11832))

#### Runtime

* Fix container io to close after runtime create failure ([#12051](https://github.com/containerd/containerd/pull/12051))
* Fix incompatibility with some pre-v3 shims ([#11973](https://github.com/containerd/containerd/pull/11973))
* Update runc binary to v1.3.0 ([#11801](https://github.com/containerd/containerd/pull/11801))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Derek McGowan
* Phil Estes
* Austin Vazquez
* Wei Fu
* Akihiro Suda
* Maksym Pavlenko
* Samuel Karp
* Yang Yang
* Akhil Mohan
* ningmingxiao
* Alberto Garcia Hierro
* Chris Henzie
* HirazawaUi
* Jin Dong
* Kirtana Ashok
* Paweł Gronowski
* Vinayak Goyal

### Changes
<details><summary>49 commits</summary>
<p>

* Prepare release notes for v2.0.6 ([#12145](https://github.com/containerd/containerd/pull/12145))
  * [`d94b0fee6`](https://github.com/containerd/containerd/commit/d94b0fee617968ed919816d7c68d4583578dd697) Prepare release notes for v2.0.6
* ci: bump Go 1.23.11, 1.24.5 ([#12116](https://github.com/containerd/containerd/pull/12116))
  * [`f901e3c81`](https://github.com/containerd/containerd/commit/f901e3c819c9a0f4d7c89258b754557029fa4d93) ci: bump Go 1.23.11, 1.24.5
* go.mod: golang.org/x/* latest ([#12097](https://github.com/containerd/containerd/pull/12097))
  * [`7e4ac4761`](https://github.com/containerd/containerd/commit/7e4ac47612160a2038163a99048942e951fadd29) go.mod: golang.org/x/* latest
* Fix lazy gRPC connection mode waiting for connect on client creation ([#12080](https://github.com/containerd/containerd/pull/12080))
  * [`bed6d1401`](https://github.com/containerd/containerd/commit/bed6d1401087abe707a05da15eaae9626d43fc2a) client/New: Don't unlazy the gRPC connection implicitly
* Fix containerd panic when sandbox extension is missing ([#12077](https://github.com/containerd/containerd/pull/12077))
  * [`8094fa21a`](https://github.com/containerd/containerd/commit/8094fa21a62d67ee70369e1bb3e2973134de18a2) cri:fix containerd panic when can't find sandbox extension
* Fix container io to close after runtime create failure ([#12051](https://github.com/containerd/containerd/pull/12051))
  * [`552f717be`](https://github.com/containerd/containerd/commit/552f717be4dc2ec67c99afa0a2d305bf8a2b55f8) bugfix:close container io when runtime create failed
* Fix the panic caused by the failure of RunPodSandbox ([#12047](https://github.com/containerd/containerd/pull/12047))
  * [`c4394d05a`](https://github.com/containerd/containerd/commit/c4394d05a152b3382b9ecd0bc21c6be915b41216) Fix the panic caused by the failure of RunPodSandbox
* ci: bump golang [1.23.10, 1.24.4] in build and release ([#11969](https://github.com/containerd/containerd/pull/11969))
  * [`54f923a30`](https://github.com/containerd/containerd/commit/54f923a301e0b17712d0580eff032c43cf9edc98) ci: bump golang [1.23.10, 1.24.4] in build and release
  * [`2de777dfe`](https://github.com/containerd/containerd/commit/2de777dfe1372d025688f34110d05c2d7c4649ac) ci: bump golang [1.23.9, 1.24.3] in build and release
* Enable CIs to run on WS2022 and WS2025 ([#11970](https://github.com/containerd/containerd/pull/11970))
  * [`9724cd5ea`](https://github.com/containerd/containerd/commit/9724cd5eaccf15cfa292273dd2eaf2970433400b) Enable CIs to run on WS2022 and WS2025
* Fix incompatibility with some pre-v3 shims ([#11973](https://github.com/containerd/containerd/pull/11973))
  * [`7fc3151fc`](https://github.com/containerd/containerd/commit/7fc3151fca7e0f7548aa7cf2aa76010e8f70b6a8) *: properly shutdown non-groupable shims to prevent resource leaks
  * [`4396336a1`](https://github.com/containerd/containerd/commit/4396336a11c306064ef2bc3358a157fda538400e) core/runtime: should invoke shim binary
  * [`10bcc6929`](https://github.com/containerd/containerd/commit/10bcc6929552f75f8bcbc90447b977ec10edc671) Revert "not set sandbox id when use podsandbox type"
  * [`f38eb62b6`](https://github.com/containerd/containerd/commit/f38eb62b63b5b5a209399a0d9301e4960ef17a12) integration: add testcase to recover ungroupable shim
  * [`2358561d5`](https://github.com/containerd/containerd/commit/2358561d5258624c56f21969fcbfe8c57f189fe3) Update release upgrade tests to test 1.7 and 2.0
  * [`8931b1464`](https://github.com/containerd/containerd/commit/8931b14647cf4c0ca750fd12ebb44d074ea04f73) Fix upgrade test runtime config
* Fetch image with default platform only in TestExportAndImportMultiLayer ([#11944](https://github.com/containerd/containerd/pull/11944))
  * [`fc9235910`](https://github.com/containerd/containerd/commit/fc9235910d4dca7cd6189bb54f522d396c80db51) Fetch image with default platform only in TestExportAndImportMultiLayer
* Add extension to sandbox metadata store on create sandbox ([#11808](https://github.com/containerd/containerd/pull/11808))
  * [`f8679737e`](https://github.com/containerd/containerd/commit/f8679737eb84ac2808599376089f7f28be22a897) store extension when create sandbox in store
* Fix cross-repo mount fallback after authorization failure ([#11832](https://github.com/containerd/containerd/pull/11832))
  * [`cbfa66223`](https://github.com/containerd/containerd/commit/cbfa662234d8ebe78e35a8b6da46dfe5a50ff5c7) fix(docker pusher): if authorizing a cross-repo mount fails, fall back
* .github: do not mark 2.0 releases as latest ([#11820](https://github.com/containerd/containerd/pull/11820))
  * [`7bf4d0a40`](https://github.com/containerd/containerd/commit/7bf4d0a401b8160f2a5ba5c2fe57ef8df60aaa6e) .github: do not mark 2.0 releases as latest
* Update runc binary to v1.3.0 ([#11801](https://github.com/containerd/containerd/pull/11801))
  * [`fa5a08244`](https://github.com/containerd/containerd/commit/fa5a082442f308c5f6664ce178325fdebfe13200) Update runc binary to v1.3.0
* Revert "disable portmap test in ubuntu-22 to make CI happy" ([#11784](https://github.com/containerd/containerd/pull/11784))
  * [`7cf3c604e`](https://github.com/containerd/containerd/commit/7cf3c604eb0bf0b8776f60b7e841476be727c32b) fix unbound SKIP_TEST variable error
  * [`827be7c9d`](https://github.com/containerd/containerd/commit/827be7c9dd805fad6f3e94ca0070045935c38051) Revert "disable portmap test in ubuntu-22 to make CI happy"
* Update containerd config dump to reflect plugin config migrations ([#11772](https://github.com/containerd/containerd/pull/11772))
  * [`626a57dd7`](https://github.com/containerd/containerd/commit/626a57dd72c64ea22fc67f55b0cc8d42e94ba055) fix: update containerd config dump to reflect plugin config migrations.
* core/transfer/local: should not mark completed if it's not found ([#11768](https://github.com/containerd/containerd/pull/11768))
  * [`983dd336f`](https://github.com/containerd/containerd/commit/983dd336f840de2ab7e64ed334adfc40b4f1458e) core/transfer/local: should not mark complete if it's not found
* Fix issue where Prometheus metric names changed for CRI ([#11750](https://github.com/containerd/containerd/pull/11750))
  * [`d2a30ea0c`](https://github.com/containerd/containerd/commit/d2a30ea0caab6bda8dc1dca5823d9d462c3d1b96) Revert criserver metrics subsystem back to cri
* Fix issue preventing some v2 shims from shutting down properly ([#11741](https://github.com/containerd/containerd/pull/11741))
  * [`e9804ee0e`](https://github.com/containerd/containerd/commit/e9804ee0e9d85788648b589c17e67a024a93151e) not set sandbox id when use podsandbox type
* [CI] Fix vagrant ([#11740](https://github.com/containerd/containerd/pull/11740))
  * [`9ddeff7f7`](https://github.com/containerd/containerd/commit/9ddeff7f7df90a7b1a732e2b48a5fcdef199def1) Fix vagrant setup
</p>
</details>

### Dependency Changes

* **golang.org/x/crypto**  v0.36.0 -> v0.40.0
* **golang.org/x/exp**     aacd6d4b4611 -> 6ae5c78190dc
* **golang.org/x/mod**     v0.21.0 -> v0.26.0
* **golang.org/x/net**     v0.37.0 -> v0.42.0
* **golang.org/x/oauth2**  v0.28.0 -> v0.30.0
* **golang.org/x/sync**    v0.12.0 -> v0.16.0
* **golang.org/x/sys**     v0.31.0 -> v0.34.0
* **golang.org/x/term**    v0.30.0 -> v0.33.0
* **golang.org/x/text**    v0.23.0 -> v0.27.0
* **golang.org/x/time**    v0.3.0 -> v0.12.0

Previous release can be found at [v2.0.5](https://github.com/containerd/containerd/releases/tag/v2.0.5)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.31 (Ubuntu 20.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on non-glibc Linux distributions. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
