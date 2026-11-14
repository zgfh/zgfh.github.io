来源: https://github.com/prometheus/prometheus/releases/tag/v3.13.3

# prometheus/prometheus v3.13.3 Release Notes

Published at: 2026-09-07T14:18:03Z

- [SECURITY] Bump github.com/klauspost/compress to v1.18.7 (GO-2026-5841) and golang.org/x/crypto to v0.55.0 (GO-2026-6303).
- [BUGFIX] Docker SD: Fix panic in Docker Swarm service discovery when a service runs as a plugin or network-attachment. #19102
- [BUGFIX] PromQL: Fix case-insensitive regex label matchers silently dropping matching values. #19167
- [BUGFIX] Scrape: Fix scrape manager spinning at 100% CPU on shutdown. #19149
- [BUGFIX] Alerting: Fix 100% CPU usage on shutdown that could delay graceful shutdown and trigger timeout-based kills. #17859
- [BUGFIX] TSDB: Fix out-of-order queries blocking compaction for hours, causing memory usage to grow. #19013
- [BUGFIX] TSDB: Fix deleted series causing missing samples and errors after restart. #19140
- [BUGFIX] TSDB: Fix goroutine and file handle leaks when Prometheus fails to open a corrupt TSDB. On Windows, the leaked directory handle also prevented TSDB directory removal. #18291
