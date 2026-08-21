来源: https://github.com/argoproj/argo-cd/releases/tag/v3.5.0-rc3

# argoproj/argo-cd v3.5.0-rc3 Release Notes

Published at: 2026-07-28T08:42:41Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.5.0-rc3/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.5.0-rc3/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Features
* 41b6fee59d67b8ba22bba995a7c0bbc44eb2512f: feat(impersonation): allow to disable strict enforcement (#27084) (cherry-pick #27573 for 3.5) (#28595) (@argo-cd-cherry-pick-bot[bot])
### Bug fixes
* 06fae9ddd5798ff1be10c007624174673d31eb1b: fix(appset): fall back to create when patch returns NotFound (#17312) (cherry-pick #28645 for 3.5) (#28716) (@argo-cd-cherry-pick-bot[bot])
* a62624ae60e70e1e16b379dd8fae66dfc67282fd: fix(diff): don't drop manager-owned descendant fields when filtering webhook mutations (cherry-pick #28819 for 3.5) (#28895) (@argo-cd-cherry-pick-bot[bot])
* 0b42a6d6ea4cad492448d11cd282f980bf6cbcc3: fix(helm): pass registry passwords through stdin (Cherry-Pick) (#28834) (@nitishfy)
* 5c1b9303eb2e6397146182260ff7947ad1afabd1: fix(progressivesync): check if error == notfound (cherry-pick #28663 for 3.5) (#28670) (@argo-cd-cherry-pick-bot[bot])
* bc5d359c86d68a55250bedd624a86dfce239486a: fix(ui): update cluster count logic in ApplicationsSummary (cherry-pick #28768 for 3.5) (#28777) (@argo-cd-cherry-pick-bot[bot])
* b6bff3b3d4f35fc4ea113b59eafdc4e8046e4ba4: fix: mount argocd-cmd-params-cm in repo-server so pprof can be enabled (cherry-pick #28863 for 3.5) (#28866) (@argo-cd-cherry-pick-bot[bot])
* 061bd2bd3f7f9bafc6de79563a8e52c2c6c6caa2: fix: only do annotation backfill if live unset (cherry-pick #28770 for 3.5) (#28775) (@argo-cd-cherry-pick-bot[bot])
* f1b39c88b8997dc87f6909e4e2b845474f05e8b6: fix: use Entra ID uti claim as token id when jti is absent (#28625) (cherry-pick #28656 for 3.5) (#28675) (@argo-cd-cherry-pick-bot[bot])
* 7cde9f43784e956bb69b304ddeaf0e9f7b1f64dd: fix: use OIDC refresh tokens to renew expired sessions (#27041, #12189) (cherry-pick #27777 for 3.5) (#28689) (@argo-cd-cherry-pick-bot[bot])
### Other work
* 7660efb23b2d56bf01b0189ba5e2c2ab12badf71: chore:  bump version to 3.5.0-rc3 on release-3.5 branch (#28938) (@github-actions[bot])
* faaa0b66df1b4e8016cc630ef9b1d3db30b8c40e: fix(repo-server): honor `ARGOCD_REPO_SERVER_OTLP_HEADERS` in repo-server (Cherry-pick - 3.5) (#28715) (@nitishfy)
* 8ffead8d98ad0987686c2c5c77b7be38dc2ddefc: test(e2e): fix github's failure to show complete results of e2e test (#28727) (cherry-pick #28726 for 3.5) (#28728) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.5.0-rc2...v3.5.0-rc3

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

