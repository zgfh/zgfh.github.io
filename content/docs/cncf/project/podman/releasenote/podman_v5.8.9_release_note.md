来源: https://github.com/podman-container-tools/podman/releases/tag/v5.8.9

# containers/podman v5.8.9 Release Notes

Published at: 2026-10-12T20:35:03Z

### Bugfixes
- Fixed an issue where Podman would not function when run under WSL 3 ([#29749](https://github.com/podman-container-tools/podman/issues/29749)).
- Fixed a bug with `podman machine` VMs on Mac where machines could be left in an inconsistent state if the `podman machine start` command was interrupted by a signal.

### Misc
- Updated gvproxy to v0.9.0, resolving CVE-2026-107935
- Updated Buildah to v1.43.5
- Updated Storage to v1.62.2

