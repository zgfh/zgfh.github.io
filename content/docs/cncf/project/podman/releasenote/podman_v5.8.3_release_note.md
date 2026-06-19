来源: https://github.com/podman-container-tools/podman/releases/tag/v5.8.3

# containers/podman v5.8.3 Release Notes

Published at: 2026-06-12T17:58:07Z

### Security
- This release addresses CVE-2026-44517, where building a Dockerfile using a `ADD` or `COPY` instruction accessing a malicious Git repository or tar archive could cause files outside the build context directory to be included in the build context or copied into the build. Please see [GHSA-49p4-px3h-rq49](https://github.com/podman-container-tools/buildah/security/advisories/GHSA-49p4-px3h-rq49) for more details.

### Misc
- Updated Buildah to v1.43.2
- Updated gvisor-tap-vsock to v0.8.9

