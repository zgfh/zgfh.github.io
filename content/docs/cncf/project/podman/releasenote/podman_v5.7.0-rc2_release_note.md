来源: https://github.com/containers/podman/releases/tag/v5.7.0-rc2

# containers/podman v5.7.0-rc2 Release Notes

Published at: 2025-10-30T14:34:24Z

### Features
- The remote Podman client and `podman system service` API server now support encrypting connections with TLS and mTLS, including client authentication by certificate ([#24583](https://github.com/containers/podman/issues/24583)).
- The `podman system connection add` command can now create connections to TCP sockets with TLS and mTLS encryption.
- The `podman run` and `podman create` commands now support two new options, `--creds` and `--cert-dir`, to manage logging into registries to pull images.
- The `podman kube play` and `podman kube down` commands can now accept multiple files as input, creating or removing more than one pod or deployment with the same command ([#26274](github.com/containers/podman/issues/26274)).
- The `podman kube play` command now supports a new option, `--no-pod-prefix`, to disable prefixing container names with pod names. Please note that this can cause pods to fail to create if the pod shares a name with a container ([#26396](https://github.com/containers/podman/issues/26396)).
- The `podman machine init` command now supports a new option, `--tls-verify`, to control whether the machine image can be pulled from registries without a trusted TLS certificate, with the default being `true` (TLS verification on) ([#26517](https://github.com/containers/podman/issues/26517)).
- When running the `podman image load` and `podman build` commands against a `podman machine` VM, if the path being loaded or built is shared into the VM, Podman will load it from the VM's filesystem instead of streaming the data through the REST API, improving performance ([#26321](https://github.com/containers/podman/issues/26321)).
- A default location for container log files when using the `k8s-file` log driver can now be specified with the `log_path` option in `containers.conf`.
- Default flags for the OCI runtime can now be set with the `runtimes_flags` option in `containers.conf`.
- The `podman artifact remove` command can now accept multiple arguments, for example, `podman artifact rm artifact1 artifact2`.
- The `podman wait` command now supports a new option, `--return-on-first`, which causes `podman wait` to return after *any* container matches the condition, as opposed to waiting for *all* containers to match ([#26691](https://github.com/containers/podman/issues/26691)).
- The `podman container restore` command now supports a new option, `--tcp-close`, allowing containers with active TCP connections to be restored multiple times.
- Quadlet now features support for a new file type, `.artifact`, allowing OCI artifacts to be managed with Quadlet ([#25778](https://github.com/containers/podman/issues/25778)).
- Quadlet `.container` files now support a new key, `HttpProxy`, to disable the automatic forwarding of HTTP proxy options from the host into the container ([#26925](https://github.com/containers/podman/issues/26925)).
- Quadlet `.pod` files now support a new key, `StopTimeout`, to configure the stop timeout for the pod ([#27120](https://github.com/containers/podman/issues/27120)).
- Quadlet `.build` files now support two new keys, `BuildArg` and `IgnoreFile`, to specify build arguments and an ignore file ([#27065](https://github.com/containers/podman/issues/27065) and [#27268](https://github.com/containers/podman/issues/27268)).
- Quadlet `.kube` files now support multiple YAML files in a single `.kube` file.
- Quadlet now supports templated dependencies for volumes and networks ([#25136](https://github.com/containers/podman/issues/25136)).
- The `podman quadlet install` command now supports a new option, `--replace`, which will replace any existing Quadlet with a conflicting name ([#26930](https://github.com/containers/podman/issues/26930)).
- The `podman quadlet print` command now has a new alias, `podman quadlet cat` ([#27296](https://github.com/containers/podman/issues/27296)).
- The remote Podman client's `podman artifact remove` command now supports the `--all` option.
- The `podman artifact add` command now supports a new option, `--replace`, which will replace any existing artifact with the given name ([#27082](https://github.com/containers/podman/issues/27082)).
- The `podman artifact rm` command now supports a new option, `--ignore`, which will suppress errors when attempting to remove an artifact that does not exist ([#27084](https://github.com/containers/podman/issues/27084)).
- The `podman artifact list` command now includes artifact creation time in its output ([#27314](https://github.com/containers/podman/issues/27314)).
- The `podman artifact list --format` option now supports two new format keys, `VirtualSize`, returning the size of the artifact in integer bytes, and `CreatedAt`, returning the time the artifact was created as an RFC3339 timestamp (the existing `Size` and `Created` fields returned human-readable information) ([#27085](https://github.com/containers/podman/issues/27085)).
- The `podman artifact inspect` command now supports a new option, `--format`, to return specific information about an artifact with user-specified formatting ([#27112](https://github.com/containers/podman/issues/27112)).

### Changes
- In preparation for a planned removal of the BoltDB database in Podman 6.0, a warning has been added for installations still using BoltDB. These warnings were added in Podman 5.6, but were not visible by default; they now are. They can be suppressed with the `SUPPRESS_BOLTDB_WARNING=true` environment variable.
- A new Windows installer has been introduced with a simpler single MSI architecture that supports both user-scope (no admin required) and machine-scope installations. Note: To use the new installer, users must uninstall existing Podman installations before using the new installer, but all containers, images, machines, and other data will be preserved. The old installer is still provided to ensure backwards compatibility, though it will be removed in a future release ([#22994](https://github.com/containers/podman/issues/22994) and [#25968](https://github.com/containers/podman/issues/25968)).
- Podman now requires Go 1.24.
- When the `-p`/`--publish` and `--network=ns:/path` options are used together when creating a container, Podman will not warn that the `-p` option will be ignored as an existing namespace is in use (this has always been the case, but Podman now prints a warning about it) ([#26663](https://github.com/containers/podman/issues/26663)).
- The `podman stats` command now provides additional information about container resource utilization when run on FreeBSD.
- Shell autocompletion has been enabled for the `--sysctl` option to `podman create` and `podman run`, and the `--interface-name` option to `podman network create`.
- Artifacts created by Podman now include a creation timestamp by default, stored in the `org.opencontainers.image.created` annotation ([#27081](https://github.com/containers/podman/issues/27081)).
- The `podman inspect` command can now inspect artifacts.
- The `podman artifact add` command can now override the `org.opencontainers.image.title` annotation in created artifacts.
- Podman can now optionally be built with Sequoia-PGP support. When so built, the `--sign-by-sq-fingerprint` option allows signing images using Seqoia-PGP keys.

### Bugfixes
- Fixed a bug where the `--filter ancestor=` option to `podman ps` required complete matches, unlike Docker (which matched substrings) ([#26623](https://github.com/containers/podman/issues/26623)).
- Fixed a bug where the `--filter label=` option to `podman events` did not support key-only matches (as `podman os --filter label=` does) ([#26702](https://github.com/containers/podman/issues/26702)).
- Fixed a bug where Quadlet could panic when a `Mount` was given without a `source` being specified.
- Fixed a bug where Quadlet would fail to generate for a `.build` file when a systemd specifier was used in the `[Build]` section ([#26746](https://github.com/containers/podman/issues/26746)).
- Fixed a bug where the `podman info` command could panic when `/proc/sys/fs/binfmt_misc` was not mounted.
- Fixed a bug where the remote Podman client could lose some initial bytes of output from attach sessions (`podman run`, `podman exec`, `podman attach`) due to a race condition ([#26951](https://github.com/containers/podman/issues/26951)).
- Fixed a bug where the `podman build` command was ignoring SBOM related options ([#23915](https://github.com/containers/podman/issues/23915)).
- Fixed a bug where the `--userns=ns:/path` option to `podman create` and `podman run` was broken with runc 1.1.11 and higher ([#27148](https://github.com/containers/podman/issues/27148)).

### API
- Added a new API endpoint to list quadlets (`GET /libpod/quadlets/json`).
- The Compat Inspect endpoint for Images no longer includes the `ContainerConfig` field. To access image configuration, use the `Config` field instead. This matches changes made by Docker in the v1.45 API.
- Fixed a bug where the Stats and Commit endpoints for Containers (compat & libpod), the Push, Commit, Push, and Pull endpoints for Images (compat & libpod), and the Push endpoint for Manifests (libpod) were not returning a `Content-Type` header.

### Misc
- Error messages returned when an incomplete `--device` option (for example `--device /dev/fuse::`) is passed to `podman create` or `podman run` have been improved.
- Updated Buildah to v1.42.0
- Updated the containers/image library to v5.38.0
- Updated the containers/storage library to v1.61.0
- Updated the containers/common library to v0.66.0
- The containers/image, containers/storage, and containers/common libraries are now sourced from the [containers/container-libs](https://github.com/containers/container-libs/) monorepo.

