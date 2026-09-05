来源: https://github.com/containerd/containerd/releases/tag/v2.0.12

# containerd/containerd v2.0.12 Release Notes

Published at: 2026-09-04T20:49:53Z

Welcome to the v2.0.12 release of containerd!

The twelfth patch release for containerd 2.0 contains various fixes
and updates including security patches.

### Security Updates

* **containerd**
  * [**CVE-2026-53495**](https://github.com/containerd/containerd/security/advisories/GHSA-7jxh-36q5-gcqv)
  * [**GHSA-rp3h-jf77-q9p4**](https://github.com/containerd/containerd/security/advisories/GHSA-rp3h-jf77-q9p4)

### Highlights

#### Image Distribution

* Apply hardening to strip sensitive authentication headers when fetching descriptor URLs ([#14045](https://github.com/containerd/containerd/pull/14045))
* Surface OCI error bodies in registry 403 responses by falling back to GET requests ([#13749](https://github.com/containerd/containerd/pull/13749))

#### Runtime

* Set SystemTemp environment variable on Windows so temp directory overrides work for SYSTEM services ([#14100](https://github.com/containerd/containerd/pull/14100))
* Enable log scrubbing by default on Windows ([#13884](https://github.com/containerd/containerd/pull/13884))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Samuel Karp
* Maksym Pavlenko
* Oleh Konko
* Akihiro Suda
* Chris Henzie
* Maksim An
* Phil Estes
* Wei Fu
* XlabAI
* cshung

### Changes
<details><summary>19 commits</summary>
<p>

  * [`d6a01e72a`](https://github.com/containerd/containerd/commit/d6a01e72ab3feb5ab9fa08413ded65981b780c1f) Prepare release notes for v2.0.12
  * [`2e964db90`](https://github.com/containerd/containerd/commit/2e964db909676a0d16620d27b2ee6aaa67018cb2) Merge commit from fork
  * [`eebea8c4c`](https://github.com/containerd/containerd/commit/eebea8c4c912f44b656c8295c9e6607a19b76650) cri: cancel ExecSync IO drain on context cancellation
  * [`d93c158a6`](https://github.com/containerd/containerd/commit/d93c158a6d70b8bd5b0c7b67f7d01c92a5bb34bd) Merge commit from fork
  * [`6c060c952`](https://github.com/containerd/containerd/commit/6c060c9525bd53ce91adc3e1736ab2017bcc689f) archive: skip redundant opaque whiteout walks
* Set SystemTemp env var to config temp on Windows ([#14100](https://github.com/containerd/containerd/pull/14100))
  * [`56058341c`](https://github.com/containerd/containerd/commit/56058341cb9f21ffe11b1d81099889d39c8e280e) Set SystemTemp env var to config temp on Windows
* docker fetcher: strip sensitive headers on descriptor URLs ([#14045](https://github.com/containerd/containerd/pull/14045))
  * [`88c95d56d`](https://github.com/containerd/containerd/commit/88c95d56da275becf89bab5b373fbfc080231e49) core/remotes/docker: normalize descriptor URL origins
  * [`7711c3d21`](https://github.com/containerd/containerd/commit/7711c3d2188999822928251e154b8570ae9a078d) core/remotes/docker: strip sensitive headers on desc.urls fetch
* Use ScrubLogs by default on Windows ([#13884](https://github.com/containerd/containerd/pull/13884))
  * [`84c6caa67`](https://github.com/containerd/containerd/commit/84c6caa67d38df4e63af911679fd79b9e7e66de6) ctr: add --scrub-logs flag for Windows
  * [`5fcdfaab2`](https://github.com/containerd/containerd/commit/5fcdfaab2222759804b2fe043dbf1f9a70a0857a) cri/config: use ScrubLogs by default on Windows
* ci: bound Go fuzzing by execution count ([#13787](https://github.com/containerd/containerd/pull/13787))
  * [`b452f2856`](https://github.com/containerd/containerd/commit/b452f285600b8b4827596eb9ff9dcdf46b20acbe) ci: bound Go fuzzing by execution count
* CI: migrate Vagrant to Lima ([#13756](https://github.com/containerd/containerd/pull/13756))
  * [`a15448870`](https://github.com/containerd/containerd/commit/a15448870588fc5f94b8aa6809d3e50b1305a396) CI: migrate Vagrant to Lima
* remotes: surface OCI error body on HEAD 403 via GET fallback ([#13749](https://github.com/containerd/containerd/pull/13749))
  * [`71a73c8a0`](https://github.com/containerd/containerd/commit/71a73c8a0f3818e30d873e645b0335e4aa7913ba) remotes: surface OCI error body on HEAD 403 via GET fallback
</p>
</details>

### Dependency Changes

This release has no dependency changes

Previous release can be found at [v2.0.11](https://github.com/containerd/containerd/releases/tag/v2.0.11)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.31 (Ubuntu 20.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on non-glibc Linux distributions. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
