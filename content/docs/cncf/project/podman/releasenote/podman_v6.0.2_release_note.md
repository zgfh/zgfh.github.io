来源: https://github.com/podman-container-tools/podman/releases/tag/v6.0.2

# containers/podman v6.0.2 Release Notes

Published at: 2026-07-22T03:02:34Z

### Bugfixes
- Fixed a bug where `podman machine` VMs created by the WSL provider on Windows were not properly cleaned up if the `podman machine init` command failed ([#27036](https://github.com/podman-container-tools/podman/issues/27036)).
- Fixed a bug where the Windows installer for Podman would, when installing for all users, incorrectly modify the path of only the user installing Podman ([#29160](https://github.com/podman-container-tools/podman/issues/29160)).
- Fixed a bug where the remote Podman client would throw errors when run on a Linux system that was not using Cgroups v2 ([#29241](https://github.com/podman-container-tools/podman/issues/29241)).

### Misc
- Updated Buildah to v1.44.1

