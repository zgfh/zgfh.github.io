来源: https://github.com/containerd/containerd/releases/tag/v2.1.3

# containerd/containerd v2.1.3 Release Notes

Published at: 2025-06-19T22:39:33Z

Welcome to the v2.1.3 release of containerd!

The third patch release for containerd 2.1 contains various fixes and updates
to address pull issues with some registries.

### Highlights

#### Image Distribution

* Fix multipart fetch issue when the server does not return content length ([#12003](https://github.com/containerd/containerd/pull/12003))
* Update transfer service supported platforms logic ([#11999](https://github.com/containerd/containerd/pull/11999))
* Fix import for local transfer service ([#12000](https://github.com/containerd/containerd/pull/12000))
* Fix registry errors with transfer service ([#11979](https://github.com/containerd/containerd/pull/11979))
* Fix fetch always adding range to requests ([#12001](https://github.com/containerd/containerd/pull/12001))
* Update fetcher errors to include full registry error ([#11997](https://github.com/containerd/containerd/pull/11997))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Derek McGowan
* Phil Estes
* Adrien Delorme

### Changes
<details><summary>15 commits</summary>
<p>

* Prepare release notes for v2.1.3 ([#12002](https://github.com/containerd/containerd/pull/12002))
  * [`627729341`](https://github.com/containerd/containerd/commit/62772934139be6d2b648a16b412d847dc0aef09c) Prepare release notes for v2.1.3
* Fix multipart fetch issue when the server does not return content length ([#12003](https://github.com/containerd/containerd/pull/12003))
  * [`7636bd5eb`](https://github.com/containerd/containerd/commit/7636bd5eb2525babefd2983d38f6e1133843eb94) fix when multipart fetching and the server does not return content length
* Update transfer service supported platforms logic ([#11999](https://github.com/containerd/containerd/pull/11999))
  * [`3c5ede878`](https://github.com/containerd/containerd/commit/3c5ede878a7cb2d7a04a40e8ed1086718402fdf3) Update transfer supported platforms logic
* Fix import for local transfer service ([#12000](https://github.com/containerd/containerd/pull/12000))
  * [`fb752bc8e`](https://github.com/containerd/containerd/commit/fb752bc8ed456ff40ceb516dcb72830678cae1ab) fix import for local transfer service
* Fix registry errors with transfer service ([#11979](https://github.com/containerd/containerd/pull/11979))
  * [`f6d926314`](https://github.com/containerd/containerd/commit/f6d92631401562eba488a986a22002025d2860c9) Register remote errors for clients to access registry errors
  * [`7c1813345`](https://github.com/containerd/containerd/commit/7c18133453a495df7a334fde31423c56d42265c2) Decode grpc errors in the transfer client proxy
* Fix fetch always adding range to requests ([#12001](https://github.com/containerd/containerd/pull/12001))
  * [`babacebad`](https://github.com/containerd/containerd/commit/babacebadc0738e6b016e2f366cdf4bdf893a1a5) Fix fetch always adding range to requests
* Update fetcher errors to include full registry error ([#11997](https://github.com/containerd/containerd/pull/11997))
  * [`f30be44ad`](https://github.com/containerd/containerd/commit/f30be44ad31166bb4f4644255c5db59b9f47bb22) Update fetcher errors to include full registry error
</p>
</details>

### Dependency Changes

This release has no dependency changes

Previous release can be found at [v2.1.2](https://github.com/containerd/containerd/releases/tag/v2.1.2)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.35 (Ubuntu 22.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on Linux distributions that do not use glibc >= 2.35. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
