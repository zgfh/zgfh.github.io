来源: https://github.com/podman-container-tools/podman/releases/tag/v6.2.1

# containers/podman v6.2.1 Release Notes

Published at: 2026-11-24T17:00:07Z

### Bugfixes
- Fixed a bug where ConfigMaps and Secrets mounted as executable were not being able to be executed immediately on pod launch when using `podman kube play`.
- Fixed a bug where the Docker compatible image inspect responses returning an empty author for images with an author set.
- Fixed a bug where the podman service did not use the correct server configured temporary directory for remote image builds ([#20839](https://github.com/podman-container-tools/podman/issues/20839)).
- Fixed a bug where `--userns=nomap` sets the wrong supplementary group ([#30261](https://github.com/podman-container-tools/podman/issues/30261)).
- Fixed a bug where the Docker compatible network inspect and list endpoints are failing when a network has no gateway.
- Fixed a bug where `podman pod clone` would fail when it has no infra container ([#30340](https://github.com/podman-container-tools/podman/issues/30340)).
- Fixed a bug where `podman-remote manifest push --compression-level` had no effect.
- Fixed a bug where read-only containers using secrets could fail to start ([#30301](https://github.com/podman-container-tools/podman/issues/30301)).
- Fixed a bug where `podman-remote manifest add --artifact` would fail when no storage driver was configured in storage.conf on the server ([#30280](https://github.com/podman-container-tools/podman/issues/30280)).
- Fixed a bug where the podman machine state with the WSL provider was not parsed not correctly ([#30273](https://github.com/podman-container-tools/podman/issues/30273)).
- Fixed a bug where `podman exec` could fail to set oom_score_adj as rootless user ([#30245](https://github.com/podman-container-tools/podman/issues/30245)).

### Misc
- Downgraded tags.cncf.io/container-device-interface to v1.1.0 ([#30233](https://github.com/podman-container-tools/podman/issues/30233)).

