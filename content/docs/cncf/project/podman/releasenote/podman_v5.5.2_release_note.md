来源: https://github.com/containers/podman/releases/tag/v5.5.2

# containers/podman v5.5.2 Release Notes

Published at: 2025-06-24T17:21:28Z

### Security
- This release addresses CVE-2025-6032, in which the TLS connection used to pull VM images for `podman machine` was, by default, not validated, allowing connections to servers with invalid certificates by default and potentially allowing a Man in the Middle attack.

### Bugfixes
- Fixed a bug where Podman could panic after a reboot on systems with pods containing containers ([#26469](https://github.com/containers/podman/issues/26469)).

