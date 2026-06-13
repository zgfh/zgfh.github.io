来源: https://github.com/containerd/containerd/releases/tag/v1.7.32

# containerd/containerd v1.7.32 Release Notes

Published at: 2026-05-20T21:30:57Z

Welcome to the v1.7.32 release of containerd!

\
The thirty-second patch release for containerd 1.7 contains various fixes
and updates including a security patch.

* **containerd**
  * [**CVE-2026-46680**](https://github.com/containerd/containerd/security/advisories/GHSA-fqw6-gf59-qr4w)

* Allow hosts.toml to contain only root-level fields without an explicit [host] section ([#10028](https://github.com/containerd/containerd/pull/10028))

* Fix handling of out-of-range USER values in OCI spec to avoid unexpected username/group lookups ([#13450](https://github.com/containerd/containerd/pull/13450))
* Apply hardening to block AF_ALG in default socket policy ([#13406](https://github.com/containerd/containerd/pull/13406))
* Support both "volatile" and "fsync=volatile" mount options for volatile snapshotter ([#13299](https://github.com/containerd/containerd/pull/13299))
* Set AppArmor abi conditionally to support versions < 3.0 ([#13273](https://github.com/containerd/containerd/pull/13273))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

* Maksym Pavlenko
* Chris Henzie
* Derek McGowan
* Paweł Gronowski
* Samuel Karp
* Wei Fu
* Brad Davidson
* Brian Goff
* LEI WANG
* Phil Estes

<details><summary>17 commits</summary>
<p>

  * [`bc87d865c`](https://github.com/containerd/containerd/commit/bc87d865cf39e0cc55a5e628d95cf8eef52787ad) Prepare release notes for v1.7.32
* oci: return explicit error for out-of-range USER values ([#13450](https://github.com/containerd/containerd/pull/13450))
  * [`503f47946`](https://github.com/containerd/containerd/commit/503f479466b432bd16fd9f14e10b6d4b09812730) oci: return explicit error for out-of-range USER values
* seccomp: Block AF_ALG in default socket policy ([#13406](https://github.com/containerd/containerd/pull/13406))
  * [`e55b747d3`](https://github.com/containerd/containerd/commit/e55b747d3496763d54b6c7670f4290c1e7183a36) seccomp: Block AF_ALG in default socket policy
  * [`4627a65f8`](https://github.com/containerd/containerd/commit/4627a65f8a92ce704e40b4b42df4fbfb2ceae2b9) seccomp: Document socket rule scope and socketcall limitation
* Fix issue with empty host tree in hosts.toml ([#10028](https://github.com/containerd/containerd/pull/10028))
  * [`24007441d`](https://github.com/containerd/containerd/commit/24007441d3bb191e0045b83fce5890a67aa98449) Fix error parsing hosts.toml without any `host` tree
* Support both styles of volatile mount option ([#13299](https://github.com/containerd/containerd/pull/13299))
  * [`940733149`](https://github.com/containerd/containerd/commit/940733149271449293e063148e220faf885a01b9) Support both styles of volatile mount option
* apparmor: Set abi conditionally ([#13273](https://github.com/containerd/containerd/pull/13273))
  * [`2b732c892`](https://github.com/containerd/containerd/commit/2b732c8925a92b10300a3dc21dbfd37cafea76dd) apparmor: Set abi conditionally
* Add GitHub Action for k8s node e2e tests ([#13258](https://github.com/containerd/containerd/pull/13258))
  * [`0db1e143a`](https://github.com/containerd/containerd/commit/0db1e143a11de38b8f088684ce4f26a2b487d517) Add GitHub Action for k8s node e2e tests
* Update release process after 1.7 ([#13236](https://github.com/containerd/containerd/pull/13236))
  * [`3223a75c2`](https://github.com/containerd/containerd/commit/3223a75c20f06d0da7985a49ac42ed6ff67c5433) Update for latest updates to release tool
  * [`1b30082eb`](https://github.com/containerd/containerd/commit/1b30082eb98c3c277fc07809049fbd4034c1d9f3) Update release process after 1.7
</p>
</details>

This release has no dependency changes

Previous release can be found at [v1.7.31](https://github.com/containerd/containerd/releases/tag/v1.7.31)
