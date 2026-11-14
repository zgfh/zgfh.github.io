来源: https://github.com/containerd/nerdctl/releases/tag/v2.4.1

# containerd/nerdctl v2.4.1 Release Notes

Published at: 2026-10-02T22:07:27Z

## Changes

- `nerdctl cp`:
  - Fix incompatibility with tar 1.30-13.el8_10 (#5238)
- `nerdctl compose`:
  - Fix CDI support (#5236, thanks to @addemod)
  - Support `cgroup_parent` and `cgroup` service fields (#5230, thanks to @addemod)
- `nerdctl network`:
  - Fix port forwarding on Windows (#5225, thanks to @webdevsamran)
- `nerdctl-full`:
  - Update containerd (2.4.1), runc (1.5.2), BuildKit (0.33.1) (#5241)


Full changes: https://github.com/containerd/nerdctl/pulls?q=is%3Apr+state%3Aclosed+milestone%3Av2.4.1
Thanks to @MaxNiia @addemod @webdevsamran

## Compatible containerd versions
This release of nerdctl is expected to be used with containerd v1.7 or later.
Some features may not work with other releases of containerd.

## About the binaries
- Minimal (`nerdctl-2.4.1-linux-amd64.tar.gz`): nerdctl only
- Full (`nerdctl-full-2.4.1-linux-amd64.tar.gz`):    Includes dependencies such as containerd, runc, and CNI

### Minimal
Extract the archive to a path like `/usr/local/bin` or `~/bin` .
<details><summary>tar Cxzvvf /usr/local/bin nerdctl-2.4.1-linux-amd64.tar.gz</summary>
<p>

```
-rwxr-xr-x root/root  32411810 2026-10-02 21:43 nerdctl
-rwxr-xr-x root/root     23390 2026-10-02 21:42 containerd-rootless-setuptool.sh
-rwxr-xr-x root/root      9555 2026-10-02 21:42 containerd-rootless.sh
```
</p>
</details>

### Full
Extract the archive to a path like `/usr/local` or `~/.local` .

<details><summary>tar Cxzvvf /usr/local nerdctl-full-2.4.1-linux-amd64.tar.gz</summary>
<p>

```
drwxr-xr-x 0/0               0 2026-10-02 21:53 bin/
-rwxr-xr-x 0/0        34660561 2026-09-30 14:11 bin/buildctl
-rwxr-xr-x 0/0        29909144 2025-05-12 13:10 bin/buildg
lrwxrwxrwx 0/0               0 2026-10-02 21:51 bin/buildkit-cni-bandwidth -> ../libexec/cni/bandwidth
lrwxrwxrwx 0/0               0 2026-10-02 21:51 bin/buildkit-cni-bridge -> ../libexec/cni/bridge
lrwxrwxrwx 0/0               0 2026-10-02 21:51 bin/buildkit-cni-dhcp -> ../libexec/cni/dhcp
lrwxrwxrwx 0/0               0 2026-10-02 21:51 bin/buildkit-cni-dummy -> ../libexec/cni/dummy
lrwxrwxrwx 0/0               0 2026-10-02 21:51 bin/buildkit-cni-firewall -> ../libexec/cni/firewall
lrwxrwxrwx 0/0               0 2026-10-02 21:51 bin/buildkit-cni-host-device -> ../libexec/cni/host-device
lrwxrwxrwx 0/0               0 2026-10-02 21:51 bin/buildkit-cni-host-local -> ../libexec/cni/host-local
lrwxrwxrwx 0/0               0 2026-10-02 21:51 bin/buildkit-cni-ipvlan -> ../libexec/cni/ipvlan
lrwxrwxrwx 0/0               0 2026-10-02 21:51 bin/buildkit-cni-loopback -> ../libexec/cni/loopback
lrwxrwxrwx 0/0               0 2026-10-02 21:51 bin/buildkit-cni-macvlan -> ../libexec/cni/macvlan
lrwxrwxrwx 0/0               0 2026-10-02 21:51 bin/buildkit-cni-portmap -> ../libexec/cni/portmap
lrwxrwxrwx 0/0               0 2026-10-02 21:51 bin/buildkit-cni-ptp -> ../libexec/cni/ptp
lrwxrwxrwx 0/0               0 2026-10-02 21:51 bin/buildkit-cni-sbr -> ../libexec/cni/sbr
lrwxrwxrwx 0/0               0 2026-10-02 21:51 bin/buildkit-cni-static -> ../libexec/cni/static
lrwxrwxrwx 0/0               0 2026-10-02 21:51 bin/buildkit-cni-tap -> ../libexec/cni/tap
lrwxrwxrwx 0/0               0 2026-10-02 21:51 bin/buildkit-cni-tuning -> ../libexec/cni/tuning
lrwxrwxrwx 0/0               0 2026-10-02 21:51 bin/buildkit-cni-vlan -> ../libexec/cni/vlan
lrwxrwxrwx 0/0               0 2026-10-02 21:51 bin/buildkit-cni-vrf -> ../libexec/cni/vrf
-rwxr-xr-x 0/0        80653239 2026-09-30 14:11 bin/buildkitd
-rwxr-xr-x 0/0        16853776 2026-10-02 21:51 bin/bypass4netns
-rwxr-xr-x 0/0         6607010 2026-10-02 21:51 bin/bypass4netnsd
-rwxr-xr-x 0/0        40488528 2026-10-02 21:51 bin/containerd
-rwxr-xr-x 0/0        12079288 2025-11-06 01:44 bin/containerd-fuse-overlayfs-grpc
-rwxr-xr-x 0/0           23390 2026-10-02 21:53 bin/containerd-rootless-setuptool.sh
-rwxr-xr-x 0/0            9555 2026-10-02 21:53 bin/containerd-rootless.sh
-rwxr-xr-x 0/0         8134818 2026-10-02 21:51 bin/containerd-shim-runc-v2
-rwxr-xr-x 0/0        55267512 2026-01-21 14:59 bin/containerd-stargz-grpc
-rwxr-xr-x 0/0        24842068 2026-10-02 21:52 bin/ctd-decoder
-rwxr-xr-x 0/0        23171234 2026-10-02 21:51 bin/ctr
-rwxr-xr-x 0/0        34403563 2026-10-02 21:52 bin/ctr-enc
-rwxr-xr-x 0/0        23417016 2026-01-21 14:59 bin/ctr-remote
-rwxr-xr-x 0/0         1695520 2026-10-02 21:52 bin/fuse-overlayfs
-rwxr-xr-x 0/0        11153570 2026-10-02 21:50 bin/gomodjail
-rwxr-xr-x 0/0        32374946 2026-10-02 21:53 bin/nerdctl
-rwxr-xr-x 0/0        43537253 2026-10-02 21:53 bin/nerdctl.gomodjail
-rwxr-xr-x 0/0        12470655 2026-09-19 15:34 bin/rootlessctl
-rwxr-xr-x 0/0        24055360 2026-09-19 15:34 bin/rootlesskit
-rwxr-xr-x 0/0        14130968 2026-10-02 21:50 bin/runc
-rwxr-xr-x 0/0        53829816 2026-01-21 14:59 bin/stargz-fuse-manager
-rwxr-xr-x 0/0        10821816 2026-01-21 14:59 bin/stargz-store-helper
-rwxr-xr-x 0/0          870496 2026-10-02 21:52 bin/tini
drwxr-xr-x 0/0               0 2026-10-02 21:51 lib/
drwxr-xr-x 0/0               0 2026-10-02 21:51 lib/systemd/
drwxr-xr-x 0/0               0 2026-10-02 21:52 lib/systemd/system/
-rw-r--r-- 0/0            1309 2026-10-02 21:51 lib/systemd/system/buildkit.service
-rw-r--r-- 0/0            1248 2026-10-02 21:49 lib/systemd/system/containerd.service
-rw-r--r-- 0/0             312 2026-10-02 21:52 lib/systemd/system/stargz-snapshotter.service
drwxr-xr-x 0/0               0 2026-10-02 21:51 libexec/
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
drwxr-xr-x 0/0               0 2026-10-02 21:49 share/
drwxr-xr-x 0/0               0 2026-10-02 21:53 share/doc/
drwxr-xr-x 0/0               0 2026-10-02 21:53 share/doc/nerdctl/
-rw-r--r-- 0/0           12380 2026-10-02 21:42 share/doc/nerdctl/README.md
drwxr-xr-x 0/0               0 2026-10-02 21:42 share/doc/nerdctl/docs/
-rw-r--r-- 0/0            3953 2026-10-02 21:42 share/doc/nerdctl/docs/build.md
-rw-r--r-- 0/0            2570 2026-10-02 21:42 share/doc/nerdctl/docs/builder-debug.md
-rw-r--r-- 0/0            4779 2026-10-02 21:42 share/doc/nerdctl/docs/cni.md
-rw-r--r-- 0/0           97589 2026-10-02 21:42 share/doc/nerdctl/docs/command-reference.md
-rw-r--r-- 0/0            1945 2026-10-02 21:42 share/doc/nerdctl/docs/compose.md
-rw-r--r-- 0/0            7903 2026-10-02 21:42 share/doc/nerdctl/docs/config.md
-rw-r--r-- 0/0            9128 2026-10-02 21:42 share/doc/nerdctl/docs/cosign.md
-rw-r--r-- 0/0            5660 2026-10-02 21:42 share/doc/nerdctl/docs/cvmfs.md
drwxr-xr-x 0/0               0 2026-10-02 21:42 share/doc/nerdctl/docs/dev/
-rw-r--r-- 0/0           12701 2026-10-02 21:42 share/doc/nerdctl/docs/dev/auditing_dockerfile.md
-rw-r--r-- 0/0            8587 2026-10-02 21:42 share/doc/nerdctl/docs/dev/store.md
-rw-r--r-- 0/0            3148 2026-10-02 21:42 share/doc/nerdctl/docs/dir.md
-rw-r--r-- 0/0            1826 2026-10-02 21:42 share/doc/nerdctl/docs/erofs.md
-rw-r--r-- 0/0             906 2026-10-02 21:42 share/doc/nerdctl/docs/experimental.md
-rw-r--r-- 0/0           14757 2026-10-02 21:42 share/doc/nerdctl/docs/faq.md
-rw-r--r-- 0/0             884 2026-10-02 21:42 share/doc/nerdctl/docs/freebsd.md
-rw-r--r-- 0/0            5585 2026-10-02 21:42 share/doc/nerdctl/docs/gpu.md
-rw-r--r-- 0/0            3419 2026-10-02 21:42 share/doc/nerdctl/docs/healthchecks.md
drwxr-xr-x 0/0               0 2026-10-02 21:42 share/doc/nerdctl/docs/images/
-rw-r--r-- 0/0            1540 2026-10-02 21:42 share/doc/nerdctl/docs/images/nerdctl-white.svg
-rw-r--r-- 0/0            1462 2026-10-02 21:42 share/doc/nerdctl/docs/images/nerdctl.svg
-rw-r--r-- 0/0          684421 2026-10-02 21:42 share/doc/nerdctl/docs/images/rootlessKit-network-design.png
-rw-r--r-- 0/0           14462 2026-10-02 21:42 share/doc/nerdctl/docs/ipfs.md
-rw-r--r-- 0/0            2426 2026-10-02 21:42 share/doc/nerdctl/docs/multi-platform.md
-rw-r--r-- 0/0            2960 2026-10-02 21:42 share/doc/nerdctl/docs/notation.md
-rw-r--r-- 0/0            2806 2026-10-02 21:42 share/doc/nerdctl/docs/nydus.md
-rw-r--r-- 0/0            3277 2026-10-02 21:42 share/doc/nerdctl/docs/ocicrypt.md
-rw-r--r-- 0/0            2215 2026-10-02 21:42 share/doc/nerdctl/docs/overlaybd.md
-rw-r--r-- 0/0           15657 2026-10-02 21:42 share/doc/nerdctl/docs/registry.md
-rw-r--r-- 0/0           10065 2026-10-02 21:42 share/doc/nerdctl/docs/rootless.md
-rw-r--r-- 0/0            4126 2026-10-02 21:42 share/doc/nerdctl/docs/soci.md
-rw-r--r-- 0/0           11912 2026-10-02 21:42 share/doc/nerdctl/docs/stargz.md
drwxr-xr-x 0/0               0 2026-10-02 21:42 share/doc/nerdctl/docs/testing/
-rw-r--r-- 0/0            6352 2026-10-02 21:42 share/doc/nerdctl/docs/testing/README.md
-rw-r--r-- 0/0            6527 2026-10-02 21:42 share/doc/nerdctl/docs/testing/flaky.md
-rw-r--r-- 0/0           16694 2026-10-02 21:42 share/doc/nerdctl/docs/testing/tools.md
drwxr-xr-x 0/0               0 2026-10-02 21:53 share/doc/nerdctl-full/
-rw-r--r-- 0/0             904 2026-10-02 21:52 share/doc/nerdctl-full/README.md
-rw-r--r-- 0/0            9539 2026-10-02 21:53 share/doc/nerdctl-full/SHA256SUMS
```
</p>
</details>

<details><summary>Included components</summary>
<p>

See `share/doc/nerdctl-full/README.md`:
```markdown
# nerdctl (full distribution)
- nerdctl: v2.4.1
- containerd: v2.4.1
- runc: v1.5.2
- CNI plugins: v1.9.1
- BuildKit: v0.33.1
- Stargz Snapshotter: v0.18.2
- imgcrypt: v2.0.3
- bypass4netns: v0.4.2
- fuse-overlayfs: v1.18
- containerd-fuse-overlayfs: v2.1.7
- Tini: v0.19.0
- buildg: v0.5.3
- RootlessKit: v3.2.0
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
The build log is available for 90 days: https://github.com/containerd/nerdctl/actions/runs/37068369391

The sha256sum of the SHA256SUMS file itself is `f9e26b73ba2b1429614eb3061191381c300e24d08d82241e5fa044cfa77d34d9` .
- - -
Release manager: @AkihiroSuda
