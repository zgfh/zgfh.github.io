来源: https://github.com/containerd/containerd/releases/tag/v2.2.7

# containerd/containerd v2.2.7 Release Notes

Published at: 2026-08-12T18:02:25Z

Welcome to the v2.2.7 release of containerd!

The seventh patch release for containerd 2.2 contains various fixes and updates.

### Highlights

#### Container Runtime Interface (CRI)

* Disable checkpoint restore in CreateContainer by default, requiring the enable_experimental_restore_via_create configuration option to enable ([#13937](https://github.com/containerd/containerd/pull/13937))
* Deprecate checkpoint restore in CreateContainer ([#13872](https://github.com/containerd/containerd/pull/13872))
* Support non-UTF-8 binary environment variable values in CRI ([#13455](https://github.com/containerd/containerd/pull/13455))
* Disable checkpoint restore codepaths when CRIU is not installed and add enable_criu configuration option ([#13795](https://github.com/containerd/containerd/pull/13795))
* Enable OCI runtime feature introspection for non-runc runtimes in CRI ([#13779](https://github.com/containerd/containerd/pull/13779))

#### Runtime

* Enable log scrubbing by default on Windows ([#13882](https://github.com/containerd/containerd/pull/13882))
* Fix mount manager activation error when activation already exists ([#13823](https://github.com/containerd/containerd/pull/13823))

#### Breaking

* Disable checkpoint restore in CreateContainer by default, requiring the enable_experimental_restore_via_create configuration option to enable ([#13937](https://github.com/containerd/containerd/pull/13937))

#### Deprecations

* Deprecate checkpoint restore in CreateContainer ([#13872](https://github.com/containerd/containerd/pull/13872))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Samuel Karp
* Jordan Liggitt
* Akihiro Suda
* Amir Alavi
* Chris Henzie
* Derek McGowan
* Maksym Pavlenko
* Mike Brown
* Phil Estes

### Changes
<details><summary>21 commits</summary>
<p>

  * [`43f299db6`](https://github.com/containerd/containerd/commit/43f299db6e087ef066e47c3cf41ee56723983eb3) Prepare release notes for v2.2.7
* cri: disable restore in CreateContainer by default ([#13937](https://github.com/containerd/containerd/pull/13937))
  * [`5c3a47036`](https://github.com/containerd/containerd/commit/5c3a47036ec08f8a7517a01a0baf113d6146eca0) cri: disable restore in CreateContainer by default
* Use ScrubLogs by default on Windows ([#13882](https://github.com/containerd/containerd/pull/13882))
  * [`4c93ae6d5`](https://github.com/containerd/containerd/commit/4c93ae6d5e7eaa5957887d469aa610763c2f8b42) ctr: add --scrub-logs flag for Windows
  * [`a124c7e35`](https://github.com/containerd/containerd/commit/a124c7e354da7252a363f3a3eaafb5a81a6d508e) cri/config: use ScrubLogs by default on Windows
* cri: deprecate restore in CreateContainer ([#13872](https://github.com/containerd/containerd/pull/13872))
  * [`c59d041d8`](https://github.com/containerd/containerd/commit/c59d041d84cb402b991338f2894c0637eb5dc608) cri: deprecate restore in CreateContainer
* Handle []byte envvar value for CRI ([#13455](https://github.com/containerd/containerd/pull/13455))
  * [`6cdc2ddce`](https://github.com/containerd/containerd/commit/6cdc2ddce8aa962135459e02d41ab84772e8e08e) Handle []byte envvar value
  * [`a60898833`](https://github.com/containerd/containerd/commit/a60898833909a6bb4c38cc1fa47d44434edfe9bf) update to v0.34.x kubernetes dependencies
* Fix mount manager activation error when already exists ([#13823](https://github.com/containerd/containerd/pull/13823))
  * [`54ecff6ca`](https://github.com/containerd/containerd/commit/54ecff6cabbbbf5b7ffa606cdeeba13131a03968) core/mount: Fix mount manager activation error when already exists
* Disable checkpoint restore codepath when CRIU is not installed ([#13795](https://github.com/containerd/containerd/pull/13795))
  * [`fd966ba29`](https://github.com/containerd/containerd/commit/fd966ba2904fc92c429fff41b0e4d6cd2384fe7c) github/workflows: install criu in node-e2e
  * [`7d41b25c9`](https://github.com/containerd/containerd/commit/7d41b25c9884c0f94acdb0f7e78fbab2752fccb6) cri: add enable_criu configuration option
  * [`48116fa59`](https://github.com/containerd/containerd/commit/48116fa596fd0e926749dcdfd3ef92da00fc6dc8) cri: validate CRIU availability and version early
* fix(cri): introspect OCI runtime features for non-runc runtimes ([#13779](https://github.com/containerd/containerd/pull/13779))
  * [`6a3d14e8a`](https://github.com/containerd/containerd/commit/6a3d14e8a982e141155f4d39a7b1d34d91fca837) fix(cri): introspect OCI runtime features for non-runc runtimes
* ci: bound Go fuzzing by execution count ([#13786](https://github.com/containerd/containerd/pull/13786))
  * [`424b714f0`](https://github.com/containerd/containerd/commit/424b714f0c5bc28e840bde698cbbcdc8c4caca0f) ci: bound Go fuzzing by execution count
</p>
</details>

### Dependency Changes

* **go.opentelemetry.io/otel**         v1.38.0 -> v1.41.0
* **go.opentelemetry.io/otel/metric**  v1.38.0 -> v1.41.0
* **go.opentelemetry.io/otel/trace**   v1.38.0 -> v1.41.0
* **google.golang.org/protobuf**       v1.36.10 -> f2248ac996af
* **k8s.io/api**                       v0.34.1 -> v0.34.10
* **k8s.io/apimachinery**              v0.34.1 -> v0.34.10
* **k8s.io/client-go**                 v0.34.1 -> v0.34.10
* **k8s.io/cri-api**                   v0.34.1 -> v0.34.10

Previous release can be found at [v2.2.6](https://github.com/containerd/containerd/releases/tag/v2.2.6)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.35 (Ubuntu 22.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on Linux distributions that do not use glibc >= 2.35. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
