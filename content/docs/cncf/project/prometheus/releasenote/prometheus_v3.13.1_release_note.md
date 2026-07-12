来源: https://github.com/prometheus/prometheus/releases/tag/v3.13.1

# prometheus/prometheus v3.13.1 Release Notes

Published at: 2026-07-10T10:34:15Z

This is a bugfix release for 3.13 LTS.

- [BUGFIX] TSDB: Fix the head-chunk cache returning samples from the wrong chunk, or spurious not-found errors, to range queries after head-chunk truncation. #19134
