来源: https://github.com/thanos-io/thanos/releases/tag/v0.42.1

# thanos-io/thanos v0.42.1 Release Notes

Published at: 2026-07-16T19:45:28Z

This change fixes a small issue regarding timeouts in the Shipper component in the Receiver - we've accidentally set them too small. Sorry for that!

### Changed

- [#8920](https://github.com/thanos-io/thanos/pull/8920): receive: bump timeouts