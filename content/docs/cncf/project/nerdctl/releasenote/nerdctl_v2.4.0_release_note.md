来源: https://github.com/containerd/nerdctl/releases/tag/v2.4.0

# containerd/nerdctl v2.4.0 Release Notes

Published at: 2026-09-20T05:01:55Z

This release improves compatibility with Docker v29.

## Changes

Major changes (💡 for highlights):

- `nerdctl image`:
   - 💡Adopted Docker v29 default `nerdctl images` output (`IMAGE`, `ID`, `DISK USAGE`, `CONTENT SIZE`, `EXTRA`) (#5093, thanks to @ekalinin)
   - Added `nerdctl images --tree` to show a row per platform an image declares, like `docker image ls --tree` (#5092, thanks to @ekalinin)
   - Added `nerdctl push --all-tags` (`-a`) to push every local tag of a repository (#5133, thanks to @ekalinin)
   - Added `nerdctl image convert --erofs {raw|zstd}` and aligned EROFS pull/push with containerd (#4927, thanks to @ChengyuZhu6)
   - Added `nerdctl save --quiet` (`-q`) to suppress progress output (#5064, thanks to @s3onghyun)
   - Fixed `nerdctl image ls <repo>` to list all tags of a bare repository name (#5115, thanks to @ankit090701)
   - Added snapshot info to native `nerdctl image inspect` (#5114, thanks to @ningmingxiao)
   - Pinned the image a container runs to its digest (#5125, thanks to @ekalinin)
   - Truncated the output file of `nerdctl save` and `nerdctl image export` (#5160, thanks to @ekalinin)
   - Preserved equals signs in image label filter values (#5163, thanks to @immanuwell)

- `nerdctl container`:
   - 💡Added `--mount type=image` (read-only) (#4990, thanks to @mayur-tolexo)
   - Added `image-subpath` to `--mount type=image` to mount a relative path inside the image rootfs instead of the whole rootfs (#4993, thanks to @mayur-tolexo)
   - Added `--expose` and `--publish-all` (`-P`) (#5036, thanks to @Mujib-Ahasan)
   - 💡Added support for the Docker v25 recursive read-only (RRO) mount form (#5043)
   - Allocated a free host port from a published port range for a single container port (#4988, thanks to @s3onghyun)
   - Added the `volume-nocopy` mount option, so existing data in the container is not copied into the volume (#5129, thanks to @jiwahn)
   - Fixed `--cpus` writing cpuset instead of CFS quota/period (#5067, thanks to @kmaris)
   - Fixed `nerdctl run`/`exec -i` hanging when stdin reaches EOF during task creation (#5042)
   - Fixed a foreground stdio deadlock when the internal logging process stops consuming (#5151, thanks to @gsaddict91)
   - Added snapshot info to native `nerdctl container inspect` (#5118, thanks to @ningmingxiao)
   - Suppressed a spurious hostsstore NotFound warning on container removal (#5098, thanks to @pujitha24)
   - Allowed removing containers that have no network annotations (#5211, thanks to @Arman16-1998)
   - Matched `nerdctl ps --filter` keys exactly instead of by prefix (#5197, thanks to @immanuwell)

- `nerdctl system`:
   - 💡 Added `nerdctl system df`, with `--verbose` (`-v`) and `--format` (#5130, thanks to @ekalinin)

- `nerdctl build`:
   - Printed the image ID with `--quiet` when using the containerd worker (#5170, thanks to @locker95)

- `nerdctl network`:
   - Added `--aux-address` support for `nerdctl network create` (#5041, thanks to @mayur-tolexo)
   - Added `--ipv4` so `--ipv4=false --ipv6` can create IPv6-only networks (#5024, thanks to @mayur-tolexo)
   - Matched each `--ip-range` to its subnet for dual-stack networks (#5018, thanks to @mayur-tolexo)
   - Stopped injecting `ipRange` into the CNI config (#5078, thanks to @mayur-tolexo)
   - Keyed `Networks` in `nerdctl inspect` by the real CNI network name (#5164, thanks to @larrasket)
   - Combined repeated `--filter name=` values with OR (#5206, thanks to @immanuwell)
   - Supported big-endian hosts when parsing `/proc/net/{tcp,udp}` addresses (#5100, thanks to @larrasket)

- `nerdctl events`:
   - Added label-based filtering (#4999, thanks to @Mujib-Ahasan)
   - Renamed the `Status` field to `Action` to match Docker v29 (#5087, thanks to @Akshitguptaa)

- `nerdctl login`:
   - Accepted equivalent registry hosts in the auth creds callback, and normalized bracketed IPv6 addresses (#5128, thanks to @xianyuwu)

- `nerdctl compose`:
   - Supported image volumes (`services.<SERVICE>.volumes[].type: image`) (#5161, thanks to @papidb)
   - Stopped requiring CNI plugins for compose projects that do not use CNI (#5132, thanks to @ravi-arnan)
   - Allowed detached runs with the default interactive setting (#5212, thanks to @immanuwell)
   - Fixed a panic when asserting `x-nerdctl-*` compose extension types (#5073, thanks to @arpitjain099)

- `nerdctl info`:
   - Implemented rootless systemd cgroup discovery, removing a hard-coded cgroup path (#5182, thanks to @chemwolf6922)

- `nerdctl top`:
   - Fix handling stopped and paused containers (#5223, thanks to @immanuwell)

- Healthcheck:
   - Reduced unnecessary function calls (#5048, thanks to @ningmingxiao)

- Logging:
   - Added `--log-file` (`$NERDCTL_LOG_FILE`) to append nerdctl's own log to a file, in addition to the standard error (#5147, thanks to @ekalinin)

- Rootless:
   - Enabled IPv6 in the RootlessKit network namespace (#5055, thanks to @Akshitguptaa)

- `nerdctl-full`:
   - Updated containerd to v2.4.0 and RootlessKit to v3.2.0 (#5144, #5152, #5196, #5209, #5213, #5224, thanks to @ChengyuZhu6 and @haytok)
   - Updated BuildKit to v0.33.0, imgcrypt to v2.0.3, and fuse-overlayfs to v1.18 (#5198)
   - Updated gomodjail to v2.0.1 and enforced its static analysis in CI (#5192)

- Documentation:
   - Documented volume `:z` and `:Z` SELinux options (#5140, thanks to @VedantMadane)
   - Corrected the tmpfs path `/var/lib/journal` to `/var/log/journal` (#5162, thanks to @MayCXC)
   - Fixed typos in docs (#5146, #5166, thanks to @MsfPablo)

- Misc:
   - Hid internal alias flags from help output (#5025, thanks to @immanuwell)

- CI and tests:
   - Updated CI to Ubuntu 26.04 and Docker 29.6.1, and ran integration tests directly on hosts and Lima guests (#5020, #5021, #5035)
   - Continued migrating container, network, and compose tests to Tigron (#4780, #5014, #5045, #5056, #5058, #5063, #5069, #5070, #5071, #5074, #5085, #5086, #5094, #5120, thanks to @must108, @takumi12311123, @papidb, @Mujib-Ahasan, and @ogulcanaydogan)
   - Published a weekly flaky test dashboard ("Soigneur") and attempted to deflake several tests (#5201, #5217, #5218)
   - Printed daemon logs after integration test failures (#5165, thanks to @loglapa)
   - Dropped an outdated containerd 1.x plugin requirement from the restart tests (#5185, thanks to @webdevsamran)
   - Fixed `lint-licenses` failing on MPL-2.0 (#5200, thanks to @filipPlevjak)
   - Reported gosocialcheck findings as GitHub Actions annotations, and fixed a zizmor failure (#5208, #5215)
- And more!

Full changes: https://github.com/containerd/nerdctl/milestone/66?closed=1

Thanks to @ChengyuZhu6, @ekalinin, @mayur-tolexo, @immanuwell, @ningmingxiao, @larrasket, @papidb, @haytok, @Mujib-Ahasan, @s3onghyun, @Akshitguptaa, @MsfPablo, @ankit090701, @ravi-arnan, @arpitjain099, @kmaris, @pujitha24, @VedantMadane, @xianyuwu, @jiwahn, @gsaddict91, @locker95, @chemwolf6922, @Arman16-1998, @loglapa, @webdevsamran, @filipPlevjak, @MayCXC, @ogulcanaydogan, @must108, @takumi12311123, @subotac, and @nikolauspschuetz.

> [!NOTE]
> Claude Opus 5 was used for updating this release note from v2.4.0-beta.0.

## Compatible containerd versions
This release of nerdctl is expected to be used with containerd v1.7 or later.
Some features may not work with other releases of containerd.

## About the binaries
- Minimal (`nerdctl-2.4.0-linux-amd64.tar.gz`): nerdctl only
- Full (`nerdctl-full-2.4.0-linux-amd64.tar.gz`):    Includes dependencies such as containerd, runc, and CNI

### Minimal
Extract the archive to a path like `/usr/local/bin` or `~/bin` .
<details><summary>tar Cxzvvf /usr/local/bin nerdctl-2.4.0-linux-amd64.tar.gz</summary>
<p>

```
-rwxr-xr-x root/root  32395426 2026-09-20 04:26 nerdctl
-rwxr-xr-x root/root     23390 2026-09-20 04:25 containerd-rootless-setuptool.sh
-rwxr-xr-x root/root      9555 2026-09-20 04:25 containerd-rootless.sh
```
</p>
</details>

### Full
Extract the archive to a path like `/usr/local` or `~/.local` .

<details><summary>tar Cxzvvf /usr/local nerdctl-full-2.4.0-linux-amd64.tar.gz</summary>
<p>

```
drwxr-xr-x 0/0               0 2026-09-20 04:36 bin/
-rwxr-xr-x 0/0        34512200 2026-09-01 12:47 bin/buildctl
-rwxr-xr-x 0/0        29909144 2025-05-12 13:10 bin/buildg
lrwxrwxrwx 0/0               0 2026-09-20 04:34 bin/buildkit-cni-bandwidth -> ../libexec/cni/bandwidth
lrwxrwxrwx 0/0               0 2026-09-20 04:34 bin/buildkit-cni-bridge -> ../libexec/cni/bridge
lrwxrwxrwx 0/0               0 2026-09-20 04:34 bin/buildkit-cni-dhcp -> ../libexec/cni/dhcp
lrwxrwxrwx 0/0               0 2026-09-20 04:34 bin/buildkit-cni-dummy -> ../libexec/cni/dummy
lrwxrwxrwx 0/0               0 2026-09-20 04:34 bin/buildkit-cni-firewall -> ../libexec/cni/firewall
lrwxrwxrwx 0/0               0 2026-09-20 04:34 bin/buildkit-cni-host-device -> ../libexec/cni/host-device
lrwxrwxrwx 0/0               0 2026-09-20 04:34 bin/buildkit-cni-host-local -> ../libexec/cni/host-local
lrwxrwxrwx 0/0               0 2026-09-20 04:34 bin/buildkit-cni-ipvlan -> ../libexec/cni/ipvlan
lrwxrwxrwx 0/0               0 2026-09-20 04:34 bin/buildkit-cni-loopback -> ../libexec/cni/loopback
lrwxrwxrwx 0/0               0 2026-09-20 04:34 bin/buildkit-cni-macvlan -> ../libexec/cni/macvlan
lrwxrwxrwx 0/0               0 2026-09-20 04:34 bin/buildkit-cni-portmap -> ../libexec/cni/portmap
lrwxrwxrwx 0/0               0 2026-09-20 04:34 bin/buildkit-cni-ptp -> ../libexec/cni/ptp
lrwxrwxrwx 0/0               0 2026-09-20 04:34 bin/buildkit-cni-sbr -> ../libexec/cni/sbr
lrwxrwxrwx 0/0               0 2026-09-20 04:34 bin/buildkit-cni-static -> ../libexec/cni/static
lrwxrwxrwx 0/0               0 2026-09-20 04:34 bin/buildkit-cni-tap -> ../libexec/cni/tap
lrwxrwxrwx 0/0               0 2026-09-20 04:34 bin/buildkit-cni-tuning -> ../libexec/cni/tuning
lrwxrwxrwx 0/0               0 2026-09-20 04:34 bin/buildkit-cni-vlan -> ../libexec/cni/vlan
lrwxrwxrwx 0/0               0 2026-09-20 04:34 bin/buildkit-cni-vrf -> ../libexec/cni/vrf
-rwxr-xr-x 0/0        80466872 2026-09-01 12:47 bin/buildkitd
-rwxr-xr-x 0/0        16853776 2026-09-20 04:34 bin/bypass4netns
-rwxr-xr-x 0/0         6607010 2026-09-20 04:34 bin/bypass4netnsd
-rwxr-xr-x 0/0        40488528 2026-09-20 04:34 bin/containerd
-rwxr-xr-x 0/0        12079288 2025-11-06 01:44 bin/containerd-fuse-overlayfs-grpc
-rwxr-xr-x 0/0           23390 2026-09-20 04:36 bin/containerd-rootless-setuptool.sh
-rwxr-xr-x 0/0            9555 2026-09-20 04:36 bin/containerd-rootless.sh
-rwxr-xr-x 0/0         8134818 2026-09-20 04:34 bin/containerd-shim-runc-v2
-rwxr-xr-x 0/0        55267512 2026-01-21 14:59 bin/containerd-stargz-grpc
-rwxr-xr-x 0/0        24842068 2026-09-20 04:35 bin/ctd-decoder
-rwxr-xr-x 0/0        23158946 2026-09-20 04:34 bin/ctr
-rwxr-xr-x 0/0        34403563 2026-09-20 04:35 bin/ctr-enc
-rwxr-xr-x 0/0        23417016 2026-01-21 14:59 bin/ctr-remote
-rwxr-xr-x 0/0         1695520 2026-09-20 04:35 bin/fuse-overlayfs
-rwxr-xr-x 0/0        11153570 2026-09-20 04:33 bin/gomodjail
-rwxr-xr-x 0/0        32358562 2026-09-20 04:36 bin/nerdctl
-rwxr-xr-x 0/0        43520870 2026-09-20 04:36 bin/nerdctl.gomodjail
-rwxr-xr-x 0/0        12470655 2026-09-19 15:34 bin/rootlessctl
-rwxr-xr-x 0/0        24055360 2026-09-19 15:34 bin/rootlesskit
-rwxr-xr-x 0/0        15249928 2026-09-20 04:33 bin/runc
-rwxr-xr-x 0/0        53829816 2026-01-21 14:59 bin/stargz-fuse-manager
-rwxr-xr-x 0/0        10821816 2026-01-21 14:59 bin/stargz-store-helper
-rwxr-xr-x 0/0          870496 2026-09-20 04:35 bin/tini
drwxr-xr-x 0/0               0 2026-09-20 04:34 lib/
drwxr-xr-x 0/0               0 2026-09-20 04:34 lib/systemd/
drwxr-xr-x 0/0               0 2026-09-20 04:35 lib/systemd/system/
-rw-r--r-- 0/0            1309 2026-09-20 04:34 lib/systemd/system/buildkit.service
-rw-r--r-- 0/0            1248 2026-09-20 04:32 lib/systemd/system/containerd.service
-rw-r--r-- 0/0             312 2026-09-20 04:35 lib/systemd/system/stargz-snapshotter.service
drwxr-xr-x 0/0               0 2026-09-20 04:34 libexec/
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
drwxr-xr-x 0/0               0 2026-09-20 04:32 share/
drwxr-xr-x 0/0               0 2026-09-20 04:36 share/doc/
drwxr-xr-x 0/0               0 2026-09-20 04:36 share/doc/nerdctl/
-rw-r--r-- 0/0           12380 2026-09-20 04:25 share/doc/nerdctl/README.md
drwxr-xr-x 0/0               0 2026-09-20 04:25 share/doc/nerdctl/docs/
-rw-r--r-- 0/0            3953 2026-09-20 04:25 share/doc/nerdctl/docs/build.md
-rw-r--r-- 0/0            2570 2026-09-20 04:25 share/doc/nerdctl/docs/builder-debug.md
-rw-r--r-- 0/0            4779 2026-09-20 04:25 share/doc/nerdctl/docs/cni.md
-rw-r--r-- 0/0           97589 2026-09-20 04:25 share/doc/nerdctl/docs/command-reference.md
-rw-r--r-- 0/0            2074 2026-09-20 04:25 share/doc/nerdctl/docs/compose.md
-rw-r--r-- 0/0            7903 2026-09-20 04:25 share/doc/nerdctl/docs/config.md
-rw-r--r-- 0/0            9128 2026-09-20 04:25 share/doc/nerdctl/docs/cosign.md
-rw-r--r-- 0/0            5660 2026-09-20 04:25 share/doc/nerdctl/docs/cvmfs.md
drwxr-xr-x 0/0               0 2026-09-20 04:25 share/doc/nerdctl/docs/dev/
-rw-r--r-- 0/0           12701 2026-09-20 04:25 share/doc/nerdctl/docs/dev/auditing_dockerfile.md
-rw-r--r-- 0/0            8587 2026-09-20 04:25 share/doc/nerdctl/docs/dev/store.md
-rw-r--r-- 0/0            3148 2026-09-20 04:25 share/doc/nerdctl/docs/dir.md
-rw-r--r-- 0/0            1826 2026-09-20 04:25 share/doc/nerdctl/docs/erofs.md
-rw-r--r-- 0/0             906 2026-09-20 04:25 share/doc/nerdctl/docs/experimental.md
-rw-r--r-- 0/0           14757 2026-09-20 04:25 share/doc/nerdctl/docs/faq.md
-rw-r--r-- 0/0             884 2026-09-20 04:25 share/doc/nerdctl/docs/freebsd.md
-rw-r--r-- 0/0            5585 2026-09-20 04:25 share/doc/nerdctl/docs/gpu.md
-rw-r--r-- 0/0            3419 2026-09-20 04:25 share/doc/nerdctl/docs/healthchecks.md
drwxr-xr-x 0/0               0 2026-09-20 04:25 share/doc/nerdctl/docs/images/
-rw-r--r-- 0/0            1540 2026-09-20 04:25 share/doc/nerdctl/docs/images/nerdctl-white.svg
-rw-r--r-- 0/0            1462 2026-09-20 04:25 share/doc/nerdctl/docs/images/nerdctl.svg
-rw-r--r-- 0/0          684421 2026-09-20 04:25 share/doc/nerdctl/docs/images/rootlessKit-network-design.png
-rw-r--r-- 0/0           14462 2026-09-20 04:25 share/doc/nerdctl/docs/ipfs.md
-rw-r--r-- 0/0            2426 2026-09-20 04:25 share/doc/nerdctl/docs/multi-platform.md
-rw-r--r-- 0/0            2960 2026-09-20 04:25 share/doc/nerdctl/docs/notation.md
-rw-r--r-- 0/0            2806 2026-09-20 04:25 share/doc/nerdctl/docs/nydus.md
-rw-r--r-- 0/0            3277 2026-09-20 04:25 share/doc/nerdctl/docs/ocicrypt.md
-rw-r--r-- 0/0            2215 2026-09-20 04:25 share/doc/nerdctl/docs/overlaybd.md
-rw-r--r-- 0/0           15657 2026-09-20 04:25 share/doc/nerdctl/docs/registry.md
-rw-r--r-- 0/0           10065 2026-09-20 04:25 share/doc/nerdctl/docs/rootless.md
-rw-r--r-- 0/0            4126 2026-09-20 04:25 share/doc/nerdctl/docs/soci.md
-rw-r--r-- 0/0           11912 2026-09-20 04:25 share/doc/nerdctl/docs/stargz.md
drwxr-xr-x 0/0               0 2026-09-20 04:25 share/doc/nerdctl/docs/testing/
-rw-r--r-- 0/0            6352 2026-09-20 04:25 share/doc/nerdctl/docs/testing/README.md
-rw-r--r-- 0/0            6527 2026-09-20 04:25 share/doc/nerdctl/docs/testing/flaky.md
-rw-r--r-- 0/0           16694 2026-09-20 04:25 share/doc/nerdctl/docs/testing/tools.md
drwxr-xr-x 0/0               0 2026-09-20 04:36 share/doc/nerdctl-full/
-rw-r--r-- 0/0             904 2026-09-20 04:35 share/doc/nerdctl-full/README.md
-rw-r--r-- 0/0            9539 2026-09-20 04:36 share/doc/nerdctl-full/SHA256SUMS
```
</p>
</details>

<details><summary>Included components</summary>
<p>

See `share/doc/nerdctl-full/README.md`:
```markdown
# nerdctl (full distribution)
- nerdctl: v2.4.0
- containerd: v2.4.0
- runc: v1.5.1
- CNI plugins: v1.9.1
- BuildKit: v0.33.0
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
The build log is available for 90 days: https://github.com/containerd/nerdctl/actions/runs/35489092630

The sha256sum of the SHA256SUMS file itself is `3dc35cebc9bb3f23491eeb930631954e3e286e9bd0131c0cb8490df5eaa21af9` .
- - -
Release manager: @AkihiroSuda
