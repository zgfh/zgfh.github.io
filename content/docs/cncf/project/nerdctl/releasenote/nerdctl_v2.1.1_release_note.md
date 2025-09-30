来源: https://github.com/containerd/nerdctl/releases/tag/v2.1.1

# containerd/nerdctl v2.1.1 Release Notes

Published at: 2025-05-12T11:31:04Z

> [!NOTE]
> See also v2.1.0 release note: https://github.com/containerd/nerdctl/releases/tag/v2.1.0

## Changes
- Fixed the CI pipeline issue that prevented releasing binaries in v2.1.0 (#4242)

## Compatible containerd versions
This release of nerdctl is expected to be used with containerd v1.6, v1.7, v2.0, or v2.1.

## About the binaries
- Minimal (`nerdctl-2.1.1-linux-amd64.tar.gz`): nerdctl only
- Full (`nerdctl-full-2.1.1-linux-amd64.tar.gz`):    Includes dependencies such as containerd, runc, and CNI

### Minimal
Extract the archive to a path like `/usr/local/bin` or `~/bin` .
<details><summary>tar Cxzvvf /usr/local/bin nerdctl-2.1.1-linux-amd64.tar.gz</summary>
<p>

```
-rwxr-xr-x root/root  28582072 2025-05-12 11:15 nerdctl
-rwxr-xr-x root/root     22657 2025-05-12 11:15 containerd-rootless-setuptool.sh
-rwxr-xr-x root/root      8708 2025-05-12 11:15 containerd-rootless.sh
```
</p>
</details>

### Full
Extract the archive to a path like `/usr/local` or `~/.local` .

<details><summary>tar Cxzvvf /usr/local nerdctl-full-2.1.1-linux-amd64.tar.gz</summary>
<p>

```
drwxr-xr-x 0/0               0 2025-05-12 11:23 bin/
-rwxr-xr-x 0/0        31128678 2015-10-21 00:00 bin/buildctl
-rwxr-xr-x 0/0        29851800 2025-04-25 14:13 bin/buildg
lrwxrwxrwx 0/0               0 2025-05-12 11:22 bin/buildkit-cni-LICENSE -> ../libexec/cni/LICENSE
lrwxrwxrwx 0/0               0 2025-05-12 11:22 bin/buildkit-cni-README.md -> ../libexec/cni/README.md
lrwxrwxrwx 0/0               0 2025-05-12 11:22 bin/buildkit-cni-bandwidth -> ../libexec/cni/bandwidth
lrwxrwxrwx 0/0               0 2025-05-12 11:22 bin/buildkit-cni-bridge -> ../libexec/cni/bridge
lrwxrwxrwx 0/0               0 2025-05-12 11:22 bin/buildkit-cni-dhcp -> ../libexec/cni/dhcp
lrwxrwxrwx 0/0               0 2025-05-12 11:22 bin/buildkit-cni-dummy -> ../libexec/cni/dummy
lrwxrwxrwx 0/0               0 2025-05-12 11:22 bin/buildkit-cni-firewall -> ../libexec/cni/firewall
lrwxrwxrwx 0/0               0 2025-05-12 11:22 bin/buildkit-cni-host-device -> ../libexec/cni/host-device
lrwxrwxrwx 0/0               0 2025-05-12 11:22 bin/buildkit-cni-host-local -> ../libexec/cni/host-local
lrwxrwxrwx 0/0               0 2025-05-12 11:22 bin/buildkit-cni-ipvlan -> ../libexec/cni/ipvlan
lrwxrwxrwx 0/0               0 2025-05-12 11:22 bin/buildkit-cni-loopback -> ../libexec/cni/loopback
lrwxrwxrwx 0/0               0 2025-05-12 11:22 bin/buildkit-cni-macvlan -> ../libexec/cni/macvlan
lrwxrwxrwx 0/0               0 2025-05-12 11:22 bin/buildkit-cni-portmap -> ../libexec/cni/portmap
lrwxrwxrwx 0/0               0 2025-05-12 11:22 bin/buildkit-cni-ptp -> ../libexec/cni/ptp
lrwxrwxrwx 0/0               0 2025-05-12 11:22 bin/buildkit-cni-sbr -> ../libexec/cni/sbr
lrwxrwxrwx 0/0               0 2025-05-12 11:22 bin/buildkit-cni-static -> ../libexec/cni/static
lrwxrwxrwx 0/0               0 2025-05-12 11:22 bin/buildkit-cni-tap -> ../libexec/cni/tap
lrwxrwxrwx 0/0               0 2025-05-12 11:22 bin/buildkit-cni-tuning -> ../libexec/cni/tuning
lrwxrwxrwx 0/0               0 2025-05-12 11:22 bin/buildkit-cni-vlan -> ../libexec/cni/vlan
lrwxrwxrwx 0/0               0 2025-05-12 11:22 bin/buildkit-cni-vrf -> ../libexec/cni/vrf
-rwxr-xr-x 0/0        63640138 2015-10-21 00:00 bin/buildkitd
-rwxr-xr-x 0/0        16439968 2025-05-12 11:21 bin/bypass4netns
-rwxr-xr-x 0/0         6320312 2025-05-12 11:21 bin/bypass4netnsd
-rwxr-xr-x 0/0        41059552 2025-05-12 11:22 bin/containerd
-rwxr-xr-x 0/0        12021944 2025-05-08 05:52 bin/containerd-fuse-overlayfs-grpc
-rwxr-xr-x 0/0           22657 2025-05-12 11:23 bin/containerd-rootless-setuptool.sh
-rwxr-xr-x 0/0            8708 2025-05-12 11:23 bin/containerd-rootless.sh
-rwxr-xr-x 0/0         8270008 2025-05-12 11:22 bin/containerd-shim-runc-v2
-rwxr-xr-x 0/0        53432472 2024-12-12 14:54 bin/containerd-stargz-grpc
-rwxr-xr-x 0/0        23521766 2025-05-12 11:22 bin/ctd-decoder
-rwxr-xr-x 0/0        21590200 2025-05-12 11:21 bin/ctr
-rwxr-xr-x 0/0        31174373 2025-05-12 11:22 bin/ctr-enc
-rwxr-xr-x 0/0        21078168 2024-12-12 14:54 bin/ctr-remote
-rwxr-xr-x 0/0         1788872 2025-05-12 11:22 bin/fuse-overlayfs
-rwxr-xr-x 0/0         3936440 2025-05-12 11:21 bin/gomodjail
-rwxr-xr-x 0/0        28545208 2025-05-12 11:23 bin/nerdctl
-rwxr-xr-x 0/0        32489528 2025-05-12 11:23 bin/nerdctl.gomodjail
-rwxr-xr-x 0/0        12236796 2025-05-08 06:00 bin/rootlessctl
-rwxr-xr-x 0/0        14176992 2025-05-08 06:00 bin/rootlesskit
-rwxr-xr-x 0/0        17888000 2025-05-12 11:21 bin/runc
-rwxr-xr-x 0/0         2383224 2025-05-12 11:22 bin/slirp4netns
-rwxr-xr-x 0/0         9707672 2024-12-12 14:54 bin/stargz-store-helper
-rwxr-xr-x 0/0          870496 2025-05-12 11:22 bin/tini
drwxr-xr-x 0/0               0 2025-05-12 11:22 lib/
drwxr-xr-x 0/0               0 2025-05-12 11:22 lib/systemd/
drwxr-xr-x 0/0               0 2025-05-12 11:22 lib/systemd/system/
-rw-r--r-- 0/0            1309 2025-05-12 11:22 lib/systemd/system/buildkit.service
-rw-r--r-- 0/0            1248 2025-05-12 11:20 lib/systemd/system/containerd.service
-rw-r--r-- 0/0             312 2025-05-12 11:22 lib/systemd/system/stargz-snapshotter.service
drwxr-xr-x 0/0               0 2025-05-12 11:22 libexec/
drwxr-xr-x 0/0               0 2025-05-12 11:22 libexec/cni/
-rw-r--r-- 0/0           11357 2025-04-25 12:58 libexec/cni/LICENSE
-rw-r--r-- 0/0            2343 2025-04-25 12:58 libexec/cni/README.md
-rwxr-xr-x 0/0         5033580 2025-04-25 12:58 libexec/cni/bandwidth
-rwxr-xr-x 0/0         5694447 2025-04-25 12:58 libexec/cni/bridge
-rwxr-xr-x 0/0        13924938 2025-04-25 12:58 libexec/cni/dhcp
-rwxr-xr-x 0/0         5247557 2025-04-25 12:58 libexec/cni/dummy
-rwxr-xr-x 0/0         5749447 2025-04-25 12:58 libexec/cni/firewall
-rwxr-xr-x 0/0         5163089 2025-04-25 12:58 libexec/cni/host-device
-rwxr-xr-x 0/0         4364143 2025-04-25 12:58 libexec/cni/host-local
-rwxr-xr-x 0/0         5269812 2025-04-25 12:58 libexec/cni/ipvlan
-rwxr-xr-x 0/0         4263979 2025-04-25 12:58 libexec/cni/loopback
-rwxr-xr-x 0/0         5305057 2025-04-25 12:58 libexec/cni/macvlan
-rwxr-xr-x 0/0         5125860 2025-04-25 12:58 libexec/cni/portmap
-rwxr-xr-x 0/0         5477120 2025-04-25 12:58 libexec/cni/ptp
-rwxr-xr-x 0/0         4488703 2025-04-25 12:58 libexec/cni/sbr
-rwxr-xr-x 0/0         3736370 2025-04-25 12:58 libexec/cni/static
-rwxr-xr-x 0/0         5332257 2025-04-25 12:58 libexec/cni/tap
-rwxr-xr-x 0/0         4352498 2025-04-25 12:58 libexec/cni/tuning
-rwxr-xr-x 0/0         5267833 2025-04-25 12:58 libexec/cni/vlan
-rwxr-xr-x 0/0         4644777 2025-04-25 12:58 libexec/cni/vrf
drwxr-xr-x 0/0               0 2025-05-12 11:20 share/
drwxr-xr-x 0/0               0 2025-05-12 11:23 share/doc/
drwxr-xr-x 0/0               0 2025-05-12 11:23 share/doc/nerdctl/
-rw-r--r-- 0/0           12101 2025-05-12 11:15 share/doc/nerdctl/README.md
drwxr-xr-x 0/0               0 2025-05-12 11:15 share/doc/nerdctl/docs/
-rw-r--r-- 0/0            3953 2025-05-12 11:15 share/doc/nerdctl/docs/build.md
-rw-r--r-- 0/0            2570 2025-05-12 11:15 share/doc/nerdctl/docs/builder-debug.md
-rw-r--r-- 0/0            4779 2025-05-12 11:15 share/doc/nerdctl/docs/cni.md
-rw-r--r-- 0/0           82941 2025-05-12 11:15 share/doc/nerdctl/docs/command-reference.md
-rw-r--r-- 0/0            1814 2025-05-12 11:15 share/doc/nerdctl/docs/compose.md
-rw-r--r-- 0/0            6457 2025-05-12 11:15 share/doc/nerdctl/docs/config.md
-rw-r--r-- 0/0            9128 2025-05-12 11:15 share/doc/nerdctl/docs/cosign.md
-rw-r--r-- 0/0            5660 2025-05-12 11:15 share/doc/nerdctl/docs/cvmfs.md
drwxr-xr-x 0/0               0 2025-05-12 11:15 share/doc/nerdctl/docs/dev/
-rw-r--r-- 0/0           12859 2025-05-12 11:15 share/doc/nerdctl/docs/dev/auditing_dockerfile.md
-rw-r--r-- 0/0            8587 2025-05-12 11:15 share/doc/nerdctl/docs/dev/store.md
-rw-r--r-- 0/0            2776 2025-05-12 11:15 share/doc/nerdctl/docs/dir.md
-rw-r--r-- 0/0             906 2025-05-12 11:15 share/doc/nerdctl/docs/experimental.md
-rw-r--r-- 0/0           14687 2025-05-12 11:15 share/doc/nerdctl/docs/faq.md
-rw-r--r-- 0/0             884 2025-05-12 11:15 share/doc/nerdctl/docs/freebsd.md
-rw-r--r-- 0/0            3273 2025-05-12 11:15 share/doc/nerdctl/docs/gpu.md
drwxr-xr-x 0/0               0 2025-05-12 11:15 share/doc/nerdctl/docs/images/
-rw-r--r-- 0/0            1540 2025-05-12 11:15 share/doc/nerdctl/docs/images/nerdctl-white.svg
-rw-r--r-- 0/0            1462 2025-05-12 11:15 share/doc/nerdctl/docs/images/nerdctl.svg
-rw-r--r-- 0/0          684421 2025-05-12 11:15 share/doc/nerdctl/docs/images/rootlessKit-network-design.png
-rw-r--r-- 0/0           14462 2025-05-12 11:15 share/doc/nerdctl/docs/ipfs.md
-rw-r--r-- 0/0            2426 2025-05-12 11:15 share/doc/nerdctl/docs/multi-platform.md
-rw-r--r-- 0/0            2960 2025-05-12 11:15 share/doc/nerdctl/docs/notation.md
-rw-r--r-- 0/0            2610 2025-05-12 11:15 share/doc/nerdctl/docs/nydus.md
-rw-r--r-- 0/0            3277 2025-05-12 11:15 share/doc/nerdctl/docs/ocicrypt.md
-rw-r--r-- 0/0            1876 2025-05-12 11:15 share/doc/nerdctl/docs/overlaybd.md
-rw-r--r-- 0/0           15657 2025-05-12 11:15 share/doc/nerdctl/docs/registry.md
-rw-r--r-- 0/0            9147 2025-05-12 11:15 share/doc/nerdctl/docs/rootless.md
-rw-r--r-- 0/0            2015 2025-05-12 11:15 share/doc/nerdctl/docs/soci.md
-rw-r--r-- 0/0           10312 2025-05-12 11:15 share/doc/nerdctl/docs/stargz.md
drwxr-xr-x 0/0               0 2025-05-12 11:15 share/doc/nerdctl/docs/testing/
-rw-r--r-- 0/0            4897 2025-05-12 11:15 share/doc/nerdctl/docs/testing/README.md
-rw-r--r-- 0/0           15708 2025-05-12 11:15 share/doc/nerdctl/docs/testing/tools.md
drwxr-xr-x 0/0               0 2025-05-12 11:23 share/doc/nerdctl-full/
-rw-r--r-- 0/0            1060 2025-05-12 11:22 share/doc/nerdctl-full/README.md
-rw-r--r-- 0/0            9404 2025-05-12 11:23 share/doc/nerdctl-full/SHA256SUMS
```
</p>
</details>

<details><summary>Included components</summary>
<p>

See `share/doc/nerdctl-full/README.md`:
```markdown
# nerdctl (full distribution)
- nerdctl: v2.1.1
- containerd: v2.1.0
- runc: v1.3.0
- CNI plugins: v1.7.1
- BuildKit: v0.21.1
- Stargz Snapshotter: v0.16.3
- imgcrypt: v2.0.1
- slirp4netns: v1.3.2
- bypass4netns: v0.4.2
- fuse-overlayfs: v1.15
- containerd-fuse-overlayfs: v2.1.5
- Tini: v0.19.0
- buildg: v0.5.2
- RootlessKit: v2.3.5
- gomodjail: v0.1.2@0a86b34442a491fa8f5e4565e9c846fce310239c

## License
- bin/slirp4netns:    [GNU GENERAL PUBLIC LICENSE, Version 2](https://github.com/rootless-containers/slirp4netns/blob/v1.3.2/COPYING)
- bin/fuse-overlayfs: [GNU GENERAL PUBLIC LICENSE, Version 2](https://github.com/containers/fuse-overlayfs/blob/v1.15/COPYING)
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
The build log is available for 90 days: https://github.com/containerd/nerdctl/actions/runs/14970785898

The sha256sum of the SHA256SUMS file itself is `dd115402d5835b8d8368abbf2bbfe3e48077190eafa44790795d66617c384037` .
- - -
Release manager: @AkihiroSuda

