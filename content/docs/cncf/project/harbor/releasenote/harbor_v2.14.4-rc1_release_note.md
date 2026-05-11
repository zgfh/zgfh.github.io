来源: https://github.com/goharbor/harbor/releases/tag/v2.14.4-rc1

# goharbor/harbor v2.14.4-rc1 Release Notes

Published at: 2026-05-10T03:47:44Z

<!-- Release notes generated using configuration in .github/release.yml at v2.14.4-rc1 -->

## What's Changed
### Component updates ⬆️
* [CHERRY_PICK] fix(session): fix SessionRegenerate save args and lifetime by @chlins in https://github.com/goharbor/harbor/pull/22882
* [CHERRY-PICK] feat(session): prevent background polling from renewing session TTL by @chlins in https://github.com/goharbor/harbor/pull/23098
* (cherry-pick) Fix issue related to scanner API by @stonezdj in https://github.com/goharbor/harbor/pull/23109
* (cherry-pick) Call /v2/auth/token api to get bearer token for dockerhub adapter by @stonezdj in https://github.com/goharbor/harbor/pull/23208
* bump Go to 1.25.9 and use goharbor/photon:5.0 base images by @stonezdj in https://github.com/goharbor/harbor/pull/23204
* Bump up the go.opentelemetry.io/otel/sdk and github.com/go-jose/go-jose package by @stonezdj in https://github.com/goharbor/harbor/pull/23215
* (cherry-pick) Fix the issue distribution instance edit without creden… by @chlins in https://github.com/goharbor/harbor/pull/23220


**Full Changelog**: https://github.com/goharbor/harbor/compare/v2.14.3...v2.14.4-rc1
