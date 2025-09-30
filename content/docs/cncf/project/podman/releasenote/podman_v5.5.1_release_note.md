来源: https://github.com/containers/podman/releases/tag/v5.5.1

# containers/podman v5.5.1 Release Notes

Published at: 2025-06-05T21:55:26Z

### Bugfixes
- Fixed a bug where containers mounting a volume to `/` could overmount important directories such as `/proc` causing start and/or runtime failures due to an issue with mount ordering ([#26161](https://github.com/containers/podman/issues/26161)).
- Fixed a bug where Quadlet `.pod` units could fail to start due to their storage not being mounted ([#26190](https://github.com/containers/podman/issues/26190)).
- Fixed a bug where containers joined to a network with DNS enabled would not include the host's search domains in their `resolv.conf` ([#24713](https://github.com/containers/podman/issues/24713)).
- Fixed a bug where the `--dns-opt` option to `podman create`, `podman run`, and `podman pod create` would append options to the container's `resolv.conf`, instead of replacing them ([#22399](https://github.com/containers/podman/issues/22399)).
- Fixed a bug where the `podman kube play` command would add an empty network alias for containers created with no name specified, causing Netavark to emit extraneous warnings.
- Fixed a bug where the `podman system df` command would panic when one or more containers were created using a root filesystem (the `--rootfs` option to `podman create` and `podman run`) instead of from an image ([#26224](https://github.com/containers/podman/issues/26224)).
- Fixed a bug where the `log_tag` field in `containers.conf` would override the `--log-opt tag=value` option to `podman create` and `podman run` ([#26236](https://github.com/containers/podman/issues/26236)).
- Fixed a bug where the `podman volume rm` and `podman volume inspect` commands would incorrectly handle volume names containing the `_` character when the SQLite database backend was in use ([#26168](https://github.com/containers/podman/issues/26168)).
- Fixed a bug where the Podman remote client on Windows was unable to mount local folders into containers using overlay mounts (`-v source:destination:O`) ([#25988](https://github.com/containers/podman/issues/25988)).

### API
- Fixed a bug in the Libpod Create API for Containers where rlimits specified with a value of `-1` were causing errors, instead of being interpreted as the maximum possible value ([#24886](https://github.com/containers/podman/issues/24886)).
- Fixed a bug in the Compat Create API for Containers where specifying an entrypoint of `[]` (an empty array) was ignored, instead of setting an empty entrypoint ([#26078](https://github.com/containers/podman/issues/26078)).

### Misc
- Updated Buildah to v1.40.1
- Updated the containers/common library to v0.63.1

