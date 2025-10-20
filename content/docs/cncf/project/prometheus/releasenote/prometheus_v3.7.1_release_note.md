来源: https://github.com/prometheus/prometheus/releases/tag/v3.7.1

# prometheus/prometheus v3.7.1 Release Notes

Published at: 2025-10-17T08:40:17Z

* [BUGFIX] OTLP: Prefix `key_` to label name when translating an OTel attribute name starting with a single underscore, and keep multiple consecutive underscores in label name when translating an OTel attribute name. This reverts the breaking changes introduced in 3.7.0. #17344
