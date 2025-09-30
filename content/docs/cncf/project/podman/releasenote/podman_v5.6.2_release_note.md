来源: https://github.com/containers/podman/releases/tag/v5.6.2

# containers/podman v5.6.2 Release Notes

Published at: 2025-09-30T19:42:49Z

### Bugfixes
- Fixed a bug where stopping the `podman machine start` command with SIGPIPE could result in machine state being stuck as "Starting" ([#26949](https://github.com/containers/podman/issues/26949)).
- Fixed a bug where `podman build` would fail with a permissions error when building Containerfiles using a non-root user and cache mounts ([#27044](https://github.com/containers/podman/issues/27044)).

### Misc
- Updated Buildah to v1.41.5

