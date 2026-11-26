来源: https://github.com/argoproj/argo-cd/releases/tag/v3.5.9

# argoproj/argo-cd v3.5.9 Release Notes

Published at: 2026-11-24T17:56:03Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.5.9/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.5.9/manifests/ha/install.yaml
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
* c1a4f3823f365d330987ef7fec1faf00147d13c0: fix(controller): do not complete a delete hook phase on AlreadyExists (#29100) (cherry-pick #29687 for 3.5) (#31171) (@ppapapetrou76)
* 36aa708609f8e6df42878bb87668e63024ebc7ee: fix(controller): don't overwrite a terminate request with a stale running operation state (cherry-pick #30293 for 3.5) (#31188) (@ppapapetrou76)
* 1878747b8a02b74e1f28b703e2f02a8f76815c6c: fix(controller): refresh apps when a CRD they manage changes (cherry-pick #30599 for 3.5) (#31148) (@ppapapetrou76)
* 6de0e04d5d1016bfe5cd88a475e4beeb4231a2a0: fix(git): look up the GitHub App installation for one org instead of listing all (cherry-pick #30603 for 3.5) (#31128) (@argo-cd-cherry-pick-bot[bot])
* 9029780d32e3f270e966cd22622d6d2e35aa2053: fix(git): share one GitHub App installation lookup among concurrent callers (cherry-pick #30629 for 3.5) (#31205) (@argo-cd-cherry-pick-bot[bot])
* 170782f8182b0e291b91b1a542f96458994a64f5: fix(git): stop serializing GitHub App installation discovery globally (cherry-pick #30602 for 3.5) (#31120) (@argo-cd-cherry-pick-bot[bot])
* 2eccdef19a9b68fa99bb7119db75bda739e3cd39: fix(git): use configurable timeout for GitHub App installation discovery (cherry-pick #30601 for 3.5) (#31113) (@argo-cd-cherry-pick-bot[bot])
* 2ccddd6add289f73e37649a142168ed68629d083: fix(health): report Degraded for kyverno.io/Policy when Ready=False (#30913) (cherry-pick #30925 for 3.5) (#31209) (@argo-cd-cherry-pick-bot[bot])
* 3ea9c164ecf713d8b1dd94e7cdd8bacae161d3e3: fix(helm): remove temporary cert and key files after repo add (cherry-pick #30725 for 3.5) (#31229) (@argo-cd-cherry-pick-bot[bot])
* 7bc134c2f33d8db8cb7887c7ee761de992f6a6d7: fix(hydrator): update status.sync.revision for no-ops (#29816) (cherry-pick #29817 for 3.5) (#31199) (@crenshaw-dev)
* 61299e49aef6fab771e08aba002262b0d0e2cfa5: fix(server): set no-cache headers on API responses (cherry-pick #30445 for 3.5) (#31097) (@crenshaw-dev)
* 17cdb20e4e472f8e26035a6d5432a34b1dc7aceb: fix: add `ssh.bitbucket.org` to the default SSH known hosts  (cherry-pick #31177 for 3.5) (#31222) (@argo-cd-cherry-pick-bot[bot])
* 919d4c254090c371c7732d19eded705fcdaf40eb: fix: security fixes for 7 advisories (cherry-pick for 3.5) (#31238) (@crenshaw-dev)
### Other work
* 70204ad7508c42758f196a6fdbf81e6e798ad51a: chore: bump version to 3.5.9 on release-3.5 branch (#31242) (@github-actions[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.5.8...v3.5.9

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>


