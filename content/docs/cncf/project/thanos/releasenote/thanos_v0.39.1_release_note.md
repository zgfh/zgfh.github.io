来源: https://github.com/thanos-io/thanos/releases/tag/v0.39.1

# thanos-io/thanos v0.39.1 Release Notes

Published at: 2025-07-01T13:03:18Z

Fixes a memory leak issue on query-frontend. The bug only affects v0.39.0.

### Fixed

- [#8349](https://github.com/thanos-io/thanos/pull/8349) Query-Frontend: properly clean up resources
- [#8338](https://github.com/thanos-io/thanos/pull/8338) Query-Frontend: use original roundtripper + close immediately

**Full Changelog**: https://github.com/thanos-io/thanos/compare/v0.39.0...v0.39.1