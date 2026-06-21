来源: https://github.com/argoproj/argo-cd/releases/tag/v3.4.4

# argoproj/argo-cd v3.4.4 Release Notes

Published at: 2026-06-18T09:36:37Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.4/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.4/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 146184ea41fa545e0a084c82f05cfe5bd07a9ff9: fix(health): PromotionStrategy stuck Progressing after no-op re-hydration (#28124) (cherry-pick #28125 for 3.4) (#28135) (@argo-cd-cherry-pick-bot[bot])
* e515f51ab1ca500a165b49ca9ec9c402279b6768: fix(rbac): resolve RBAC regression for project-scoped resources in multi-namespace architecture (#25289) (#26573) (#28062) (@wanddynosios)
* 7f2fe9576c6b426f00b04abe6dea55cc9cf634c3: fix(ssd): regression causing diff to error on new objects (#27679) (cherry-pick #27703 for 3.4) (#28241) (@argo-cd-cherry-pick-bot[bot])
* 5199ea6cb74471e22b9c007b0c4598575bb37e44: fix: add a lock on clusterinformer (cherry-pick #28216 for 3.4) (#28312) (@blakepettersson)
* 7a64081225fe7e9688cd7a3d0ad0ff2bc62fde78: fix: exclude live status from normalization (cherry-pick #28201 for 3.4) (#28204) (@argo-cd-cherry-pick-bot[bot])
* 0b3436ffe67564506a49007970daa3d9f476856d: fix: fixes parsing of dex passwords with dollar sign (cherry pick of #28027 to 3.4) (#28197) (@ppapapetrou76)
* 9ccf66b8fc4500d90091075debed86dc218a3981: fix: resolve cross-generator Values templates in RenderGeneratorParams (#27827) (cherry-pick #27830 for 3.4) (#28128) (@argo-cd-cherry-pick-bot[bot])
### Other work
* 14ad471bf6102535664cac3b43cb706904c72b35: Merge pull request #28162 from argoproj/cherry-pick-28158-to-release-3.4 (@dudinea)
* 0fd000b25fb94fbc2de25dd3c97417e44d28a629: Merge pull request #28164 from argoproj/cherry-pick-28155-to-release-3.4 (@dudinea)
* ff255193d14b0ab7ecf7bea48c9cfda3cc0de46a: chore(ci): bump codecov action to 7.0.0 to fix the GPG issue (cherry-pick #28159 for 3.4) (#28172) (@dudinea)
* e9ff0c571b905989d517ac377c4071b6b6180081: ci: bump goreleaser (cherry-pick #28033 for 3.4) (#28072) (@argo-cd-cherry-pick-bot[bot])
* 1c5e37da077808446895092764bd14312c53d76d: ci: use github release notes in goreleaser (cherry-pick #28048 for 3.4) (#28071) (@argo-cd-cherry-pick-bot[bot])
* 0c14cfb5117526dd35657e0fddd21c5c612664be: fix(manifest-generate-paths): Normalize repo before using type repo (#28113) (@fm1ck3y)
* c2003f447e49a183b75e3d94e7982c59c012bd5e: test(e2e): Add test for second Sync after initial for different resources/options (#28156) (#28155) (@dudinea)
* 9810fa2902e60e48df2acda2353f44b293d4203f: test(e2e): fix cleanup of CRDs for e2e tests (#28157) (#28158) (@dudinea)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.4.3...v3.4.4

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

