来源: https://github.com/containerd/nerdctl/releases/tag/v2.0.4

# containerd/nerdctl v2.0.4 Release Notes

Published at: 2025-03-20T15:26:44Z

This release updates RootlessKit to support rootless mode on Ubuntu 25.04 (pre-release).

## Changes

- `nerdctl run`:
  - Add blkio-related flags (#3950, thanks to @swagatbora90)
  - Add `--domainname` flag (#3885, thanks to @swagatbora90)
- `nerdctl stop`:
  - Add `--signal` flag (#3892, thanks to @coderbirju)
- `nerdctl inspect`:
  - Fulfill `HostConfig ` (#3812, thanks to @coderbirju)
- `nerdctl ps`:
  - Ensure to print the output on timeout (#4010, thanks to @ningmingxiao)
- `nerdctl compose`:
  - Support mount propagation options (#3903, thanks to @dancavallaro)
- CI:
  - Lots of fixes, refactoring, and the introduction of the [Tigron testing framework](https://github.com/containerd/nerdctl/tree/v2.0.4/mod/tigron) (several PRs, thanks to @apostasie)
- `nerdctl-full`:
  - Update containerd (2.0.4), runc (1.2.6), BuildKit (0.20.1), RootlessKit (2.3.4), slirp4netns (1.3.2) etc.; verify the git tags with the commit hashes (#3827, #3828, #3884, #3999, #4003, #4017, thanks to @austinvazquez @ktock)


Full changes: https://github.com/containerd/nerdctl/milestone/44?closed=1

Thanks to @Shubhranshu153 @SpiffyEight77 @abel-von @apostasie @austinvazquez @coderbirju @dancavallaro @fahedouch @fengwei0328 @haytok @ktock @ningmingxiao @subashkotha @swagatbora90 @trinidadgithub @weiyuhang2011 @yankay

## Compatible containerd versions
This release of nerdctl is expected to be used with containerd v1.6, v1.7, or v2.0.

## About the binaries
- Minimal (`nerdctl-2.0.4-linux-amd64.tar.gz`): nerdctl only
- Full (`nerdctl-full-2.0.4-linux-amd64.tar.gz`):    Includes dependencies such as containerd, runc, and CNI

### Minimal
Extract the archive to a path like `/usr/local/bin` or `~/bin` .
<details><summary>tar Cxzvvf /usr/local/bin nerdctl-2.0.4-linux-amd64.tar.gz</summary>
<p>

```
-rwxr-xr-x root/root  27721912 2025-03-20 15:04 nerdctl
-rwxr-xr-x root/root     22657 2025-03-20 15:04 containerd-rootless-setuptool.sh
-rwxr-xr-x root/root      8708 2025-03-20 15:04 containerd-rootless.sh
```
</p>
</details>

### Full
Extract the archive to a path like `/usr/local` or `~/.local` .

<details><summary>tar Cxzvvf /usr/local nerdctl-full-2.0.4-linux-amd64.tar.gz</summary>
<p>

```
drwxr-xr-x 0/0               0 2025-03-20 15:11 bin/
-rwxr-xr-x 0/0        31114986 2015-10-21 00:00 bin/buildctl
-rwxr-xr-x 0/0        23724032 2022-09-05 09:52 bin/buildg
lrwxrwxrwx 0/0               0 2025-03-20 15:10 bin/buildkit-cni-LICENSE -> ../libexec/cni/LICENSE
lrwxrwxrwx 0/0               0 2025-03-20 15:10 bin/buildkit-cni-README.md -> ../libexec/cni/README.md
lrwxrwxrwx 0/0               0 2025-03-20 15:10 bin/buildkit-cni-bandwidth -> ../libexec/cni/bandwidth
lrwxrwxrwx 0/0               0 2025-03-20 15:10 bin/buildkit-cni-bridge -> ../libexec/cni/bridge
lrwxrwxrwx 0/0               0 2025-03-20 15:10 bin/buildkit-cni-dhcp -> ../libexec/cni/dhcp
lrwxrwxrwx 0/0               0 2025-03-20 15:10 bin/buildkit-cni-dummy -> ../libexec/cni/dummy
lrwxrwxrwx 0/0               0 2025-03-20 15:10 bin/buildkit-cni-firewall -> ../libexec/cni/firewall
lrwxrwxrwx 0/0               0 2025-03-20 15:10 bin/buildkit-cni-host-device -> ../libexec/cni/host-device
lrwxrwxrwx 0/0               0 2025-03-20 15:10 bin/buildkit-cni-host-local -> ../libexec/cni/host-local
lrwxrwxrwx 0/0               0 2025-03-20 15:10 bin/buildkit-cni-ipvlan -> ../libexec/cni/ipvlan
lrwxrwxrwx 0/0               0 2025-03-20 15:10 bin/buildkit-cni-loopback -> ../libexec/cni/loopback
lrwxrwxrwx 0/0               0 2025-03-20 15:10 bin/buildkit-cni-macvlan -> ../libexec/cni/macvlan
lrwxrwxrwx 0/0               0 2025-03-20 15:10 bin/buildkit-cni-portmap -> ../libexec/cni/portmap
lrwxrwxrwx 0/0               0 2025-03-20 15:10 bin/buildkit-cni-ptp -> ../libexec/cni/ptp
lrwxrwxrwx 0/0               0 2025-03-20 15:10 bin/buildkit-cni-sbr -> ../libexec/cni/sbr
lrwxrwxrwx 0/0               0 2025-03-20 15:10 bin/buildkit-cni-static -> ../libexec/cni/static
lrwxrwxrwx 0/0               0 2025-03-20 15:10 bin/buildkit-cni-tap -> ../libexec/cni/tap
lrwxrwxrwx 0/0               0 2025-03-20 15:10 bin/buildkit-cni-tuning -> ../libexec/cni/tuning
lrwxrwxrwx 0/0               0 2025-03-20 15:10 bin/buildkit-cni-vlan -> ../libexec/cni/vlan
lrwxrwxrwx 0/0               0 2025-03-20 15:10 bin/buildkit-cni-vrf -> ../libexec/cni/vrf
-rwxr-xr-x 0/0        63159823 2015-10-21 00:00 bin/buildkitd
-rwxr-xr-x 0/0        16435808 2025-03-20 15:09 bin/bypass4netns
-rwxr-xr-x 0/0         6320312 2025-03-20 15:09 bin/bypass4netnsd
-rwxr-xr-x 0/0        39849568 2025-03-20 15:10 bin/containerd
-rwxr-xr-x 0/0        11874488 2025-03-19 10:45 bin/containerd-fuse-overlayfs-grpc
-rwxr-xr-x 0/0           22657 2025-03-20 15:11 bin/containerd-rootless-setuptool.sh
-rwxr-xr-x 0/0            8708 2025-03-20 15:11 bin/containerd-rootless.sh
-rwxr-xr-x 0/0         8028344 2025-03-20 15:10 bin/containerd-shim-runc-v2
-rwxr-xr-x 0/0        53432472 2024-12-12 14:54 bin/containerd-stargz-grpc
-rwxr-xr-x 0/0        23513933 2025-03-20 15:11 bin/ctd-decoder
-rwxr-xr-x 0/0        20504760 2025-03-20 15:10 bin/ctr
-rwxr-xr-x 0/0        31163196 2025-03-20 15:11 bin/ctr-enc
-rwxr-xr-x 0/0        21078168 2024-12-12 14:54 bin/ctr-remote
-rwxr-xr-x 0/0         1789968 2025-03-20 15:11 bin/fuse-overlayfs
-rwxr-xr-x 0/0        27689144 2025-03-20 15:11 bin/nerdctl
-rwxr-xr-x 0/0        12235661 2025-03-10 02:16 bin/rootlessctl
-rwxr-xr-x 0/0        14172281 2025-03-10 02:16 bin/rootlesskit
-rwxr-xr-x 0/0        17433000 2025-03-20 15:09 bin/runc
-rwxr-xr-x 0/0         2383224 2025-03-20 15:11 bin/slirp4netns
-rwxr-xr-x 0/0         9707672 2024-12-12 14:54 bin/stargz-store-helper
-rwxr-xr-x 0/0          870496 2025-03-20 15:11 bin/tini
drwxr-xr-x 0/0               0 2025-03-20 15:10 lib/
drwxr-xr-x 0/0               0 2025-03-20 15:10 lib/systemd/
drwxr-xr-x 0/0               0 2025-03-20 15:10 lib/systemd/system/
-rw-r--r-- 0/0            1325 2025-03-20 15:10 lib/systemd/system/buildkit.service
-rw-r--r-- 0/0            1264 2025-03-20 15:09 lib/systemd/system/containerd.service
-rw-r--r-- 0/0             312 2025-03-20 15:10 lib/systemd/system/stargz-snapshotter.service
drwxr-xr-x 0/0               0 2025-03-20 15:10 libexec/
drwxr-xr-x 0/0               0 2025-03-20 15:10 libexec/cni/
-rw-r--r-- 0/0           11357 2025-01-06 16:12 libexec/cni/LICENSE
-rw-r--r-- 0/0            2343 2025-01-06 16:12 libexec/cni/README.md
-rwxr-xr-x 0/0         4655178 2025-01-06 16:12 libexec/cni/bandwidth
-rwxr-xr-x 0/0         5287212 2025-01-06 16:12 libexec/cni/bridge
-rwxr-xr-x 0/0        12762814 2025-01-06 16:12 libexec/cni/dhcp
-rwxr-xr-x 0/0         4847854 2025-01-06 16:12 libexec/cni/dummy
-rwxr-xr-x 0/0         5315134 2025-01-06 16:12 libexec/cni/firewall
-rwxr-xr-x 0/0         4792010 2025-01-06 16:12 libexec/cni/host-device
-rwxr-xr-x 0/0         4060355 2025-01-06 16:12 libexec/cni/host-local
-rwxr-xr-x 0/0         4870719 2025-01-06 16:12 libexec/cni/ipvlan
-rwxr-xr-x 0/0         4114939 2025-01-06 16:12 libexec/cni/loopback
-rwxr-xr-x 0/0         4903324 2025-01-06 16:12 libexec/cni/macvlan
-rwxr-xr-x 0/0         4713429 2025-01-06 16:12 libexec/cni/portmap
-rwxr-xr-x 0/0         5076613 2025-01-06 16:12 libexec/cni/ptp
-rwxr-xr-x 0/0         4333422 2025-01-06 16:12 libexec/cni/sbr
-rwxr-xr-x 0/0         3651755 2025-01-06 16:12 libexec/cni/static
-rwxr-xr-x 0/0         4928874 2025-01-06 16:12 libexec/cni/tap
-rwxr-xr-x 0/0         4208424 2025-01-06 16:12 libexec/cni/tuning
-rwxr-xr-x 0/0         4868252 2025-01-06 16:12 libexec/cni/vlan
-rwxr-xr-x 0/0         4488658 2025-01-06 16:12 libexec/cni/vrf
drwxr-xr-x 0/0               0 2025-03-20 15:08 share/
drwxr-xr-x 0/0               0 2025-03-20 15:11 share/doc/
drwxr-xr-x 0/0               0 2025-03-20 15:11 share/doc/nerdctl/
-rw-r--r-- 0/0           12101 2025-03-20 15:04 share/doc/nerdctl/README.md
drwxr-xr-x 0/0               0 2025-03-20 15:04 share/doc/nerdctl/docs/
-rw-r--r-- 0/0            3953 2025-03-20 15:04 share/doc/nerdctl/docs/build.md
-rw-r--r-- 0/0            2570 2025-03-20 15:04 share/doc/nerdctl/docs/builder-debug.md
-rw-r--r-- 0/0            4779 2025-03-20 15:04 share/doc/nerdctl/docs/cni.md
-rw-r--r-- 0/0           81663 2025-03-20 15:04 share/doc/nerdctl/docs/command-reference.md
-rw-r--r-- 0/0            1814 2025-03-20 15:04 share/doc/nerdctl/docs/compose.md
-rw-r--r-- 0/0            5814 2025-03-20 15:04 share/doc/nerdctl/docs/config.md
-rw-r--r-- 0/0            9128 2025-03-20 15:04 share/doc/nerdctl/docs/cosign.md
-rw-r--r-- 0/0            5660 2025-03-20 15:04 share/doc/nerdctl/docs/cvmfs.md
drwxr-xr-x 0/0               0 2025-03-20 15:04 share/doc/nerdctl/docs/dev/
-rw-r--r-- 0/0           12859 2025-03-20 15:04 share/doc/nerdctl/docs/dev/auditing_dockerfile.md
-rw-r--r-- 0/0            8587 2025-03-20 15:04 share/doc/nerdctl/docs/dev/store.md
-rw-r--r-- 0/0            2776 2025-03-20 15:04 share/doc/nerdctl/docs/dir.md
-rw-r--r-- 0/0             906 2025-03-20 15:04 share/doc/nerdctl/docs/experimental.md
-rw-r--r-- 0/0           14687 2025-03-20 15:04 share/doc/nerdctl/docs/faq.md
-rw-r--r-- 0/0             884 2025-03-20 15:04 share/doc/nerdctl/docs/freebsd.md
-rw-r--r-- 0/0            3273 2025-03-20 15:04 share/doc/nerdctl/docs/gpu.md
drwxr-xr-x 0/0               0 2025-03-20 15:04 share/doc/nerdctl/docs/images/
-rw-r--r-- 0/0            1540 2025-03-20 15:04 share/doc/nerdctl/docs/images/nerdctl-white.svg
-rw-r--r-- 0/0            1462 2025-03-20 15:04 share/doc/nerdctl/docs/images/nerdctl.svg
-rw-r--r-- 0/0          684421 2025-03-20 15:04 share/doc/nerdctl/docs/images/rootlessKit-network-design.png
-rw-r--r-- 0/0           14462 2025-03-20 15:04 share/doc/nerdctl/docs/ipfs.md
-rw-r--r-- 0/0            2384 2025-03-20 15:04 share/doc/nerdctl/docs/multi-platform.md
-rw-r--r-- 0/0            2960 2025-03-20 15:04 share/doc/nerdctl/docs/notation.md
-rw-r--r-- 0/0            2610 2025-03-20 15:04 share/doc/nerdctl/docs/nydus.md
-rw-r--r-- 0/0            3277 2025-03-20 15:04 share/doc/nerdctl/docs/ocicrypt.md
-rw-r--r-- 0/0            1876 2025-03-20 15:04 share/doc/nerdctl/docs/overlaybd.md
-rw-r--r-- 0/0           15657 2025-03-20 15:04 share/doc/nerdctl/docs/registry.md
-rw-r--r-- 0/0            9147 2025-03-20 15:04 share/doc/nerdctl/docs/rootless.md
-rw-r--r-- 0/0            2015 2025-03-20 15:04 share/doc/nerdctl/docs/soci.md
-rw-r--r-- 0/0           10312 2025-03-20 15:04 share/doc/nerdctl/docs/stargz.md
drwxr-xr-x 0/0               0 2025-03-20 15:04 share/doc/nerdctl/docs/testing/
-rw-r--r-- 0/0            4916 2025-03-20 15:04 share/doc/nerdctl/docs/testing/README.md
-rw-r--r-- 0/0           15584 2025-03-20 15:04 share/doc/nerdctl/docs/testing/tools.md
drwxr-xr-x 0/0               0 2025-03-20 15:11 share/doc/nerdctl-full/
-rw-r--r-- 0/0             999 2025-03-20 15:11 share/doc/nerdctl-full/README.md
-rw-r--r-- 0/0            9232 2025-03-20 15:11 share/doc/nerdctl-full/SHA256SUMS
```
</p>
</details>

<details><summary>Included components</summary>
<p>

See `share/doc/nerdctl-full/README.md`:
```markdown
# nerdctl (full distribution)
- nerdctl: v2.0.4
- containerd: v2.0.4
- runc: v1.2.6
- CNI plugins: v1.6.2
- BuildKit: v0.20.1
- Stargz Snapshotter: v0.16.3
- imgcrypt: v2.0.1
- slirp4netns: v1.3.2
- bypass4netns: v0.4.2
- fuse-overlayfs: v1.14
- containerd-fuse-overlayfs: v2.1.2
- Tini: v0.19.0
- buildg: v0.4.1
- RootlessKit: v2.3.4

## License
- bin/slirp4netns:    [GNU GENERAL PUBLIC LICENSE, Version 2](https://github.com/rootless-containers/slirp4netns/blob/v1.3.2/COPYING)
- bin/fuse-overlayfs: [GNU GENERAL PUBLIC LICENSE, Version 2](https://github.com/containers/fuse-overlayfs/blob/v1.14/COPYING)
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
The build log is available for 90 days: https://github.com/containerd/nerdctl/actions/runs/13972568788

The sha256sum of the SHA256SUMS file itself is `48643fb585c7ca878ba2121c9ab4208d073bca880f162c5d33af3c824f02dbb9` .
- - -
Release manager: @AkihiroSuda

