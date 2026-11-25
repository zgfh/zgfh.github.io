来源: https://github.com/argoproj/argo-cd/releases/tag/v3.6.3

# argoproj/argo-cd v3.6.3 Release Notes

Published at: 2026-11-24T16:53:09Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.6.3/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.6.3/manifests/ha/install.yaml
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
* 816d03f27f7d31e686f88a2f287a014f93508bc5: fix(cli): clean up temporary files in InteractiveEdit (cherry-pick #31191 for 3.6) (#31233) (@argo-cd-cherry-pick-bot[bot])
* a1b6bf99783b16ae8c0ccdb53dc12be4fb26d0c8: fix(controller): do not complete a delete hook phase on AlreadyExists (#29100) (cherry-pick #29687 for 3.6) (#31169) (@argo-cd-cherry-pick-bot[bot])
* 09e76fa3b22499b6284dca1e84bfed6babace73d: fix(controller): don't overwrite a terminate request with a stale running operation state (cherry-pick #30293 for 3.6) (#31187) (@ppapapetrou76)
* 62a01a891bd0e1b2a9757ea3859cdb7227122de4: fix(controller): refresh apps when a CRD they manage changes (cherry-pick #30599 for 3.6) (#31147) (@ppapapetrou76)
* 1c768005c6684bedbe51195eafea980b44ec0c11: fix(git): look up the GitHub App installation for one org instead of listing all (cherry-pick #30603 for 3.6) (#31127) (@argo-cd-cherry-pick-bot[bot])
* 1564b1d09ad377322aae0db24af1ef86cc0839d9: fix(git): share one GitHub App installation lookup among concurrent callers (cherry-pick #30629 for 3.6) (#31206) (@argo-cd-cherry-pick-bot[bot])
* 4113bad76fa94329d04a558de9bae6bac8e2683f: fix(git): stop serializing GitHub App installation discovery globally (cherry-pick #30602 for 3.6) (#31119) (@argo-cd-cherry-pick-bot[bot])
* b80784f5ae43febab5076f75e965b05b4c5542b4: fix(git): use configurable timeout for GitHub App installation discovery (cherry-pick #30601 for 3.6) (#31111) (@argo-cd-cherry-pick-bot[bot])
* 28f9bb07d413d2866e3cda43ccf6fe3933a47369: fix(health): Kyverno (namespaced)DeletingPolicy was never Ready (#30797) (cherry-pick #30807 for 3.6) (#31213) (@argo-cd-cherry-pick-bot[bot])
* 810e390f1f624d7068750a0caa1680fbfc8c7853: fix(health): report Degraded for kyverno.io/Policy when Ready=False (#30913) (cherry-pick #30925 for 3.6) (#31211) (@argo-cd-cherry-pick-bot[bot])
* 3b9013934b7840d46f568a0b58f58956a50f18b2: fix(health): treat unreferenced envoy Backend as healthy (cherry-pick #30907 for 3.6) (#31212) (@argo-cd-cherry-pick-bot[bot])
* aea4560aa09ca02f26edbac7eb2cf82fb6cf671e: fix(helm): remove temporary cert and key files after repo add (cherry-pick #30725 for 3.6) (#31230) (@argo-cd-cherry-pick-bot[bot])
* bc977c54145f2b7cb5cb67148a4b2150b1033389: fix(hydrator): update status.sync.revision for no-ops (#29816) (cherry-pick #29817 for 3.6) (#31198) (@crenshaw-dev)
* 3d6de086819e1cb629a855969c86051352f94e18: fix(oci): fall back to a repository-scoped request when the registry ping fails (#31151) (cherry-pick #31152 for 3.6) (#31202) (@argo-cd-cherry-pick-bot[bot])
* 1efe628a43974c1ed825ff0e14794f15e5bfe5ac: fix(server): set no-cache headers on API responses (cherry-pick #30445 for 3.6) (#31096) (@crenshaw-dev)
* 1a43fc19f074353232721efa0772c89c621c8665: fix(ui): collapsed source panels unstyled until Settings is visited (cherry-pick #29839 for 3.6) (#31104) (@argo-cd-cherry-pick-bot[bot])
* 2170e79aedf818788cc882ecadda40dbbbcca54c: fix: add `ssh.bitbucket.org` to the default SSH known hosts  (cherry-pick #31177 for 3.6) (#31220) (@argo-cd-cherry-pick-bot[bot])
* 5e29b22cc1cc25e85d2cf94b2a24c2ffdc49b2bf: fix: report a resumed Job as Progressing until it finishes (#31125) (cherry-pick #31146 for 3.6) (#31232) (@argo-cd-cherry-pick-bot[bot])
* 5b88885b40c1e47f49ae750b170e98d665643f8d: fix: security fixes for 7 advisories (cherry-pick for 3.6) (#31237) (@crenshaw-dev)
### Other work
* b4accc482028fd529b3e4508ef9f28977b552b50: chore: bump version to 3.6.3 on release-3.6 branch (#31243) (@github-actions[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.6.2...v3.6.3

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>


