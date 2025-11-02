来源: https://github.com/thanos-io/thanos/releases/tag/v0.39.0

# thanos-io/thanos v0.39.0 Release Notes

Published at: 2025-06-25T11:54:06Z

In short: there are a bunch of fixes and small improvements. The shining items in this release are memory usage improvements in Thanos Query and shuffle sharding support in Thanos Receiver. Information about shuffle sharding support is available in the documentation. Thank you to all contributors!

### Added

- [#8308](https://github.com/thanos-io/thanos/pull/8308) Receive: Prometheus counters for pending write requests and series requests
- [#8225](https://github.com/thanos-io/thanos/pull/8225) tools: Extend bucket ls options.
- [#8238](https://github.com/thanos-io/thanos/pull/8238) Receive: add shuffle sharding support
- [#8284](https://github.com/thanos-io/thanos/pull/8284) Store: Add `--disable-admin-operations` Flag to Store Gateway
- [#8245](https://github.com/thanos-io/thanos/pull/8245) Querier/Query-Frontend/Ruler: Add `--enable-feature=promql-experimental-functions` flag option to enable using promQL experimental functions in respective Thanos components
- [#8259](https://github.com/thanos-io/thanos/pull/8259) Shipper: Add `--shipper.skip-corrupted-blocks` flag to allow `Sync()` to continue upload when finding a corrupted block

### Changed

- [#8282](https://github.com/thanos-io/thanos/pull/8282) Force sync writes to meta.json in case of host crash
- [#8192](https://github.com/thanos-io/thanos/pull/8192) Sidecar: fix default get config timeout
- [#8202](https://github.com/thanos-io/thanos/pull/8202) Receive: Unhide `--tsdb.enable-native-histograms` flag
- [#8315](https://github.com/thanos-io/thanos/pull/8315) Query-Frontend: only ready if downstream is ready

### Removed
- [#8289](https://github.com/thanos-io/thanos/pull/8289) Receive: *breaking :warning:* Removed migration of legacy-TSDB to multi-TSDB. Ensure you are running version >0.13

### Fixed
- [#8199](https://github.com/thanos-io/thanos/pull/8199) Query: handle panics or nil pointer dereference in querier gracefully when query analyze returns nil
- [#8211](https://github.com/thanos-io/thanos/pull/8211) Query: fix panic on nested partial response in distributed instant query
- [#8216](https://github.com/thanos-io/thanos/pull/8216) Query/Receive: fix iter race between `next()` and `stop()` introduced in https://github.com/thanos-io/thanos/pull/7821.
- [#8212](https://github.com/thanos-io/thanos/pull/8212) Receive: Ensure forward/replication metrics are incremented in err cases
- [#8296](https://github.com/thanos-io/thanos/pull/8296) Query: limit LazyRetrieval memory buffer size

## New Contributors
* @naohiroo made their first contribution in https://github.com/thanos-io/thanos/pull/8190
* @vCra made their first contribution in https://github.com/thanos-io/thanos/pull/8202
* @yuchen-db made their first contribution in https://github.com/thanos-io/thanos/pull/8216
* @adrmaas made their first contribution in https://github.com/thanos-io/thanos/pull/8210
* @machine424 made their first contribution in https://github.com/thanos-io/thanos/pull/8014
* @dronenb made their first contribution in https://github.com/thanos-io/thanos/pull/8263
* @siavashs made their first contribution in https://github.com/thanos-io/thanos/pull/8268
* @anna-tran made their first contribution in https://github.com/thanos-io/thanos/pull/8282
* @Naman-B-Parlecha made their first contribution in https://github.com/thanos-io/thanos/pull/8266
* @gabyfulchic made their first contribution in https://github.com/thanos-io/thanos/pull/8252
* @GregSharpe1 made their first contribution in https://github.com/thanos-io/thanos/pull/8306
* @hczhu made their first contribution in https://github.com/thanos-io/thanos/pull/8296

**Full Changelog**: https://github.com/thanos-io/thanos/compare/v0.38.0...v0.39.0