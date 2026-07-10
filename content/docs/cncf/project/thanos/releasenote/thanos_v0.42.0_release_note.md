来源: https://github.com/thanos-io/thanos/releases/tag/v0.42.0

# thanos-io/thanos v0.42.0 Release Notes

Published at: 2026-07-08T14:44:35Z

The biggest new things in this release are, I think, Receive component's improvements regarding tenant's lifecycle handling, ability to have per endpoint configuration, and showing fanout information in Thanos Query. Thank you to everyone for your contributions!

### Fixed

- [#8752](https://github.com/thanos-io/thanos/pull/8752): Query: Fix exemplar proxy stripping external label matchers in multi-tier query topologies. In Query A → Query B → Sidecar setups, external label matchers are now preserved when forwarding to downstream Query nodes so they can route to the correct stores.
- [#8726](https://github.com/thanos-io/thanos/pull/8726): *: Bump `thanos-community/grpc-go` fork to fix CVE-2026-33186 (CVSS 9.1), an authorization bypass via malformed `:path` headers that could bypass path-based "deny" rules in `grpc/authz` interceptors.
- [#8714](https://github.com/thanos-io/thanos/pull/8714): Tracing: Fix `tls_config` fields (`ca_file`, `cert_file`, `key_file`) being silently ignored when using the OTLP gRPC exporter. Previously, deployments using a private CA or mTLS client certificates had to work around this via `OTEL_EXPORTER_OTLP_CERTIFICATE` and related environment variables.
- [#8128](https://github.com/thanos-io/thanos/pull/8701): Query-Frontend: Fix panic in `AnalyzesMerge` caused by indexing the wrong slice variable, leading to an out-of-range access when merging more than two query analyses.
- [#8720](https://github.com/thanos-io/thanos/pull/8720): Receive: Fix 503 errors during restarts in some cases.
- [#8762](https://github.com/thanos-io/thanos/pull/8762): Query-Frontend: Fix trace ID missing from slow query logs, regression from #8618.
- [#8799](https://github.com/thanos-io/thanos/pull/8799): *: Set a `KeepaliveEnforcementPolicy` with `MinTime: 10s` on all gRPC servers, matching the client keepalive interval.
- [#8806](https://github.com/thanos-io/thanos/pull/8806): Receive: Validate tenant IDs extracted from split-tenant labels to prevent path traversal.
- [#8810](https://github.com/thanos-io/thanos/pull/8810): Ruler: correctly pass query partial response for gRPC.

### Added

- [#8691](https://github.com/thanos-io/thanos/pull/8844): Cache: add redis key prefix support
- [#8691](https://github.com/thanos-io/thanos/pull/8819): query/ui: show fanout information
- [#8691](https://github.com/thanos-io/thanos/pull/8691): Compactor: remove the directory marker objects for some s3 compatible object stores
- [#8730](https://github.com/thanos-io/thanos/pull/8730): *: add `--grpc-server-tls-ciphers` to configure cipher suites for gRPC servers.
- [#8730](https://github.com/thanos-io/thanos/pull/8730): Receive: add `--remote-write.server-tls-ciphers` to configure cipher suites for the HTTP server.
- [#8770](https://github.com/thanos-io/thanos/pull/8770): *: add `--grpc-server-tls-curves` to configure curves for gRPC servers.
- [#8770](https://github.com/thanos-io/thanos/pull/8770): Receive: add `--remote-write.server-tls-curves` to configure curves for the HTTP server.
- [#8808](https://github.com/thanos-io/thanos/pull/8808): ruler, sidecar: Add TSDB stats endpoint to gRPC server.
- [#8797](https://github.com/thanos-io/thanos/pull/8797): Receive, Compact, Sidecar: Use `os.Root` API to confine filesystem access to the service data directory.
- [#8594](https://github.com/thanos-io/thanos/pull/8594): Query: Support per endpoint TLS configuration.

### Changed

- [#8670](https://github.com/thanos-io/thanos/pull/8670): Receive: *breaking :warning:* removed `--shipper.ignore-unequal-block-size`. TSDB now delays compaction until blocks have been uploaded by the shipper, allowing compaction while uploading without risking data loss.
- [#8802](https://github.com/thanos-io/thanos/pull/8802): Cache: add `SendToReplicas` option while initializing Rueidis client to allow sending read-only requests to Redis replica instances.
- [#8839](https://github.com/thanos-io/thanos/pull/8839): Store: *breaking :warning:* removed `--debug.advertise-compatibility-label`. Stores now don't advertise `@thanos_compatibility_store_type=store` external label by default, breaking compatibility with Thanos Query before v0.8.0.
- [#8831](https://github.com/thanos-io/thanos/pull/8830): Query-Frontend: change `time_taken` field to `time_taken_ms` for consistent JSON output for easier parsing by the log collector.
- [#8853](https://github.com/thanos-io/thanos/pull/8853): Compactor: remove labels specified as dedup replica labels in hashmod calculation; this fixes a footgun that users could inadvertently hit.
- [#8796](https://github.com/thanos-io/thanos/pull/8796): queryfrontend: add other params to key

### Removed