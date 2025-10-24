来源: https://github.com/prometheus/prometheus/releases/tag/v3.7.2

# prometheus/prometheus v3.7.2 Release Notes

Published at: 2025-10-22T15:59:37Z

* [BUGFIX] AWS SD: Fix AWS SDK v2 credentials handling for EC2 and Lightsail discovery. #17355
* [BUGFIX] AWS SD: Load AWS region from IMDS when not set. #17376
* [BUGFIX] Relabeling: Fix `labelmap` action validation with the legacy metric name validation scheme. #17372
* [BUGFIX] PromQL: Fix parsing failure when `anchored` and `smoothed` are used as metric names and label names. #17353
* [BUGFIX] PromQL: Fix formatting of range vector selectors with `smoothed`/`anchored` modifier. #17354
