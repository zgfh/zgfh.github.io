来源: https://github.com/prometheus/prometheus/releases/tag/v3.9.0

# prometheus/prometheus v3.9.0 Release Notes

Published at: 2026-01-07T10:23:50Z

## Note for users of Native Histograms

In version 3.9, Native Histograms is no longer experimental, and the feature flag `native-histogram` has no effect.  You must now turn on 
the config setting `scrape_native_histograms` to collect Native Histogram samples from exporters.

## Changelog

- [CHANGE] Native Histograms are no longer experimental! Make the `native-histogram` feature flag a no-op. Use `scrape_native_histograms` config option instead. #17528
- [CHANGE] API: Add maximum limit of 10,000 sets of statistics to TSDB status endpoint. #17647
- [FEATURE] API: Add /api/v1/features for clients to understand which features are supported. #17427
- [FEATURE] Promtool: Add `start_timestamp` field for unit tests. #17636
- [FEATURE] Promtool: Add `--format seriesjson` option to `tsdb dump` to output just series labels in JSON format. #13409
- [FEATURE] Add `--storage.tsdb.delay-compact-file.path` flag for better interoperability with Thanos. #17435
- [FEATURE] UI: Add an option on the query drop-down menu to duplicate that query panel. #17714
- [ENHANCEMENT]: TSDB: add flag `--storage.tsdb.block-reload-interval` to configure TSDB Block Reload Interval. #16728
- [ENHANCEMENT] UI: Add graph option to start the chart's Y axis at zero. #17565
- [ENHANCEMENT] Scraping: Classic protobuf format no longer requires the unit in the metric name. #16834
- [ENHANCEMENT] PromQL, Rules, SD, Scraping: Add native histograms to complement existing summaries. #17374
- [ENHANCEMENT] Notifications: Add a histogram `prometheus_notifications_latency_histogram_seconds` to complement the existing summary. #16637
- [ENHANCEMENT] Remote-write: Add custom scope support for AzureAD authentication. #17483
- [ENHANCEMENT] SD: add a `config` label with job name for most `prometheus_sd_refresh` metrics. #17138
- [ENHANCEMENT] TSDB: New histogram `prometheus_tsdb_sample_ooo_delta`, the distribution of out-of-order samples in seconds. Collected for all samples, accepted or not. #17477
- [ENHANCEMENT] Remote-read: Validate histograms received via remote-read. #17561
- [PERF] TSDB: Small optimizations to postings index. #17439
- [PERF] Scraping: Speed up relabelling of series. #17530
- [PERF] PromQL: Small optimisations in binary operators. #17524, #17519.
- [BUGFIX] UI: PromQL autocomplete now shows the correct type and HELP text for OpenMetrics counters whose samples end in `_total`. #17682
- [BUGFIX] UI: Fixed codemirror-promql incorrectly showing label completion suggestions after the closing curly brace of a vector selector. #17602
- [BUGFIX] UI: Query editor no longer suggests a duration unit if one is already present after a number. #17605
- [BUGFIX] PromQL: Fix some "vector cannot contain metrics with the same labelset" errors when experimental delayed name removal is enabled. #17678
- [BUGFIX] PromQL: Fix possible corruption of PromQL text if the query had an empty `ignoring()` and non-empty grouping. #17643
- [BUGFIX] PromQL: Fix resets/changes to return empty results for anchored selectors when all samples are outside the range. #17479
- [BUGFIX] PromQL: Check more consistently for many-to-one matching in filter binary operators. #17668
- [BUGFIX] PromQL: Fix collision in unary negation with non-overlapping series. #17708
- [BUGFIX] PromQL: Fix collision in label_join and label_replace with non-overlapping series. #17703
- [BUGFIX] PromQL: Fix bug with inconsistent results for queries with OR expression when experimental delayed name removal is enabled. #17161
- [BUGFIX] PromQL: Ensure that `rate`/`increase`/`delta` of histograms results in a gauge histogram. #17608
- [BUGFIX] PromQL: Do not panic while iterating over invalid histograms. #17559
- [BUGFIX] TSDB: Reject chunk files whose encoded chunk length overflows int. #17533
- [BUGFIX] TSDB: Do not panic during resolution reduction of invalid histograms. #17561
- [BUGFIX] Remote-write Receive: Avoid duplicate labels when experimental type-and-unit-label feature is enabled. #17546
- [BUGFIX] OTLP Receiver: Only write metadata to disk when experimental metadata-wal-records feature is enabled. #17472
