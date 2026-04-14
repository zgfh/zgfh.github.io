来源: https://github.com/containerd/nerdctl/releases/tag/v2.2.0

# containerd/nerdctl v2.2.0 Release Notes

Published at: 2025-11-06T07:14:34Z

## Changes
- `nerdctl run`:
  - Fix namestore directory regression: `/var/lib/nerdctl/1935db59/default/foo` → `/var/lib/nerdctl/1935db59/names/default/foo`(#4535, thanks to @yankay)
    - This change was once misunderstood as a breaking change, but it turned out to be a non-breaking change for typical users (https://github.com/containerd/nerdctl/issues/4525#issuecomment-3473396840)
  - Support mount manager (e.g., for erofs) (#4568, thanks to @hsiangkao)
  
- `nerdctl checkpoint`:
  - Add `nerdctl checkpoint (create|ls|rm)` commands (#4484, #4515, #4562, thanks to @ChengyuZhu6)

- `nerdctl image convert`:
  - Add `--estargz-gzip-helper` flag (#4543, thanks to @escapefreeg)

- nerdctl-full:
  - Update containerd (2.2.0), runc (1.3.3), BuildKit (0.25.2), stargz-snapshotter (0.18.1), fuse-overlayfs (1.16), containerd-fuse-overlayfs (2.1.7) (#4566, #4569, #4582, #4589, #4590 thanks to @ChengyuZhu6 @Shubhranshu153)
    - containerd v2.2.0 fixes CVE-2024-25621 and CVE-2025-64329
    - runc v1.3.3 fixes CVE-2025-31133, CVE-2025-52565, CVE-2025-52881

Full changes: https://github.com/containerd/nerdctl/milestone/57?closed=1
Thanks to @ChengyuZhu6 @Shubhranshu153 @coderbirju @escapefreeg @hsiangkao @smazmi @yankay


## Compatible containerd versions
This release of nerdctl is expected to be used with containerd v1.7, v2.0, v2.1, or v2.2.
Some features may not work with other releases of containerd.

## About the binaries
- Minimal (`nerdctl-2.2.0-linux-amd64.tar.gz`): nerdctl only
- Full (`nerdctl-full-2.2.0-linux-amd64.tar.gz`):    Includes dependencies such as containerd, runc, and CNI

### Minimal
Extract the archive to a path like `/usr/local/bin` or `~/bin` .
<details><summary>tar Cxzvvf /usr/local/bin nerdctl-2.2.0-linux-amd64.tar.gz</summary>
<p>

```
-rwxr-xr-x root/root  29966520 2025-11-06 06:52 nerdctl
-rwxr-xr-x root/root     22657 2025-11-06 06:51 containerd-rootless-setuptool.sh
-rwxr-xr-x root/root      8708 2025-11-06 06:51 containerd-rootless.sh
```
</p>
</details>

### Full
Extract the archive to a path like `/usr/local` or `~/.local` .

<details><summary>tar Cxzvvf /usr/local nerdctl-full-2.2.0-linux-amd64.tar.gz</summary>
<p>

```
drwxr-xr-x 0/0               0 2025-11-06 07:01 bin/
-rwxr-xr-x 0/0        32911431 2025-11-05 10:29 bin/buildctl
-rwxr-xr-x 0/0        29909144 2025-05-12 13:10 bin/buildg
lrwxrwxrwx 0/0               0 2025-11-06 06:59 bin/buildkit-cni-bandwidth -> ../libexec/cni/bandwidth
lrwxrwxrwx 0/0               0 2025-11-06 06:59 bin/buildkit-cni-bridge -> ../libexec/cni/bridge
lrwxrwxrwx 0/0               0 2025-11-06 06:59 bin/buildkit-cni-dhcp -> ../libexec/cni/dhcp
lrwxrwxrwx 0/0               0 2025-11-06 06:59 bin/buildkit-cni-dummy -> ../libexec/cni/dummy
lrwxrwxrwx 0/0               0 2025-11-06 06:59 bin/buildkit-cni-firewall -> ../libexec/cni/firewall
lrwxrwxrwx 0/0               0 2025-11-06 06:59 bin/buildkit-cni-host-device -> ../libexec/cni/host-device
lrwxrwxrwx 0/0               0 2025-11-06 06:59 bin/buildkit-cni-host-local -> ../libexec/cni/host-local
lrwxrwxrwx 0/0               0 2025-11-06 06:59 bin/buildkit-cni-ipvlan -> ../libexec/cni/ipvlan
lrwxrwxrwx 0/0               0 2025-11-06 06:59 bin/buildkit-cni-loopback -> ../libexec/cni/loopback
lrwxrwxrwx 0/0               0 2025-11-06 06:59 bin/buildkit-cni-macvlan -> ../libexec/cni/macvlan
lrwxrwxrwx 0/0               0 2025-11-06 06:59 bin/buildkit-cni-portmap -> ../libexec/cni/portmap
lrwxrwxrwx 0/0               0 2025-11-06 06:59 bin/buildkit-cni-ptp -> ../libexec/cni/ptp
lrwxrwxrwx 0/0               0 2025-11-06 06:59 bin/buildkit-cni-sbr -> ../libexec/cni/sbr
lrwxrwxrwx 0/0               0 2025-11-06 06:59 bin/buildkit-cni-static -> ../libexec/cni/static
lrwxrwxrwx 0/0               0 2025-11-06 06:59 bin/buildkit-cni-tap -> ../libexec/cni/tap
lrwxrwxrwx 0/0               0 2025-11-06 06:59 bin/buildkit-cni-tuning -> ../libexec/cni/tuning
lrwxrwxrwx 0/0               0 2025-11-06 06:59 bin/buildkit-cni-vlan -> ../libexec/cni/vlan
lrwxrwxrwx 0/0               0 2025-11-06 06:59 bin/buildkit-cni-vrf -> ../libexec/cni/vrf
-rwxr-xr-x 0/0        65279046 2025-11-05 10:29 bin/buildkitd
-rwxr-xr-x 0/0        16545920 2025-11-06 06:59 bin/bypass4netns
-rwxr-xr-x 0/0         6394040 2025-11-06 06:59 bin/bypass4netnsd
-rwxr-xr-x 0/0        43658368 2025-11-06 06:59 bin/containerd
-rwxr-xr-x 0/0        12079288 2025-11-06 01:44 bin/containerd-fuse-overlayfs-grpc
-rwxr-xr-x 0/0           22657 2025-11-06 07:01 bin/containerd-rootless-setuptool.sh
-rwxr-xr-x 0/0            8708 2025-11-06 07:01 bin/containerd-rootless.sh
-rwxr-xr-x 0/0         8331448 2025-11-06 06:59 bin/containerd-shim-runc-v2
-rwxr-xr-x 0/0        57000120 2025-11-06 05:35 bin/containerd-stargz-grpc
-rwxr-xr-x 0/0        23102834 2025-11-06 07:00 bin/ctd-decoder
-rwxr-xr-x 0/0        22098104 2025-11-06 06:59 bin/ctr
-rwxr-xr-x 0/0        30561830 2025-11-06 07:00 bin/ctr-enc
-rwxr-xr-x 0/0        23236792 2025-11-06 05:35 bin/ctr-remote
-rwxr-xr-x 0/0         1885808 2025-11-06 07:00 bin/fuse-overlayfs
-rwxr-xr-x 0/0         3985592 2025-11-06 06:58 bin/gomodjail
-rwxr-xr-x 0/0        29929656 2025-11-06 07:01 bin/nerdctl
-rwxr-xr-x 0/0        33922934 2025-11-06 07:01 bin/nerdctl.gomodjail
-rwxr-xr-x 0/0        12236796 2025-05-08 06:00 bin/rootlessctl
-rwxr-xr-x 0/0        14176992 2025-05-08 06:00 bin/rootlesskit
-rwxr-xr-x 0/0        17918824 2025-11-06 06:59 bin/runc
-rwxr-xr-x 0/0         2383224 2025-11-06 07:00 bin/slirp4netns
-rwxr-xr-x 0/0        55587000 2025-11-06 05:35 bin/stargz-fuse-manager
-rwxr-xr-x 0/0        10793144 2025-11-06 05:35 bin/stargz-store-helper
-rwxr-xr-x 0/0          870496 2025-11-06 07:00 bin/tini
drwxr-xr-x 0/0               0 2025-11-06 06:59 lib/
drwxr-xr-x 0/0               0 2025-11-06 06:59 lib/systemd/
drwxr-xr-x 0/0               0 2025-11-06 07:00 lib/systemd/system/
-rw-r--r-- 0/0            1309 2025-11-06 06:59 lib/systemd/system/buildkit.service
-rw-r--r-- 0/0            1248 2025-11-06 06:58 lib/systemd/system/containerd.service
-rw-r--r-- 0/0             312 2025-11-06 07:00 lib/systemd/system/stargz-snapshotter.service
drwxr-xr-x 0/0               0 2025-11-06 06:59 libexec/
drwxr-xr-x 0/0               0 2025-09-01 15:29 libexec/cni/
-rw-r--r-- 0/0           11357 2025-09-01 15:29 libexec/cni/LICENSE
-rw-r--r-- 0/0            2343 2025-09-01 15:29 libexec/cni/README.md
-rwxr-xr-x 0/0         5042186 2025-09-01 15:29 libexec/cni/bandwidth
-rwxr-xr-x 0/0         5694189 2025-09-01 15:29 libexec/cni/bridge
-rwxr-xr-x 0/0        13719696 2025-09-01 15:29 libexec/cni/dhcp
-rwxr-xr-x 0/0         5251247 2025-09-01 15:29 libexec/cni/dummy
-rwxr-xr-x 0/0         5701763 2025-09-01 15:29 libexec/cni/firewall
-rwxr-xr-x 0/0         5159307 2025-09-01 15:29 libexec/cni/host-device
-rwxr-xr-x 0/0         4350430 2025-09-01 15:29 libexec/cni/host-local
-rwxr-xr-x 0/0         5273398 2025-09-01 15:29 libexec/cni/ipvlan
-rwxr-xr-x 0/0         4301450 2025-09-01 15:29 libexec/cni/loopback
-rwxr-xr-x 0/0         5306499 2025-09-01 15:29 libexec/cni/macvlan
-rwxr-xr-x 0/0         5107586 2025-09-01 15:29 libexec/cni/portmap
-rwxr-xr-x 0/0         5474778 2025-09-01 15:29 libexec/cni/ptp
-rwxr-xr-x 0/0         4521078 2025-09-01 15:29 libexec/cni/sbr
-rwxr-xr-x 0/0         3772408 2025-09-01 15:29 libexec/cni/static
-rwxr-xr-x 0/0         5330851 2025-09-01 15:29 libexec/cni/tap
-rwxr-xr-x 0/0         4384728 2025-09-01 15:29 libexec/cni/tuning
-rwxr-xr-x 0/0         5266939 2025-09-01 15:29 libexec/cni/vlan
-rwxr-xr-x 0/0         4684912 2025-09-01 15:29 libexec/cni/vrf
drwxr-xr-x 0/0               0 2025-11-06 06:58 share/
drwxr-xr-x 0/0               0 2025-11-06 07:01 share/doc/
drwxr-xr-x 0/0               0 2025-11-06 07:01 share/doc/nerdctl/
-rw-r--r-- 0/0           12101 2025-11-06 06:51 share/doc/nerdctl/README.md
drwxr-xr-x 0/0               0 2025-11-06 06:51 share/doc/nerdctl/docs/
-rw-r--r-- 0/0            3953 2025-11-06 06:51 share/doc/nerdctl/docs/build.md
-rw-r--r-- 0/0            2570 2025-11-06 06:51 share/doc/nerdctl/docs/builder-debug.md
-rw-r--r-- 0/0            4779 2025-11-06 06:51 share/doc/nerdctl/docs/cni.md
-rw-r--r-- 0/0           89194 2025-11-06 06:51 share/doc/nerdctl/docs/command-reference.md
-rw-r--r-- 0/0            1814 2025-11-06 06:51 share/doc/nerdctl/docs/compose.md
-rw-r--r-- 0/0            7317 2025-11-06 06:51 share/doc/nerdctl/docs/config.md
-rw-r--r-- 0/0            9128 2025-11-06 06:51 share/doc/nerdctl/docs/cosign.md
-rw-r--r-- 0/0            5660 2025-11-06 06:51 share/doc/nerdctl/docs/cvmfs.md
drwxr-xr-x 0/0               0 2025-11-06 06:51 share/doc/nerdctl/docs/dev/
-rw-r--r-- 0/0           12701 2025-11-06 06:51 share/doc/nerdctl/docs/dev/auditing_dockerfile.md
-rw-r--r-- 0/0            8586 2025-11-06 06:51 share/doc/nerdctl/docs/dev/store.md
-rw-r--r-- 0/0            2879 2025-11-06 06:51 share/doc/nerdctl/docs/dir.md
-rw-r--r-- 0/0             906 2025-11-06 06:51 share/doc/nerdctl/docs/experimental.md
-rw-r--r-- 0/0           14687 2025-11-06 06:51 share/doc/nerdctl/docs/faq.md
-rw-r--r-- 0/0             884 2025-11-06 06:51 share/doc/nerdctl/docs/freebsd.md
-rw-r--r-- 0/0            3273 2025-11-06 06:51 share/doc/nerdctl/docs/gpu.md
-rw-r--r-- 0/0            3419 2025-11-06 06:51 share/doc/nerdctl/docs/healthchecks.md
drwxr-xr-x 0/0               0 2025-11-06 06:51 share/doc/nerdctl/docs/images/
-rw-r--r-- 0/0            1540 2025-11-06 06:51 share/doc/nerdctl/docs/images/nerdctl-white.svg
-rw-r--r-- 0/0            1462 2025-11-06 06:51 share/doc/nerdctl/docs/images/nerdctl.svg
-rw-r--r-- 0/0          684421 2025-11-06 06:51 share/doc/nerdctl/docs/images/rootlessKit-network-design.png
-rw-r--r-- 0/0           14462 2025-11-06 06:51 share/doc/nerdctl/docs/ipfs.md
-rw-r--r-- 0/0            2426 2025-11-06 06:51 share/doc/nerdctl/docs/multi-platform.md
-rw-r--r-- 0/0            2960 2025-11-06 06:51 share/doc/nerdctl/docs/notation.md
-rw-r--r-- 0/0            2610 2025-11-06 06:51 share/doc/nerdctl/docs/nydus.md
-rw-r--r-- 0/0            3277 2025-11-06 06:51 share/doc/nerdctl/docs/ocicrypt.md
-rw-r--r-- 0/0            1876 2025-11-06 06:51 share/doc/nerdctl/docs/overlaybd.md
-rw-r--r-- 0/0           15657 2025-11-06 06:51 share/doc/nerdctl/docs/registry.md
-rw-r--r-- 0/0            9147 2025-11-06 06:51 share/doc/nerdctl/docs/rootless.md
-rw-r--r-- 0/0            3933 2025-11-06 06:51 share/doc/nerdctl/docs/soci.md
-rw-r--r-- 0/0           11715 2025-11-06 06:51 share/doc/nerdctl/docs/stargz.md
drwxr-xr-x 0/0               0 2025-11-06 06:51 share/doc/nerdctl/docs/testing/
-rw-r--r-- 0/0            4897 2025-11-06 06:51 share/doc/nerdctl/docs/testing/README.md
-rw-r--r-- 0/0           15430 2025-11-06 06:51 share/doc/nerdctl/docs/testing/tools.md
drwxr-xr-x 0/0               0 2025-11-06 07:01 share/doc/nerdctl-full/
-rw-r--r-- 0/0            1060 2025-11-06 07:00 share/doc/nerdctl-full/README.md
-rw-r--r-- 0/0            9415 2025-11-06 07:01 share/doc/nerdctl-full/SHA256SUMS
```
</p>
</details>

<details><summary>Included components</summary>
<p>

See `share/doc/nerdctl-full/README.md`:
```markdown
# nerdctl (full distribution)
- nerdctl: v2.2.0
- containerd: v2.2.0
- runc: v1.3.3
- CNI plugins: v1.8.0
- BuildKit: v0.25.2
- Stargz Snapshotter: v0.18.1
- imgcrypt: v2.0.1
- slirp4netns: v1.3.3
- bypass4netns: v0.4.2
- fuse-overlayfs: v1.16
- containerd-fuse-overlayfs: v2.1.7
- Tini: v0.19.0
- buildg: v0.5.3
- RootlessKit: v2.3.5
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
The build log is available for 90 days: https://github.com/containerd/nerdctl/actions/runs/19127358647

The sha256sum of the SHA256SUMS file itself is `8b30e94e422ef0db386fc699ec984c6f660668a755f4f9eeb2831c66aa516b2b` .
- - -
Release manager: @AkihiroSuda 
