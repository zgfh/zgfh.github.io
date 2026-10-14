来源: https://github.com/containerd/containerd/releases/tag/v1.7.35

# containerd/containerd v1.7.35 Release Notes

Published at: 2026-09-04T21:17:05Z

Welcome to the v1.7.35 release of containerd!

The thirty-fifth patch release for containerd 1.7 contains various fixes
and updates including security patches.

### Security Updates

* **containerd**
  * [**CVE-2026-53495**](https://github.com/containerd/containerd/security/advisories/GHSA-7jxh-36q5-gcqv)
  * [**GHSA-rp3h-jf77-q9p4**](https://github.com/containerd/containerd/security/advisories/GHSA-rp3h-jf77-q9p4)

### Highlights

#### Image Distribution

* Apply hardening to strip sensitive authentication headers when fetching descriptor URLs ([#14046](https://github.com/containerd/containerd/pull/14046))

#### Runtime

* Enable log scrubbing by default on Windows ([#13889](https://github.com/containerd/containerd/pull/13889))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Samuel Karp
* Oleh Konko
* Chris Henzie
* Maksym Pavlenko
* Phil Estes
* XlabAI

### Changes
<details><summary>13 commits</summary>
<p>

  * [`05aa78da3`](https://github.com/containerd/containerd/commit/05aa78da3d6bc6d9f9e056f3bb4b70347079e1c8) Prepare release notes for v1.7.35
  * [`3bd79bb36`](https://github.com/containerd/containerd/commit/3bd79bb360ec97676c25d37c199fc5697bca368c) Merge commit from fork
  * [`5a2a3a759`](https://github.com/containerd/containerd/commit/5a2a3a759b0d2ad8c821b33c3afc20890daf6d81) cri: cancel ExecSync IO drain on context cancellation
  * [`323e148f2`](https://github.com/containerd/containerd/commit/323e148f23c7f9430863e7f9a0222e01f34416c0) Merge commit from fork
  * [`9205b1903`](https://github.com/containerd/containerd/commit/9205b1903b1336d77864ee658a43b7989f56d13e) archive: skip redundant opaque whiteout walks
* docker fetcher: strip sensitive headers on descriptor URLs ([#14046](https://github.com/containerd/containerd/pull/14046))
  * [`b01d66349`](https://github.com/containerd/containerd/commit/b01d66349d39f72a9c56696741913bdc5f4332cd) core/remotes/docker: normalize descriptor URL origins
  * [`b5d936dca`](https://github.com/containerd/containerd/commit/b5d936dca5e7c5980f2ed0f5114a388ad916a328) core/remotes/docker: strip sensitive headers on desc.urls fetch
* Use ScrubLogs by default on Windows ([#13889](https://github.com/containerd/containerd/pull/13889))
  * [`cff94ea40`](https://github.com/containerd/containerd/commit/cff94ea40f3959d5f77451b9d72365db44e8d153) ctr: add --scrub-logs flag for Windows
  * [`544e4657d`](https://github.com/containerd/containerd/commit/544e4657dd07284323760fbed2b641b76a6374b7) cri/config: use ScrubLogs by default on Windows
* ci: bound Go fuzzing by execution count ([#13788](https://github.com/containerd/containerd/pull/13788))
  * [`71e00ba9c`](https://github.com/containerd/containerd/commit/71e00ba9c1fb2f39ed37b33dd122fe03b8482378) ci: bound Go fuzzing by execution count
</p>
</details>

### Dependency Changes

This release has no dependency changes

Previous release can be found at [v1.7.34](https://github.com/containerd/containerd/releases/tag/v1.7.34)
