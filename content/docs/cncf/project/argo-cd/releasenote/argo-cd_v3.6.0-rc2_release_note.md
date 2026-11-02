来源: https://github.com/argoproj/argo-cd/releases/tag/v3.6.0-rc2

# argoproj/argo-cd v3.6.0-rc2 Release Notes

Published at: 2026-10-06T20:50:11Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.6.0-rc2/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.6.0-rc2/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-6-rc1-is-here-c0b562dc78d1)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Security fixes

* CRITICAL: A Kustomize remote ref can run commands in the repo-server ([GHSA-9v9p-x54c-58gc](https://github.com/argoproj/argo-cd/security/advisories/GHSA-9v9p-x54c-58gc))
* CRITICAL: A Kustomize Helm config home can run commands in the repo-server ([GHSA-fw5c-w8rc-j7fx](https://github.com/argoproj/argo-cd/security/advisories/GHSA-fw5c-w8rc-j7fx))
* CRITICAL: A Jsonnet import can read files from the repo-server ([GHSA-m3vr-7329-44ww](https://github.com/argoproj/argo-cd/security/advisories/GHSA-m3vr-7329-44ww))
* CRITICAL: AppProject restrictions bypassed by PreDelete/PostDelete resource hooks ([GHSA-fmxq-cgp8-87wp](https://github.com/argoproj/argo-cd/security/advisories/GHSA-fmxq-cgp8-87wp), CVE-2026-77459)
* HIGH: Login failure rate limit can be bypassed via concurrent requests ([GHSA-4439-h7jw-5cjj](https://github.com/argoproj/argo-cd/security/advisories/GHSA-4439-h7jw-5cjj), CVE-2025-61560)
* HIGH: Command injection via a repository proxy URL on SSH Git repositories ([GHSA-j6cw-g6p4-7hch](https://github.com/argoproj/argo-cd/security/advisories/GHSA-j6cw-g6p4-7hch), CVE-2026-55797)
* MODERATE: Extension proxy RBAC ignores application namespace when applications-in-any-namespace is enabled ([GHSA-g3ff-q88g-chrj](https://github.com/argoproj/argo-cd/security/advisories/GHSA-g3ff-q88g-chrj))
* MODERATE: An oversized OCI manifest can exhaust repo-server memory ([GHSA-w996-f2wq-x9c6](https://github.com/argoproj/argo-cd/security/advisories/GHSA-w996-f2wq-x9c6))

### Potentially-breaking changes

* Kustomize builds that render Helm charts no longer honor `helmGlobals.configHome`. Ordinary `http`, `https`, and `oci` chart repositories still work. Builds that depended on a Helm plugin registered from that directory will not ([GHSA-fw5c-w8rc-j7fx](https://github.com/argoproj/argo-cd/security/advisories/GHSA-fw5c-w8rc-j7fx)).
* An OCI manifest larger than 4 MiB is now rejected ([GHSA-w996-f2wq-x9c6](https://github.com/argoproj/argo-cd/security/advisories/GHSA-w996-f2wq-x9c6)).

### Features
* c2e39d87739338f7c57792bb394e14321a899c27: feat(server): log username on login attempts (cherry-pick #29841 for 3.6) (#29859) (@argo-cd-cherry-pick-bot[bot])
* 43637e4b85a697bc83c27fac50362f5cd20a12a8: feat: Persist and reuse client certificates if they were using in argocd login call (cherry-pick #29718 for 3.6) (#29781) (@argo-cd-cherry-pick-bot[bot])
### Bug fixes
* 75bbd2a60380d88c8709515b715f569520c80ec6: fix(ci): authenticate gitops-engine tag push in release workflow (cherry-pick #29744 for 3.6) (#29755) (@argo-cd-cherry-pick-bot[bot])
* 752958a526cc2055d7b89293016f31dfe7264e35: fix(cmp): clean up tgz stream temporary directories (#29148) (cherry-pick #29156 for 3.6) (#29772) (@argo-cd-cherry-pick-bot[bot])
* adbc3dcdc699fb9732ef67b4e27db61a68cc49ce: fix(controller): confirm project references before blocking deletion (cherry-pick #29737 for 3.6) (#29743) (@argo-cd-cherry-pick-bot[bot])
* 05c4c4b56e842edfaf4e2b2adde20fe1615a6a06: fix(hydrator): do not report a permanent note push failure as exhausted retries (cherry-pick #29903 for 3.6) (#29909) (@argo-cd-cherry-pick-bot[bot])
* d5dd7019ee65be8895133fe4df554e28074242c4: fix(security): coordinated security fixes (release-3.6) (#30037) (@crenshaw-dev)
* 7dbd403ef1a43c9948449a50d1bc4e2d05d13c76: fix(ui): align tile favorite icons consistently (cherry-pick #29844 for 3.6) (#29845) (@argo-cd-cherry-pick-bot[bot])
* 50f99757f1746f93d165851355ad7b87cb3f3e1a: fix(ui): preserve application tile height and spacing with page all (cherry-pick #29777 for 3.6) (#29803) (@argo-cd-cherry-pick-bot[bot])
* 624e62a704306b7560edffc011bc2370cacb7367: fix(ui): reduce Applications virtual-scroll flicker on scroll (cherry-pick #29935 for 3.6) (#29972) (@argo-cd-cherry-pick-bot[bot])
* a16170b2e374db3475bd4f2241b75f454194b625: fix: kustomize: ignore Components directories missing a kustomization file (cherry-pick #26576 for 3.6) (#29936) (@argo-cd-cherry-pick-bot[bot])
### Documentation
* 3b7aa8b4683e1f160d7b3c7b4a76ead478a6bc4d: docs: add server-side-diff default behavior to 3.6 upgrade guide (cherry-pick #29769 for 3.6) (#29771) (@argo-cd-cherry-pick-bot[bot])
### Dependency updates
* 615776ac535f4c9263c2ee691317e751198c3bca: chore(deps): bump dompurify (cherry-pick #30014 for 3.6) (#30034) (@argo-cd-cherry-pick-bot[bot])
* 1c35b994224f4d731bab43cfe22b8682026c998c: chore(deps): bump google.golang.org/grpc from 1.83.2 to 1.84.0 (cherry-pick #29790 for 3.6) (#29914) (@argo-cd-cherry-pick-bot[bot])
### Other work
* 7459a3f8ae7fa6f061f540d353c5e5f0dca07817: chore(dep): bump go-git dependency (cherry-pick #30013 for 3.6) (#30022) (@argo-cd-cherry-pick-bot[bot])
* f922b44b5d17765910e31a583dfb253d75afebe6: chore: bump version to 3.6.0-rc2 on release-3.6 branch (#30042) (@github-actions[bot])
* 3c9e37b67175476cd1447a766eb275b33c24e21a: chore: k3s 1.37.0 ga (cherry-pick #29843 for 3.6) (#29848) (@argo-cd-cherry-pick-bot[bot])
* 82479c8b9ed4ca2ba840dc1088ff485a598f1d89: fix(manifest-generate-paths): do not report changes on cache miss without path updates (cherry-pick #29442 for 3.6) (#29854) (@argo-cd-cherry-pick-bot[bot])
* 09cb6609eb0e9a61c2acd131ffe9051d937eefc8: fix(repo-server): health check timeout resulting in CrashLoopBackOff (cherry-pick #29863 for 3.6) (#29900) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.6.0-rc1...v3.6.0-rc2

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>


