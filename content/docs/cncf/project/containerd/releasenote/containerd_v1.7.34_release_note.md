来源: https://github.com/containerd/containerd/releases/tag/v1.7.34

# containerd/containerd v1.7.34 Release Notes

Published at: 2026-07-09T23:41:27Z

Welcome to the v1.7.34 release of containerd!

The thirty-fourth patch release for containerd 1.7 contains various fixes and updates.

### Highlights

#### Container Runtime Interface (CRI)

* Fix lost container exit events when events arrive before container info is cached ([#11634](https://github.com/containerd/containerd/pull/11634))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Chris Henzie
* Samuel Karp
* Akihiro Suda
* Maksym Pavlenko
* Phil Estes
* Sopho Merkviladze
* ningmingxiao

### Changes
<details><summary>5 commits</summary>
<p>

* Prepare release notes for v1.7.34 ([#13753](https://github.com/containerd/containerd/pull/13753))
  * [`7db112471`](https://github.com/containerd/containerd/commit/7db112471b99935b1deea31bcac9070ce2ccb4de) Prepare release notes for v1.7.34
* Update go to 1.26.5/1.25.12 ([#13731](https://github.com/containerd/containerd/pull/13731))
  * [`c06144c85`](https://github.com/containerd/containerd/commit/c06144c8516ccd2fb632e0db4290a7cb5909cdb6) Update go to 1.26.5/1.25.12
* ci: pin fog-json to resolve gem conflict ([#13712](https://github.com/containerd/containerd/pull/13712))
  * [`b84460e50`](https://github.com/containerd/containerd/commit/b84460e50769d336bf62dca976eb23f984f7d10b) ci: pin fog-json to resolve gem conflict
* cri:fix lost container exit events if they arrive before info is cached ([#11634](https://github.com/containerd/containerd/pull/11634))
  * [`2fe076ea7`](https://github.com/containerd/containerd/commit/2fe076ea7ebaac58d3e731bcb6dcde84d3fe5719) cri:fix lost container exit events if they arrive before info is cached
* build(deps): bump golang.org/x/* dependencies ([#13502](https://github.com/containerd/containerd/pull/13502))
  * [`862057716`](https://github.com/containerd/containerd/commit/862057716f66750c93fade0c0bc1cff4a8169039) bump golang.org/x/* dependencies
</p>
</details>

### Dependency Changes

* **golang.org/x/crypto**  v0.45.0 -> v0.52.0
* **golang.org/x/mod**     v0.29.0 -> v0.35.0
* **golang.org/x/net**     v0.47.0 -> v0.55.0
* **golang.org/x/sync**    v0.18.0 -> v0.20.0
* **golang.org/x/sys**     v0.38.0 -> v0.45.0
* **golang.org/x/term**    v0.37.0 -> v0.43.0
* **golang.org/x/text**    v0.31.0 -> v0.37.0

Previous release can be found at [v1.7.33](https://github.com/containerd/containerd/releases/tag/v1.7.33)
