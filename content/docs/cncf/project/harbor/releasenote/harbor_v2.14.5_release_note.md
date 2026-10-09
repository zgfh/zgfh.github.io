来源: https://github.com/goharbor/harbor/releases/tag/v2.14.5

# goharbor/harbor v2.14.5 Release Notes

Published at: 2026-10-06T15:47:31Z

<!-- Release notes generated using configuration in .github/release.yml at v2.14.5 -->

> [!WARNING]
> **Breaking change: webhooks to internal addresses are blocked by default**
>
> The fix for [GHSA-2phj-cp9f-qq6w](https://github.com/goharbor/harbor/security/advisories/GHSA-2phj-cp9f-qq6w) blocks webhook and Slack delivery to private, loopback, link-local and other non-public addresses. That includes hostnames that resolve to them, such as `*.svc.cluster.local`. After you upgrade, existing webhooks to internal endpoints fail to deliver, and new ones are rejected.
>
> To allow them again, set the opt-out on **both core and jobservice**:
> - `harbor.yml`: `network.allow_private_network_access: true`, then `./prepare` and restart
> - Helm: add `{name: HARBOR_ALLOW_PRIVATE_NETWORK_ACCESS, value: "true"}` to both `core.extraEnvVars` and `jobservice.extraEnvVars`
>
> This disables the protection entirely. Only use it if you trust all project admins, and block `169.254.169.254` at the network level.

> [!WARNING]
> **Breaking change: signing unsigned images fails when content trust is enforced**
>
> The fix for [GHSA-wrw5-gmvj-gf23](https://github.com/goharbor/harbor/security/advisories/GHSA-wrw5-gmvj-gf23) removes the User-Agent based exemption that let `cosign` and `notation` pull unsigned images. In projects that only allow signed images, `cosign sign` and `notation sign` on a new, unsigned image now fail with `412 Precondition Failed`. Images that already have a signature are not affected.
>
> To allow signing clients again, set `CONTENT_TRUST_LEGACY_SIGNER_PULL_ENABLED=true` on **core**. The value must be exactly `true`.
> - Helm: add it to `core.extraEnvVars`
> - `harbor.yml` installs: there is no `harbor.yml` option. Add it to `common/config/core/env` and restart. Re-running `./prepare` overwrites that file.
>
> The exemption still trusts the client's User-Agent, but only for users or robots with push permission on the project. Projects that block vulnerable images have no opt-out: a signing client can no longer pull an image that the vulnerability policy blocks.

> [!WARNING]
> **Known Issue: Push Replication Fails for Specific Registries such as AWS ECR (GHSA-wjpm-hv5w-gxr6 Regression)**
>
> The security fix for GHSA-wjpm-hv5w-gxr6 strictly validated upload Location headers against the statically configured registry endpoint (c.url). Because the AWS ECR adapter configures the API control-plane endpoint (https://api.ecr.<region>.amazonaws.com) while requests are rewritten to the data-plane host (<account>.dkr.ecr.<region>.amazonaws.com), ECR's response Location header is rejected as a cross-origin target.
>
>Workaround / Resolution:
>
> A fix has been provided in PR [#24113](https://github.com/goharbor/harbor/pull/24113) and will be released in the upcoming patch release.
> If your environment depends on push replication, we recommend postponing the upgrade until the next patch release or applying the patch directly.

## What's Changed
### Security Advisories 🔒
* (high): Path traversal vulnerability in distribution endpoints [GHSA-qj39-pjf2-wmrc](https://github.com/goharbor/harbor/security/advisories/GHSA-qj39-pjf2-wmrc) in [`a82c5528f`](https://github.com/goharbor/harbor/commit/a82c5528f1e939a78f2ce9acab9ecd03ee90b98f)
* (high): A system robot with user:update makes itself a system administrator [GHSA-w5fq-xrhj-j7g2](https://github.com/goharbor/harbor/security/advisories/GHSA-w5fq-xrhj-j7g2) in [`8896be0ae`](https://github.com/goharbor/harbor/commit/8896be0aed0dbbd2b59d1524b748b4699e823c39)
* (high): Robot "cover all projects" scope collapses into a global wildcard, conferring the deliberately-ungrantable robot:update — enabling cross-project robot takeover with owner lockout [GHSA-xq2m-cj8w-56v5](https://github.com/goharbor/harbor/security/advisories/GHSA-xq2m-cj8w-56v5) in [`7331b58d5`](https://github.com/goharbor/harbor/commit/7331b58d594f245aaf7f70515473aedffff85499)
* (high): External auth-proxy identity named admin inherits Registry system-administrator authorization [GHSA-xvh7-74g6-29xw](https://github.com/goharbor/harbor/security/advisories/GHSA-xvh7-74g6-29xw) in [`13e5a1b97`](https://github.com/goharbor/harbor/commit/13e5a1b979d90d346716c19eefc5f6cfa31dce0e)
* (medium): Immutable tag rule matcher only evaluates first repository/tag selector, allowing multi-selector rules to be bypassed [GHSA-27f2-qg57-2gwg](https://github.com/goharbor/harbor/security/advisories/GHSA-27f2-qg57-2gwg) in [`08c58f3c7`](https://github.com/goharbor/harbor/commit/08c58f3c76bd8e9252996a3cc62dade10d4e3ab4)
* (medium): SSRF in webhook delivery allows ProjectAdmin to reach internal services and cloud metadata endpoints [GHSA-2phj-cp9f-qq6w](https://github.com/goharbor/harbor/security/advisories/GHSA-2phj-cp9f-qq6w) in [`fb476e10c`](https://github.com/goharbor/harbor/commit/fb476e10c9f981bd994011563bef6c5292ec272c)
* (medium): Scanner bearer authorization request disables TLS verification and reads the full response body [GHSA-884q-mjcg-86x4](https://github.com/goharbor/harbor/security/advisories/GHSA-884q-mjcg-86x4) in [`eb1a6fb64`](https://github.com/goharbor/harbor/commit/eb1a6fb6424d523213eeac1faffd938cc687f2af)
* (medium): Webhook error responses can cause unbounded decompression in Jobservice [GHSA-jw3v-7jvc-pfmx](https://github.com/goharbor/harbor/security/advisories/GHSA-jw3v-7jvc-pfmx) in [`fb476e10c`](https://github.com/goharbor/harbor/commit/fb476e10c9f981bd994011563bef6c5292ec272c)
* (medium): scanner_registration.access_cred is missing filter:"false", giving a project admin a blind oracle over the scanner credential [GHSA-vwvv-675v-p6rr](https://github.com/goharbor/harbor/security/advisories/GHSA-vwvv-675v-p6rr) in [`d2e2312f5`](https://github.com/goharbor/harbor/commit/d2e2312f5735777b37041674bb146bcbd02fc054)
* (medium): Registry chunk upload reuses unvalidated Location headers [GHSA-wjpm-hv5w-gxr6](https://github.com/goharbor/harbor/security/advisories/GHSA-wjpm-hv5w-gxr6) in [`401e73429`](https://github.com/goharbor/harbor/commit/401e7342963c4c406fd103cf2931e8aac95d320d)
* (medium): Vulnerability & Content-Trust pull policies bypassable via attacker-controlled `User-Agent` header [GHSA-wrw5-gmvj-gf23](https://github.com/goharbor/harbor/security/advisories/GHSA-wrw5-gmvj-gf23) in [`9d255ebe1`](https://github.com/goharbor/harbor/commit/9d255ebe1ad3cae00929af2f8100cec566d9ee97)
* (medium): SSRF and credential disclosure via attacker-controlled pagination Link header in the registry replication client [GHSA-xgp2-5vxg-rgh2](https://github.com/goharbor/harbor/security/advisories/GHSA-xgp2-5vxg-rgh2) in [`a01e0c6c5`](https://github.com/goharbor/harbor/commit/a01e0c6c561458fc719a16310d02b928a87e589a)
* (low): Security middleware continues after AuthMode lookup failure [GHSA-3x7c-wf86-mjx6](https://github.com/goharbor/harbor/security/advisories/GHSA-3x7c-wf86-mjx6) in [`bfd319a92`](https://github.com/goharbor/harbor/commit/bfd319a928460e50ad8f0536b5e163cefb24ef5c)

### Component updates ⬆️
* [CHERRY-PICK] Make openapi-generator-cli download URL configurable (#23186) by @chlins in https://github.com/goharbor/harbor/pull/23222
* [cherry-pick] Rebuild goharbor/photon image before create new harbor base images by @jUDASmILE in https://github.com/goharbor/harbor/pull/23252
* [cherry-pick]remove install net-tools from db dockerfile as photon removed it by @jUDASmILE in https://github.com/goharbor/harbor/pull/23268
* [CHERRY-PICK] test(cosign): disable tlog for signing checks by @chlins in https://github.com/goharbor/harbor/pull/23281
* [CHERRY-PICK] fix(cosign): ignore tlog during verification by @chlins in https://github.com/goharbor/harbor/pull/23285
### Other Changes
* [cherry-pick] support configurable PIP_INDEX_URL for swagger client build by @stonezdj in https://github.com/goharbor/harbor/pull/23243
* fix: pin redis 7.2.11 instead of 7.2.6 in the redis base image by @bupd in https://github.com/goharbor/harbor/pull/24065
* fix: stop release-2.14 builds from overwriting goharbor/photon:5.0 by @bupd in https://github.com/goharbor/harbor/pull/24063


**Full Changelog**: https://github.com/goharbor/harbor/compare/v2.14.4...v2.14.5


