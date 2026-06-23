来源: https://github.com/goharbor/harbor/releases/tag/v2.15.2-rc1

# goharbor/harbor v2.15.2-rc1 Release Notes

Published at: 2026-06-17T07:35:43Z

<!-- Release notes generated using configuration in .github/release.yml at v2.15.2-rc1 -->

## What's Changed
### Component updates ⬆️
* [CHERRY-PICK] Make openapi-generator-cli download URL configurable (#23186) by @chlins in https://github.com/goharbor/harbor/pull/23221
* bump Go version from 1.25.9 to 1.26.3 by @stonezdj in https://github.com/goharbor/harbor/pull/23236
* [cherry-pick] Rebuild goharbor/photon image before create new harbor base images by @jUDASmILE in https://github.com/goharbor/harbor/pull/23250
* [cherry-pick]remove install net-tools from db dockerfile as photon removed it by @jUDASmILE in https://github.com/goharbor/harbor/pull/23267
* [CHERRY-PICK] feat: replace redis with valkey as cache backend (#23157) by @chlins in https://github.com/goharbor/harbor/pull/23261
* [CHERRY-PICK] test(cosign): disable tlog for signing checks by @chlins in https://github.com/goharbor/harbor/pull/23280
* [CHERRY-PICK] fix(cosign): ignore tlog during verification by @chlins in https://github.com/goharbor/harbor/pull/23286
* [CHERRY-PICK] fix: Bump repository update_time on tag and artifact changes (#23225) by @chlins in https://github.com/goharbor/harbor/pull/23292
* [CHERRY-PICK] fix(security): validate blob-mount source project and reject tokens missing iat (#23270) by @Vad1mo in https://github.com/goharbor/harbor/pull/23297
* (cherry-pick) Upgrade harbor go.mod OSS packages by @stonezdj in https://github.com/goharbor/harbor/pull/23328
* [cherry-pick] Harden crypto usage and drop unused SMTP package (#23307) by @wy65701436 in https://github.com/goharbor/harbor/pull/23356
* (cherry-pick) Update Makefile PIP_INDEX_URL to use default value if not defined by @stonezdj in https://github.com/goharbor/harbor/pull/23377
* [Backport 2.15.0] test(api_db): support dynamic OpenAPI generator and PyPI URLs via env vars by @fiona-xie in https://github.com/goharbor/harbor/pull/23381
* bump golang to v1.26.4 by @wy65701436 in https://github.com/goharbor/harbor/pull/23382
* (cherry-pick) Upgrade Harbor UI to Angular 21, Clarity v18, and Node.js v22 by @stonezdj in https://github.com/goharbor/harbor/pull/23379
### Bump Component Version 🤖
* bump harbor v2.15.2 by @wy65701436 in https://github.com/goharbor/harbor/pull/23362
* (cherry-pick)Replace gopkg.in/yaml.v2 with github.com/goccy/go-yaml by @stonezdj in https://github.com/goharbor/harbor/pull/23378
* Bump trivy to v0.71.1 and trivy adapter to v0.37.1-rc.1 by @stonezdj in https://github.com/goharbor/harbor/pull/23386
### Other Changes
* [CHERRY-PICK] support configurable PIP_INDEX_URL for swagger client build (#23241) by @stonezdj in https://github.com/goharbor/harbor/pull/23242
* build: use dev-legacy tags to decouple 2.15 builds from main by @wy65701436 in https://github.com/goharbor/harbor/pull/23360
* [Backport 2.15.0] test(UI): fix UI robot test cases for Angular and Clarity Upgrade by @fiona-xie in https://github.com/goharbor/harbor/pull/23380


**Full Changelog**: https://github.com/goharbor/harbor/compare/v2.15.1...v2.15.2-rc1
