来源: https://github.com/containerd/containerd/releases/tag/v2.3.4

# containerd/containerd v2.3.4 Release Notes

Published at: 2026-08-12T17:59:47Z

Welcome to the v2.3.4 release of containerd!

The fourth patch release for containerd 2.3 contains various fixes and updates.

### Highlights

#### Container Runtime Interface (CRI)

* Disable checkpoint restore in CreateContainer by default, requiring the enable_experimental_restore_via_create configuration option to enable ([#13913](https://github.com/containerd/containerd/pull/13913))
* Set default runtimeFeatures.UserNamespacesHostNetwork to true in CRI ([#13914](https://github.com/containerd/containerd/pull/13914))
* Deprecate checkpoint restore in CreateContainer ([#13868](https://github.com/containerd/containerd/pull/13868))
* Support non-UTF-8 binary environment variable values in CRI ([#13454](https://github.com/containerd/containerd/pull/13454))
* Enable OCI runtime feature introspection for non-runc runtimes in CRI ([#13778](https://github.com/containerd/containerd/pull/13778))
* Disable checkpoint restore codepaths when CRIU is not installed and add enable_criu configuration option ([#13734](https://github.com/containerd/containerd/pull/13734))
* Normalize sandbox image references in CRI to resolve images without domain prefixes ([#13759](https://github.com/containerd/containerd/pull/13759))

#### Node Resource Interface (NRI)

* Emit deprecation warnings for plugins using deprecated NRI interfaces ([#13935](https://github.com/containerd/containerd/pull/13935))

#### Runtime

* Enable log scrubbing by default on Windows ([#13904](https://github.com/containerd/containerd/pull/13904))
* Fix memory leak in OOM watcher map when stopping container monitoring ([#13870](https://github.com/containerd/containerd/pull/13870))
* Avoid orphaning shims on transient errors when loading process IDs ([#13857](https://github.com/containerd/containerd/pull/13857))
* Fix corruption of binary protobuf shim start responses caused by premature whitespace trimming ([#13803](https://github.com/containerd/containerd/pull/13803))

#### Snapshotters

* Fix EROFS snapshotter dropping lower layers stacked above merged filesystem metadata ([#13876](https://github.com/containerd/containerd/pull/13876))

#### Breaking

* Disable checkpoint restore in CreateContainer by default, requiring the enable_experimental_restore_via_create configuration option to enable ([#13913](https://github.com/containerd/containerd/pull/13913))

#### Deprecations

* Deprecate checkpoint restore in CreateContainer ([#13868](https://github.com/containerd/containerd/pull/13868))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Samuel Karp
* Maksym Pavlenko
* Mike Brown
* Akihiro Suda
* Derek McGowan
* Jordan Liggitt
* Paweł Gronowski
* Amir Alavi
* Andrew Halaney
* Bing Hongtao
* Chris Henzie
* Harshal Patel
* Krisztian Litkey
* Phil Estes
* Wei Fu
* ningmingxiao

### Changes
<details><summary>35 commits</summary>
<p>

  * [`c1f5360ef`](https://github.com/containerd/containerd/commit/c1f5360ef7b9afb748d4119ad7be665ba5144480) Prepare release notes for v2.3.4
* cri: disable restore in CreateContainer by default ([#13913](https://github.com/containerd/containerd/pull/13913))
  * [`928c03c68`](https://github.com/containerd/containerd/commit/928c03c6898cad95f795300281fdff0dbc55a32f) cri: disable restore in CreateContainer by default
* nri,deprecation: record and emit warnings for NRI deprecations. ([#13935](https://github.com/containerd/containerd/pull/13935))
  * [`5966e2edb`](https://github.com/containerd/containerd/commit/5966e2edb15bb939aa2bb73649fbad73a2b04094) nri,deprecation: emit warnings for old NRI plugins.
* Set the default of runtimeFeatures.UserNamespacesHostNetwork to true ([#13914](https://github.com/containerd/containerd/pull/13914))
  * [`ab52c58f1`](https://github.com/containerd/containerd/commit/ab52c58f16ac50bb6724354bf36cbb4da480c2a2) Set the default of runtimeFeatures.UserNamespacesHostNetwork to true
* Use ScrubLogs by default on Windows ([#13904](https://github.com/containerd/containerd/pull/13904))
  * [`0c255158a`](https://github.com/containerd/containerd/commit/0c255158aa1ecab40aafc42269cfc018a46eb627) ctr: add --scrub-logs flag for Windows
  * [`1c2b13dc9`](https://github.com/containerd/containerd/commit/1c2b13dc975468197e57321e25fd09163f78a75a) cri/config: use ScrubLogs by default on Windows
* snapshots/erofs: keep lowers stacked above a merged fsmeta ([#13876](https://github.com/containerd/containerd/pull/13876))
  * [`0c511e068`](https://github.com/containerd/containerd/commit/0c511e068b7d6dd815418185a235b3ba3347c65a) snapshots/erofs: keep lowers stacked above a merged fsmeta
* cri: deprecate restore in CreateContainer ([#13868](https://github.com/containerd/containerd/pull/13868))
  * [`dc98141df`](https://github.com/containerd/containerd/commit/dc98141df70d3d72d46125c6f30de0d2de648086) cri: deprecate restore in CreateContainer
* internal/oom: Fix memory leak by removing watcher from map on Stop ([#13870](https://github.com/containerd/containerd/pull/13870))
  * [`537d82d54`](https://github.com/containerd/containerd/commit/537d82d545759d4a072d564d4937707af2650163) internal/oom: Fix memory leak by removing watcher from map on Stop
* shim_load: Consider shim leaked only if we can't find pids ([#13857](https://github.com/containerd/containerd/pull/13857))
  * [`decf97a9c`](https://github.com/containerd/containerd/commit/decf97a9c7c26f92391d2c862d35832e0a291e80) shim_load: Consider shim leaked only if we can't find pids
* core/runtime/v2: Drop checkpointctl module dependency ([#13840](https://github.com/containerd/containerd/pull/13840))
  * [`796f07dc8`](https://github.com/containerd/containerd/commit/796f07dc853d9ae8a3a1278fe47436755a4bc3b7) core/runtime/v2: Drop checkpointctl module dependency
* Handle []byte envvar value for CRI ([#13454](https://github.com/containerd/containerd/pull/13454))
  * [`751fddddb`](https://github.com/containerd/containerd/commit/751fddddbb630631e12fd63e5dac4a9530188822) Handle []byte envvar value
  * [`0bce9060e`](https://github.com/containerd/containerd/commit/0bce9060ef3401e690b541dd6d2008c2abc50b0d) update to v0.36.x kubernetes dependencies
* fix(cri): introspect OCI runtime features for non-runc runtimes ([#13778](https://github.com/containerd/containerd/pull/13778))
  * [`61a8f6f45`](https://github.com/containerd/containerd/commit/61a8f6f45e34660d787988e8a7e7a218f556369c) fix(cri): introspect OCI runtime features for non-runc runtimes
* core/runtime/v2: Preserve protobuf shim response bytes ([#13803](https://github.com/containerd/containerd/pull/13803))
  * [`1d28017be`](https://github.com/containerd/containerd/commit/1d28017be295005bfa3aee1d47afe86341d391b6) core/runtime/v2: Preserve protobuf shim response bytes
* Disable checkpoint restore codepath when CRIU is not installed ([#13734](https://github.com/containerd/containerd/pull/13734))
  * [`374091d67`](https://github.com/containerd/containerd/commit/374091d67c1966969b772594ba96a74f4357bc7a) github/workflows: install criu in node-e2e
  * [`db03e3968`](https://github.com/containerd/containerd/commit/db03e39685448a1d87025a2ca3a1e4e42713102d) cri: add enable_criu configuration option
  * [`dacd4c7d0`](https://github.com/containerd/containerd/commit/dacd4c7d00f4a5fd71197e67afdb6355e8536e4f) cri: validate CRIU availability and version early
* ci: bound Go fuzzing by execution count ([#13785](https://github.com/containerd/containerd/pull/13785))
  * [`890a9c86c`](https://github.com/containerd/containerd/commit/890a9c86cd9918e53c1ef1b57c6539a943196cd5) ci: bound Go fuzzing by execution count
* cri: auto-add prefix for pause image ([#13759](https://github.com/containerd/containerd/pull/13759))
  * [`0b2f1d078`](https://github.com/containerd/containerd/commit/0b2f1d078124b52f4c8030dc686f2d65c1dfc17c) cri: auto-add prefix for pause image
</p>
</details>

### Dependency Changes

* **k8s.io/api**                            v0.36.0 -> v0.36.3
* **k8s.io/apimachinery**                   v0.36.0 -> v0.36.3
* **k8s.io/client-go**                      v0.36.0 -> v0.36.3
* **k8s.io/component-base**                 v0.36.0 -> v0.36.3
* **k8s.io/cri-api**                        v0.36.0 -> v0.36.3
* **k8s.io/cri-client**                     v0.36.0 -> v0.36.3
* **k8s.io/cri-streaming**                  v0.36.0 -> v0.36.3
* **sigs.k8s.io/structured-merge-diff/v6**  v6.3.2 -> v6.3.3

Previous release can be found at [v2.3.3](https://github.com/containerd/containerd/releases/tag/v2.3.3)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.35 (Ubuntu 22.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on Linux distributions that do not use glibc >= 2.35. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
