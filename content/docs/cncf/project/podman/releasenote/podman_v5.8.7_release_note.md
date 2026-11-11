来源: https://github.com/podman-container-tools/podman/releases/tag/v5.8.7

# containers/podman v5.8.7 Release Notes

Published at: 2026-09-16T18:13:20Z

### Security
- This release addresses ([CVE-2025-11395](https://github.com/podman-container-tools/container-libs/security/advisories/GHSA-3gcv-x57j-xqxv)), where importing images containing crafted layer tarballs with the `podman load` command, or importing volumes containing crafted symlinks with `podman volume import`, allows overwriting files on the host.
- This release also addresses [CVE-2026-79699](https://github.com/podman-container-tools/container-libs/security/advisories/GHSA-mmq6-9mjh-hvq3) and [CVE-2026-79705](https://github.com/podman-container-tools/buildah/security/advisories/GHSA-3528-5p26-cf44), though we do not believe these CVEs are exploitable through the Podman command line.

### Misc
- Updated Buildah to v1.43.4
- Updated Common to v0.67.2
- Updated Image to v5.39.3
- Updated Storage to v1.62.1

