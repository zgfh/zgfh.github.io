来源: https://github.com/thanos-io/thanos/releases/tag/v0.40.0

# thanos-io/thanos v0.40.0 Release Notes

Published at: 2025-10-27T11:24:31Z

## [v0.40.0](https://github.com/thanos-io/thanos/tree/release-0.40) - 2025 10 27

### Fixed

- [#8334](https://github.com/thanos-io/thanos/pull/8334) Query: wait for initial endpoint discovery before becoming ready
- [#8486](https://github.com/thanos-io/thanos/pull/8486) Receive: fix exemplar label corruption from Cap'n Proto memory references
- [#8499](https://github.com/thanos-io/thanos/pull/8499) Query: support UTF-8 label names for the `/api/v1/label/:name/values` API.
- [#8336](https://github.com/thanos-io/thanos/pull/8336) store: fix race between lazy index header creation

### Added

- [#8366](https://github.com/thanos-io/thanos/pull/8366) Store: optionally ignore Parquet migrated blocks
- [#8359](https://github.com/thanos-io/thanos/pull/8359) Tools: add `--shipper.upload-compacted` flag for uploading compacted blocks to bucket upload-blocks
- [#8484](https://github.com/thanos-io/thanos/pull/8484) Query: add `/api/v1/status/tsdb` API endpoint.
- [#8454](https://github.com/thanos-io/thanos/pull/8454) Compact: ensure we don't mark blocks for deletion again after just deleting them
- [#8410](https://github.com/thanos-io/thanos/pull/8410) Compact: ignore blocks with deletion mark in partial deletes

### Changed

- [#8370](https://github.com/thanos-io/thanos/pull/8370) Query: announced labelset now reflects relabel-config
- [#8464](https://github.com/thanos-io/thanos/pull/8464) Query: assume that we do not unmark a block for deletion. This solves a race between Thanos Store and Compactor.
- [#8402](https://github.com/thanos-io/thanos/pull/8402) Query/Receive: trim labelsets in String()
- [#8334](https://github.com/thanos-io/thanos/pull/8334) Query: wait for initial endpoint discovery before becoming ready
- [#8401](https://github.com/thanos-io/thanos/pull/8401) block/compact: rework consistency check, make writers only write
- [#8389](https://github.com/thanos-io/thanos/pull/8389) block: bust cache if modified timestamp differs

## New Contributors
* @paul-hsieh made their first contribution in https://github.com/thanos-io/thanos/pull/8321
* @jdgeisler made their first contribution in https://github.com/thanos-io/thanos/pull/8359
* @NickGoog made their first contribution in https://github.com/thanos-io/thanos/pull/8400
* @erikgb made their first contribution in https://github.com/thanos-io/thanos/pull/8427
* @parthivrmenon made their first contribution in https://github.com/thanos-io/thanos/pull/8456
* @dbuchanaRH made their first contribution in https://github.com/thanos-io/thanos/pull/8486

**Full Changelog**: https://github.com/thanos-io/thanos/compare/v0.39.2...v0.40.0