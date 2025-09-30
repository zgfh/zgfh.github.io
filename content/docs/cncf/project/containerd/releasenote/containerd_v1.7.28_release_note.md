来源: https://github.com/containerd/containerd/releases/tag/v1.7.28

# containerd/containerd v1.7.28 Release Notes

Published at: 2025-07-26T00:57:19Z

Welcome to the v1.7.28 release of containerd!

The twenty-eighth patch release for containerd 1.7 contains various fixes
and updates.

### Highlights

#### Image Distribution

* Refresh OAuth tokens when they expire during registry operations ([#11721](https://github.com/containerd/containerd/pull/11721))
* Set default differ for the default unpack config of transfer service ([#11689](https://github.com/containerd/containerd/pull/11689))

#### Runtime

* Update runc binary to v1.3.0 ([#11800](https://github.com/containerd/containerd/pull/11800))
* Remove invalid error log when stopping container after containerd restart ([#11620](https://github.com/containerd/containerd/pull/11620))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Akhil Mohan
* Akihiro Suda
* Austin Vazquez
* Maksym Pavlenko
* Phil Estes
* Derek McGowan
* Kirtana Ashok
* Henry Wang
* Iain Macdonald
* Jin Dong
* Swagat Bora
* Wei Fu
* Yang Yang
* madraceee

### Changes
<details><summary>57 commits</summary>
<p>

* Prepare release notes for v1.7.28 ([#12134](https://github.com/containerd/containerd/pull/12134))
  * [`b01b809f8`](https://github.com/containerd/containerd/commit/b01b809f89a27e19ff7531e1b88df07d2f40de97) Prepare release notes for v1.7.28
* ci: bump Go 1.23.11, 1.24.5 ([#12117](https://github.com/containerd/containerd/pull/12117))
  * [`ce2373176`](https://github.com/containerd/containerd/commit/ce2373176b0db7cdcc3e289f57aeb59927ad0efb) ci: bump Go 1.23.11, 1.24.5
* Backport windows test fixes ([#12121](https://github.com/containerd/containerd/pull/12121))
  * [`3c06bcc4d`](https://github.com/containerd/containerd/commit/3c06bcc4d2f5b55c501f9c5333596c5a6d0a980a) Fix intermittent test failures on Windows CIs
  * [`c6c0c6854`](https://github.com/containerd/containerd/commit/c6c0c6854ff663deb46363a8884a9015598c9f9b) Remove WS2025 from CIs due to regression
* ci: use fedora 39 archive ([#12123](https://github.com/containerd/containerd/pull/12123))
  * [`6d7e021cf`](https://github.com/containerd/containerd/commit/6d7e021cf0f0f6ba1d14f0b4f76ecdf7a005feaa) ci: use fedora/39-cloud-base image from archive
* update runners to ubuntu 24.04 ([#11802](https://github.com/containerd/containerd/pull/11802))
  * [`c362e18cc`](https://github.com/containerd/containerd/commit/c362e18ccd613b5baf04fff87832b871edfdecd5) CI: install OVMF for Vagrant
  * [`1d99bec21`](https://github.com/containerd/containerd/commit/1d99bec213063acdad8d7ad96ea4cbb78ab6b560) CI: fix "Unable to find a source package for vagrant" error
  * [`dafa3c48d`](https://github.com/containerd/containerd/commit/dafa3c48dffaff915bea2293eecd949fbdd94228) add debian sources for ubuntu-24
  * [`b03301d85`](https://github.com/containerd/containerd/commit/b03301d851a5492808f36e5233a808a39575a1a0) partial: enable ubuntu 24 runners
  * [`13fbc5f97`](https://github.com/containerd/containerd/commit/13fbc5f970d1dee5425443a9b346d56ccc98db45) update release runners to ubuntu 24.04
* go.mod: golang.org/x/* latest ([#12096](https://github.com/containerd/containerd/pull/12096))
  * [`da5d1a371`](https://github.com/containerd/containerd/commit/da5d1a3714ac06f6280740f668ebe95c62863c01) go.mod: golang.org/x/* latest
* Remove additional fuzzers from instrumentation repo ([#12099](https://github.com/containerd/containerd/pull/12099))
  * [`5fef123ba`](https://github.com/containerd/containerd/commit/5fef123ba77e3d9fd83f78fd34bdb80549034756) Remove additional fuzzers from CI
* backport windows runner and golang toolchain updates ([#11972](https://github.com/containerd/containerd/pull/11972))
  * [`a35978f5a`](https://github.com/containerd/containerd/commit/a35978f5af147f279280b34082c3781904bfd4cd) ci: bump golang [1.23.10, 1.24.4] in build and release
  * [`df035aa3e`](https://github.com/containerd/containerd/commit/df035aa3ef3d98eb48310d548439eb59c8b6d887) ci: bump golang [1.23.9, 1.24.3] in build and release
  * [`2a6d9fc71`](https://github.com/containerd/containerd/commit/2a6d9fc71e97ff0d742b21d0f62a05a70126aa21) use go1.23.8 as the default go version
  * [`15d4d6eba`](https://github.com/containerd/containerd/commit/15d4d6eba30565274e1ade4d545abab2dbbcf1f9) update to go 1.24.2, 1.23.8
  * [`1613a3b1a`](https://github.com/containerd/containerd/commit/1613a3b1addf8fb8a50cef46860a1b7642d81589) Enable CIs to run on WS2022 and WS2025
* test: added runc v1 tests using vagrant ([#11896](https://github.com/containerd/containerd/pull/11896))
  * [`60e73122c`](https://github.com/containerd/containerd/commit/60e73122c1f74524178ff1ea819a893d7cdb4372) test: added runc v1 tests using vagrant
* Revert "disable portmap test in ubuntu-22 to make CI happy" ([#11803](https://github.com/containerd/containerd/pull/11803))
  * [`10e1b515e`](https://github.com/containerd/containerd/commit/10e1b515ec9c497bcfd7b0758bff3f6c840b303a) Revert "Disable port mapping tests in CRI-in-UserNS"
  * [`7a680e884`](https://github.com/containerd/containerd/commit/7a680e88494d90896322e09d4070ed86d221e25b) fix unbound SKIP_TEST variable error
  * [`e5f8cc995`](https://github.com/containerd/containerd/commit/e5f8cc9953f28f1abdc2f7975a9f5833cc83ee9c) Revert "disable portmap test in ubuntu-22 to make CI happy"
* Update runc binary to v1.3.0 ([#11800](https://github.com/containerd/containerd/pull/11800))
  * [`b001469c7`](https://github.com/containerd/containerd/commit/b001469c70a4489c1453cfe856055b15c536645f) Update runc binary to v1.3.0
* Refresh OAuth tokens when they expire during registry operations ([#11721](https://github.com/containerd/containerd/pull/11721))
  * [`a6421da84`](https://github.com/containerd/containerd/commit/a6421da84bb59dcf3680eb472b78f2eae8086f9b) remotes/docker/authorizer.go: invalidate auth tokens when they expire.
* [CI] Fix vagrant ([#11739](https://github.com/containerd/containerd/pull/11739))
  * [`effc49e8b`](https://github.com/containerd/containerd/commit/effc49e8b096bebfd73effb9257ad4fd80aa4e84) Fix vagrant setup
* Fix CI ([#11722](https://github.com/containerd/containerd/pull/11722))
  * [`d3e7dd716`](https://github.com/containerd/containerd/commit/d3e7dd716a7988bf49f92972998a5260fd538505) Skip criu on Arms
  * [`7cf9ebe94`](https://github.com/containerd/containerd/commit/7cf9ebe94676a443f5df2802f2c784a93dba6b9a) Disable port mapping tests in CRI-in-UserNS
  * [`42657a4ed`](https://github.com/containerd/containerd/commit/42657a4ed1bcc2a5162264cb820d97bdd0a56a6b) disable portmap test in ubuntu-22 to make CI happy
  * [`b300fd37b`](https://github.com/containerd/containerd/commit/b300fd37b840dcad8c0635e1f8ce848413441445) add option to skip tests in critest
  * [`6f4ffad27`](https://github.com/containerd/containerd/commit/6f4ffad27695c7e297c0052091b0d5e7fad7e48a) Address cgroup mountpoint does not exist
  * [`cef298331`](https://github.com/containerd/containerd/commit/cef2983317494d0a7b67e89ef81e083f75102066) Update Ubuntu to 24
  * [`2dd9be16e`](https://github.com/containerd/containerd/commit/2dd9be16e71e97b922ae42b05a7ae837c28563ca) ci: update GitHub Actions release runner to ubuntu-24.04
* Set default differ for the default unpack config of transfer service ([#11689](https://github.com/containerd/containerd/pull/11689))
  * [`e40e59e4e`](https://github.com/containerd/containerd/commit/e40e59e4ee8e7fb00213065c6fabbec8d4e7fc7f) Set default differ for the default unpack config of transfer service
* silence govulncheck false positives ([#11679](https://github.com/containerd/containerd/pull/11679))
  * [`ff097d5a4`](https://github.com/containerd/containerd/commit/ff097d5a4c1a427d10fa989895d05f78c0b52893) silence govulncheck false positives
* vendor: github.com/go-jose/go-jose/v3 v3.0.4 ([#11619](https://github.com/containerd/containerd/pull/11619))
  * [`52dd4dc51`](https://github.com/containerd/containerd/commit/52dd4dc51070fc93f13f048d3a919ccbf2b042aa) vendor: github.com/go-jose/go-jose/v3 v3.0.4
* Remove invalid error log when stopping container after containerd restart ([#11620](https://github.com/containerd/containerd/pull/11620))
  * [`24f41d2d5`](https://github.com/containerd/containerd/commit/24f41d2d5c6514e2f0a6f553f80183ff274ec230) use shimCtx for fifo copy
* Update runc binary to v1.2.6 ([#11584](https://github.com/containerd/containerd/pull/11584))
  * [`1e1e78ad7`](https://github.com/containerd/containerd/commit/1e1e78ad7cab8d6f50be6bcf0ef7178a2ba3e207) Update runc binary to v1.2.6
* Use RWMutex in NSMap and reduce lock area ([#11556](https://github.com/containerd/containerd/pull/11556))
  * [`9a8d1d44a`](https://github.com/containerd/containerd/commit/9a8d1d44a1dee8f805ad0b071b686887222a1fe7) Use RWMutex in NSMap and reduce lock area
</p>
</details>

### Dependency Changes

* **github.com/go-jose/go-jose/v3**  v3.0.3 -> v3.0.4
* **golang.org/x/crypto**            v0.31.0 -> v0.40.0
* **golang.org/x/mod**               v0.17.0 -> v0.26.0
* **golang.org/x/net**               v0.33.0 -> v0.42.0
* **golang.org/x/oauth2**            v0.11.0 -> v0.30.0
* **golang.org/x/sync**              v0.10.0 -> v0.16.0
* **golang.org/x/sys**               v0.28.0 -> v0.34.0
* **golang.org/x/term**              v0.27.0 -> v0.33.0
* **golang.org/x/text**              v0.21.0 -> v0.27.0
* **golang.org/x/time**              90d013bbcef8 -> v0.12.0

Previous release can be found at [v1.7.27](https://github.com/containerd/containerd/releases/tag/v1.7.27)
