来源: https://github.com/containerd/containerd/releases/tag/v2.3.3

# containerd/containerd v2.3.3 Release Notes

Published at: 2026-07-10T00:04:40Z

Welcome to the v2.3.3 release of containerd!

The third patch release for containerd 2.3 contains various fixes and updates.

### Highlights

* Set SystemTemp environment variable on Windows so temp directory overrides work for SYSTEM services ([#13694](https://github.com/containerd/containerd/pull/13694))

#### Container Runtime Interface (CRI)

* Fix nil pointer dereference in NRI GetIPs during pod sandbox teardown or container exit ([#13697](https://github.com/containerd/containerd/pull/13697))
* Reject CreateContainer calls when the target sandbox is not running ([#13668](https://github.com/containerd/containerd/pull/13668))
* Ensure sandbox shutdown on RunPodSandbox hook failures to avoid mount leaks ([#13645](https://github.com/containerd/containerd/pull/13645))

#### Image Distribution

* Surface OCI error bodies in registry 403 responses by falling back to GET requests ([#13738](https://github.com/containerd/containerd/pull/13738))

#### Snapshotters

* Align default 4K mkfs block size for EROFS across all platforms ([#13632](https://github.com/containerd/containerd/pull/13632))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Maksym Pavlenko
* Samuel Karp
* Chris Henzie
* Phil Estes
* Sebastiaan van Stijn
* Akihiro Suda
* Austin Vazquez
* Chris Crone
* Derek McGowan
* Maksim An
* crawfordxx
* cshung
* lauralorenz

### Changes
<details><summary>14 commits</summary>
<p>

* Prepare release notes for v2.3.3 ([#13750](https://github.com/containerd/containerd/pull/13750))
  * [`7f6cee02a`](https://github.com/containerd/containerd/commit/7f6cee02ad5afc5f3244ec36937d8eed61f7057d) Prepare release notes for v2.3.3
* CI: migrate Vagrant to Lima ([#13744](https://github.com/containerd/containerd/pull/13744))
  * [`7316210ce`](https://github.com/containerd/containerd/commit/7316210ce6bd95e8afd2856e256b5d9855385d01) CI: migrate Vagrant to Lima
* remotes: surface OCI error body in registry 4xx responses ([#13738](https://github.com/containerd/containerd/pull/13738))
  * [`457fba3a3`](https://github.com/containerd/containerd/commit/457fba3a380dab10ef7e9334352352f72caf8423) remotes: surface OCI error body on HEAD 403 via GET fallback
* Update go to 1.26.5 ([#13732](https://github.com/containerd/containerd/pull/13732))
  * [`dc2df934e`](https://github.com/containerd/containerd/commit/dc2df934efebc78523d6821c2520f538ff65986d) Update go to 1.26.5
* ci: pin fog-json to resolve gem conflict ([#13711](https://github.com/containerd/containerd/pull/13711))
  * [`5be0495df`](https://github.com/containerd/containerd/commit/5be0495dff529910a85b6ca1b2a1a35ea220da59) ci: pin fog-json to resolve gem conflict
* Fix nil pointer dereference in NRI GetIPs ([#13697](https://github.com/containerd/containerd/pull/13697))
  * [`36c713971`](https://github.com/containerd/containerd/commit/36c7139715fee7ff2f87f78a8b3d6fea4e2e7b35) Fix nil pointer dereference in NRI GetIPs
* Set SystemTemp env var to config temp on Windows ([#13694](https://github.com/containerd/containerd/pull/13694))
  * [`26dce170d`](https://github.com/containerd/containerd/commit/26dce170df24e227aeb5ccd1cec1e5c91b307595) Set SystemTemp env var to config temp on Windows
* update runhcs to v0.15.0-rc.3 ([#13693](https://github.com/containerd/containerd/pull/13693))
  * [`9bc2c2349`](https://github.com/containerd/containerd/commit/9bc2c23496073c3b48b083f6bede9e82d879a7d4) update runhcs to v0.15.0-rc.3
* Update to current setup-go version ([#13686](https://github.com/containerd/containerd/pull/13686))
  * [`3e97edeb7`](https://github.com/containerd/containerd/commit/3e97edeb7d3dfcee903c37ab531b1fdfe0a49ae4) Update to current setup-go version
* cri: reject CreateContainer when sandbox is not running ([#13668](https://github.com/containerd/containerd/pull/13668))
  * [`8856b0f9c`](https://github.com/containerd/containerd/commit/8856b0f9c3ae50efe6f2a84ab7337953faeb129f) cri: reject CreateContainer when sandbox is not running
* update runhcs to v0.15.0-rc.2 ([#13666](https://github.com/containerd/containerd/pull/13666))
  * [`ae796cec5`](https://github.com/containerd/containerd/commit/ae796cec596341f3db4ea324199b83670aaa8162) update runhcs to v0.15.0-rc.2
* test: fix flaky image timestamp check on coarse clocks ([#13643](https://github.com/containerd/containerd/pull/13643))
  * [`168d56783`](https://github.com/containerd/containerd/commit/168d56783608354301e6f6dfb3ceb9af342c7dde) test: fix flaky image timestamp check on coarse clocks
* Add defer in event of mid-function failures in RunPodSandbox to avoid mount leaks ([#13645](https://github.com/containerd/containerd/pull/13645))
  * [`d1db61db8`](https://github.com/containerd/containerd/commit/d1db61db8d6b59cdb27e5e1843911ad12e25a5e7) Add deferred call to ShutdownSandbox to avoid leaks
* erofs: align default mkfs block size across platforms ([#13632](https://github.com/containerd/containerd/pull/13632))
  * [`01b0f03f6`](https://github.com/containerd/containerd/commit/01b0f03f676c19bf5beca591524f274b61537694) erofs: align default mkfs block size across platforms
</p>
</details>

### Dependency Changes

This release has no dependency changes

Previous release can be found at [v2.3.2](https://github.com/containerd/containerd/releases/tag/v2.3.2)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.35 (Ubuntu 22.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on Linux distributions that do not use glibc >= 2.35. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
