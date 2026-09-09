来源: https://github.com/podman-container-tools/podman/releases/tag/v6.1.1

# containers/podman v6.1.1 Release Notes

Published at: 2026-09-02T16:35:51Z

### Security
- This release addresses CVE-2026-17106, where a crafted tar archive could write outside the extraction directory through the use of malicious links ([GHSA-hfg8-hc9c-6c3h](https://github.com/moby/go-archive/security/advisories/GHSA-hfg8-hc9c-6c3h)).

### Bugfixes
- Fixed broken rootlessport bind behavior with `-p 0.0.0.0:... -p [::]:...` which failed instead of binding both v4 and v6 separately. Podman Machine on WSL should now correctly forward ports again by binding separate IPv4 and IPv6 sockets to make the WSL forwarder logic work again ([#29377](https://github.com/podman-container-tools/podman/issues/29377)).

