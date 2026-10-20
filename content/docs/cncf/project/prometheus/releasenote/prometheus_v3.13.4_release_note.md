来源: https://github.com/prometheus/prometheus/releases/tag/v3.13.4

# prometheus/prometheus v3.13.4 Release Notes

Published at: 2026-10-02T14:46:21Z

- [SECURITY] Bump google.golang.org/grpc to v1.83.1 to fix HTTP/2 DATA frame fragmentation memory exhaustion (GO-2026-6348). #19834
- [SECURITY] UI: Update vulnerable npm dependencies. #19834
- [BUGFIX] Agent: Ignore unknown WAL record types to allow rolling back from newer versions. #19814
- [BUGFIX] Federation: Fix corruption of float native histograms. #19679
- [BUGFIX] Scrape: Fix failing scrapes of protobuf float histograms with zero sample, zero and bucket counts, such as the result of recording `rate(x[1m])` over a constant histogram. #19682
