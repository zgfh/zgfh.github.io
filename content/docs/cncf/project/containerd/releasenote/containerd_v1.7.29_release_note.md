来源: https://github.com/containerd/containerd/releases/tag/v1.7.29

# containerd/containerd v1.7.29 Release Notes

Published at: 2025-11-05T22:15:34Z

Welcome to the v1.7.29 release of containerd!

The twenty-ninth patch release for containerd 1.7 contains various fixes
and updates including security patches.

### Security Updates

* **containerd**
  * [**GHSA-pwhc-rpq9-4c8w**](https://github.com/containerd/containerd/security/advisories/GHSA-pwhc-rpq9-4c8w)
  * [**GHSA-m6hq-p25p-ffr2**](https://github.com/containerd/containerd/security/advisories/GHSA-m6hq-p25p-ffr2)

* **runc**
  * [**GHSA-qw9x-cqr3-wc7r**](https://github.com/opencontainers/runc/security/advisories/GHSA-qw9x-cqr3-wc7r)
  * [**GHSA-cgrx-mc8f-2prm**](https://github.com/opencontainers/runc/security/advisories/GHSA-cgrx-mc8f-2prm)
  * [**GHSA-9493-h29p-rfm2**](https://github.com/opencontainers/runc/security/advisories/GHSA-9493-h29p-rfm2)

### Highlights

#### Image Distribution

* **Update differ to handle zstd media types** ([#12018](https://github.com/containerd/containerd/pull/12018))

#### Runtime

* **Update runc binary to v1.3.3** ([#12480](https://github.com/containerd/containerd/pull/12480))
* **Fix lost container logs from quickly closing io** ([#12375](https://github.com/containerd/containerd/pull/12375))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Derek McGowan
* Akihiro Suda
* Phil Estes
* Austin Vazquez
* Sebastiaan van Stijn
* ningmingxiao
* Maksym Pavlenko
* StepSecurity Bot
* wheat2018

### Changes
<details><summary>38 commits</summary>
<p>

  * [`442cb34bd`](https://github.com/containerd/containerd/commit/442cb34bda9a6a0fed82a2ca7cade05c5c749582) Merge commit from fork
  * [`0450f046e`](https://github.com/containerd/containerd/commit/0450f046e6942e513d0ebf1ef5c2aff13daa187f) Fix directory permissions
  * [`e5cb6ddb7`](https://github.com/containerd/containerd/commit/e5cb6ddb7a7730c24253a94d7fdb6bbe13dba6f7) Merge commit from fork
  * [`c575d1b5f`](https://github.com/containerd/containerd/commit/c575d1b5f4011f33b32f71ace75367a92b08c750) fix goroutine leak of container Attach
* Prepare release notes for v1.7.29 ([#12486](https://github.com/containerd/containerd/pull/12486))
  * [`1fc2daaf3`](https://github.com/containerd/containerd/commit/1fc2daaf3ed53f4c9e76fbc5786a6f1ae3bb885f) Prepare release notes for v1.7.29
* Update runc binary to v1.3.3 ([#12480](https://github.com/containerd/containerd/pull/12480))
  * [`3f5f9f872`](https://github.com/containerd/containerd/commit/3f5f9f872707a743563d316e85e530193a2e30ac) runc: Update runc binary to v1.3.3
* Update GHA images and bump Go 1.24.9; 1.25.3 ([#12471](https://github.com/containerd/containerd/pull/12471))
  * [`667409fb6`](https://github.com/containerd/containerd/commit/667409fb63098cb80280940ab06038114e7712da) ci: bump Go 1.24.9, 1.25.3
  * [`294f8c027`](https://github.com/containerd/containerd/commit/294f8c027b607c4450b3e52f44280581a737a73f) Update GHA runners to use latest images for basic binaries build
  * [`cf66b4141`](https://github.com/containerd/containerd/commit/cf66b4141defb757dee0fc5653bfd0a7ba1e8fed) Update GHA runners to use latest image for most jobs
  * [`fa3e6fa18`](https://github.com/containerd/containerd/commit/fa3e6fa18aa8dc7e699428958e1fb1d38e832e15) pkg/epoch: extract parsing SOURCE_DATE_EPOCH to a function
  * [`ac334bffc`](https://github.com/containerd/containerd/commit/ac334bffc4e759f188afb58efd74a603ade0855a) pkg/epoch: fix tests on macOS
  * [`d04b8721f`](https://github.com/containerd/containerd/commit/d04b8721fc5bff2677beadb4f3d15d7c0ec989ca) pkg/epoch: replace some fmt.Sprintfs with strconv
* CI: update Fedora to 43 ([#12450](https://github.com/containerd/containerd/pull/12450))
  * [`5cfedbf52`](https://github.com/containerd/containerd/commit/5cfedbf52300d09f77a51f02a0c784c37284302c) CI: update Fedora to 43
* CI: skip ubuntu-24.04-arm on private repos ([#12429](https://github.com/containerd/containerd/pull/12429))
  * [`cf99a012d`](https://github.com/containerd/containerd/commit/cf99a012d6f7fcb51afdea641d87474dae95f50d) CI: skip ubuntu-24.04-arm on private repos
* runc:Update runc binary to v1.3.1 ([#12276](https://github.com/containerd/containerd/pull/12276))
  * [`4c77b8d07`](https://github.com/containerd/containerd/commit/4c77b8d078a65a5e99e40847a9eaa18a944ff68e) runc:Update runc binary to v1.3.1
* Fix lost container logs from quickly closing io ([#12375](https://github.com/containerd/containerd/pull/12375))
  * [`d30024db2`](https://github.com/containerd/containerd/commit/d30024db25590e6ec74b639746a5dc792f5c1403) bugfix:fix container logs lost because io close too quickly
* ci: bump Go 1.24.8 ([#12362](https://github.com/containerd/containerd/pull/12362))
  * [`f4b3d96f3`](https://github.com/containerd/containerd/commit/f4b3d96f3d83a0ac7bde03ae9eec749aa1936a59) ci: bump Go 1.24.8
  * [`334fd8e4b`](https://github.com/containerd/containerd/commit/334fd8e4b974d88ebea43a998d76760aad49773a) update golangci-lint to v1.64.2
  * [`8a67abc4c`](https://github.com/containerd/containerd/commit/8a67abc4cac67bf806da0b2b55ac7159e91f6996) Drop inactivated linter exportloopref
  * [`e4dbf08f0`](https://github.com/containerd/containerd/commit/e4dbf08f0ff3dc9f6b2a9a36eab71d73ac707956) build(deps): bump golangci/golangci-lint-action from 6.3.2 to 6.5.0
  * [`d7db2ba06`](https://github.com/containerd/containerd/commit/d7db2ba063385d06132ec80890eb6c1fe4126692) build(deps): bump golangci/golangci-lint-action from 6.2.0 to 6.3.2
  * [`d7182888f`](https://github.com/containerd/containerd/commit/d7182888f0071cce86d40fcf09cd9a247ac15c41) build(deps): bump golangci/golangci-lint-action from 6.1.1 to 6.2.0
  * [`4be6c7e3b`](https://github.com/containerd/containerd/commit/4be6c7e3b5d5da7be8c1c87e1c16450b7ea8dadb) build(deps): bump actions/cache from 4.1.2 to 4.2.0
  * [`a2e097e86`](https://github.com/containerd/containerd/commit/a2e097e865887382c2fc29ee0cea0053e6152a12) build(deps): bump actions/checkout from 4.2.1 to 4.2.2
  * [`6de404d11`](https://github.com/containerd/containerd/commit/6de404d11b8e237a7867c7fbe535579c5736bfde) build(deps): bump actions/cache from 4.1.1 to 4.1.2
  * [`038a25584`](https://github.com/containerd/containerd/commit/038a25584e7f66272114ec0801b071e6149ef841) [StepSecurity] ci: Harden GitHub Actions
* Update differ to handle zstd media types ([#12018](https://github.com/containerd/containerd/pull/12018))
  * [`eaeb4b6ac`](https://github.com/containerd/containerd/commit/eaeb4b6ac581c0704bed0ff96ee7e53170345e84) Update differ to handle zstd media types
* ci: bump Go 1.23.12, 1.24.6 ([#12188](https://github.com/containerd/containerd/pull/12188))
  * [`83c535339`](https://github.com/containerd/containerd/commit/83c535339bbe253ce9e7a616a90f770994b754e5) ci: bump Go 1.23.12, 1.24.6
</p>
</details>

### Dependency Changes

This release has no dependency changes

Previous release can be found at [v1.7.28](https://github.com/containerd/containerd/releases/tag/v1.7.28)
