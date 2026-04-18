来源: https://github.com/prometheus/prometheus/releases/tag/v3.5.2

# prometheus/prometheus v3.5.2 Release Notes

Published at: 2026-04-13T15:17:26Z

This release has a fix for a Stored XSS vulnerability that can be triggered via crafted metric names and label values in Prometheus web UI tooltips and metrics explorer. Thanks to Duc Anh Nguyen from TinyxLab for reporting it.

* [SECURITY] UI: Fix stored XSS via unescaped metric names and labels. CVE-2026-40179. #18507
* [PERF] Regex: Stop calling Simplify. #17908
