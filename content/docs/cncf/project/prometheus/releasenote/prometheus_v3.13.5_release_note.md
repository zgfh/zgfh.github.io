来源: https://github.com/prometheus/prometheus/releases/tag/v3.13.5

# prometheus/prometheus v3.13.5 Release Notes

Published at: 2026-10-21T12:06:36Z

- [SECURITY] Container images: Update CA certificates to distrust "emSign ECC Root CA - G3" and "Comodo AAA Services root" following the compromise of eMudhra intermediate CA private keys.
- [SECURITY] Build with Go 1.26.10 to fix vulnerabilities in `net/http`, `net/textproto`, `crypto/tls` and `html/template`.
- [SECURITY] Bump golang.org/x/net to v0.60.0 to fix HTTP/2 vulnerabilities (GO-2026-6603, GO-2026-6610, GO-2026-6611, GO-2026-6612, GO-2026-6617).
- [SECURITY] Bump OpenTelemetry to v1.45.0 to fix exporter endpoint URLs leaking into info logs (GO-2026-6505).
- [CHANGE] Building Prometheus now requires Go 1.26 or later.
