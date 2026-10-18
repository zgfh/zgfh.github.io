来源: https://github.com/argoproj/argo-cd/releases/tag/v3.4.10

# argoproj/argo-cd v3.4.10 Release Notes

Published at: 2026-10-06T20:58:18Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.10/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.10/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

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
* 4469a335a79f7b9ab8e263179f507cd21fc19834: feat(server): log username on login attempts (cherry-pick #29841 for 3.4) (#29860) (@argo-cd-cherry-pick-bot[bot])
### Bug fixes
* e7225da286ecd43eb31f41d04717ce0b9a6852a4: fix(cmp): clean up tgz stream temporary directories (#29148) (cherry-pick #29156 for 3.4) (#29775) (@argo-cd-cherry-pick-bot[bot])
* 4bc8085b0a6d2296b849539d3d09fc7be7a4a511: fix(security): coordinated security fixes (release-3.4) (#30039) (@crenshaw-dev)
* f161802f4fa3b0f874640fdff6d92f9143ff2e20: fix(ui): manifest viewer jumpiness (#29691) (cherry pick 3.4) (#29726) (@crenshaw-dev)
* 54bb5b408421de8622a15e40467932599bebdbcc: fix: cherry-pick #29737 (release-3.4) (#29765) (@blakepettersson)
* 9de021aaf48fe96fde09e3906b3abdd1d5e2a9be: fix: use ObjectMeta in session login test (release-3.4) (#29918) (@crenshaw-dev)
### Dependency updates
* 2e4811cc084e9b10f27813a16ae17fae9b664328: chore(deps): bump github.com/go-git/go-billy/v5 from 5.6.2 to 5.9.0 (cherry-pick argoproj#27847 for 3.4) (#29759) (@nmirasch)
* 9c3211c4cb07184428583d2e0acd05ad5be7e49f: chore(deps): bump go.opentelemetry.io/otel from 1.43 to 1.44 (release-3.4) (#29764) (@nmirasch)
* 08da64bf920ff076913e213331dac51f56ea0059: chore(deps): bump golang.org/x/crypto to 0.57.0 (release-3.4) (#29825) (@akhilnittala)
* 999b68ca7408b843f25ab4604621a260b1d9c274: chore(deps): bump up js-yaml from 4.3.1 to 4.3.2 (#30021) (@keithchong)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.4.9...v3.4.10

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>


