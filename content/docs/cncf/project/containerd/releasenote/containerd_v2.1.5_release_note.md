来源: https://github.com/containerd/containerd/releases/tag/v2.1.5

# containerd/containerd v2.1.5 Release Notes

Published at: 2025-11-06T00:50:26Z

Welcome to the v2.1.5 release of containerd!

The fifth patch release for containerd 2.1 contains various fixes and updates.

### Security Updates

* **containerd**
  * [**GHSA-pwhc-rpq9-4c8w**](https://github.com/containerd/containerd/security/advisories/GHSA-pwhc-rpq9-4c8w)
  * [**GHSA-m6hq-p25p-ffr2**](https://github.com/containerd/containerd/security/advisories/GHSA-m6hq-p25p-ffr2)

* **runc**
  * [**GHSA-qw9x-cqr3-wc7r**](https://github.com/opencontainers/runc/security/advisories/GHSA-qw9x-cqr3-wc7r)
  * [**GHSA-cgrx-mc8f-2prm**](https://github.com/opencontainers/runc/security/advisories/GHSA-cgrx-mc8f-2prm)
  * [**GHSA-9493-h29p-rfm2**](https://github.com/opencontainers/runc/security/advisories/GHSA-9493-h29p-rfm2)

### Highlights

#### Container Runtime Interface (CRI)

* **Disable event subscriber during task cleanup** ([#12410](https://github.com/containerd/containerd/pull/12410))
* **Add SystemdCgroup to default runtime options** ([#12253](https://github.com/containerd/containerd/pull/12253))
* **Fix userns with container image VOLUME mounts that need copy** ([#12242](https://github.com/containerd/containerd/pull/12242))

#### Image Distribution

* **Ensure errContentRangeIgnored error when range-get request is ignored** ([#12312](https://github.com/containerd/containerd/pull/12312))

#### Runtime

* **Update runc binary to v1.3.3** ([#12478](https://github.com/containerd/containerd/pull/12478))

#### Deprecations

* **Postpone v2.2 deprecation items to v2.3** ([#12431](https://github.com/containerd/containerd/pull/12431))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Phil Estes
* Akihiro Suda
* Derek McGowan
* Austin Vazquez
* Rodrigo Campos
* Maksym Pavlenko
* Wei Fu
* ningmingxiao
* Akhil Mohan
* Henry Wang
* Andrew Halaney
* Divya Rani
* Jose Fernandez
* Swagat Bora
* wheat2018

### Changes
<details><summary>58 commits</summary>
<p>

* Prepare release notes for v2.1.5 ([#12483](https://github.com/containerd/containerd/pull/12483))
  * [`fc5bdfeac`](https://github.com/containerd/containerd/commit/fc5bdfeacefc7ff2a4f6bafaa2ed6453dbb8c472) Prepare release notes for v2.1.5
  * [`c578c26bf`](https://github.com/containerd/containerd/commit/c578c26bf9e9d3368e87edb837b706053c3ef30e) Update mailmap
  * [`46a4a03fb`](https://github.com/containerd/containerd/commit/46a4a03fb4131739e948f983af8c984eb0c36d61) Merge commit from fork
  * [`232786c90`](https://github.com/containerd/containerd/commit/232786c906a11dae0c1ef5059653d4164345401f) Fix directory permissions
  * [`239ab877d`](https://github.com/containerd/containerd/commit/239ab877db8edf31ffb2ae63d83919d1c242e8d2) Merge commit from fork
  * [`0766796e8`](https://github.com/containerd/containerd/commit/0766796e8e95ffdbf6d2b4fb08bda536c03d444c) fix goroutine leak of container Attach
* Update runc binary to v1.3.3 ([#12478](https://github.com/containerd/containerd/pull/12478))
  * [`3d713d3d0`](https://github.com/containerd/containerd/commit/3d713d3d0db35b9e0d587e482498c891cc6fa3f2) runc: Update runc binary to v1.3.3
* Update GHA runners to use latest images for basic binaries build ([#12470](https://github.com/containerd/containerd/pull/12470))
  * [`de4221cb7`](https://github.com/containerd/containerd/commit/de4221cb7fb5f3ebb2fb5b2bdecfa907cdce94fb) Update GHA runners to use latest images for basic binaries build
* ci: bump Go 1.24.9, 1.25.3 ([#12467](https://github.com/containerd/containerd/pull/12467))
  * [`2045b1920`](https://github.com/containerd/containerd/commit/2045b1920f150e1591ed5d6e146ff280abb18be0) ci: bump Go 1.24.9, 1.25.3
* Update GHA runners to use latest image for most jobs ([#12468](https://github.com/containerd/containerd/pull/12468))
  * [`21ec7cc7d`](https://github.com/containerd/containerd/commit/21ec7cc7d15d031e9d798971486237097173babe) Update GHA runners to use latest image for most jobs
* CI: update Fedora to 43 ([#12449](https://github.com/containerd/containerd/pull/12449))
  * [`893b5f92e`](https://github.com/containerd/containerd/commit/893b5f92e3fd9a75e3f4f9aa824287b97107b390) CI: update Fedora to 43
* Postpone v2.2 deprecation items to v2.3 ([#12431](https://github.com/containerd/containerd/pull/12431))
  * [`6374a8f9d`](https://github.com/containerd/containerd/commit/6374a8f9d7123bc380a060586c387508069b3cea) Postpone v2.2 deprecation items to v2.3
* CI: skip ubuntu-24.04-arm on private repos ([#12427](https://github.com/containerd/containerd/pull/12427))
  * [`98e0e73de`](https://github.com/containerd/containerd/commit/98e0e73de78c18bbb15f2e3194a7837c20a6eff4) CI: skip ubuntu-24.04-arm on private repos
* Disable event subscriber during task cleanup ([#12410](https://github.com/containerd/containerd/pull/12410))
  * [`a3770cf83`](https://github.com/containerd/containerd/commit/a3770cf83bc55558977b669495f5b6ed8abcc978) cri/server/podsandbox: disable event subscriber
* Fix lost container logs from quickly closing io ([#12377](https://github.com/containerd/containerd/pull/12377))
  * [`7d9f09ba0`](https://github.com/containerd/containerd/commit/7d9f09ba048da562cdc0a971be439641c87aedcf) bugfix:fix container logs lost because io close too quickly
* ci: bump Go 1.24.8 ([#12360](https://github.com/containerd/containerd/pull/12360))
  * [`d1cab3cc5`](https://github.com/containerd/containerd/commit/d1cab3cc58c001d314d638419032c0de0a8c1eb1) ci: bump Go 1.24.8
* Prevent goroutine hangs during ProgressTracker shutdown ([#12336](https://github.com/containerd/containerd/pull/12336))
  * [`9b57a4d35`](https://github.com/containerd/containerd/commit/9b57a4d35a9728ccb99a03b1a27cca8b431e99ab) Prevent goroutine hangs during ProgressTracker shutdown
* Ensure errContentRangeIgnored error when range-get request is ignored ([#12312](https://github.com/containerd/containerd/pull/12312))
  * [`ca3de4fe7`](https://github.com/containerd/containerd/commit/ca3de4fe7b3219d1d2f8ac9482b93b0e63b52801) Ensure errContentRangeIgnored error when range-get request is ignored by registry
* Remove additional fuzzers from instrumentation repo ([#12313](https://github.com/containerd/containerd/pull/12313))
  * [`dfffe3d9c`](https://github.com/containerd/containerd/commit/dfffe3d9c59f85151bf3a2eceeca1c6e61f5e8a0) Remove additional fuzzers from CI
* update release builds to 1.24.7 and add 1.25.1 to CI ([#12258](https://github.com/containerd/containerd/pull/12258))
  * [`c54585ba7`](https://github.com/containerd/containerd/commit/c54585ba72f68ff3df49c16ecc19793d8d872e88) update release builds to 1.24.7 and add 1.25.1 to CI
* runc:Update runc binary to v1.3.1 ([#12277](https://github.com/containerd/containerd/pull/12277))
  * [`f0a48ce38`](https://github.com/containerd/containerd/commit/f0a48ce38a34730ce56d8e97436c2b92e9fd7156) runc:Update runc binary to v1.3.1
* Add SystemdCgroup to default runtime options ([#12253](https://github.com/containerd/containerd/pull/12253))
  * [`f13f8c431`](https://github.com/containerd/containerd/commit/f13f8c4313c18b99f8d5e6f71cf9257a0b8d2f64) add SystemdCgroup to default runtime options
* install-runhcs-shim: fetch target commit instead of tags ([#12256](https://github.com/containerd/containerd/pull/12256))
  * [`42bb71e1e`](https://github.com/containerd/containerd/commit/42bb71e1e5bd40299d1ca58335d108ca64dbc203) install-runhcs-shim: fetch target commit instead of tags
* Fix userns with container image VOLUME mounts that need copy ([#12242](https://github.com/containerd/containerd/pull/12242))
  * [`10944e19f`](https://github.com/containerd/containerd/commit/10944e19f78c0286327838728dac0e3ee2bbb0a1) integration: Add test for directives with userns
  * [`41d74aee2`](https://github.com/containerd/containerd/commit/41d74aee202409a8b15029615a9c0a95ef1a9f29) cri: Fix userns with Dockerfile VOLUME mounts that need copy
* Fix overlayfs issues related to user namespace ([#12222](https://github.com/containerd/containerd/pull/12222))
  * [`f40bfc46b`](https://github.com/containerd/containerd/commit/f40bfc46b0b680f07299c05623d7383cd4204bcb) core/mount: Retry unmounting idmapped directories
  * [`1f51d2dea`](https://github.com/containerd/containerd/commit/1f51d2deada6bf493214c78069d93e94dc226091) core/mount: Test cleanup of DoPrepareIDMappedOverlay()
  * [`8fbf8c503`](https://github.com/containerd/containerd/commit/8fbf8c503ef9ebf837f82a40b9ea54f98d9dccbe) core/mount: Properly cleanup on doPrepareIDMappedOverlay errors
  * [`b9d678e15`](https://github.com/containerd/containerd/commit/b9d678e15e27ab45a7cfa9876a46f88afeaca90c) core/mount: Don't call nil function on errors
  * [`583fe2d24`](https://github.com/containerd/containerd/commit/583fe2d244568d585c9b5688d42a24e2cf407709) core/mount: Only idmap once per overlayfs, not per layer
* Add documentation for cgroup_writable field ([#12229](https://github.com/containerd/containerd/pull/12229))
  * [`4832b4d15`](https://github.com/containerd/containerd/commit/4832b4d1541ab01b35e087afda266cef8a66416c) Add documentation for cgroup_writable field
* fix: create bootstrap.json with 0644 permission ([#12183](https://github.com/containerd/containerd/pull/12183))
  * [`3c174cf64`](https://github.com/containerd/containerd/commit/3c174cf64e5b4e6cdae6f06e091e458120390fe7) fix: create bootstrap.json with 0644 permission
* ci: bump Go 1.23.12, 1.24.6 ([#12186](https://github.com/containerd/containerd/pull/12186))
  * [`74b0505eb`](https://github.com/containerd/containerd/commit/74b0505ebd86e8e27f80606322a8c3af73f00e33) ci: bump Go 1.23.12, 1.24.6
* sys: fix pidfd leak in UnshareAfterEnterUserns ([#12179](https://github.com/containerd/containerd/pull/12179))
  * [`5ef6ea747`](https://github.com/containerd/containerd/commit/5ef6ea7470dd18e3c93f21c2ea5004f6e72b0642) sys: fix pidfd leak in UnshareAfterEnterUserns
</p>
</details>

### Dependency Changes

This release has no dependency changes

Previous release can be found at [v2.1.4](https://github.com/containerd/containerd/releases/tag/v2.1.4)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.35 (Ubuntu 22.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on Linux distributions that do not use glibc >= 2.35. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
