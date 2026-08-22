来源: https://github.com/argoproj/argo-cd/releases/tag/v3.4.6

# argoproj/argo-cd v3.4.6 Release Notes

Published at: 2026-07-31T12:12:38Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.6/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.6/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* aa9970b380b8c2e9e7cb9bc93be08b52fc9164a1: fix(appset): fall back to create when patch returns NotFound (#17312) (cherry-pick #28645 for 3.4) (#28718) (@rickbrouwer)
* 9a91802c48b074fec01e1b07949c4e55caf146f8: fix(diff): don't drop manager-owned descendant fields when filtering webhook mutations (cherry-pick #28819 for 3.4) (#28894) (@argo-cd-cherry-pick-bot[bot])
* 4907a99fd2948bc0db78b0a9347cd3077dbba9f7: fix(helm): pass registry passwords through stdin (#17821)  (#28835) (@nitishfy)
* b6d7c82be121ce650749bf07c8ece119313781dc: fix: mount argocd-cmd-params-cm in repo-server so pprof can be enabled (cherry-pick #28863 for 3.4) (#28864) (@argo-cd-cherry-pick-bot[bot])
* cf7c4a73ffd6a9c41e245295cec30a1da21e17db: fix: only do annotation backfill if live unset (cherry-pick #28770 for 3.4) (#28776) (@argo-cd-cherry-pick-bot[bot])
* a3d8e280627905ff58d47e1dc84ea2965bfad7b8: fix: progressive sync fixes (3.4 cherry-picks) (#29000) (@blakepettersson)
* 2aa646b934fb5b48f9c03d8dee134a8870f08b10: fix: use Entra ID uti claim as token id when jti is absent (#28625) (cherry-pick #28656 for 3.4) (#28676) (@argo-cd-cherry-pick-bot[bot])
* 275d11ec49199ea83d6532d18a6ed6d2790150c7: fix: use OIDC refresh tokens to renew expired sessions (#27041, #12189) (cherry-pick #27777 for 3.4) (#28688) (@argo-cd-cherry-pick-bot[bot])
### Other work
* e1becb74c728a992804d39c3ceb2e9e6ae58f0ae: chore: bump version to 3.4.6 on release-3.4 branch (#28959) (@github-actions[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.4.5...v3.4.6

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

