来源: https://github.com/podman-container-tools/podman/releases/tag/v5.8.6

# containers/podman v5.8.6 Release Notes

Published at: 2026-08-13T21:11:05Z

### Security
- This release addressed [CVE-2026-19730](https://github.com/podman-container-tools/podman/security/advisories/GHSA-fx76-2j3w-2mx6) where the `podman quadlet install --replace` command did not truncate the file being replaced, meaning replacing a longer file with a shorter one would result in content from the original file incorrectly being retained.

