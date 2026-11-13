来源: https://github.com/containerd/nerdctl/releases/tag/v2.4.2

# containerd/nerdctl v2.4.2 Release Notes

Published at: 2026-10-30T12:04:04Z

## Changes

- `nerdctl container`:
  - Add `--device-cgroup-rule` to `nerdctl run` and `nerdctl create` ([#5258](https://github.com/containerd/nerdctl/pull/5258), thanks to @takumi12311123)
  - Add `--timeout` to `nerdctl commit` for configuring the lease timeout, which was hard-coded to 1h ([#5253](https://github.com/containerd/nerdctl/pull/5253), thanks to @Luckydog691)
  - Fix `--volumes-from` to inherit only user mounts, so that the target container's own `/dev/shm` configuration is not replaced ([#5250](https://github.com/containerd/nerdctl/pull/5250), thanks to @git-jxj)
  - Exit with status 1 when detaching from `nerdctl attach`, as Docker does ([#5281](https://github.com/containerd/nerdctl/pull/5281), thanks to @cvas22)
- Healthcheck:
  - Support `--health-start-interval` for `nerdctl run` and `nerdctl create`, `healthcheck.start_interval` in Compose, and `HEALTHCHECK --start-interval` in images ([#5229](https://github.com/containerd/nerdctl/pull/5229), thanks to @akashchamp)
- `nerdctl image`:
  - Fix `nerdctl image prune --filter until=` (empty value) dropping the filter and removing every unused image ([#5304](https://github.com/containerd/nerdctl/pull/5304), thanks to @ogulcanaydogan)
  - Fix `nerdctl rmi -f` failing with `image ":": already exists` when force-removing more than one image used by running containers ([#5191](https://github.com/containerd/nerdctl/pull/5191), thanks to @ogulcanaydogan)
  - Enable the image verifier of stargz-snapshotter v0.19, so that images with faked DiffIDs are detected ([#5264](https://github.com/containerd/nerdctl/pull/5264), thanks to @ktock)
- `nerdctl network`:
  - Reject invalid `nerdctl network ls` filters ([#5226](https://github.com/containerd/nerdctl/pull/5226), thanks to @immanuwell)
- `nerdctl volume`:
  - Reject invalid `nerdctl volume ls` filters ([#5252](https://github.com/containerd/nerdctl/pull/5252), thanks to @immanuwell)
- `nerdctl compose`:
  - Support `device_cgroup_rules` ([#5258](https://github.com/containerd/nerdctl/pull/5258), thanks to @takumi12311123)
  - Fix `nerdctl compose images` to report the pinned image after retagging ([#5251](https://github.com/containerd/nerdctl/pull/5251), thanks to @git-jxj)
  - Fix `nerdctl compose up` on Windows by not defaulting `--hostname` to the service name ([#5267](https://github.com/containerd/nerdctl/pull/5267), thanks to @0x000NULL)
- `nerdctl logs`:
  - Fix log rotation failing on Windows while `nerdctl logs -f` is running ([#5266](https://github.com/containerd/nerdctl/pull/5266), thanks to @0x000NULL)
- `go.mod`:
  - Update containerd library to [v2.4.2](https://github.com/containerd/containerd/releases/tag/v2.4.2) ([#5278](https://github.com/containerd/nerdctl/pull/5278))
- `nerdctl-full`:
  - Update containerd (2.4.2), BuildKit (0.34.1), RootlessKit (3.3.0), stargz-snapshotter (0.19.1) ([#5298](https://github.com/containerd/nerdctl/pull/5298), [#5264](https://github.com/containerd/nerdctl/pull/5264), thanks to @ktock)
    - containerd v2.4.2 fixes [CVE-2026-95839](https://github.com/containerd/containerd/security/advisories/GHSA-vwhp-8p66-mq4f), [GHSA-8647-2jxj-p2rc](https://github.com/containerd/containerd/security/advisories/GHSA-8647-2jxj-p2rc), [GHSA-hc94-p972-ch66](https://github.com/containerd/containerd/security/advisories/GHSA-hc94-p972-ch66)

Full changes: https://github.com/containerd/nerdctl/milestone/70?closed=1
Thanks to @0x000NULL @Luckydog691 @akashchamp @cvas22 @git-jxj @immanuwell @ktock @mainguyen0112 @ogulcanaydogan @sarankumar1325 @takumi12311123

> [!NOTE]
> Claude was used for drafting this release note

## Compatible containerd versions
This release of nerdctl is expected to be used with containerd v1.7 or later.
Some features may not work with other releases of containerd.

## About the binaries
- Minimal (`nerdctl-2.4.2-linux-amd64.tar.gz`): nerdctl only
- Full (`nerdctl-full-2.4.2-linux-amd64.tar.gz`):    Includes dependencies such as containerd, runc, and CNI

### Minimal
Extract the archive to a path like `/usr/local/bin` or `~/bin` .
<details><summary>tar Cxzvvf /usr/local/bin nerdctl-2.4.2-linux-amd64.tar.gz</summary>
<p>

```
-rwxr-xr-x root/root  32600226 2026-10-30 11:43 nerdctl
-rwxr-xr-x root/root     23390 2026-10-30 11:42 containerd-rootless-setuptool.sh
-rwxr-xr-x root/root      9555 2026-10-30 11:42 containerd-rootless.sh
```
</p>
</details>

### Full
Extract the archive to a path like `/usr/local` or `~/.local` .

<details><summary>tar Cxzvvf /usr/local nerdctl-full-2.4.2-linux-amd64.tar.gz</summary>
<p>

```
drwxr-xr-x 0/0               0 2026-10-30 11:53 bin/
-rwxr-xr-x 0/0        34819330 2026-10-07 19:18 bin/buildctl
-rwxr-xr-x 0/0        29909144 2025-05-12 13:10 bin/buildg
lrwxrwxrwx 0/0               0 2026-10-30 11:52 bin/buildkit-cni-bandwidth -> ../libexec/cni/bandwidth
lrwxrwxrwx 0/0               0 2026-10-30 11:52 bin/buildkit-cni-bridge -> ../libexec/cni/bridge
lrwxrwxrwx 0/0               0 2026-10-30 11:52 bin/buildkit-cni-dhcp -> ../libexec/cni/dhcp
lrwxrwxrwx 0/0               0 2026-10-30 11:52 bin/buildkit-cni-dummy -> ../libexec/cni/dummy
lrwxrwxrwx 0/0               0 2026-10-30 11:52 bin/buildkit-cni-firewall -> ../libexec/cni/firewall
lrwxrwxrwx 0/0               0 2026-10-30 11:52 bin/buildkit-cni-host-device -> ../libexec/cni/host-device
lrwxrwxrwx 0/0               0 2026-10-30 11:52 bin/buildkit-cni-host-local -> ../libexec/cni/host-local
lrwxrwxrwx 0/0               0 2026-10-30 11:52 bin/buildkit-cni-ipvlan -> ../libexec/cni/ipvlan
lrwxrwxrwx 0/0               0 2026-10-30 11:52 bin/buildkit-cni-loopback -> ../libexec/cni/loopback
lrwxrwxrwx 0/0               0 2026-10-30 11:52 bin/buildkit-cni-macvlan -> ../libexec/cni/macvlan
lrwxrwxrwx 0/0               0 2026-10-30 11:52 bin/buildkit-cni-portmap -> ../libexec/cni/portmap
lrwxrwxrwx 0/0               0 2026-10-30 11:52 bin/buildkit-cni-ptp -> ../libexec/cni/ptp
lrwxrwxrwx 0/0               0 2026-10-30 11:52 bin/buildkit-cni-sbr -> ../libexec/cni/sbr
lrwxrwxrwx 0/0               0 2026-10-30 11:52 bin/buildkit-cni-static -> ../libexec/cni/static
lrwxrwxrwx 0/0               0 2026-10-30 11:52 bin/buildkit-cni-tap -> ../libexec/cni/tap
lrwxrwxrwx 0/0               0 2026-10-30 11:52 bin/buildkit-cni-tuning -> ../libexec/cni/tuning
lrwxrwxrwx 0/0               0 2026-10-30 11:52 bin/buildkit-cni-vlan -> ../libexec/cni/vlan
lrwxrwxrwx 0/0               0 2026-10-30 11:52 bin/buildkit-cni-vrf -> ../libexec/cni/vrf
-rwxr-xr-x 0/0        80918593 2026-10-07 19:18 bin/buildkitd
-rwxr-xr-x 0/0        16866288 2026-10-30 11:51 bin/bypass4netns
-rwxr-xr-x 0/0         6615202 2026-10-30 11:51 bin/bypass4netnsd
-rwxr-xr-x 0/0        40525840 2026-10-30 11:52 bin/containerd
-rwxr-xr-x 0/0        12079288 2025-11-06 01:44 bin/containerd-fuse-overlayfs-grpc
-rwxr-xr-x 0/0           23390 2026-10-30 11:53 bin/containerd-rootless-setuptool.sh
-rwxr-xr-x 0/0            9555 2026-10-30 11:53 bin/containerd-rootless.sh
-rwxr-xr-x 0/0         8138914 2026-10-30 11:52 bin/containerd-shim-runc-v2
-rwxr-xr-x 0/0        60186784 2026-10-27 07:32 bin/containerd-stargz-grpc
-rwxr-xr-x 0/0        24848782 2026-10-30 11:52 bin/ctd-decoder
-rwxr-xr-x 0/0        23195810 2026-10-30 11:51 bin/ctr
-rwxr-xr-x 0/0        34420106 2026-10-30 11:52 bin/ctr-enc
-rwxr-xr-x 0/0        25022624 2026-10-27 07:32 bin/ctr-remote
-rwxr-xr-x 0/0         1695520 2026-10-30 11:52 bin/fuse-overlayfs
-rwxr-xr-x 0/0        11153570 2026-10-30 11:51 bin/gomodjail
-rwxr-xr-x 0/0        32563362 2026-10-30 11:53 bin/nerdctl
-rwxr-xr-x 0/0        43725693 2026-10-30 11:53 bin/nerdctl.gomodjail
-rwxr-xr-x 0/0        12482633 2026-10-14 01:49 bin/rootlessctl
-rwxr-xr-x 0/0        23959613 2026-10-14 01:49 bin/rootlesskit
-rwxr-xr-x 0/0        14131248 2026-10-30 11:51 bin/runc
-rwxr-xr-x 0/0        59388064 2026-10-27 07:32 bin/stargz-fuse-manager
-rwxr-xr-x 0/0        11448480 2026-10-27 07:32 bin/stargz-store-helper
-rwxr-xr-x 0/0          870496 2026-10-30 11:52 bin/tini
drwxr-xr-x 0/0               0 2026-10-30 11:52 lib/
drwxr-xr-x 0/0               0 2026-10-30 11:52 lib/systemd/
drwxr-xr-x 0/0               0 2026-10-30 11:52 lib/systemd/system/
-rw-r--r-- 0/0            1309 2026-10-30 11:52 lib/systemd/system/buildkit.service
-rw-r--r-- 0/0            1248 2026-10-30 11:50 lib/systemd/system/containerd.service
-rw-r--r-- 0/0             312 2026-10-30 11:52 lib/systemd/system/stargz-snapshotter.service
drwxr-xr-x 0/0               0 2026-10-30 11:52 libexec/
drwxr-xr-x 0/0               0 2026-03-16 14:18 libexec/cni/
-rw-r--r-- 0/0           11357 2026-03-16 14:18 libexec/cni/LICENSE
-rw-r--r-- 0/0            2343 2026-03-16 14:18 libexec/cni/README.md
-rwxr-xr-x 0/0         5042926 2026-03-16 14:18 libexec/cni/bandwidth
-rwxr-xr-x 0/0         5698763 2026-03-16 14:18 libexec/cni/bridge
-rwxr-xr-x 0/0        13725422 2026-03-16 14:18 libexec/cni/dhcp
-rwxr-xr-x 0/0         5251069 2026-03-16 14:18 libexec/cni/dummy
-rwxr-xr-x 0/0         5702145 2026-03-16 14:18 libexec/cni/firewall
-rwxr-xr-x 0/0         5159967 2026-03-16 14:18 libexec/cni/host-device
-rwxr-xr-x 0/0         4350778 2026-03-16 14:18 libexec/cni/host-local
-rwxr-xr-x 0/0         5274322 2026-03-16 14:18 libexec/cni/ipvlan
-rwxr-xr-x 0/0         4302030 2026-03-16 14:18 libexec/cni/loopback
-rwxr-xr-x 0/0         5307111 2026-03-16 14:18 libexec/cni/macvlan
-rwxr-xr-x 0/0         5108385 2026-03-16 14:18 libexec/cni/portmap
-rwxr-xr-x 0/0         5475470 2026-03-16 14:18 libexec/cni/ptp
-rwxr-xr-x 0/0         4525826 2026-03-16 14:18 libexec/cni/sbr
-rwxr-xr-x 0/0         3776708 2026-03-16 14:18 libexec/cni/static
-rwxr-xr-x 0/0         5453308 2026-03-16 14:18 libexec/cni/tap
-rwxr-xr-x 0/0         4389084 2026-03-16 14:18 libexec/cni/tuning
-rwxr-xr-x 0/0         5267679 2026-03-16 14:18 libexec/cni/vlan
-rwxr-xr-x 0/0         4685012 2026-03-16 14:18 libexec/cni/vrf
drwxr-xr-x 0/0               0 2026-10-30 11:50 share/
drwxr-xr-x 0/0               0 2026-10-30 11:53 share/doc/
drwxr-xr-x 0/0               0 2026-10-30 11:53 share/doc/nerdctl/
-rw-r--r-- 0/0           12380 2026-10-30 11:42 share/doc/nerdctl/README.md
drwxr-xr-x 0/0               0 2026-10-30 11:42 share/doc/nerdctl/docs/
-rw-r--r-- 0/0            3953 2026-10-30 11:42 share/doc/nerdctl/docs/build.md
-rw-r--r-- 0/0            2570 2026-10-30 11:42 share/doc/nerdctl/docs/builder-debug.md
-rw-r--r-- 0/0            4779 2026-10-30 11:42 share/doc/nerdctl/docs/cni.md
-rw-r--r-- 0/0           97982 2026-10-30 11:42 share/doc/nerdctl/docs/command-reference.md
-rw-r--r-- 0/0            1895 2026-10-30 11:42 share/doc/nerdctl/docs/compose.md
-rw-r--r-- 0/0            7903 2026-10-30 11:42 share/doc/nerdctl/docs/config.md
-rw-r--r-- 0/0            9138 2026-10-30 11:42 share/doc/nerdctl/docs/cosign.md
-rw-r--r-- 0/0            5652 2026-10-30 11:42 share/doc/nerdctl/docs/cvmfs.md
drwxr-xr-x 0/0               0 2026-10-30 11:42 share/doc/nerdctl/docs/dev/
-rw-r--r-- 0/0           12701 2026-10-30 11:42 share/doc/nerdctl/docs/dev/auditing_dockerfile.md
-rw-r--r-- 0/0            8587 2026-10-30 11:42 share/doc/nerdctl/docs/dev/store.md
-rw-r--r-- 0/0            3148 2026-10-30 11:42 share/doc/nerdctl/docs/dir.md
-rw-r--r-- 0/0            1826 2026-10-30 11:42 share/doc/nerdctl/docs/erofs.md
-rw-r--r-- 0/0             906 2026-10-30 11:42 share/doc/nerdctl/docs/experimental.md
-rw-r--r-- 0/0           14763 2026-10-30 11:42 share/doc/nerdctl/docs/faq.md
-rw-r--r-- 0/0             884 2026-10-30 11:42 share/doc/nerdctl/docs/freebsd.md
-rw-r--r-- 0/0            5585 2026-10-30 11:42 share/doc/nerdctl/docs/gpu.md
-rw-r--r-- 0/0            3919 2026-10-30 11:42 share/doc/nerdctl/docs/healthchecks.md
drwxr-xr-x 0/0               0 2026-10-30 11:42 share/doc/nerdctl/docs/images/
-rw-r--r-- 0/0            1540 2026-10-30 11:42 share/doc/nerdctl/docs/images/nerdctl-white.svg
-rw-r--r-- 0/0            1462 2026-10-30 11:42 share/doc/nerdctl/docs/images/nerdctl.svg
-rw-r--r-- 0/0          684421 2026-10-30 11:42 share/doc/nerdctl/docs/images/rootlessKit-network-design.png
-rw-r--r-- 0/0           14462 2026-10-30 11:42 share/doc/nerdctl/docs/ipfs.md
-rw-r--r-- 0/0            2426 2026-10-30 11:42 share/doc/nerdctl/docs/multi-platform.md
-rw-r--r-- 0/0            2960 2026-10-30 11:42 share/doc/nerdctl/docs/notation.md
-rw-r--r-- 0/0            2806 2026-10-30 11:42 share/doc/nerdctl/docs/nydus.md
-rw-r--r-- 0/0            3277 2026-10-30 11:42 share/doc/nerdctl/docs/ocicrypt.md
-rw-r--r-- 0/0            2215 2026-10-30 11:42 share/doc/nerdctl/docs/overlaybd.md
-rw-r--r-- 0/0           15616 2026-10-30 11:42 share/doc/nerdctl/docs/registry.md
-rw-r--r-- 0/0           10065 2026-10-30 11:42 share/doc/nerdctl/docs/rootless.md
-rw-r--r-- 0/0            4126 2026-10-30 11:42 share/doc/nerdctl/docs/soci.md
-rw-r--r-- 0/0           11912 2026-10-30 11:42 share/doc/nerdctl/docs/stargz.md
drwxr-xr-x 0/0               0 2026-10-30 11:42 share/doc/nerdctl/docs/testing/
-rw-r--r-- 0/0            6352 2026-10-30 11:42 share/doc/nerdctl/docs/testing/README.md
-rw-r--r-- 0/0            6527 2026-10-30 11:42 share/doc/nerdctl/docs/testing/flaky.md
-rw-r--r-- 0/0           16694 2026-10-30 11:42 share/doc/nerdctl/docs/testing/tools.md
drwxr-xr-x 0/0               0 2026-10-30 11:53 share/doc/nerdctl-full/
-rw-r--r-- 0/0             904 2026-10-30 11:52 share/doc/nerdctl-full/README.md
-rw-r--r-- 0/0            9539 2026-10-30 11:53 share/doc/nerdctl-full/SHA256SUMS
```
</p>
</details>

<details><summary>Included components</summary>
<p>

See `share/doc/nerdctl-full/README.md`:
```markdown
# nerdctl (full distribution)
- nerdctl: v2.4.2
- containerd: v2.4.2
- runc: v1.5.2
- CNI plugins: v1.9.1
- BuildKit: v0.34.1
- Stargz Snapshotter: v0.19.1
- imgcrypt: v2.0.3
- bypass4netns: v0.4.2
- fuse-overlayfs: v1.18
- containerd-fuse-overlayfs: v2.1.7
- Tini: v0.19.0
- buildg: v0.5.3
- RootlessKit: v3.3.0
- gomodjail: v2.0.1@5924a4079d0f70459a10973f715238dc336478ea

## License
- bin/fuse-overlayfs: [GNU GENERAL PUBLIC LICENSE, Version 2](https://github.com/containers/fuse-overlayfs/blob/v1.18/COPYING)
- bin/{runc,bypass4netns,bypass4netnsd}: Apache License 2.0, statically linked with libseccomp ([LGPL 2.1](https://github.com/seccomp/libseccomp/blob/main/LICENSE), source code available at https://github.com/seccomp/libseccomp/)
- bin/tini: [MIT License](https://github.com/krallin/tini/blob/v0.19.0/LICENSE)
- Other files: [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0)
```
</p>
</details>

## Quick start
### Rootful
```console
$ sudo systemctl enable --now containerd
$ sudo nerdctl run -d --name nginx -p 80:80 nginx:alpine
```

### Rootless
```console
$ containerd-rootless-setuptool.sh install
$ nerdctl run -d --name nginx -p 8080:80 nginx:alpine
```

Enabling cgroup v2 is highly recommended for rootless mode, see https://rootlesscontaine.rs/getting-started/common/cgroup2/ .
- - -
The binaries were built automatically on GitHub Actions.
The build log is available for 90 days: https://github.com/containerd/nerdctl/actions/runs/41049983950

The sha256sum of the SHA256SUMS file itself is `f84df0149caa9f2917c14b8431b0413d3d6b445e4739ff1b479ea533b7075cb7` .
- - -
Release manager: @AkihiroSuda
