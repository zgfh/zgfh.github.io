来源: https://github.com/containerd/nerdctl/releases/tag/v2.3.0

# containerd/nerdctl v2.3.0 Release Notes

Published at: 2026-05-05T11:38:02Z

(**EDIT** by @AkihiroSuda)
This release of nerdctl-full uses a beta release of containerd. Expected to be fixed in v2.3.1.
https://github.com/containerd/nerdctl/issues/4885
- - -
## Changes

This is the release of nerdctl v2.3.0.

Major changes:

* `nerdctl image`:
    * Refactored image push/pull/save/load to use containerd's transfer service, while keeping legacy image push/pull support for containerd 1.7.x (#4583)
    * Added a progress bar for `nerdctl image convert` (#4779, thanks to @must108)

* `nerdctl search`:
    * Added support for the `nerdctl search` command (#4660)

* `nerdctl container`:
    * Added SELinux support for `nerdctl run` and `nerdctl info` (#4639, thanks to @ningmingxiao)
    * Improved `nerdctl run --gpus` handling by using CDI (#4617, thanks to @elezar)
    * Improved GPU vendor detection for CDI device IDs (#4728, thanks to @shiv-tyagi)
    * Fixed shared IPC namespace handling for `nerdctl run` (#4718, thanks to @weiyuhang2011)
    * Added missing `--ipc` options to `nerdctl run` help text and shell completion (#4731, thanks to @haytok)
    * Added support for `nerdctl cp` with tarballs (#4704, thanks to @sondavidb)
    * Added missing `HostConfig` fields to the Docker-compatible `nerdctl container inspect` response (#4850, thanks to @ayush-panta)
    * Fixed reading logs of stopped containers by waiting for the logger to finish (#4857, thanks to @haytok)

* `nerdctl build`:
    * Added `--source-policy-file` support (#4712, thanks to @tinovyatkin)

* `nerdctl network`:
    * Added MAC, IPv4, and IPv6 addresses to `nerdctl network inspect` output (#4680, thanks to @coderbirju)
    * Fixed binding containers on different IP addresses to the same port (#4800, thanks to @yankay)
    * Fixed cleanup of port-reserver state and unused iptables chains after container removal (#4801, #4811, #4820, #4835, thanks to @haytok)
    * Fixed freeing reserved ports in rootful mode (#4862, thanks to @unsuman)
    * Ignored missing `/proc/net/tcp6` and `/proc/net/udp6` on IPv6-disabled systems (#4824, thanks to @shouhei)

* `nerdctl compose`:
    * Fixed compose pull policy handling for invalid options (#4686, thanks to @haytok)

* Rootless:
    * Removed the dead `-r` argument from the rootless nsenter invocation (#4837, thanks to @MayCXC)

* `nerdctl-full`:
    * Updated containerd to v2.3.0, runc to v1.4.2, BuildKit to v0.29.0, Stargz Snapshotter to v0.18.2, Nydus to v2.4.1, SOCI Snapshotter to v0.13.0, Kubo to v0.41.0, RootlessKit to v3.0.0, CNI plugins to v1.9.1, and cosign to v3.0.5 (#4866, #4827, #4807, #4792, thanks to @AkihiroSuda and @Swapnanil-Gupta)

* Documentation:
    * Fixed the formatting of the `--security-opt label=<selinuxlabel>` entry in the command reference (#4882, thanks to @ogulcanaydogan)

* CI and tests:
    * Split Linux and Windows containerd version handling in CI and updated CI to Go 1.26 (#4867, #4806, thanks to @AkihiroSuda)
    * Continued migrating compose tests to Tigron (#4670, #4672, #4676, #4688, #4713, #4790, #4796, #4834, thanks to @haytok, @robertcal, @Siddhesh002, @juannio, and @sathiraumesh)
    * Continued migrating container tests to Tigron (#4675, #4687, #4698, #4700, #4703, #4708, #4711, #4714, #4719, #4726, #4729, #4734, #4737, #4742, #4748, thanks to @munshinuwed, @JoonsooWon, and @robertcal)


* Misc:
    * Added `make uninstall` (#4797, thanks to @mvanhorn)
    * Fixed a nil pointer panic in `commonLock` cleanup (#4819, thanks to @fedebram)
    * Corrected usage display to show `[command]` instead of `[flags]` (#4733, thanks to @niveshdandyan)
    * Fixed building newer runc versions (#4653, thanks to @zhangyoufu)
    * Updated the list of unimplemented Docker features (#4747, #4809, thanks to @rohansood10 and @IstvanCsVarga)
* And more!

Full changes: https://github.com/containerd/nerdctl/milestone/60?closed=1

Thanks to @ChengyuZhu6, @AkihiroSuda, @ningmingxiao, @MayCXC, @unsuman, @haytok, @shouhei, @ayush-panta, @fedebram, @sathiraumesh, @yankay, @Swapnanil-Gupta, @IstvanCsVarga, @Siddhesh002, @coderbirju, @juannio, @mvanhorn, @must108, @Shubhranshu153, @rohansood10, @sondavidb, @weiyuhang2011, @shiv-tyagi, @tinovyatkin, @niveshdandyan, @JoonsooWon, @robertcal, @zhangyoufu, @munshinuwed, @elezar, and @ogulcanaydogan.


## Compatible containerd versions
This release of nerdctl is expected to be used with containerd v1.7, v2.0, v2.1, v2.2, or v2.3.
Some features may not work with other releases of containerd.

## About the binaries
- Minimal (`nerdctl-2.3.0-linux-amd64.tar.gz`): nerdctl only
- Full (`nerdctl-full-2.3.0-linux-amd64.tar.gz`):    Includes dependencies such as containerd, runc, and CNI

### Minimal
Extract the archive to a path like `/usr/local/bin` or `~/bin` .
<details><summary>tar Cxzvvf /usr/local/bin nerdctl-2.3.0-linux-amd64.tar.gz</summary>
<p>

```
-rwxr-xr-x root/root  31547554 2026-05-05 10:54 nerdctl
-rwxr-xr-x root/root     23381 2026-05-05 10:53 containerd-rootless-setuptool.sh
-rwxr-xr-x root/root      8639 2026-05-05 10:53 containerd-rootless.sh
```
</p>
</details>

### Full
Extract the archive to a path like `/usr/local` or `~/.local` .

<details><summary>tar Cxzvvf /usr/local nerdctl-full-2.3.0-linux-amd64.tar.gz</summary>
<p>

```
drwxr-xr-x 0/0               0 2026-05-05 11:03 bin/
-rwxr-xr-x 0/0        34368905 2026-03-31 07:10 bin/buildctl
-rwxr-xr-x 0/0        29909144 2025-05-12 13:10 bin/buildg
lrwxrwxrwx 0/0               0 2026-05-05 11:02 bin/buildkit-cni-bandwidth -> ../libexec/cni/bandwidth
lrwxrwxrwx 0/0               0 2026-05-05 11:02 bin/buildkit-cni-bridge -> ../libexec/cni/bridge
lrwxrwxrwx 0/0               0 2026-05-05 11:02 bin/buildkit-cni-dhcp -> ../libexec/cni/dhcp
lrwxrwxrwx 0/0               0 2026-05-05 11:02 bin/buildkit-cni-dummy -> ../libexec/cni/dummy
lrwxrwxrwx 0/0               0 2026-05-05 11:02 bin/buildkit-cni-firewall -> ../libexec/cni/firewall
lrwxrwxrwx 0/0               0 2026-05-05 11:02 bin/buildkit-cni-host-device -> ../libexec/cni/host-device
lrwxrwxrwx 0/0               0 2026-05-05 11:02 bin/buildkit-cni-host-local -> ../libexec/cni/host-local
lrwxrwxrwx 0/0               0 2026-05-05 11:02 bin/buildkit-cni-ipvlan -> ../libexec/cni/ipvlan
lrwxrwxrwx 0/0               0 2026-05-05 11:02 bin/buildkit-cni-loopback -> ../libexec/cni/loopback
lrwxrwxrwx 0/0               0 2026-05-05 11:02 bin/buildkit-cni-macvlan -> ../libexec/cni/macvlan
lrwxrwxrwx 0/0               0 2026-05-05 11:02 bin/buildkit-cni-portmap -> ../libexec/cni/portmap
lrwxrwxrwx 0/0               0 2026-05-05 11:02 bin/buildkit-cni-ptp -> ../libexec/cni/ptp
lrwxrwxrwx 0/0               0 2026-05-05 11:02 bin/buildkit-cni-sbr -> ../libexec/cni/sbr
lrwxrwxrwx 0/0               0 2026-05-05 11:02 bin/buildkit-cni-static -> ../libexec/cni/static
lrwxrwxrwx 0/0               0 2026-05-05 11:02 bin/buildkit-cni-tap -> ../libexec/cni/tap
lrwxrwxrwx 0/0               0 2026-05-05 11:02 bin/buildkit-cni-tuning -> ../libexec/cni/tuning
lrwxrwxrwx 0/0               0 2026-05-05 11:02 bin/buildkit-cni-vlan -> ../libexec/cni/vlan
lrwxrwxrwx 0/0               0 2026-05-05 11:02 bin/buildkit-cni-vrf -> ../libexec/cni/vrf
-rwxr-xr-x 0/0        78258706 2026-03-31 07:10 bin/buildkitd
-rwxr-xr-x 0/0        16837264 2026-05-05 11:02 bin/bypass4netns
-rwxr-xr-x 0/0         6598818 2026-05-05 11:02 bin/bypass4netnsd
-rwxr-xr-x 0/0        39065808 2026-05-05 11:02 bin/containerd
-rwxr-xr-x 0/0        12079288 2025-11-06 01:44 bin/containerd-fuse-overlayfs-grpc
-rwxr-xr-x 0/0           23381 2026-05-05 11:03 bin/containerd-rootless-setuptool.sh
-rwxr-xr-x 0/0            8639 2026-05-05 11:03 bin/containerd-rootless.sh
-rwxr-xr-x 0/0         8450210 2026-05-05 11:02 bin/containerd-shim-runc-v2
-rwxr-xr-x 0/0        55267512 2026-01-21 14:59 bin/containerd-stargz-grpc
-rwxr-xr-x 0/0        23569418 2026-05-05 11:03 bin/ctd-decoder
-rwxr-xr-x 0/0        22565026 2026-05-05 11:02 bin/ctr
-rwxr-xr-x 0/0        31206521 2026-05-05 11:03 bin/ctr-enc
-rwxr-xr-x 0/0        23417016 2026-01-21 14:59 bin/ctr-remote
-rwxr-xr-x 0/0         1885808 2026-05-05 11:03 bin/fuse-overlayfs
-rwxr-xr-x 0/0         4153506 2026-05-05 11:01 bin/gomodjail
-rwxr-xr-x 0/0        31510690 2026-05-05 11:03 bin/nerdctl
-rwxr-xr-x 0/0        35672166 2026-05-05 11:03 bin/nerdctl.gomodjail
-rwxr-xr-x 0/0        12034560 2026-04-09 19:03 bin/rootlessctl
-rwxr-xr-x 0/0        23451213 2026-04-09 19:03 bin/rootlesskit
-rwxr-xr-x 0/0        17074344 2026-05-05 11:02 bin/runc
-rwxr-xr-x 0/0        53829816 2026-01-21 14:59 bin/stargz-fuse-manager
-rwxr-xr-x 0/0        10821816 2026-01-21 14:59 bin/stargz-store-helper
-rwxr-xr-x 0/0          870496 2026-05-05 11:03 bin/tini
drwxr-xr-x 0/0               0 2026-05-05 11:02 lib/
drwxr-xr-x 0/0               0 2026-05-05 11:02 lib/systemd/
drwxr-xr-x 0/0               0 2026-05-05 11:02 lib/systemd/system/
-rw-r--r-- 0/0            1309 2026-05-05 11:02 lib/systemd/system/buildkit.service
-rw-r--r-- 0/0            1248 2026-05-05 11:01 lib/systemd/system/containerd.service
-rw-r--r-- 0/0             312 2026-05-05 11:02 lib/systemd/system/stargz-snapshotter.service
drwxr-xr-x 0/0               0 2026-05-05 11:02 libexec/
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
drwxr-xr-x 0/0               0 2026-05-05 11:00 share/
drwxr-xr-x 0/0               0 2026-05-05 11:03 share/doc/
drwxr-xr-x 0/0               0 2026-05-05 11:03 share/doc/nerdctl/
-rw-r--r-- 0/0           12036 2026-05-05 10:53 share/doc/nerdctl/README.md
drwxr-xr-x 0/0               0 2026-05-05 10:53 share/doc/nerdctl/docs/
-rw-r--r-- 0/0            3953 2026-05-05 10:53 share/doc/nerdctl/docs/build.md
-rw-r--r-- 0/0            2570 2026-05-05 10:53 share/doc/nerdctl/docs/builder-debug.md
-rw-r--r-- 0/0            4779 2026-05-05 10:53 share/doc/nerdctl/docs/cni.md
-rw-r--r-- 0/0           90467 2026-05-05 10:53 share/doc/nerdctl/docs/command-reference.md
-rw-r--r-- 0/0            1814 2026-05-05 10:53 share/doc/nerdctl/docs/compose.md
-rw-r--r-- 0/0            7592 2026-05-05 10:53 share/doc/nerdctl/docs/config.md
-rw-r--r-- 0/0            9128 2026-05-05 10:53 share/doc/nerdctl/docs/cosign.md
-rw-r--r-- 0/0            5660 2026-05-05 10:53 share/doc/nerdctl/docs/cvmfs.md
drwxr-xr-x 0/0               0 2026-05-05 10:53 share/doc/nerdctl/docs/dev/
-rw-r--r-- 0/0           12701 2026-05-05 10:53 share/doc/nerdctl/docs/dev/auditing_dockerfile.md
-rw-r--r-- 0/0            8586 2026-05-05 10:53 share/doc/nerdctl/docs/dev/store.md
-rw-r--r-- 0/0            2879 2026-05-05 10:53 share/doc/nerdctl/docs/dir.md
-rw-r--r-- 0/0             906 2026-05-05 10:53 share/doc/nerdctl/docs/experimental.md
-rw-r--r-- 0/0           14757 2026-05-05 10:53 share/doc/nerdctl/docs/faq.md
-rw-r--r-- 0/0             884 2026-05-05 10:53 share/doc/nerdctl/docs/freebsd.md
-rw-r--r-- 0/0            5585 2026-05-05 10:53 share/doc/nerdctl/docs/gpu.md
-rw-r--r-- 0/0            3419 2026-05-05 10:53 share/doc/nerdctl/docs/healthchecks.md
drwxr-xr-x 0/0               0 2026-05-05 10:53 share/doc/nerdctl/docs/images/
-rw-r--r-- 0/0            1540 2026-05-05 10:53 share/doc/nerdctl/docs/images/nerdctl-white.svg
-rw-r--r-- 0/0            1462 2026-05-05 10:53 share/doc/nerdctl/docs/images/nerdctl.svg
-rw-r--r-- 0/0          684421 2026-05-05 10:53 share/doc/nerdctl/docs/images/rootlessKit-network-design.png
-rw-r--r-- 0/0           14462 2026-05-05 10:53 share/doc/nerdctl/docs/ipfs.md
-rw-r--r-- 0/0            2426 2026-05-05 10:53 share/doc/nerdctl/docs/multi-platform.md
-rw-r--r-- 0/0            2960 2026-05-05 10:53 share/doc/nerdctl/docs/notation.md
-rw-r--r-- 0/0            2805 2026-05-05 10:53 share/doc/nerdctl/docs/nydus.md
-rw-r--r-- 0/0            3277 2026-05-05 10:53 share/doc/nerdctl/docs/ocicrypt.md
-rw-r--r-- 0/0            2079 2026-05-05 10:53 share/doc/nerdctl/docs/overlaybd.md
-rw-r--r-- 0/0           15657 2026-05-05 10:53 share/doc/nerdctl/docs/registry.md
-rw-r--r-- 0/0            9388 2026-05-05 10:53 share/doc/nerdctl/docs/rootless.md
-rw-r--r-- 0/0            4126 2026-05-05 10:53 share/doc/nerdctl/docs/soci.md
-rw-r--r-- 0/0           11912 2026-05-05 10:53 share/doc/nerdctl/docs/stargz.md
drwxr-xr-x 0/0               0 2026-05-05 10:53 share/doc/nerdctl/docs/testing/
-rw-r--r-- 0/0            4897 2026-05-05 10:53 share/doc/nerdctl/docs/testing/README.md
-rw-r--r-- 0/0           16500 2026-05-05 10:53 share/doc/nerdctl/docs/testing/tools.md
drwxr-xr-x 0/0               0 2026-05-05 11:04 share/doc/nerdctl-full/
-rw-r--r-- 0/0             911 2026-05-05 11:03 share/doc/nerdctl-full/README.md
-rw-r--r-- 0/0            9331 2026-05-05 11:04 share/doc/nerdctl-full/SHA256SUMS
```
</p>
</details>

<details><summary>Included components</summary>
<p>

See `share/doc/nerdctl-full/README.md`:
```markdown
# nerdctl (full distribution)
- nerdctl: v2.3.0
- containerd: v2.3.0-beta.2
- runc: v1.4.2
- CNI plugins: v1.9.1
- BuildKit: v0.29.0
- Stargz Snapshotter: v0.18.2
- imgcrypt: v2.0.2
- bypass4netns: v0.4.2
- fuse-overlayfs: v1.16
- containerd-fuse-overlayfs: v2.1.7
- Tini: v0.19.0
- buildg: v0.5.3
- RootlessKit: v3.0.0
- gomodjail: v0.1.3@cea529ddd971b677c67d8af7e936fbc62b35b98c

## License
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
The build log is available for 90 days: https://github.com/containerd/nerdctl/actions/runs/25372158155

The sha256sum of the SHA256SUMS file itself is `4223bdd43903172682bf5a72b580a31304b83bf50d120bc3e0ddd88a470ba230` .
- - -
Release manager: Chengyu Zhu (@ChengyuZhu6)
