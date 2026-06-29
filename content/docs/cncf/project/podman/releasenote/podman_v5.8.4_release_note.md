来源: https://github.com/podman-container-tools/podman/releases/tag/v5.8.4

# containers/podman v5.8.4 Release Notes

Published at: 2026-06-26T15:37:17Z

### Security
- This release addresses CVE-2026-57231, where a malicious image using malformed `Env` entries could cause host environment variables to leak into containers run based on the image, including the ability to use the `*` glob operator to leak large numbers of environment variables without knowing their exact names ([GHSA-4hq8-gpf5-8p68](https://github.com/podman-container-tools/podman/security/advisories/GHSA-4hq8-gpf5-8p68)).
- The golang.org/x/crypto library has been updated to v0.53.0, addressing CVE-2026-39830 and CVE-2026-42508.

### Bugfixes
- Fixed a bug where the remote Podman client's `podman save` command would fail on Linux when using the `-f oci-dir` or `-f docker-dir` arguments.

