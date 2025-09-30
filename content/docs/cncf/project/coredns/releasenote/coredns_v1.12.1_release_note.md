---
title: "coredns_v1.12.1_release_note"
date: 2025-09-30T06:12:09+08:00
---
来源: https://github.com/coredns/coredns/releases/tag/v1.12.1

# coredns/coredns v1.12.1 Release Notes

Published at: 2025-03-31T20:26:21Z

In this release:
* kubernetes: Revert recent change to only create PTR records for endpoints with hostname defined.
* forward: added option to return SERVFAIL immediately if all upstreams are unhealthy.

## Brought to You By

Adrian Moisey,
Arthur Outhenin-Chalandre,
Bartosz Borkowski,
Ben Kochie,
Chris O'Haver,
Min Woo Kim,
Puneet Loya,
Rich,
Viktor,
momantech


## Noteworthy Changes

* core: Increase CNAME lookup limit from 7 to 10 (https://github.com/coredns/coredns/pull/7153)
* plugin/kubernetes: Fix handling of pods having DeletionTimestamp set (https://github.com/coredns/coredns/pull/7119) (#7131)
* plugin/kubernetes: Revert "only create PTR records for endpoints with hostname defined (https://github.com/coredns/coredns/pull/6898)" (#7194)
* plugin/forward: added option `failfast_all_unhealthy_upstreams` to return servfail if all upstreams are down (https://github.com/coredns/coredns/pull/6999)
