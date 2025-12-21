来源: https://github.com/containerd/containerd/releases/tag/v2.2.1

# containerd/containerd v2.2.1 Release Notes

Published at: 2025-12-18T17:37:28Z

Welcome to the v2.2.1 release of containerd!

The first patch release for containerd 2.2 contains various fixes and improvements.

### Highlights

#### Container Runtime Interface (CRI)

* **Redact all query parameters in CRI error logs** ([#12546](https://github.com/containerd/containerd/pull/12546))

#### Image Distribution

* **Fix image defaults on Darwin to usable configuration** ([#12544](https://github.com/containerd/containerd/pull/12544))
* **Fix possible panic from WithMediaTypeKeyPrefix** ([#12516](https://github.com/containerd/containerd/pull/12516))

#### Runtime

* **Update runc binary to v1.3.4** ([#12593](https://github.com/containerd/containerd/pull/12593))
* **Fix parsing of hugetlb.<size>.events files** ([containerd/cgroups#379](https://github.com/containerd/cgroups/pull/379))

Please try out the release binaries and report any issues at
https://github.com/containerd/containerd/issues.

### Contributors

* Krisztian Litkey
* Markus Lehtonen
* Akihiro Suda
* Mike Brown
* Sebastiaan van Stijn
* Derek McGowan
* Heran Yang
* Wei Fu
* Phil Estes
* Samuel Karp
* Austin Vazquez
* Sascha Grunert
* Akhil Mohan
* Andrey Noskov
* Brian Goff
* CrazyMax
* Davanum Srinivas
* Gaurav Ghildiyal
* Neeraj Krishna Gopalakrishna
* Paweł Gronowski
* Tariq Ibrahim
* TomerLev
* Tõnis Tiigi
* bo.jiang
* ningmingxiao

### Changes
<details><summary>53 commits</summary>
<p>

* Prepare release notes for v2.2.1 ([#12677](https://github.com/containerd/containerd/pull/12677))
  * [`f6bae1f88`](https://github.com/containerd/containerd/commit/f6bae1f8807a099a0b101e584f1f8aabddab91a6) Prepare release notes for v2.2.1
* cri,nri: bump NRI dependencies to v0.11.0 ([#12701](https://github.com/containerd/containerd/pull/12701))
  * [`c22cf5d49`](https://github.com/containerd/containerd/commit/c22cf5d49819a2996f184db954c53c2060916314) cri,nri: pass any linux security profile to plugins.
  * [`d7532de75`](https://github.com/containerd/containerd/commit/d7532de751f81eee4f03001bb46e49d76a1607fb) cri,nri: pass any linux RDT constraints to plugins.
  * [`ef36e6181`](https://github.com/containerd/containerd/commit/ef36e6181456ebb9919d2a51d786f416f85f780b) cri,nri: pass any linux net devices to plugins.
  * [`d56faf426`](https://github.com/containerd/containerd/commit/d56faf4261b5f946caa92c4869963f89f63a9b22) cri,nri: pass any linux scheduler attributes to plugins.
  * [`e1824d261`](https://github.com/containerd/containerd/commit/e1824d2613d32793cf1fd7282f0b9f5f6f622613) cri,nri: pass any linux I/O priority to plugins.
  * [`01d5490ae`](https://github.com/containerd/containerd/commit/01d5490ae26a05b1a73ca9e253761005c7286754) go.{mod,sum}: bump NRI deps to v0.11.0, re-vendor.
* pkg/tracing: HTTPStatusCodeAttributes: remove use of deprecated SemConv const ([#12697](https://github.com/containerd/containerd/pull/12697))
  * [`58d23ab63`](https://github.com/containerd/containerd/commit/58d23ab63830dc41d7c2e1035a9c0a7a28b6fed2) pkg/tracing: HTTPStatusCodeAttributes: remove use of deprecated SemConv const
* cri/nri: short-circuit nil adjustment. ([#12672](https://github.com/containerd/containerd/pull/12672))
  * [`05ccbb3a7`](https://github.com/containerd/containerd/commit/05ccbb3a7eb10a72427c722155a2eacdc2908a61) cri/nri: short-circuit nil adjustment.
* go.{mod,sum}: bump CDI deps to v1.1.0. ([#12664](https://github.com/containerd/containerd/pull/12664))
  * [`c166a577d`](https://github.com/containerd/containerd/commit/c166a577d0638de704d6c9f999858ed47cf06a60) go.{mod,sum} bump CDI deps to v1.1.0.
* go.mod: containerd/zfs v2.0.0; remove exclude rules ([#12654](https://github.com/containerd/containerd/pull/12654))
  * [`73a08aa00`](https://github.com/containerd/containerd/commit/73a08aa00dc98a0662a40d45ed50dac534dce1e6) go.mod: remove exclude rules
  * [`cee08c8af`](https://github.com/containerd/containerd/commit/cee08c8af836002863b30e2ef8cd3c45b6ae56ad) build(deps): bump github.com/containerd/zfs/v2 from 2.0.0-rc.0 to 2.0.0
* go.mod: github.com/containernetworking/plugins v1.9.0 ([#12658](https://github.com/containerd/containerd/pull/12658))
  * [`8a5fc8641`](https://github.com/containerd/containerd/commit/8a5fc86416926d2a2189861391cd77b07d7f4443) go.mod: github.com/containernetworking/plugins v1.9.0
* go.mod: golang.org/x/crypto v0.45.0 ([#12638](https://github.com/containerd/containerd/pull/12638))
  * [`55c93d6fb`](https://github.com/containerd/containerd/commit/55c93d6fb85333d4988122b2ae97b947bcde02b7) go.mod: golang.org/x/crypto v0.45.0
* ci :bump Go 1.24.11, 1.25.5 ([#12625](https://github.com/containerd/containerd/pull/12625))
  * [`aedd29bb4`](https://github.com/containerd/containerd/commit/aedd29bb4ecabfae1d8806dc1011a347a3401fb2) ci: bump Go 1.24.11, 1.25.5
  * [`26628f139`](https://github.com/containerd/containerd/commit/26628f1397f991a9ee2fe7de32a6a2df70ab89bd) ci: bump Go 1.24.10, 1.25.4
  * [`8bb0e9be6`](https://github.com/containerd/containerd/commit/8bb0e9be6ceebc1ad1d76c88a661bacf84921b3d) ci(release): set GO_VERSION in Dockerfile
* core/runtime/v2: remove uses of otelgrpc.UnaryClientInterceptor ([#12622](https://github.com/containerd/containerd/pull/12622))
  * [`ed19c5420`](https://github.com/containerd/containerd/commit/ed19c542003cc00988760b0f72e487c20dc198a0) core/runtime/v2: remove uses of otelgrpc.UnaryClientInterceptor
* ci: update CIFuzz actions to support Ubuntu 24.04 ([#12632](https://github.com/containerd/containerd/pull/12632))
  * [`952237d9b`](https://github.com/containerd/containerd/commit/952237d9ba4390f4fa740f3832492e3870f0f9f9) ci: update CIFuzz actions to support Ubuntu 24.04
* Update runc binary to v1.3.4 ([#12593](https://github.com/containerd/containerd/pull/12593))
  * [`fb5b818a9`](https://github.com/containerd/containerd/commit/fb5b818a9a34ad4fe3b0901c73cd7432ae4bb8bc) runc: Update runc binary to v1.3.4
* : update containerd/cgroups from v3.1.0 to v3.1.2 ([#12598](https://github.com/containerd/containerd/pull/12598))
  * [`51582ed27`](https://github.com/containerd/containerd/commit/51582ed27b13941f6bbf1526d909a00deadfcc0f) bump containerd/cgroups to v3.1.2
  * [`50d0e4fd4`](https://github.com/containerd/containerd/commit/50d0e4fd4cb909829d9965d9da5be04ee812fe29) build(deps): bump github.com/containerd/cgroups/v3 from 3.1.0 to 3.1.1
* core/mount: should not call removeLoop when set autoclear ([#12587](https://github.com/containerd/containerd/pull/12587))
  * [`41a69eb0d`](https://github.com/containerd/containerd/commit/41a69eb0d19cafbf40e03c36ef6be259a52d6f5e) core/mount: should not call removeLoop when set autoclear
* build(deps): bump github.com/opencontainers/selinux ([#12589](https://github.com/containerd/containerd/pull/12589))
  * [`e3bf2b80b`](https://github.com/containerd/containerd/commit/e3bf2b80b9ca3280fd64a2bd0436fcdb894c4410) build(deps): bump github.com/opencontainers/selinux
* .github: skip 5 critest cases for window-2022 ([#12584](https://github.com/containerd/containerd/pull/12584))
  * [`da8e846f9`](https://github.com/containerd/containerd/commit/da8e846f97a081f580eccc4a7384f3f050dd5b5e) .github: skip 5 critest cases in window CI pipeline
* Fix image defaults on Darwin to usable configuration ([#12544](https://github.com/containerd/containerd/pull/12544))
  * [`d154e234b`](https://github.com/containerd/containerd/commit/d154e234b29c5bed4f14a72d605e92e4728415a2) Update the ctr pull defaults when using the transfer service
  * [`09364216d`](https://github.com/containerd/containerd/commit/09364216de92aab056118507da59fabf642d88ac) Fix transfer unpack defaults on darwin
  * [`2055d3c62`](https://github.com/containerd/containerd/commit/2055d3c62e85350642c4b031c35a63b22e2ec6f7) Update default differs on darwin
  * [`9da97686d`](https://github.com/containerd/containerd/commit/9da97686d151da046d5512bb9f7f1d67ea4c8393) Use default writable size in erofs snapshotter for non-Linux hosts
  * [`eeb0f889a`](https://github.com/containerd/containerd/commit/eeb0f889aed826b58a3033a5a5b14dff6ccd1979) Update default erofs block size on macOS during erofs diff
* Redact all query parameters in CRI error logs ([#12546](https://github.com/containerd/containerd/pull/12546))
  * [`c707f771a`](https://github.com/containerd/containerd/commit/c707f771a872f9dd22ad8f2f827317a800e4a74f) fix: redact all query parameters in CRI error logs
* Revert "Implement io.ReaderAt on docker fetch reader" ([#12542](https://github.com/containerd/containerd/pull/12542))
  * [`678f944dd`](https://github.com/containerd/containerd/commit/678f944dd16601d08ecbb19e350acc027728b656) Revert "Implement io.ReaderAt on docker fetch reader"
* Fix possible panic from WithMediaTypeKeyPrefix ([#12516](https://github.com/containerd/containerd/pull/12516))
  * [`8b73c2de3`](https://github.com/containerd/containerd/commit/8b73c2de310e95fe3a143473b511fcf99d03692f) remotes: fix possible panic from WithMediaTypeKeyPrefix
</p>
</details>

### Changes from containerd/cgroups
<details><summary>13 commits</summary>
<p>

* ci: bump golangci-lint to v2.6.2 ([containerd/cgroups#382](https://github.com/containerd/cgroups/pull/382))
  * [`a302e56`](https://github.com/containerd/cgroups/commit/a302e56b258f818a3dacb6e282907904f17ea239) ci: bump golangci-lint to v2.6.2
  * [`731cf7a`](https://github.com/containerd/cgroups/commit/731cf7a96296e8eccffe9b986aece85ec4ab9b5b) ci: suppress errcheck
  * [`9bee663`](https://github.com/containerd/cgroups/commit/9bee663879fd7f5b873fa40f61a837309c4be8b0) utils: move Close() to defer block
  * [`9d7647c`](https://github.com/containerd/cgroups/commit/9d7647ce3bae2f67cc4ecfe1df51796caba49d52) rdma: use strings.Cut in Go 1.18
  * [`109f063`](https://github.com/containerd/cgroups/commit/109f063d1c6cefbc3def1a8e0a169b746f7f5f0a) memory_test: apply De Morgan's law
  * [`e6fcf3f`](https://github.com/containerd/cgroups/commit/e6fcf3fda4200609bb6323428e2d1f24f712e62e) memory_test: omit type from declaration
* build(deps): bump actions/checkout from 5 to 6 ([containerd/cgroups#381](https://github.com/containerd/cgroups/pull/381))
  * [`4e30098`](https://github.com/containerd/cgroups/commit/4e3009894821335455c4b804600eb9667b818f81) build(deps): bump actions/checkout from 5 to 6
* Fix parsing of hugetlb.<size>.events files ([containerd/cgroups#379](https://github.com/containerd/cgroups/pull/379))
  * [`2ad7a12`](https://github.com/containerd/cgroups/commit/2ad7a1241827ef1bc4f964fe8a5248b073f2db82) hugetlb: correctly parse hugetlb.<size>.events files
* go.mod: github.com/opencontainers/runtime-spec v1.3.0 ([containerd/cgroups#376](https://github.com/containerd/cgroups/pull/376))
  * [`34ef430`](https://github.com/containerd/cgroups/commit/34ef430d727e569c31b4f2bbc7d83bffeb1c0165) go.mod: github.com/opencontainers/runtime-spec v1.3.0
</p>
</details>

### Changes from containerd/nri
<details><summary>79 commits</summary>
<p>

* adaptation: allow compiling out WASM support altogether. ([containerd/nri#253](https://github.com/containerd/nri/pull/253))
  * [`ab88fe6`](https://github.com/containerd/nri/commit/ab88fe680c11b35234c38c7d4eac72335721c78d) adaptation: allow compiling out WASM support altogether.
* Support direct editing of the intelRdt config ([containerd/nri#215](https://github.com/containerd/nri/pull/215))
  * [`8c0c9f6`](https://github.com/containerd/nri/commit/8c0c9f67a905fb24682239a4d6d94b0dd52c13e7) Implement removal of RDT
  * [`dfbae8a`](https://github.com/containerd/nri/commit/dfbae8a616b80037798e3cfb8315d70f3f2eff7e) plugins: add sample rdt plugin
  * [`d05dd81`](https://github.com/containerd/nri/commit/d05dd818ed26c3dbeae0fce88289387b62e4665c) pkg/adaptation: support new RDT fields
  * [`725289b`](https://github.com/containerd/nri/commit/725289b256878de8e965327ab6e70dc883ea771b) pkg/runtime-tools/generate: support new RDT fields
  * [`a7832a2`](https://github.com/containerd/nri/commit/a7832a241411573e03982490197d7eb98a1c9d29) api: add rdt
* update wazero/wazero version to v1.10.1 ([containerd/nri#252](https://github.com/containerd/nri/pull/252))
  * [`9eb9a0f`](https://github.com/containerd/nri/commit/9eb9a0f0f6e223e6060805b55957f117f159f5cc) update tetratelabs/wazero version to v1.10.1
* support specifying a custom NRI socket path ([containerd/nri#249](https://github.com/containerd/nri/pull/249))
  * [`2df6565`](https://github.com/containerd/nri/commit/2df656516e73b31e013257f713a1df5baa7fdcb0) [plugins] support specifying a custom NRI socket path
* pkg/api: add OptionalRepeatedString type ([containerd/nri#212](https://github.com/containerd/nri/pull/212))
  * [`687c1a6`](https://github.com/containerd/nri/commit/687c1a6a8b5c75056acd176dc89c45251926d0bb) pkg/api: add OptionalRepeatedString type
* api,adaptation,generate: allow setting kernel scheduling policy attributes. ([containerd/nri#160](https://github.com/containerd/nri/pull/160))
  * [`6a371ac`](https://github.com/containerd/nri/commit/6a371ac5e7afcd185ee575828f4822d779f0ded9) device-injector: add scheduling policy adjustment.
  * [`e06369e`](https://github.com/containerd/nri/commit/e06369e8d1cad80f12eaf6f2c0da19c7ac78396c) api,adaptation,generate: allow setting scheduler attributes.
* device-injector: always log injection summary. ([containerd/nri#246](https://github.com/containerd/nri/pull/246))
  * [`14cc2e2`](https://github.com/containerd/nri/commit/14cc2e2fb6b9504c5241e3156b24b1055ed4e3ed) device-injector: always log injection summary.
* api,adaptation,generate: allow adjusting linux net devices ([containerd/nri#157](https://github.com/containerd/nri/pull/157))
  * [`5145c92`](https://github.com/containerd/nri/commit/5145c92e7c215ce3969805005ebdb0f37749e68b) device-injector: add network device injection.
  * [`8a03823`](https://github.com/containerd/nri/commit/8a03823fe8afbca00b30f669805c911414c58803) api,adaptation,generate: allow adjusting linux net devices.
* Add support for sysctl adjustment ([containerd/nri#248](https://github.com/containerd/nri/pull/248))
  * [`914fbf3`](https://github.com/containerd/nri/commit/914fbf3faf42da144376c133541c37211d2f9200) default-validator: restrict sysctl adjustment
  * [`a418956`](https://github.com/containerd/nri/commit/a4189560f80f7c02579eec252ae43034bf21cb8a) api: apply sysctl adjustments
  * [`8705f9b`](https://github.com/containerd/nri/commit/8705f9b1eb3107ad8bc422978b0412527e3fd236) api: add sysctl container adjustment
* feat: Make logger a configurable struct member for stub ([containerd/nri#239](https://github.com/containerd/nri/pull/239))
  * [`08a891a`](https://github.com/containerd/nri/commit/08a891a81d90b03b5e5ae14734f5ad74e74c264b) feat: Make logger a configurable struct member for stub
* Drop dependency on opencontainers/runtime-tools ([containerd/nri#247](https://github.com/containerd/nri/pull/247))
  * [`5e5c2be`](https://github.com/containerd/nri/commit/5e5c2be5f57436228f2762e0deb2c4f9873f3e9b) Drop dependency on opencontainers/runtime-tools
* deps: bump runtime-spec to v1.3.0. ([containerd/nri#243](https://github.com/containerd/nri/pull/243))
  * [`29c5811`](https://github.com/containerd/nri/commit/29c581117267cb5d2289ff08902a93ff263caf0e) (v0.1.0) examples: lock NRI, runtime spec deps.
  * [`d812952`](https://github.com/containerd/nri/commit/d8129529588cca090c972aa5e5f7775162af59da) v010-adapter: lock NRI, runtime spec and tools deps.
  * [`7dd7c7f`](https://github.com/containerd/nri/commit/7dd7c7f8b21c08242de41634b12ab2ee71b91000) api,runtime-tools: adjust for runtime-spec v1.3.0.
  * [`5d5d4c4`](https://github.com/containerd/nri/commit/5d5d4c4c877fdef4fe0938e627b11b97234195b8) go.{mod,sum}: update runtime-tools, runtime-spec to v1.3.0.
* adaptation: ensure sync'ed plugins are fully registered in tests. ([containerd/nri#234](https://github.com/containerd/nri/pull/234))
  * [`c840397`](https://github.com/containerd/nri/commit/c84039771e9c2cee68952b4b7cc52cba1909784e) adaptation: ensure sync'ed plugins are fully registered in tests.
* Fix wasm example ([containerd/nri#237](https://github.com/containerd/nri/pull/237))
  * [`44b2861`](https://github.com/containerd/nri/commit/44b2861a26c8e392229cd8b27a20cf689925f176) Fix wasm example
* Makefile: build proto files unconditionally ([containerd/nri#229](https://github.com/containerd/nri/pull/229))
  * [`d99f960`](https://github.com/containerd/nri/commit/d99f96028e5226c004f94a3394be82190980c4bd) Fix dockerized proto build
  * [`9623748`](https://github.com/containerd/nri/commit/9623748f543343bfe6b2312df47a7ed9000d47fe) Makefile: build proto files unconditionally
  * [`25d9391`](https://github.com/containerd/nri/commit/25d9391690a7158d851364ef011e1f56fd607a70) build: ensure we use correct version of protoc and its deps.
* adaptation: test with populated initial resources. ([containerd/nri#231](https://github.com/containerd/nri/pull/231))
  * [`b6b98b5`](https://github.com/containerd/nri/commit/b6b98b56a60df29da312cc1e1e070697dec43583) adaptation: test with populated initial resources.
* Install protoc locally in the source tree ([containerd/nri#232](https://github.com/containerd/nri/pull/232))
  * [`2394daa`](https://github.com/containerd/nri/commit/2394daa45f1c7c0fcf28e9e39895c8b871a7445c) Install protoc locally in the source tree
* plugins/logger: fix default event subscription mask. ([containerd/nri#158](https://github.com/containerd/nri/pull/158))
  * [`33b1db1`](https://github.com/containerd/nri/commit/33b1db1add2e9a603f7c47e1efa95d386f4af560) logger: fix default event subscription mask.
* extract memory and CPU resource helpers ([containerd/nri#210](https://github.com/containerd/nri/pull/210))
  * [`7afb32a`](https://github.com/containerd/nri/commit/7afb32a3a444fd0a24e36988e0906ad35590c672) extract memory and CPU resource helpers
* api: expose container user/group ID to plugins. ([containerd/nri#230](https://github.com/containerd/nri/pull/230))
  * [`22aeb46`](https://github.com/containerd/nri/commit/22aeb467e553bffd7650930b3bc6c28b95a2dee5) docs: update README with container uid/gid info.
  * [`71b0335`](https://github.com/containerd/nri/commit/71b0335fdc262451ab2ff71591f1126c8a036265) api,adaptation: add container uid/gid info.
* contrib: add example for enabling per-container RDT monitoring ([containerd/nri#228](https://github.com/containerd/nri/pull/228))
  * [`91fbf06`](https://github.com/containerd/nri/commit/91fbf06ed654e46629cb7aefb11856953720c9cf) contrib: add example for enabling per-container RDT monitoring
* ci: enable image signing ([containerd/nri#224](https://github.com/containerd/nri/pull/224))
  * [`fb54916`](https://github.com/containerd/nri/commit/fb5491601ca84bf52b70e75d0e99ddc4dfe6a922) ci: enable image signing
* golangci: disable QF1008 from staticcheck linter ([containerd/nri#226](https://github.com/containerd/nri/pull/226))
  * [`0b3b577`](https://github.com/containerd/nri/commit/0b3b5770d1f6845d3a3e52ccb5218f2b3ce1f34e) golangci: disable QF1008 from staticcheck linter
* ci: bump golangci-lint to v2.4 ([containerd/nri#225](https://github.com/containerd/nri/pull/225))
  * [`9787127`](https://github.com/containerd/nri/commit/9787127c0f3e69726b968e12b29dae31e35e250b) Bump golangci-lint to v2.4
  * [`1a50ff5`](https://github.com/containerd/nri/commit/1a50ff585624f01763fd20aafaeaa92aa8b27c46) Add nolint directives
  * [`00fa1a1`](https://github.com/containerd/nri/commit/00fa1a124e605590d3ceea1e687600785ae6518d) Add and fix comments for exported types
  * [`ac21da7`](https://github.com/containerd/nri/commit/ac21da7be8f991a8699cef41acba8783dee5351e) pkg/api/seccomp: add comments for exported functions
  * [`3aff986`](https://github.com/containerd/nri/commit/3aff986af5f8abefda8552edae991608782df46c) pkg/runtime-tools/generate: remove embedded field "Generator"
  * [`c0c4bb6`](https://github.com/containerd/nri/commit/c0c4bb648ae46207f47d5b18bf447f7d5b32e26b) pkg/api/validate: add comments for exported methods
  * [`c0ba9da`](https://github.com/containerd/nri/commit/c0ba9da712934c860a64af54d96b5cfc74672ff5) adaptation/builtin: add comment for exported symbols
* .gitignore: revert hastily reviewed editor-specific addition. ([containerd/nri#221](https://github.com/containerd/nri/pull/221))
  * [`02376f3`](https://github.com/containerd/nri/commit/02376f371c707718144dd509172618c69ce6670c) .gitignore: add comment about global gitignore.
  * [`9336a79`](https://github.com/containerd/nri/commit/9336a7933c666dbe6da09fe3cb46e80b478fb268) Revert "nit: Add .idea folder to gitignore"
* nit: Add .idea folder to gitignore ([containerd/nri#218](https://github.com/containerd/nri/pull/218))
  * [`f578ea2`](https://github.com/containerd/nri/commit/f578ea2804642f2cd59594edc17b59d995289223) nit: Add .idea folder to gitignore
* chore: clean and unify nolint directives ([containerd/nri#217](https://github.com/containerd/nri/pull/217))
  * [`21741b9`](https://github.com/containerd/nri/commit/21741b9ee40d69eb9ee3d5688e45b0b022c32738) chore: clean and unify nolint directives
* Downgrade go to require 1.24.0 ([containerd/nri#214](https://github.com/containerd/nri/pull/214))
  * [`d26e910`](https://github.com/containerd/nri/commit/d26e910702c62126decc6befe835e7315cd738a9) Downgrade go to require 1.24.0
* Add dockerized target for building proto files ([containerd/nri#211](https://github.com/containerd/nri/pull/211))
  * [`13fcc07`](https://github.com/containerd/nri/commit/13fcc0773d23520ff44d54549122ec78c8f1e473) Add dockerized target for building proto files
</p>
</details>

### Changes from containerd/zfs
<details><summary>11 commits</summary>
<p>

* go.mod: update to stable containerd v2.0 ([containerd/zfs#89](https://github.com/containerd/zfs/pull/89))
  * [`f11f891`](https://github.com/containerd/zfs/commit/f11f891ff42b3f8cd6f15d0fb18b2644a002bb85) go.mod: update to stable containerd v2.0
* ci: update actions, test against go1.23, fix linting, and update golangci-lint ([containerd/zfs#88](https://github.com/containerd/zfs/pull/88))
  * [`662ad3c`](https://github.com/containerd/zfs/commit/662ad3cefa596775e20a44a1c6b1037b0a0d539d) gha: update golangci/golangci-lint-action@v9, golangci-lint v2.7
  * [`b0b2584`](https://github.com/containerd/zfs/commit/b0b25847ac875af99d62e9d4f83b2875a2f39df9) remove nolint comments
  * [`7c4274b`](https://github.com/containerd/zfs/commit/7c4274bfa0a0df14d66fabb51269bfdfbf4e0b06) fix error capitalization
  * [`24ce1b9`](https://github.com/containerd/zfs/commit/24ce1b93f0579fe5ecaec4bd55290ff7e2f456db) fix inconsistent receiver name
  * [`c8545c3`](https://github.com/containerd/zfs/commit/c8545c33c3c9f4d881c45a22688be49f4ff1502a) gha: update actions/checkout@v6
  * [`d23ec04`](https://github.com/containerd/zfs/commit/d23ec046338e9a5761083cef373be2bab1551995) gha: update actions/setup-go@v6
  * [`bb45f6e`](https://github.com/containerd/zfs/commit/bb45f6e4d3965616dcaae6eaab9342af0e4c1cad) gha: update containerd/project-checks@v1.2.2
  * [`65bc451`](https://github.com/containerd/zfs/commit/65bc451f6abab9d7133abd7c227be227ad6b1f0d) gha: test against go1.23
</p>
</details>

### Dependency Changes

* **github.com/containerd/cgroups/v3**                  v3.1.0 -> v3.1.2
* **github.com/containerd/nri**                         v0.10.0 -> v0.11.0
* **github.com/containerd/zfs/v2**                      v2.0.0-rc.0 -> v2.0.0
* **github.com/containernetworking/plugins**            v1.8.0 -> v1.9.0
* **github.com/cyphar/filepath-securejoin**             v0.5.1 **_new_**
* **github.com/opencontainers/runtime-spec**            v1.2.1 -> v1.3.0
* **github.com/opencontainers/runtime-tools**           0ea5ed0382a2 -> edf4cb3d2116
* **github.com/opencontainers/selinux**                 v1.12.0 -> v1.13.1
* **github.com/tetratelabs/wazero**                     v1.9.0 -> v1.10.1
* **golang.org/x/crypto**                               v0.41.0 -> v0.45.0
* **golang.org/x/net**                                  v0.43.0 -> v0.47.0
* **golang.org/x/sync**                                 v0.17.0 -> v0.18.0
* **golang.org/x/sys**                                  v0.37.0 -> v0.38.0
* **golang.org/x/term**                                 v0.34.0 -> v0.37.0
* **golang.org/x/text**                                 v0.28.0 -> v0.31.0
* **tags.cncf.io/container-device-interface**           v1.0.1 -> v1.1.0
* **tags.cncf.io/container-device-interface/specs-go**  v1.0.0 -> v1.1.0

Previous release can be found at [v2.2.0](https://github.com/containerd/containerd/releases/tag/v2.2.0)
### Which file should I download?
* `containerd-<VERSION>-<OS>-<ARCH>.tar.gz`:         ✅Recommended. Dynamically linked with glibc 2.35 (Ubuntu 22.04).
* `containerd-static-<VERSION>-<OS>-<ARCH>.tar.gz`:  Statically linked. Expected to be used on Linux distributions that do not use glibc >= 2.35. Not position-independent.

In addition to containerd, typically you will have to install [runc](https://github.com/opencontainers/runc/releases)
and [CNI plugins](https://github.com/containernetworking/plugins/releases) from their official sites too.

See also the [Getting Started](https://github.com/containerd/containerd/blob/main/docs/getting-started.md) documentation.
