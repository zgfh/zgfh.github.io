来源: https://github.com/coredns/coredns/releases/tag/v1.14.0

# coredns/coredns v1.14.0 Release Notes

Published at: 2026-01-08T01:10:06Z

This release focuses on security hardening and operational reliability. Core updates
introduce a regex length limit to reduce resource-exhaustion risk. Plugin updates
improve error consolidation (`show_first`), reduce misleading SOA warnings, add
Kubernetes API rate limiting, enhance metrics with plugin chain tracking, and fix
issues in azure and sign. This release also includes additional security fixes;
see the security advisory for details.

## Brought to You By

cangming
pasteley
Raisa Kabir
Ross Golder
rusttech
Syed Azeez
Ville Vesilehto
Yong Tang

## Noteworthy Changes

* core: Fix gosec G115 integer overflow warnings (https://github.com/coredns/coredns/pull/7799)
* core: Add regex length limit (https://github.com/coredns/coredns/pull/7802)
* plugin/azure: Fix slice init length (https://github.com/coredns/coredns/pull/6901)
* plugin/errors: Add optional `show_first` flag to consolidate directive (https://github.com/coredns/coredns/pull/7703)
* plugin/file: Fix for misleading SOA parser warnings (https://github.com/coredns/coredns/pull/7774)
* plugin/kubernetes: Rate limits to api server (https://github.com/coredns/coredns/pull/7771)
* plugin/metrics: Implement plugin chain tracking (https://github.com/coredns/coredns/pull/7791)
* plugin/sign: Report parser err before missing SOA (https://github.com/coredns/coredns/pull/7775)
