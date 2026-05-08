来源: https://github.com/goharbor/harbor/releases/tag/v2.15.1-rc2

# goharbor/harbor v2.15.1-rc2 Release Notes

Published at: 2026-05-06T08:24:03Z

<!-- Release notes generated using configuration in .github/release.yml at v2.15.1-rc2 -->

## What's Changed
### Component updates ⬆️
* (cherry-pick) Fix Last Pull time on parent/child artifacts and on creation by @stonezdj in https://github.com/goharbor/harbor/pull/23022
* (cherry-pick) Add User-Agent to all request by @stonezdj in https://github.com/goharbor/harbor/pull/23054
* (cherry-pick): fix proxy cache serve local on remote not found by @stonezdj in https://github.com/goharbor/harbor/pull/23049
* [cherry-pick] Call /v2/auth/token api to get bearer token for dockerhub adapter by @stonezdj in https://github.com/goharbor/harbor/pull/23096
* [CHERRY-PICK] feat(session): prevent background polling from renewing session TTL by @chlins in https://github.com/goharbor/harbor/pull/23097
* (cherry-pick) Fix issue related to scanner API by @stonezdj in https://github.com/goharbor/harbor/pull/23108
* bump base for v2.15.1 by @wy65701436 in https://github.com/goharbor/harbor/pull/23120
* [CHERRY-PICK] fix(gc): redact redis_url_reg from GC extra attrs (#23134) by @chlins in https://github.com/goharbor/harbor/pull/23141
* (cherry-pick) Fix the issue distribution instance edit without credential can not save by @stonezdj in https://github.com/goharbor/harbor/pull/23166
* Update photon packages to fix CVEs by @stonezdj in https://github.com/goharbor/harbor/pull/23176
* Revert the previous change in Dockerfile.base and change base image to goharbor/photon:5.0 by @stonezdj in https://github.com/goharbor/harbor/pull/23180
### Bump Component Version 🤖
* bump go to 1.25.9 and refresh base images by @stonezdj in https://github.com/goharbor/harbor/pull/23150
* Upgrade go deps go-jose and otel sdk by @stonezdj in https://github.com/goharbor/harbor/pull/23158


**Full Changelog**: https://github.com/goharbor/harbor/compare/v2.15.0...v2.15.1-rc2
