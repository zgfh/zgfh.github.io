来源: https://github.com/prometheus/prometheus/releases/tag/v3.8.1

# prometheus/prometheus v3.8.1 Release Notes

Published at: 2025-12-16T09:59:22Z

* [BUGFIX] remote: Fix Remote Write receiver, so it does not send wrong response headers for v1 flow and cause Prometheus senders to emit false partial error log and metrics. #17683
