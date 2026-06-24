来源: https://github.com/prometheus/prometheus/releases/tag/v3.5.4

# prometheus/prometheus v3.5.4 Release Notes

Published at: 2026-06-17T15:14:04Z

This release fixes multiple security issues.

- [SECURITY] STACKIT SD: Fix secrets being exposed in plaintext via `/-/config` endpoint. Thanks to @August829 and @Phaxma for reporting. GHSA-39j6-789q-qxvh #18650
- [SECURITY] Dependencies: Bump `golang.org/x/net` to v0.55.0 and OpenTelemetry to v1.43.0 to fix reported CVEs (GO-2026-5026, GO-2026-4918, GO-2026-4985). #18934
- [SECURITY] UI: Bump mantine-ui dependencies (`react-router-dom`, `vitest`, `vite`, `postcss`) to their patched versions to resolve security advisories. #18935
- [ENHANCEMENT] Release: Container images are now also published to the GitHub Container Registry (ghcr.io). #18792
