来源: https://github.com/prometheus/prometheus/releases/tag/v3.4.0

# prometheus/prometheus v3.4.0 Release Notes

Published at: 2025-05-17T07:28:51Z

* [CHANGE] Config: Make setting out-of-order native histograms feature (`--enable-feature=ooo-native-histograms`) a no-op. Out-of-order native histograms are now always enabled when `out_of_order_time_window` is greater than zero and `--enable-feature=native-histograms` is set. #16207
* [FEATURE] OTLP translate: Add feature flag for optionally translating OTel explicit bucket histograms into native histograms with custom buckets. #15850
* [FEATURE] OTLP translate: Add option to receive OTLP metrics without translating names or attributes. #16441
* [FEATURE] PromQL: allow arithmetic operations in durations in PromQL parser. #16249
* [FEATURE] OTLP receiver: Add primitive support for ingesting OTLP delta metrics as-is. #16360
* [ENHANCEMENT] PromQL: histogram_fraction for bucket histograms. #16095
* [ENHANCEMENT] TSDB: add `prometheus_tsdb_wal_replay_unknown_refs_total` and `prometheus_tsdb_wbl_replay_unknown_refs_total` metrics to track unknown series references during WAL/WBL replay. #16166
* [ENHANCEMENT] Scraping: Add config option for escaping scheme request. #16066
* [ENHANCEMENT] Config: Add global config option for convert_classic_histograms_to_nhcb. #16226
* [ENHANCEMENT] Alerting: make batch size configurable (`--alertmanager.notification-batch-size`). #16254
* [PERF] Kubernetes SD: make endpointSlice discovery more efficient. #16433
* [BUGFIX] Config: Fix auto-reload on changes to rule and scrape config files. #16340
* [BUGFIX] Scraping: Skip native histogram series if ingestion is disabled. #16218
* [BUGFIX] TSDB: Handle metadata/tombstones/exemplars for duplicate series during WAL replay. #16231
* [BUGFIX] TSDB: Avoid processing exemplars outside the valid time range during WAL replay. #16242
* [BUGFIX] Promtool: Add feature flags for PromQL features. #16443
* [BUGFIX] Rules: correct logging of alert name & template data. #15093
* [BUGFIX] PromQL: Use arithmetic mean for `histogram_stddev()` and `histogram_stdvar()` . #16444
