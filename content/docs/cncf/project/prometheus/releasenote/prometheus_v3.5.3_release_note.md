来源: https://github.com/prometheus/prometheus/releases/tag/v3.5.3

# prometheus/prometheus v3.5.3 Release Notes

Published at: 2026-04-27T14:55:57Z

This release fixes mutiple security issues.

We would like to thank the following people for the responsible disclosures:
- Shadowbyte (4c1dr3aper) - Charlie Lewis for the Remote-Read snappy decode vulnerability.
- Brett Gervasoni for the AzureAD OAuth `client_secret` vulnerability.
- @iiihaiii and @Ngocnn97 for the Old UI XSS vulnerability. 

---

- [SECURITY] AzureAD remote write: Fix OAuth `client_secret` being exposed in plaintext via `/-/config` endpoint. GHSA-wg65-39gg-5wfj / CVE-2026-42151 #18587
- [SECURITY] Remote-Write: Reject snappy-compressed requests whose declared decoded length exceeds the decode limit. #18591
- [SECURITY] Remote-read: Reject snappy-compressed requests whose declared decoded length exceeds the decode limit. GHSA-8rm2-7qqf-34qm / CVE-2026-42154 #18585
- [SECURITY] UI: Fix stored XSS via unescaped `le` label values in old UI heatmap chart tick labels. GHSA-fw8g-cg8f-9j28 #18589
