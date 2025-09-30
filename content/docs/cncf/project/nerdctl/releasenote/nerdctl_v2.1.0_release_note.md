来源: https://github.com/containerd/nerdctl/releases/tag/v2.1.0

# containerd/nerdctl v2.1.0 Release Notes

Published at: 2025-05-12T09:27:48Z

> [!NOTE]
>
> Binaries are missing in this release due to a bug in the CI pipeline (#4241).
> The issue was fixed in [v2.1.1](https://github.com/containerd/nerdctl/releases/tag/v2.1.1).

## Changes
- Experimental support for [gomodjail](https://github.com/AkihiroSuda/gomodjail): jail for Go modules (#4012).
  gomodjail imposes syscall restrictions on a specific set of Go modules, so as to mitigate their potential vulnerabilities and supply chain attack vectors (see [caveats](https://github.com/AkihiroSuda/gomodjail/blob/v0.1.2/README.md#caveats)).
  Use the `nerdctl.gomodjail` binary included in the `nerdctl-full` archive.

- Initial support for UserNS-remap mode (#3941, thanks to @Shubhranshu153).
  UserNS-remap can be considered a middle between Rootless and Rootful.
  In the case of UserNS-remap, the daemon is executed with root privileges, while the containers are executed as a non-root user, to balance security and performance.
  To enable UserNS-remap mdoe, specify [`userns_remap = <USERNAME>`](https://github.com/containerd/nerdctl/blob/v2.1.0/docs/config.md) in `nerdctl.toml`, and run `nerdctl` as root.

- `nerdctl run`:
  - Support Container Device Interface (CDI) in `--device=example.com/device=foo` flag (#4170, thanks to @elezar and @djdongjin)

- `nerdctl ps`:
  - Add `--status=created` flag (#4196, thanks to @Shubhranshu153)

- `nerdctl logs`:
  - Fix logs of restarted containers (#3896, thanks to @Shubhranshu153)
  - Fix trailing newlines (#4226, thanks to @fahedouch)

- Rootless:
  - Fix `exec: \"iptables\": executable file not found in $PATH` error on Debian, etc. (#4208)

- Misc:
  - Support loong64 architecture (#2533, #4238, thanks to @zhaixiaojuan and @apostasie)
  - CI fixes (various PRs, thanks to @apostasie)

- nerdctl-full:
  - Update containerd (2.1.0), RootlessKit (2.3.5), fuse-overlayfs (1.15), containerd-fuse-overlayfs (2.1.5) (#4179, #4217, #4227, thanks to @Shubhranshu153)


Full changes: https://github.com/containerd/nerdctl/pulls?q=is%3Apr+milestone%3Av2.1.0+is%3Aclosed

Thanks to @Shubhranshu153 @apostasie @djdongjin @fahedouch @zhaixiaojuan
