来源: https://github.com/argoproj/argo-cd/releases/tag/v3.4.15

# argoproj/argo-cd v3.4.15 Release Notes

Published at: 2026-11-24T16:42:59Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.15/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.15/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Security fixes

* HIGH: Repository create with upsert overwrites existing repositories without the update permission ([GHSA-mfgm-4p7x-3ccr](https://github.com/argoproj/argo-cd/security/advisories/GHSA-mfgm-4p7x-3ccr))
* HIGH: A single unauthenticated request crashes the API server ([GHSA-w7rw-fg89-2cjf](https://github.com/argoproj/argo-cd/security/advisories/GHSA-w7rw-fg89-2cjf))
* HIGH: Helm chart home link allows stored XSS in the application details view ([GHSA-rxm8-qc6h-3c8h](https://github.com/argoproj/argo-cd/security/advisories/GHSA-rxm8-qc6h-3c8h))
* HIGH: ApplicationSet delete API ignores the allowed ApplicationSet namespaces ([GHSA-rvmf-gjc9-wjgq](https://github.com/argoproj/argo-cd/security/advisories/GHSA-rvmf-gjc9-wjgq))
* MODERATE: Bitbucket Cloud webhook sends stored repository credentials to a host taken from the webhook payload ([GHSA-q4f6-wc8m-r246](https://github.com/argoproj/argo-cd/security/advisories/GHSA-q4f6-wc8m-r246))
* MODERATE: Helm release name is evaluated as a template, disclosing repo-server environment variables ([GHSA-v2hj-322q-6cg4](https://github.com/argoproj/argo-cd/security/advisories/GHSA-v2hj-322q-6cg4))
* MODERATE: Generated Dex configuration containing SSO secrets is written world-readable ([GHSA-8cfq-7w4v-ggm3](https://github.com/argoproj/argo-cd/security/advisories/GHSA-8cfq-7w4v-ggm3))

### Potentially-breaking changes

* Helm release names (`spec.source.helm.releaseName`, including from `.argocd-source.yaml`) are now passed to Helm literally and must be valid Helm release names: lowercase letters, digits, `-` and `.`, starting and ending with a letter or digit, at most 53 characters. Manifest generation fails for an Application whose release name is not valid or relied on template syntax ([GHSA-v2hj-322q-6cg4](https://github.com/argoproj/argo-cd/security/advisories/GHSA-v2hj-322q-6cg4)).

### Bug fixes
* 36e14ac1e8746d41e2f2cea6d21a6bbe2cac0da6: fix(controller): do not complete a delete hook phase on AlreadyExists (#29100) (cherry-pick #29687 for 3.4) (#31170) (@ppapapetrou76)
* 0499973b08a4aa432b1dd8596ea6fd0246261da2: fix(controller): don't overwrite a terminate request with a stale running operation state (cherry-pick #30293 for 3.4) (#31189) (@ppapapetrou76)
* 05b784e55a504a2bd316a5eb638089e0510ceceb: fix(controller): refresh apps when a CRD they manage changes (cherry-pick #30599 for 3.4) (#31149) (@ppapapetrou76)
* 179ef9c0e04dd2f9f7ee98c7807348f389b73a56: fix(git): stop serializing GitHub App installation discovery globally (cherry-pick #30602 for 3.4) (#31121) (@crenshaw-dev)
* 8be885be0f6bf12e45b61c8b86e5ae945ae1e1ec: fix(git): use configurable timeout for GitHub App installation discovery (cherry-pick #30601 for 3.4) (#31112) (@argo-cd-cherry-pick-bot[bot])
* 2f3a6ecf087910b77bfd3e0ae0d873f9933fbe47: fix(health): report Degraded for kyverno.io/Policy when Ready=False (#30913) (cherry-pick #30925 for 3.4) (#31210) (@argo-cd-cherry-pick-bot[bot])
* 30c0a66c9cf2dbbd1747b4c8f6fbf78f0b57313c: fix(helm): remove temporary cert and key files after repo add (cherry-pick #30725 for 3.4) (#31231) (@argo-cd-cherry-pick-bot[bot])
* db117affafe2d4416f11c5575da2dc7cca35eb93: fix(server): set no-cache headers on API responses (cherry-pick #30445 for 3.4) (#31098) (@crenshaw-dev)
* 85ff44585a14b1dce13bc2af92e5a1fc54a7a7eb: fix: add `ssh.bitbucket.org` to the default SSH known hosts  (cherry-pick #31177 for 3.4) (#31221) (@argo-cd-cherry-pick-bot[bot])
* 350f6bf3e0231f63543f5e3a0363e6a5eb1178cc: fix: security fixes for 7 advisories (cherry-pick for 3.4) (#31239) (@crenshaw-dev)
### Other work
* b75e2a5c5670c9213b58490e0249edfd5162ed67: chore: bump version to 3.4.15 on release-3.4 branch (#31241) (@github-actions[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.4.14...v3.4.15

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>


