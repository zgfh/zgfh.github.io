来源: https://github.com/argoproj/argo-cd/releases/tag/v3.3.15

# argoproj/argo-cd v3.3.15 Release Notes

Published at: 2026-10-06T21:35:42Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.15/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.15/manifests/ha/install.yaml
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

### Bug fixes
* c6e39fdecc8b9f59d810325ad955746a5fee38db: fix(cmp): clean up tgz stream temporary directories (#29148) (cherry-pick #29156 for 3.3) (#29774) (@argo-cd-cherry-pick-bot[bot])
* c397ddcc9d1669d5339548b8d42bb89ed7db1da6: fix(health): a KubeVirt VirtualMachine declared stopped is Healthy (cherry-pick #29664 for 3.3) (#29667) (@argo-cd-cherry-pick-bot[bot])
* 33ffc7d654d31d434ff844fb2d60322f182b0448: fix(health): report suspended FlinkDeployment as healthy (#26818) (cherry-pick #28995 for 3.3) (#29526) (@argo-cd-cherry-pick-bot[bot])
* 3abe9eb1d7a1fc62b07231c1de811cd59fa10579: fix(hydrator): retry notes push on cannot lock ref errors (cherry-pick #28469 for 3.3) (#29906) (@argo-cd-cherry-pick-bot[bot])
* 990ea5694003dc924b03bd6e72a48c6a80273719: fix(resource_customizations): Crossplane MRs should report Progressing (not Healthy) whilst provisioning [ISSUE:  #29381] (cherry-pick #29382 for 3.3) (#29519) (@argo-cd-cherry-pick-bot[bot])
* 1149cdc6e932208c4402183cc3d7b7485239940c: fix(security): coordinated security fixes (release-3.3) (#30040) (@crenshaw-dev)
* a050c4f2d45514b5fb39b3a9d7e89f12cb5d6179: fix(sync): correctly set operationState values on retry (#26530) (cherry-pick #28778 for 3.3) (#29433) (@omkar619-dev)
* d5b193b17055a9b677b0419f3b9e5033a19306e5: fix(ui): manifest viewer jumpiness (#29691) (cherry pick 3.3) (#29727) (@crenshaw-dev)
* 2cffaf528edb1e3fb8730f2075d3f128623ff4a0: fix(ui): use hydrateTo branch name when set (cherry-pick #29562 for 3.3) (#29565) (@crenshaw-dev)
* 0900428b854ce81e5a129a2ea7f74aebdb1efd81: fix: GRPCRoute health check ignores stale observedGeneration conditions (#28086) (cherry-pick #28087 for 3.3) (#29516) (@argo-cd-cherry-pick-bot[bot])
* ec1fc4524dea1880e03b4d0a31d39d7fe441ddd9: fix: don't degrade Cluster API Cluster health while Ready is False during provisioning (cherry-pick #29237 for 3.3) (#29272) (@argo-cd-cherry-pick-bot[bot])
* 601f6112620b17708ffd65720ce055f42e3b7181: fix: handle GrafanaFolder negative-polarity condition (#29395) (cherry-pick #29397 for 3.3) (#29522) (@argo-cd-cherry-pick-bot[bot])
### Dependency updates
* 3249c5cdb0a5d199f42aef23ffba7b66d52a5db4: chore(deps): bump go.opentelemetry.io/otel from 1.43 to 1.44 (release-3.3) (#29763) (@nmirasch)
* 874a17c78c4e6d6bc3a4f213947717c41875f7fe: chore(deps): bump golang.org/x/crypto to 0.55.0 (release-3.3) (#29824) (@akhilnittala)
* d697764be580f902fb73587bbceb63c4c268285e: chore(deps): bump js-yaml to 4.3.1 in /ui for CVE-2026-59869 (release-3.3) (#29386) (@aali309)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.3.14...v3.3.15

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>


