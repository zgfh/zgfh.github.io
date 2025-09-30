来源: https://github.com/containerd/containerd/releases/tag/v2.1.0

# containerd/containerd v2.1.0 Release Notes

Published at: 2025-05-07T18:31:30Z

Welcome to the v2.1.0 release of containerd!

The first minor release of containerd 2.x focuses on continued stability alongside
new features and improvements. This is the first time-based released for containerd.
Most the feature set and core functionality has long been stable and harderened in production
environments, so now we transition to a balance of timely delivery of new functionality
with the same high confidence in stability and performance.

### Highlights

* Add no_sync option to boost boltDB performance on ephemeral environments ([#10745](https://github.com/containerd/containerd/pull/10745))
* Add content create event ([#11006](https://github.com/containerd/containerd/pull/11006))
* Erofs snapshotter and differ ([#10705](https://github.com/containerd/containerd/pull/10705))

#### Container Runtime Interface (CRI)

* Update CRI to use transfer service for image pull by default ([#8515](https://github.com/containerd/containerd/pull/8515))
* Support multiple cni plugin bin dirs ([#11311](https://github.com/containerd/containerd/pull/11311))
* Support container restore through CRI/Kubernetes ([#10365](https://github.com/containerd/containerd/pull/10365))
* Add OCI/Image Volume Source support ([#10579](https://github.com/containerd/containerd/pull/10579))
* Enable Writable cgroups for unprivileged containers ([#11131](https://github.com/containerd/containerd/pull/11131))
* Fix recursive RLock() mutex acquisition ([containerd/go-cni#126](https://github.com/containerd/go-cni/pull/126))
* Support CNI STATUS Verb ([containerd/go-cni#123](https://github.com/containerd/go-cni/pull/123))

#### Image Distribution

* Retry last registry host on 50x responses ([#11484](https://github.com/containerd/containerd/pull/11484))
* Multipart layer fetch ([#10177](https://github.com/containerd/containerd/pull/10177))
* Enable HTTP debug and trace for transfer based puller ([#10762](https://github.com/containerd/containerd/pull/10762))
* Add support for unpacking custom media types  ([#11744](https://github.com/containerd/containerd/pull/11744))
* Add dial timeout field to hosts toml configuration ([#11106](https://github.com/containerd/containerd/pull/11106))

#### Node Resource Interface (NRI)

* Expose Pod assigned IPs to NRI plugins ([#10921](https://github.com/containerd/containerd/pull/10921))

#### Runtime

* Support multiple uid/gid mappings ([#10722](https://github.com/containerd/containerd/pull/10722))
* Fix race between serve and immediate shutdown on the server ([containerd/ttrpc#175](https://github.com/containerd/ttrpc/pull/175))

#### Breaking

* Update FreeBSD defaults and re-organize platform defaults ([#11017](https://github.com/containerd/containerd/pull/11017))

#### Deprecations

* Postpone cri config deprecations to v2.2 ([#11684](https://github.com/containerd/containerd/pull/11684))
* Remove deprecated dynamic library plugins ([#11683](https://github.com/containerd/containerd/pull/11683))
* Remove the support for Schema 1 images ([#11681](https://github.com/containerd/containerd/pull/11681))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Derek McGowan
* Phil Estes
* Akihiro Suda
* Maksym Pavlenko
* Jin Dong
* Wei Fu
* Sebastiaan van Stijn
* Samuel Karp
* Mike Brown
* Adrien Delorme
* Austin Vazquez
* Akhil Mohan
* Kazuyoshi Kato
* Henry Wang
* Gao Xiang
* ningmingxiao
* Krisztian Litkey
* Yang Yang
* Archit Kulkarni
* Chris Henzie
* Iceber Gu
* Alexey Lunev
* Antonio Ojea
* Davanum Srinivas
* Marat Radchenko
* Michael Zappa
* Paweł Gronowski
* Rodrigo Campos
* Alberto Garcia Hierro
* Amit Barve
* Andrey Smirnov
* Divya
* Etienne Champetier
* Kirtana Ashok
* Philip Laine
* QiPing Wan
* fengwei0328
* zounengren
* Adrian Reber
* Alfred Wingate
* Amal Thundiyil
* Athos Ribeiro
* Brian Goff
* Cesar Talledo
* ChengyuZhu6
* Chongyi Zheng
* Craig Ingram
* Danny Canter
* David Son
* Fupan Li
* HirazawaUi
* Jing Xu
* Jonathan A. Sternberg
* Jose Fernandez
* Kaita Nakamura
* Kohei Tokunaga
* Lei Liu
* Marco Visin
* Mike Baynton
* Qiyuan Liang
* Sameer
* Shiming Zhang
* Swagat Bora
* Teresaliu
* Tony Fang
* Tõnis Tiigi
* Vered Rosen
* Vinayak Goyal
* bo.jiang
* chriskery
* luchenhan
* mahmut
* zhaixiaojuan

### Dependency Changes

* **github.com/Microsoft/hcsshim**                                                 v0.12.9 -> v0.13.0-rc.3
* **github.com/cilium/ebpf**                                                       v0.11.0 -> v0.16.0
* **github.com/containerd/cgroups/v3**                                             v3.0.3 -> v3.0.5
* **github.com/containerd/containerd/api**                                         v1.8.0 -> v1.9.0
* **github.com/containerd/continuity**                                             v0.4.4 -> v0.4.5
* **github.com/containerd/go-cni**                                                 v1.1.10 -> v1.1.12
* **github.com/containerd/imgcrypt/v2**                                            v2.0.0-rc.1 -> v2.0.1
* **github.com/containerd/otelttrpc**                                              ea5083fda723 -> v0.1.0
* **github.com/containerd/platforms**                                              v1.0.0-rc.0 -> v1.0.0-rc.1
* **github.com/containerd/ttrpc**                                                  v1.2.6 -> v1.2.7
* **github.com/containerd/typeurl/v2**                                             v2.2.2 -> v2.2.3
* **github.com/containernetworking/cni**                                           v1.2.3 -> v1.3.0
* **github.com/containernetworking/plugins**                                       v1.5.1 -> v1.7.1
* **github.com/containers/ocicrypt**                                               v1.2.0 -> v1.2.1
* **github.com/davecgh/go-spew**                                                   d8f796af33cc -> v1.1.1
* **github.com/fsnotify/fsnotify**                                                 v1.7.0 -> v1.9.0
* **github.com/go-jose/go-jose/v4**                                                v4.0.4 -> v4.0.5
* **github.com/google/go-cmp**                                                     v0.6.0 -> v0.7.0
* **github.com/grpc-ecosystem/grpc-gateway/v2**                                    v2.22.0 -> v2.26.1
* **github.com/klauspost/compress**                                                v1.17.11 -> v1.18.0
* **github.com/mdlayher/socket**                                                   v0.4.1 -> v0.5.1
* **github.com/moby/spdystream**                                                   v0.4.0 -> v0.5.0
* **github.com/moby/sys/user**                                                     v0.3.0 -> v0.4.0
* **github.com/opencontainers/image-spec**                                         v1.1.0 -> v1.1.1
* **github.com/opencontainers/runtime-spec**                                       v1.2.0 -> v1.2.1
* **github.com/opencontainers/selinux**                                            v1.11.1 -> v1.12.0
* **github.com/pelletier/go-toml/v2**                                              v2.2.3 -> v2.2.4
* **github.com/petermattis/goid**                                                  4fcff4a6cae7 **_new_**
* **github.com/pmezard/go-difflib**                                                5d4384ee4fb2 -> v1.0.0
* **github.com/prometheus/client_golang**                                          v1.20.5 -> v1.22.0
* **github.com/prometheus/common**                                                 v0.55.0 -> v0.62.0
* **github.com/sasha-s/go-deadlock**                                               v0.3.5 **_new_**
* **github.com/smallstep/pkcs7**                                                   v0.1.1 **_new_**
* **github.com/stretchr/testify**                                                  v1.9.0 -> v1.10.0
* **github.com/tchap/go-patricia/v2**                                              v2.3.1 -> v2.3.2
* **github.com/urfave/cli/v2**                                                     v2.27.5 -> v2.27.6
* **github.com/vishvananda/netlink**                                               v1.3.0 -> 0e7078ed04c8
* **github.com/vishvananda/netns**                                                 v0.0.4 -> v0.0.5
* **go.etcd.io/bbolt**                                                             v1.3.11 -> v1.4.0
* **go.opentelemetry.io/auto/sdk**                                                 v1.1.0 **_new_**
* **go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc**  v0.56.0 -> v0.60.0
* **go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp**                v0.56.0 -> v0.60.0
* **go.opentelemetry.io/otel**                                                     v1.31.0 -> v1.35.0
* **go.opentelemetry.io/otel/exporters/otlp/otlptrace**                            v1.31.0 -> v1.35.0
* **go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc**              v1.31.0 -> v1.35.0
* **go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp**              v1.31.0 -> v1.35.0
* **go.opentelemetry.io/otel/metric**                                              v1.31.0 -> v1.35.0
* **go.opentelemetry.io/otel/sdk**                                                 v1.31.0 -> v1.35.0
* **go.opentelemetry.io/otel/trace**                                               v1.31.0 -> v1.35.0
* **go.opentelemetry.io/proto/otlp**                                               v1.3.1 -> v1.5.0
* **golang.org/x/crypto**                                                          v0.28.0 -> v0.36.0
* **golang.org/x/exp**                                                             aacd6d4b4611 -> 2d47ceb2692f
* **golang.org/x/mod**                                                             v0.21.0 -> v0.24.0
* **golang.org/x/net**                                                             v0.30.0 -> v0.38.0
* **golang.org/x/oauth2**                                                          v0.22.0 -> v0.27.0
* **golang.org/x/sync**                                                            v0.8.0 -> v0.14.0
* **golang.org/x/sys**                                                             v0.26.0 -> v0.33.0
* **golang.org/x/term**                                                            v0.25.0 -> v0.30.0
* **golang.org/x/text**                                                            v0.19.0 -> v0.23.0
* **golang.org/x/time**                                                            v0.3.0 -> v0.7.0
* **google.golang.org/genproto/googleapis/api**                                    5fefd90f89a9 -> 56aae31c358a
* **google.golang.org/genproto/googleapis/rpc**                                    324edc3d5d38 -> 56aae31c358a
* **google.golang.org/grpc**                                                       v1.67.1 -> v1.72.0
* **google.golang.org/protobuf**                                                   v1.35.1 -> v1.36.6
* **k8s.io/api**                                                                   v0.31.2 -> v0.32.3
* **k8s.io/apimachinery**                                                          v0.31.2 -> v0.32.3
* **k8s.io/apiserver**                                                             v0.31.2 -> v0.32.3
* **k8s.io/client-go**                                                             v0.31.2 -> v0.32.3
* **k8s.io/cri-api**                                                               v0.31.2 -> v0.32.3
* **k8s.io/kubelet**                                                               v0.31.2 -> v0.32.3
* **k8s.io/utils**                                                                 18e509b52bc8 -> 3ea5e8cea738
* **sigs.k8s.io/json**                                                             bc3834ca7abd -> 9aa6b5e7a4b3
* **sigs.k8s.io/structured-merge-diff/v4**                                         v4.4.1 -> v4.4.2
* **tags.cncf.io/container-device-interface**                                      v0.8.0 -> v1.0.1
* **tags.cncf.io/container-device-interface/specs-go**                             v0.8.0 -> v1.0.0

Previous release can be found at [v2.0.0](https://github.com/containerd/containerd/releases/tag/v2.0.0)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.35 (Ubuntu 22.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on Linux distributions that do not use glibc >= 2.35. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
