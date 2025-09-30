来源: https://github.com/containers/podman/releases/tag/v5.6.1

# containers/podman v5.6.1 Release Notes

Published at: 2025-09-04T20:55:43Z

### Security
- This release addresses CVE-2025-9566, where Kubernetes YAML run by `podman play kube` containing `ConfigMap` and `Secret` volumes can use crafted symlinks to overwrite content on the host.

### Bugfixes
- Fixed a bug where network creation and removal events were displayed incorrectly when the `journald` events driver was in use.
- Fixed a bug where the `--security-opt seccomp=unconfined` option was broken on Windows ([#26855](https://github.com/containers/podman/issues/26855)).
- Fixed a bug where containers created with a name longer than 64 characters, no explicit hostname, the the `container_name_as_hostname` option in `containers.conf` set to `true` would fail to start.
- Fixed a bug where Podman would fail to start containers when runc 1.3.0 or later was used as the OCI runtime ([#26938](https://github.com/containers/podman/issues/26938)).

### Misc
- Adjusted the systemd-tmpfiles script to recursively remove temporary files directories placed in `/tmp`, ensuring proper operation of Podman after a reboot if `/tmp` is not a tmpfs.
- Updated Buildah to v1.41.4
- Updated the containers/storage to v1.59.1
- Updated the containers/common library to v0.64.2

