来源: https://github.com/containers/podman/releases/tag/v5.6.0

# containers/podman v5.6.0 Release Notes

Published at: 2025-08-15T15:50:25Z

### Features
- A new set of commands for managing Quadlets has been added as `podman quadlet install` (install a new Quadlet for the current user), `podman quadlet list` (list installed Quadlets), `podman quadlet print` (print the contents of a Quadlet file), and `podman quadlet rm` (remove a Quadlet). These commands are presently not available with the remote Podman client - we expect support for this to arrive in a future release.
- Quadlet `.container` units can now specify environment variables without values in the `Environment=` key, retrieving the value from the host when the container is started ([#26247](https://github.com/containers/podman/issues/26247)).
- Quadlet `.pod` units now support two new keys, `Label=` (to set labels on the created pod) and `ExitPolicy=` (to set exit policy for the created pod) ([#25961](https://github.com/containers/podman/issues/25961) and [#25596](https://github.com/containers/podman/issues/25596)).
- Quadlet `.image` units now support a new key, `Policy=`, to set pull policy for the image (e.g. pull always, pull only if newer version available) ([#26446](https://github.com/containers/podman/issues/26446)).
- Quadlet `.network` units now support a new key, `InterfaceName=`, to specify the name of the network interface created.
- The `podman machine init` command now supports a new option, `--swap`, enabling swap in the created virtual machine and setting it to a given size (in megabytes) ([#15980](https://github.com/containers/podman/issues/15980)).
- The `--mount` option to `podman create` and `podman run` now supports `dest=` as a valid alias for `destination=`.
- The `podman kube play` command can now restrict container execution to specific CPU cores and specific memory nodes using the `io.podman.annotations.cpuset/$ctrname` and `io.podman.annotations.memory-nodes/$ctrname` annotations ([#26172](https://github.com/containers/podman/issues/26172)).
- The `podman kube play` command now supports the `lifecycle.stopSignal` field in Pod YAML, allowing the signal used to stop containers to be specified ([#25389](https://github.com/containers/podman/issues/25389)).
- The `podman artifact` suite of commands for interacting with OCI artifacts is now available in the remote Podman client and the bindings for the REST API.
- The `podman volume import` and `podman volume export` commands are now available in the remote Podman client ([#26049](https://github.com/containers/podman/issues/26409)).
- The `--build-context` option to `podman build` is now supported by the remote Podman client ([#23433](https://github.com/containers/podman/issues/23433)).
- The `podman volume create` command now accepts two new options, `--uid` and `--gid`, to set the UID and GID the volume will be created with.
- The `podman secret create` command now has a new option, `--ignore`, causing the command to succeed even if a secret with the given name already exists.
- The `podman pull` command now has a new option, `--policy`, to configure pull policy.
- The `--mount type=artifact` option to `podman create`, `podman run`, and `podman pod create` now allows the filename of the artifact in the container to be set using the `name=` option (e.g. `podman run --mount type=artifact,name=$NAME,...`).
- The `--tmpfs` option to `podman create` and `podman run` now allows a new option, `noatime`, to be passed (e.g. `podman run --tmpfs /run:noatime ...`) ([#26102](https://github.com/containers/podman/issues/26102)).
- The `podman update` command now has a new option, `--latest`, to update the latest container instead of specifying a specific container ([#26380](https://github.com/containers/podman/issues/26380)).
- A new command, `podman buildx inspect`, has been added to improve Docker compatibility ([#13014](https://github.com/containers/podman/issues/13014)).

### Breaking Changes
- Rosetta support in `podman machine` VMs has been disabled by default due to issues with newer Linux kernels. These issues have been addressed in the Tahoe beta, and we plan on re-enabling support for Rosetta in a future Podman release once the fix is in wider circulation. You can find more details [here](https://blog.podman.io/2025/08/podman-5-6-released-rosetta-status-update/).

### Changes
- In preparation for a planned removal of the BoltDB database in Podman 6.0, a warning has been added for installations still using BoltDB. These warnings are presently not visible by default, which will happen in Podman 5.7.
- The `podman artifact` suite of commands for interacting with OCI artifacts is now considered stable.
- For users running `podman machine` VMs using the `libkrun` provider on an M3 or newer host running macOS 15+, nested virtualization is enabled by default.
- When creating `podman machine` VMs on Windows using the WSL v2 provider, images are now pulled as artifacts from `quay.io/podman/machine-os`, matching the behavior of other VM providers.
- Signal forwarding done by the `--sig-proxy` option to `podman run` and `podman attach` is now more robust to races and no longer forwards the `SIGSTOP` signal.
- The `podman system check --quick` command now skips checking layer digests.
- Podman on Windows using the WSLv2 provider now prefers the WSL executable in `C:\Program Files\Windows Subsystem for Linux\wsl.exe` over the one in `WindowsApps`, avoiding common “access denied” issues ([#25787](https://github.com/containers/podman/issues/25787)).
- The `--mount type=artifact` option to `podman create`, `podman run`, and `podman pod create` now mounts artifacts containing a only a single blob as a file at the given destination path if the path does not exist in the image.
- The `podman volume export` command now refuses to export to `STDOUT` if it is a TTY ([#26506](https://github.com/containers/podman/issues/26506)).
- When generating Quadlet units with options known to be problematic when used with Podman, such as `User=`, `Group=`, and `DynamicUser=` in the `[Service]` section of a unit, Quadlet will now warn the user of the potential incompatibility ([#26543](https://github.com/containers/podman/issues/26543)).

### Bugfixes
- Fixed a bug where the `--security-opt unmask=` option to `podman create` and `podman run` did not allow comma-separated lists of paths to be passed, instead only allowing a single path.
- Fixed a bug where stopping a Podman container could unintentionally kill non-Podman processes if the PID of an exec session started inside the container was reused for a new process while the container was running ([#25104](https://github.com/containers/podman/issues/25104)).
- Fixed a bug where `podman machine init` could fail if run in a Podman container ([#25950](https://github.com/containers/podman/issues/25950)).
- Fixed a bug where `podman machine` VMs would sometimes receive incorrect timezone information.
- Fixed a bug where `podman machine` VMs created with a custom username would not have lingering enabled.
- Fixed a bug where the `podman machine init` command on Windows when using the WSL 2 provider did not reliably determine if WSL was installed ([#25523](https://github.com/containers/podman/issues/25523)).
- Fixed a bug where the name of Quadlet `.pod` units that did not specify the `PodName=` key was set incorrectly ([#26062](https://github.com/containers/podman/issues/26062)).
- Fixed a bug where Quadlet `.container` units joining a pod specified in a `.pod` unit would fail as the pod name was set incorrectly when creating the container ([#26105](https://github.com/containers/podman/issues/26105)).
- Fixed a bug where Quadlet would not generate `RequiresMountsFor` when mounting a `.volume` unit with `Type=bind` set into a container ([#26125](https://github.com/containers/podman/issues/26125)).
- Fixed a bug where Quadlet dropin files were not correctly overwritten by new dropin files with the same name further along the hierarchy if the two dropin files did not share a parent directory ([#26555](https://github.com/containers/podman/issues/26555)).
- Fixed a bug where Quadlet would sometimes not print warnings when failing to parse units ([#26542](https://github.com/containers/podman/issues/26542)).
- Fixed a bug where Quadlet `.pod` files did not include the last `Environment=` key in the `[Service]` section in the generated systemd service ([#26521](https://github.com/containers/podman/issues/26521)).
- Fixed a bug where starting a container with already-running dependencies would fail.
- Fixed a bug where OCI hooks in a directory specified with `--hooks-dir` would fail to run when containers were restarted ([#17935](https://github.com/containers/podman/issues/17935)).
- Fixed a bug where the `--mount` option to `podman create` and `podman run`  required the `type=` option to be specified, instead of defaulting to `volume` when it was not present ([#26101](https://github.com/containers/podman/issues/26101)).
- Fixed a bug where the `podman kube play` command would fail on Windows when specifying an absolute path to YAML files ([#26350](https://github.com/containers/podman/issues/26350)).
- Fixed a bug where the `--security-opt seccomp=` option to `podman create`, `podman run`, and `podman pod create` could error on Windows when given a path to a Seccomp profile ([#26558](https://github.com/containers/podman/issues/26558)).
- Fixed a bug where the `--blkio-weight-device`, `--device-read-bps`, `--device-write-bps`, `--device-read-iops`, and `--device-write-iops` options to `podman create` and `podman run` incorrectly accepted non-block devices.
- Fixed a bug where the `podman build` command handled the `--ignorefile` option differently from the `buildah bud` command ([#25746](https://github.com/containers/podman/issues/25746)).
- Fixed a bug where the `podman rm -f` command could return an error when trying to remove a running container whose `conmon` process had been killed ([#26640](https://github.com/containers/podman/issues/26640)).
- Fixed a bug where the `podman inspect` command did not correctly display log size for containers when `log_size_max` was set in containers.conf.

### API
- A full set of API endpoints for interacting with artifacts has been added, including inspecting artifacts (`GET /libpod/artifacts/{name}/json`), listing all artifacts (`GET /libpod/artifacts/json`), pulling an artifact (`POST /libpod/artifacts/pull`), removing an artifact (`DELETE /libpod/artifacts/{name}`), adding an artifact (or appending to an existing artifact) from a tar file in the request body (`POST /libpod/artifacts/add`), pushing an artifact to a registry (`/libpod/artifacts/{name}/push`), and retrieving the contents of an artifact (`GET /libpod/artifacts/{name}/extract`).
- The Compat Create endpoint for Containers now accepts a new parameter, `HostConfig.CgroupnsMode`, to specify the cgroup namespace mode of the created container.
- The Compat Create endpoint for Containers now respects the `base_hosts_file` option in `containers.conf`.
- The Compat System Info endpoint now returns a new field, `DefaultAddressPools`.
- The Compat System DF endpoint has removed the deprecated `BuilderSize` field.
- The Compat Ping endpoint now sets `Builder-Version` to `1` to match Docker installs that do not include BuildKit.
- The Compat List endpoint for Images now returns the `shared-size` field unconditionally, even if the `shared-size` query parameter was not set to true. If not requested through query parameter, it is set to `-1`. This improves Docker API compatibility.
- The Compat Inspect endpoint for Images now no longer returns the deprecated `VirtualSize` field when Docker API version 1.44 and up is requested.
- Fixed a bug where the Compat Delete API for Containers would remove running containers when the `FORCE` parameter was set to true; Docker only removes stopped containers ([#25871](https://github.com/containers/podman/issues/25871)).
- Fixed a bug where the Compat List and Compat Inspect endpoints for Containers returned container status using Podman statuses instead of converting to Docker-compatible statuses ([#17728](https://github.com/containers/podman/issues/17728)).
- Fixed a bug where healthchecks that exceeded their timeout were not properly terminated; they now receive SIGTERM, then SIGKILL after a delay, if their timeout is exceeded ([#26086](https://github.com/containers/podman/pull/26086)).
- Fixed a bug where `application/json` responses would be HTML escaped, mutating some responses (e.g. `<missing>` becoming `\u003cmissing\u003e` in image history responses) ([#17769](https://github.com/containers/podman/issues/17769)).

### Misc
- Quadlet now no longer uses container/pod ID files when stopping containers, but instead passes the name of the container/pod directly to `podman stop`/`podman pod stop`.
- When building Podman via Makefile, it will now attempt to dynamically link sqlite3 if the library and header are installed locally. This and other optimizations should result in a significant reduction in binary size relative to Podman 5.5.x. Packagers can use the `libsqlite3` build tag to force this behavior when not using the Makefile to build.
- Updated Buildah to v1.41.3
- Updated the containers/common library to v0.64.1
- Updated the containers/storage library to v1.59.1
- Updated the containers/image library to v5.36.1

