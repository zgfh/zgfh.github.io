来源: https://github.com/prometheus/prometheus/releases/tag/v3.7.3

# prometheus/prometheus v3.7.3 Release Notes

Published at: 2025-10-30T08:13:00Z

* [BUGFIX] UI: Revert changed (and breaking) redirect behavior for `-web.external-url` if `-web.route-prefix` is configured, which was introduced in #17240. #17389
* [BUGFIX] Fix federation of some native histograms. #17299 #17409
* [BUGFIX] promtool: `check config` would fail when `--lint=none` flag was set. #17399 #17414
* [BUGFIX] Remote-write: fix a deadlock in the queue resharding logic that can lead to suboptimal queue behavior. #17412
