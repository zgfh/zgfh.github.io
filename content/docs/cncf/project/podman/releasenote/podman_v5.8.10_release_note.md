来源: https://github.com/podman-container-tools/podman/releases/tag/v5.8.10

# containers/podman v5.8.10 Release Notes

Published at: 2026-11-10T19:52:42Z

### Security
- Addresses CVE-2026-121885, untrusted image labels could be used to trick podman auto-update into restarting incorrect systemd units [GHSA-55rm-rwr7-q2wr](https://github.com/podman-container-tools/podman/security/advisories/GHSA-55rm-rwr7-q2wr).
- Addresses CVE-2026-111361, malicious containers images could be able to bypass Digest and Signature validation [GHSA-pggw-qqjf-6cxw](https://github.com/podman-container-tools/container-libs/security/advisories/GHSA-pggw-qqjf-6cxw).
- Addresses CVE-2026-123876, default seccomp profile socket deny rule could be bypass by a malicious container.

