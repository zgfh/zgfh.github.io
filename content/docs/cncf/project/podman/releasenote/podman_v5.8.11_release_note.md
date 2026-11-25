来源: https://github.com/podman-container-tools/podman/releases/tag/v5.8.11

# containers/podman v5.8.11 Release Notes

Published at: 2026-11-24T16:38:17Z

### Bugfixes
- Fixed a bug where read-only containers using secrets could fail to start ([#30301](https://github.com/podman-container-tools/podman/issues/30301)).
- Fixed a bug where `podman exec` could fail to set oom_score_adj as rootless user ([#30245](https://github.com/podman-container-tools/podman/issues/30245)).
- Fixed a bug where the `podman machine start` command could create a VM that cannot be connected to on Windows if the host was shut down or restarted when the VM was running ([#29971](https://github.com/podman-container-tools/podman/issues/29971)).

