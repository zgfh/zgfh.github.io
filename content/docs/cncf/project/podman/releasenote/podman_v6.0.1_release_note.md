来源: https://github.com/podman-container-tools/podman/releases/tag/v6.0.1

# containers/podman v6.0.1 Release Notes

Published at: 2026-07-08T20:15:01Z

### Bugfixes
- Fixed a bug where Podman Machine VMs on Mac using the `libkrun` provider could be regularly turned off by a port-scanning process on the host unintentionally commanding the VM to shut down.
- Fixed a bug where the `podman machine init` command would fail on Windows hosts when using the `hyperv` provider when WSL was not installed ([#29053](https://github.com/podman-container-tools/podman/issues/29053)).
- Fixed a bug where the `podman machine init` command would fail on Windows hosts when using the `wsl` provider when the user was a Hyper-V admin but Hyper-V is disabled ([#29138](https://github.com/podman-container-tools/podman/issues/29138)).
- Fixed a bug where error messages from the OCI runtime were sometimes not displayed when `--log-level=debug` was passed to Podman.
- Fixed a bug where the `podman machine os upgrade` command did not function properly ([#29085](https://github.com/podman-container-tools/podman/issues/29085)).
- Fixed a bug where the default image used by `podman machine` was not being properly cached ([#29090](https://github.com/podman-container-tools/podman/issues/29090)).
- Fixed a bug where rootful Podman Machine VMs on Windows using the `wsl` provider would fail to start ([#29003](https://github.com/podman-container-tools/podman/issues/29003)).
- Fixed a bug where commands that did not support the `--replace` option would incorrectly suggest using that option in error messages ([#24537](https://github.com/podman-container-tools/podman/issues/24537)).
- Fixed a bug where the Pesto rootless port forwarding tool (enabled by `rootless_port_forwarder=pasta`) did not properly clean up rules on container restart and network reload, causing failures to forward traffic ([#29032](https://github.com/podman-container-tools/podman/issues/29032)).

