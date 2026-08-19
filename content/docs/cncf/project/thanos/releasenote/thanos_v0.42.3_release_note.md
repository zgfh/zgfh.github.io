来源: https://github.com/thanos-io/thanos/releases/tag/v0.42.3

# thanos-io/thanos v0.42.3 Release Notes

Published at: 2026-07-29T10:49:11Z

Fixes a small bug - like before now Receive on shutdown creates a new block and uploads it.

### Fixed

- [#8948](https://github.com/thanos-io/thanos/pull/8948): receive: Preserve upload on shutdown behaviour
