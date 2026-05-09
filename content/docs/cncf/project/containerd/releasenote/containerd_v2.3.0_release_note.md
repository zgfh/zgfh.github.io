来源: https://github.com/containerd/containerd/releases/tag/v2.3.0

# containerd/containerd v2.3.0 Release Notes

Published at: 2026-04-30T19:35:05Z

Welcome to the v2.3.0 release of containerd!

The third minor release of containerd 2.x focuses on continued stability alongside
new features and improvements. This is the third time-based release for containerd.

Starting with containerd 2.3, the project has moved to release cadence aligned with
the Kubernetes release schedule, with new minor releases about every 4 months. The
containerd 2.3 release is also the first annual LTS (Long Term Stable) release under
this new schedule, with support planned for at least two years. Direct upgrades
between sequential LTS releases (e.g., 1.7 to 2.3) will be tested and supported.

### Highlights

* Add transfer types for container filesystem copy ([#13165](https://github.com/containerd/containerd/pull/13165))
* Add option to inject trace ID to logs ([#13117](https://github.com/containerd/containerd/pull/13117))
* Propagate OpenTelemetry traces in outgoing RPCs from plugin clients ([#13113](https://github.com/containerd/containerd/pull/13113))
* Update plugin config migration to run on load ([#12608](https://github.com/containerd/containerd/pull/12608))
* Update sandbox API to include spec field ([#12840](https://github.com/containerd/containerd/pull/12840))

#### Container Runtime Interface (CRI)

* Allow containers to use user namespaces with host networking ([#12518](https://github.com/containerd/containerd/pull/12518))
* Wire UpdatePodSandboxResources to Sandbox API ([#13118](https://github.com/containerd/containerd/pull/13118))
* Unpack images with per-layer labels for specific runtime ([#12835](https://github.com/containerd/containerd/pull/12835))
* Populate ImageId field in container status ([#12787](https://github.com/containerd/containerd/pull/12787))
* Set annotations parameter in CreateSandbox request ([#12566](https://github.com/containerd/containerd/pull/12566))
* Add background stats collector to calculate UsageNanoCores for containers and pod sandboxes ([#12629](https://github.com/containerd/containerd/pull/12629))

#### Image Distribution

* Support zstd-wrapped EROFS layers ([#13185](https://github.com/containerd/containerd/pull/13185))
* Add os.features support for EROFS native container images ([#13091](https://github.com/containerd/containerd/pull/13091))
* Add EROFS layer media type ([#12567](https://github.com/containerd/containerd/pull/12567))

#### Image Storage

* Add dmverity support to the erofs snapshotter ([#12502](https://github.com/containerd/containerd/pull/12502))
* Use fsmount API to avoid PAGE_SIZE limit for erofs ([#12783](https://github.com/containerd/containerd/pull/12783))

#### Node Resource Interface (NRI)

* Pass container user (uid, gids) to plugins ([#12769](https://github.com/containerd/containerd/pull/12769))
* Pass seccomp policy to plugins ([#12768](https://github.com/containerd/containerd/pull/12768))
* Pass any POSIX rlimits to plugins ([#12765](https://github.com/containerd/containerd/pull/12765))
* Pass extended container status to NRI. ([#12770](https://github.com/containerd/containerd/pull/12770))
* Pass injected CDI devices to plugins ([#12767](https://github.com/containerd/containerd/pull/12767))
* Pass linux sysctl to plugins ([#12766](https://github.com/containerd/containerd/pull/12766))
* Use dedicated RPC calls for all pod and container life-cycle events via the NRI wire protocol ([containerd/nri#274](https://github.com/containerd/nri/pull/274))
* Add basic metrics collection for the NRI framework ([containerd/nri#277](https://github.com/containerd/nri/pull/277))
* Exchange NRI versions between plugins and the runtime during registration ([containerd/nri#271](https://github.com/containerd/nri/pull/271))
* Enable adjusting Linux memory policy from NRI plugins ([containerd/nri#166](https://github.com/containerd/nri/pull/166))
* Close plugins if initial synchronization fails to prevent unregistered connections ([containerd/nri#279](https://github.com/containerd/nri/pull/279))
* Accumulate owners for OCI hook adjustments, disallowing commas in plugin names ([containerd/nri#264](https://github.com/containerd/nri/pull/264))
* Add nri_no_wasm build tag to allow disabling WASM support at compile time ([containerd/nri#253](https://github.com/containerd/nri/pull/253))
* Support direct adjustment of the intelRdt container configuration ([containerd/nri#215](https://github.com/containerd/nri/pull/215))
* Allow setting kernel scheduling policy attributes via NRI ([containerd/nri#160](https://github.com/containerd/nri/pull/160))
* Allow adjusting Linux network devices via NRI ([containerd/nri#157](https://github.com/containerd/nri/pull/157))
* Add support for sysctl adjustment via NRI ([containerd/nri#248](https://github.com/containerd/nri/pull/248))
* Expose container user, group, and supplemental group IDs to plugins ([containerd/nri#230](https://github.com/containerd/nri/pull/230))

#### Runtime

* Add configured socket directory to shim bootstrap protocol ([#12785](https://github.com/containerd/containerd/pull/12785))
* Introduce shim bootstrap protocol ([#12786](https://github.com/containerd/containerd/pull/12786))
* Fix binary logging driver not blocking container start on failure ([#12595](https://github.com/containerd/containerd/pull/12595))
* Use new filtered cgroups stats API ([#12901](https://github.com/containerd/containerd/pull/12901))
* Update OOMKilled event handling ([#12714](https://github.com/containerd/containerd/pull/12714))

#### Snapshotters

* Propagate parent chain ID and diff ID via labels during snapshot preparation ([#13071](https://github.com/containerd/containerd/pull/13071))

#### ctr development tool

* Detect vendor in CDI specs to generate device IDs for --gpus in ctr ([#12839](https://github.com/containerd/containerd/pull/12839))

#### Breaking

* Accumulate owners for OCI hook adjustments, disallowing commas in plugin names ([containerd/nri#264](https://github.com/containerd/nri/pull/264))

#### Deprecations

* Deprecate shim.Command ([#13319](https://github.com/containerd/containerd/pull/13319))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Maksym Pavlenko
* Derek McGowan
* Sebastiaan van Stijn
* Krisztian Litkey
* Samuel Karp
* Wei Fu
* Akihiro Suda
* Phil Estes
* Mike Brown
* Markus Lehtonen
* Hudson Zhu
* Davanum Srinivas
* Chris Henzie
* Gao Xiang
* Chengyu Zhu
* Akhil Mohan
* Kazuyoshi Kato
* Sergey Kanzhelev
* Austin Vazquez
* ningmingxiao
* Aadhar Agarwal
* Andrew Halaney
* Apurv Barve
* Bing Hongtao
* Brian Goff
* Michael Zappa
* Paweł Gronowski
* Fabiano Fidêncio
* Hasan Siddiqui
* Jintao Zhang
* Paulo Oliveira
* Shiv Tyagi
* Albin Kerouanton
* Alex Lyn
* Avinesh Singh
* Danny Canter
* Esteban Ginez
* Henry Wang
* Jin Dong
* Jérôme Poulin
* Laura Lorenz
* Luke Hinds
* Mark Dodgson
* Sascha Grunert
* Tianon Gravi
* majianhan
* qiuxue
* Adrien Delorme
* Alessio Biancalana
* Alex Chernyakhovsky
* Andrey Noskov
* Andrey Smirnov
* Annie Cherkaev
* Antti Kervinen
* Anuj Singh
* Benjamin Elder
* Bo Jiang
* Cameron McDermott
* Chris Adeniyi-Jones
* Chris Chang
* Chris Henderson
* Cindy Li
* CrazyMax
* Eldon Stegall
* Evan Lezar
* Fletcher Woodruff
* Gaurav Ghildiyal
* Harsh Rawat
* Hayato Kiwata
* Joseph Zhang
* Justin Chadwell
* Kaleab Ayenew
* Manuel de Brito Fontes
* Mikhail Dmitrichenko
* Mujib Ahasan
* Neeraj Krishna Gopalakrishna
* Pierluigi Lenoci
* Ricardo Branco
* Rob Murray
* Rodrigo Campos
* Sameer
* Sameer Saeed
* Sanil Khurana
* Shachar Tal
* Shaobao Feng
* Shiming Zhang
* Sreeram Venkitesh
* Tariq Ibrahim
* Tim Windelschmidt
* Tõnis Tiigi
* Wade Simmons
* Weixie Cui
* Will Jordan
* William Myers
* Yohei Yamamoto
* You Binhao
* Youfu Zhang
* Yuanliang Zhang
* delthas
* guodong
* jinda.ljd
* jokemanfire
* pandaWall

### Dependency Changes

* **cyphar.com/go-pathrs**                                                         v0.2.1 **_new_**
* **github.com/Microsoft/go-winio**                                                v0.6.2 -> ad3df93bed29
* **github.com/Microsoft/hcsshim**                                                 v0.14.0-rc.1 -> v0.15.0-rc.1
* **github.com/cenkalti/backoff/v5**                                               v5.0.3 **_new_**
* **github.com/checkpoint-restore/checkpointctl**                                  v1.4.0 -> v1.5.0
* **github.com/containerd/cgroups/v3**                                             v3.1.0 -> v3.1.3
* **github.com/containerd/containerd/api**                                         v1.10.0 -> v1.11.0
* **github.com/containerd/continuity**                                             v0.4.5 -> v0.5.0
* **github.com/containerd/go-dmverity**                                            v0.1.0 **_new_**
* **github.com/containerd/imgcrypt/v2**                                            v2.0.1 -> v2.0.2
* **github.com/containerd/nri**                                                    v0.10.0 -> v0.12.0
* **github.com/containerd/platforms**                                              v1.0.0-rc.2 -> v1.0.0-rc.4
* **github.com/containerd/plugin**                                                 v1.0.0 -> v1.1.0
* **github.com/containerd/ttrpc**                                                  v1.2.7 -> v1.2.8
* **github.com/containerd/zfs/v2**                                                 v2.0.0-rc.0 -> v2.0.0
* **github.com/containernetworking/plugins**                                       v1.8.0 -> v1.9.1
* **github.com/coreos/go-systemd/v22**                                             v22.6.0 -> v22.7.0
* **github.com/cyphar/filepath-securejoin**                                        v0.6.0 **_new_**
* **github.com/davecgh/go-spew**                                                   v1.1.1 -> d8f796af33cc
* **github.com/erofs/go-erofs**                                                    v0.3.0 **_new_**
* **github.com/go-jose/go-jose/v4**                                                v4.1.2 -> v4.1.4
* **github.com/grpc-ecosystem/grpc-gateway/v2**                                    v2.26.1 -> v2.28.0
* **github.com/intel/goresctrl**                                                   v0.10.0 -> v0.12.0
* **github.com/klauspost/compress**                                                v1.18.1 -> v1.18.5
* **github.com/moby/spdystream**                                                   v0.5.0 -> v0.5.1
* **github.com/opencontainers/runtime-spec**                                       v1.2.1 -> v1.3.0
* **github.com/opencontainers/runtime-tools**                                      0ea5ed0382a2 -> edf4cb3d2116
* **github.com/opencontainers/selinux**                                            v1.12.0 -> v1.13.1
* **github.com/pelletier/go-toml/v2**                                              v2.2.4 -> v2.3.0
* **github.com/pmezard/go-difflib**                                                v1.0.0 -> 5d4384ee4fb2
* **github.com/prometheus/common**                                                 v0.66.1 -> v0.67.5
* **github.com/prometheus/procfs**                                                 v0.16.1 -> v0.19.2
* **github.com/sirupsen/logrus**                                                   v1.9.3 -> v1.9.4
* **github.com/tetratelabs/wazero**                                                v1.9.0 -> v1.11.0
* **go.opentelemetry.io/auto/sdk**                                                 v1.1.0 -> v1.2.1
* **go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc**  v0.60.0 -> v0.68.0
* **go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp**                v0.60.0 -> v0.68.0
* **go.opentelemetry.io/otel**                                                     v1.37.0 -> v1.43.0
* **go.opentelemetry.io/otel/exporters/otlp/otlptrace**                            v1.35.0 -> v1.43.0
* **go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc**              v1.35.0 -> v1.43.0
* **go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp**              v1.35.0 -> v1.43.0
* **go.opentelemetry.io/otel/metric**                                              v1.37.0 -> v1.43.0
* **go.opentelemetry.io/otel/sdk**                                                 v1.37.0 -> v1.43.0
* **go.opentelemetry.io/otel/trace**                                               v1.37.0 -> v1.43.0
* **go.opentelemetry.io/proto/otlp**                                               v1.5.0 -> v1.10.0
* **go.yaml.in/yaml/v2**                                                           v2.4.2 -> v2.4.3
* **golang.org/x/crypto**                                                          v0.41.0 -> v0.49.0
* **golang.org/x/mod**                                                             v0.29.0 -> v0.35.0
* **golang.org/x/net**                                                             v0.43.0 -> v0.52.0
* **golang.org/x/oauth2**                                                          v0.30.0 -> v0.35.0
* **golang.org/x/sync**                                                            v0.17.0 -> v0.20.0
* **golang.org/x/sys**                                                             v0.37.0 -> v0.43.0
* **golang.org/x/term**                                                            v0.34.0 -> v0.41.0
* **golang.org/x/text**                                                            v0.28.0 -> v0.35.0
* **golang.org/x/time**                                                            v0.14.0 -> v0.15.0
* **google.golang.org/genproto/googleapis/api**                                    a7a43d27e69b -> 9d38bb4040a9
* **google.golang.org/genproto/googleapis/rpc**                                    a7a43d27e69b -> 6f92a3bedf2d
* **google.golang.org/grpc**                                                       v1.76.0 -> v1.80.0
* **google.golang.org/protobuf**                                                   v1.36.10 -> f2248ac996af
* **k8s.io/api**                                                                   v0.34.1 -> v0.36.0
* **k8s.io/apimachinery**                                                          v0.34.1 -> v0.36.0
* **k8s.io/client-go**                                                             v0.34.1 -> v0.36.0
* **k8s.io/component-base**                                                        v0.36.0 **_new_**
* **k8s.io/cri-api**                                                               v0.34.1 -> v0.36.0
* **k8s.io/cri-client**                                                            v0.36.0 **_new_**
* **k8s.io/cri-streaming**                                                         v0.36.0 **_new_**
* **k8s.io/klog/v2**                                                               v2.130.1 -> v2.140.0
* **k8s.io/kube-openapi**                                                          5883c5ee87b9 **_new_**
* **k8s.io/streaming**                                                             v0.36.0 **_new_**
* **k8s.io/utils**                                                                 4c0f3b243397 -> 28399d86e0b5
* **sigs.k8s.io/json**                                                             cfa47c3a1cc8 -> 2d320260d730
* **sigs.k8s.io/structured-merge-diff/v6**                                         v6.3.0 -> v6.3.2
* **tags.cncf.io/container-device-interface**                                      v1.0.1 -> v1.1.0
* **tags.cncf.io/container-device-interface/specs-go**                             v1.0.0 -> v1.1.0

Previous release can be found at [v2.2.0](https://github.com/containerd/containerd/releases/tag/v2.2.0)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.35 (Ubuntu 22.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on Linux distributions that do not use glibc >= 2.35. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
