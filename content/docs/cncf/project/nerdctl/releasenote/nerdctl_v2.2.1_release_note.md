来源: https://github.com/containerd/nerdctl/releases/tag/v2.2.1

# containerd/nerdctl v2.2.1 Release Notes

Published at: 2025-12-22T09:47:48Z

## Changes
- `nerdctl run`:
  - Set `net.ipv4.ip_unprivileged_port_start=0` by default inside containers (not on the host) (#4615, thanks to @yashkukrecha)
- `nerdctl ps`:
  - Improve output (#4602, #4628, thanks to @haytok)
- `nerdctl compose`:
  - Support long syntax for tmpfs volumes (#4637, thanks to @haytok)
- healthcheck:
  - Fix global options (#4575, thanks to @coderbirju)
- `nerdctl-full`:
  - Update containerd (2.2.1), runc (1.4.0), CNI plugins (1.9.0), BuildKit (0.26.3), imgcrypt (2.0.2), RootlessKit (2.3.6), etc. (#4667)

Full changes: https://github.com/containerd/nerdctl/milestone/58?closed=1

Thanks to @Swapnanil-Gupta @coderbirju @haytok @henry118 @krig @opjt @yashkukrecha

## Compatible containerd versions
This release of nerdctl is expected to be used with containerd v1.7, v2.0, v2.1, or v2.2.
Some features may not work with other releases of containerd.

## About the binaries
- Minimal (`nerdctl-2.2.1-linux-amd64.tar.gz`): nerdctl only
- Full (`nerdctl-full-2.2.1-linux-amd64.tar.gz`):    Includes dependencies such as containerd, runc, and CNI

### Minimal
Extract the archive to a path like `/usr/local/bin` or `~/bin` .
<details><summary>tar Cxzvvf /usr/local/bin nerdctl-2.2.1-linux-amd64.tar.gz</summary>
<p>

```
-rwxr-xr-x root/root  30355640 2025-12-22 08:54 nerdctl
-rwxr-xr-x root/root     22657 2025-12-22 08:53 containerd-rootless-setuptool.sh
-rwxr-xr-x root/root      8708 2025-12-22 08:53 containerd-rootless.sh
```
</p>
</details>

### Full
Extract the archive to a path like `/usr/local` or `~/.local` .

<details><summary>tar Cxzvvf /usr/local nerdctl-full-2.2.1-linux-amd64.tar.gz</summary>
<p>

```
drwxr-xr-x 0/0               0 2025-12-22 09:02 bin/
-rwxr-xr-x 0/0        33267852 2025-12-16 19:06 bin/buildctl
-rwxr-xr-x 0/0        29909144 2025-05-12 13:10 bin/buildg
lrwxrwxrwx 0/0               0 2025-12-22 09:01 bin/buildkit-cni-bandwidth -> ../libexec/cni/bandwidth
lrwxrwxrwx 0/0               0 2025-12-22 09:01 bin/buildkit-cni-bridge -> ../libexec/cni/bridge
lrwxrwxrwx 0/0               0 2025-12-22 09:01 bin/buildkit-cni-dhcp -> ../libexec/cni/dhcp
lrwxrwxrwx 0/0               0 2025-12-22 09:01 bin/buildkit-cni-dummy -> ../libexec/cni/dummy
lrwxrwxrwx 0/0               0 2025-12-22 09:01 bin/buildkit-cni-firewall -> ../libexec/cni/firewall
lrwxrwxrwx 0/0               0 2025-12-22 09:01 bin/buildkit-cni-host-device -> ../libexec/cni/host-device
lrwxrwxrwx 0/0               0 2025-12-22 09:01 bin/buildkit-cni-host-local -> ../libexec/cni/host-local
lrwxrwxrwx 0/0               0 2025-12-22 09:01 bin/buildkit-cni-ipvlan -> ../libexec/cni/ipvlan
lrwxrwxrwx 0/0               0 2025-12-22 09:01 bin/buildkit-cni-loopback -> ../libexec/cni/loopback
lrwxrwxrwx 0/0               0 2025-12-22 09:01 bin/buildkit-cni-macvlan -> ../libexec/cni/macvlan
lrwxrwxrwx 0/0               0 2025-12-22 09:01 bin/buildkit-cni-portmap -> ../libexec/cni/portmap
lrwxrwxrwx 0/0               0 2025-12-22 09:01 bin/buildkit-cni-ptp -> ../libexec/cni/ptp
lrwxrwxrwx 0/0               0 2025-12-22 09:01 bin/buildkit-cni-sbr -> ../libexec/cni/sbr
lrwxrwxrwx 0/0               0 2025-12-22 09:01 bin/buildkit-cni-static -> ../libexec/cni/static
lrwxrwxrwx 0/0               0 2025-12-22 09:01 bin/buildkit-cni-tap -> ../libexec/cni/tap
lrwxrwxrwx 0/0               0 2025-12-22 09:01 bin/buildkit-cni-tuning -> ../libexec/cni/tuning
lrwxrwxrwx 0/0               0 2025-12-22 09:01 bin/buildkit-cni-vlan -> ../libexec/cni/vlan
lrwxrwxrwx 0/0               0 2025-12-22 09:01 bin/buildkit-cni-vrf -> ../libexec/cni/vrf
-rwxr-xr-x 0/0        70305635 2025-12-16 19:06 bin/buildkitd
-rwxr-xr-x 0/0        16550016 2025-12-22 09:00 bin/bypass4netns
-rwxr-xr-x 0/0         6394040 2025-12-22 09:00 bin/bypass4netnsd
-rwxr-xr-x 0/0        44023296 2025-12-22 09:01 bin/containerd
-rwxr-xr-x 0/0        12079288 2025-11-06 01:44 bin/containerd-fuse-overlayfs-grpc
-rwxr-xr-x 0/0           22657 2025-12-22 09:02 bin/containerd-rootless-setuptool.sh
-rwxr-xr-x 0/0            8708 2025-12-22 09:02 bin/containerd-rootless.sh
-rwxr-xr-x 0/0         8339640 2025-12-22 09:01 bin/containerd-shim-runc-v2
-rwxr-xr-x 0/0        57000120 2025-11-06 05:35 bin/containerd-stargz-grpc
-rwxr-xr-x 0/0        23103525 2025-12-22 09:01 bin/ctd-decoder
-rwxr-xr-x 0/0        22188216 2025-12-22 09:00 bin/ctr
-rwxr-xr-x 0/0        30581416 2025-12-22 09:01 bin/ctr-enc
-rwxr-xr-x 0/0        23236792 2025-11-06 05:35 bin/ctr-remote
-rwxr-xr-x 0/0         1885808 2025-12-22 09:01 bin/fuse-overlayfs
-rwxr-xr-x 0/0         3985592 2025-12-22 08:59 bin/gomodjail
-rwxr-xr-x 0/0        30318776 2025-12-22 09:02 bin/nerdctl
-rwxr-xr-x 0/0        34312240 2025-12-22 09:02 bin/nerdctl.gomodjail
-rwxr-xr-x 0/0        12235590 2025-12-18 01:55 bin/rootlessctl
-rwxr-xr-x 0/0        14183868 2025-12-18 01:55 bin/rootlesskit
-rwxr-xr-x 0/0        18127824 2025-12-22 09:00 bin/runc
-rwxr-xr-x 0/0         2383224 2025-12-22 09:01 bin/slirp4netns
-rwxr-xr-x 0/0        55587000 2025-11-06 05:35 bin/stargz-fuse-manager
-rwxr-xr-x 0/0        10793144 2025-11-06 05:35 bin/stargz-store-helper
-rwxr-xr-x 0/0          870496 2025-12-22 09:01 bin/tini
drwxr-xr-x 0/0               0 2025-12-22 09:01 lib/
drwxr-xr-x 0/0               0 2025-12-22 09:01 lib/systemd/
drwxr-xr-x 0/0               0 2025-12-22 09:01 lib/systemd/system/
-rw-r--r-- 0/0            1309 2025-12-22 09:01 lib/systemd/system/buildkit.service
-rw-r--r-- 0/0            1248 2025-12-22 08:59 lib/systemd/system/containerd.service
-rw-r--r-- 0/0             312 2025-12-22 09:01 lib/systemd/system/stargz-snapshotter.service
drwxr-xr-x 0/0               0 2025-12-22 09:01 libexec/
drwxr-xr-x 0/0               0 2025-12-09 10:49 libexec/cni/
-rw-r--r-- 0/0           11357 2025-12-09 10:49 libexec/cni/LICENSE
-rw-r--r-- 0/0            2343 2025-12-09 10:49 libexec/cni/README.md
-rwxr-xr-x 0/0         5042758 2025-12-09 10:49 libexec/cni/bandwidth
-rwxr-xr-x 0/0         5694787 2025-12-09 10:49 libexec/cni/bridge
-rwxr-xr-x 0/0        13722883 2025-12-09 10:49 libexec/cni/dhcp
-rwxr-xr-x 0/0         5251429 2025-12-09 10:49 libexec/cni/dummy
-rwxr-xr-x 0/0         5702489 2025-12-09 10:49 libexec/cni/firewall
-rwxr-xr-x 0/0         5160095 2025-12-09 10:49 libexec/cni/host-device
-rwxr-xr-x 0/0         4350898 2025-12-09 10:49 libexec/cni/host-local
-rwxr-xr-x 0/0         5278618 2025-12-09 10:49 libexec/cni/ipvlan
-rwxr-xr-x 0/0         4302030 2025-12-09 10:49 libexec/cni/loopback
-rwxr-xr-x 0/0         5307015 2025-12-09 10:49 libexec/cni/macvlan
-rwxr-xr-x 0/0         5108286 2025-12-09 10:49 libexec/cni/portmap
-rwxr-xr-x 0/0         5475550 2025-12-09 10:49 libexec/cni/ptp
-rwxr-xr-x 0/0         4525802 2025-12-09 10:49 libexec/cni/sbr
-rwxr-xr-x 0/0         3776700 2025-12-09 10:49 libexec/cni/static
-rwxr-xr-x 0/0         5331503 2025-12-09 10:49 libexec/cni/tap
-rwxr-xr-x 0/0         4389108 2025-12-09 10:49 libexec/cni/tuning
-rwxr-xr-x 0/0         5267823 2025-12-09 10:49 libexec/cni/vlan
-rwxr-xr-x 0/0         4685300 2025-12-09 10:49 libexec/cni/vrf
drwxr-xr-x 0/0               0 2025-12-22 08:59 share/
drwxr-xr-x 0/0               0 2025-12-22 09:02 share/doc/
drwxr-xr-x 0/0               0 2025-12-22 09:02 share/doc/nerdctl/
-rw-r--r-- 0/0           12101 2025-12-22 08:53 share/doc/nerdctl/README.md
drwxr-xr-x 0/0               0 2025-12-22 08:53 share/doc/nerdctl/docs/
-rw-r--r-- 0/0            3953 2025-12-22 08:53 share/doc/nerdctl/docs/build.md
-rw-r--r-- 0/0            2570 2025-12-22 08:53 share/doc/nerdctl/docs/builder-debug.md
-rw-r--r-- 0/0            4779 2025-12-22 08:53 share/doc/nerdctl/docs/cni.md
-rw-r--r-- 0/0           89130 2025-12-22 08:53 share/doc/nerdctl/docs/command-reference.md
-rw-r--r-- 0/0            1814 2025-12-22 08:53 share/doc/nerdctl/docs/compose.md
-rw-r--r-- 0/0            7317 2025-12-22 08:53 share/doc/nerdctl/docs/config.md
-rw-r--r-- 0/0            9128 2025-12-22 08:53 share/doc/nerdctl/docs/cosign.md
-rw-r--r-- 0/0            5660 2025-12-22 08:53 share/doc/nerdctl/docs/cvmfs.md
drwxr-xr-x 0/0               0 2025-12-22 08:53 share/doc/nerdctl/docs/dev/
-rw-r--r-- 0/0           12701 2025-12-22 08:53 share/doc/nerdctl/docs/dev/auditing_dockerfile.md
-rw-r--r-- 0/0            8586 2025-12-22 08:53 share/doc/nerdctl/docs/dev/store.md
-rw-r--r-- 0/0            2879 2025-12-22 08:53 share/doc/nerdctl/docs/dir.md
-rw-r--r-- 0/0             906 2025-12-22 08:53 share/doc/nerdctl/docs/experimental.md
-rw-r--r-- 0/0           14687 2025-12-22 08:53 share/doc/nerdctl/docs/faq.md
-rw-r--r-- 0/0             884 2025-12-22 08:53 share/doc/nerdctl/docs/freebsd.md
-rw-r--r-- 0/0            3273 2025-12-22 08:53 share/doc/nerdctl/docs/gpu.md
-rw-r--r-- 0/0            3419 2025-12-22 08:53 share/doc/nerdctl/docs/healthchecks.md
drwxr-xr-x 0/0               0 2025-12-22 08:53 share/doc/nerdctl/docs/images/
-rw-r--r-- 0/0            1540 2025-12-22 08:53 share/doc/nerdctl/docs/images/nerdctl-white.svg
-rw-r--r-- 0/0            1462 2025-12-22 08:53 share/doc/nerdctl/docs/images/nerdctl.svg
-rw-r--r-- 0/0          684421 2025-12-22 08:53 share/doc/nerdctl/docs/images/rootlessKit-network-design.png
-rw-r--r-- 0/0           14462 2025-12-22 08:53 share/doc/nerdctl/docs/ipfs.md
-rw-r--r-- 0/0            2426 2025-12-22 08:53 share/doc/nerdctl/docs/multi-platform.md
-rw-r--r-- 0/0            2960 2025-12-22 08:53 share/doc/nerdctl/docs/notation.md
-rw-r--r-- 0/0            2610 2025-12-22 08:53 share/doc/nerdctl/docs/nydus.md
-rw-r--r-- 0/0            3277 2025-12-22 08:53 share/doc/nerdctl/docs/ocicrypt.md
-rw-r--r-- 0/0            1876 2025-12-22 08:53 share/doc/nerdctl/docs/overlaybd.md
-rw-r--r-- 0/0           15657 2025-12-22 08:53 share/doc/nerdctl/docs/registry.md
-rw-r--r-- 0/0            9147 2025-12-22 08:53 share/doc/nerdctl/docs/rootless.md
-rw-r--r-- 0/0            3933 2025-12-22 08:53 share/doc/nerdctl/docs/soci.md
-rw-r--r-- 0/0           11715 2025-12-22 08:53 share/doc/nerdctl/docs/stargz.md
drwxr-xr-x 0/0               0 2025-12-22 08:53 share/doc/nerdctl/docs/testing/
-rw-r--r-- 0/0            4897 2025-12-22 08:53 share/doc/nerdctl/docs/testing/README.md
-rw-r--r-- 0/0           16500 2025-12-22 08:53 share/doc/nerdctl/docs/testing/tools.md
drwxr-xr-x 0/0               0 2025-12-22 09:02 share/doc/nerdctl-full/
-rw-r--r-- 0/0            1060 2025-12-22 09:01 share/doc/nerdctl-full/README.md
-rw-r--r-- 0/0            9415 2025-12-22 09:02 share/doc/nerdctl-full/SHA256SUMS
```
</p>
</details>

<details><summary>Included components</summary>
<p>

See `share/doc/nerdctl-full/README.md`:
```markdown
# nerdctl (full distribution)
- nerdctl: v2.2.1
- containerd: v2.2.1
- runc: v1.4.0
- CNI plugins: v1.9.0
- BuildKit: v0.26.3
- Stargz Snapshotter: v0.18.1
- imgcrypt: v2.0.2
- slirp4netns: v1.3.3
- bypass4netns: v0.4.2
- fuse-overlayfs: v1.16
- containerd-fuse-overlayfs: v2.1.7
- Tini: v0.19.0
- buildg: v0.5.3
- RootlessKit: v2.3.6
- gomodjail: v0.1.3@cea529ddd971b677c67d8af7e936fbc62b35b98c

## License
- bin/slirp4netns:    [GNU GENERAL PUBLIC LICENSE, Version 2](https://github.com/rootless-containers/slirp4netns/blob/v1.3.3/COPYING)
- bin/fuse-overlayfs: [GNU GENERAL PUBLIC LICENSE, Version 2](https://github.com/containers/fuse-overlayfs/blob/v1.16/COPYING)
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
The build log is available for 90 days: https://github.com/containerd/nerdctl/actions/runs/20426819423

The sha256sum of the SHA256SUMS file itself is `e0fd74263cb466db5be37c5e7763bafe8a9a3dc942992f4eb5915da674406309` .
- - -
Release manager: @AkihiroSuda

