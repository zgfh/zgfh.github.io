来源: https://github.com/goharbor/harbor/releases/tag/v2.13.6

# goharbor/harbor v2.13.6 Release Notes

Published at: 2026-10-06T15:48:37Z

<!-- Release notes generated using configuration in .github/release.yml at v2.13.6 -->

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

### Other Changes
* fix: pin redis 7.2.11 instead of 7.2.6 in the redis base image by @bupd in https://github.com/goharbor/harbor/pull/24066


**Full Changelog**: https://github.com/goharbor/harbor/compare/v2.13.5...v2.13.6
