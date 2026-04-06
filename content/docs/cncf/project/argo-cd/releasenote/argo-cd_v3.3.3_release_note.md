来源: https://github.com/argoproj/argo-cd/releases/tag/v3.3.3

# argoproj/argo-cd v3.3.3 Release Notes

Published at: 2026-03-09T16:14:02Z

> [!IMPORTANT]
> Following Helm 3.19.0 change in how Helm interprets K8s cluster version, Argo CD `3.3.3` release contains a change that aligns how Argo CD interprets K8s cluster version with Helm behavior.
>
> Impact: Application Sets with Cluster Generators, that fetch clusters based on their Kubernetes version and use `argocd.argoproj.io/auto-label-cluster-info` on the cluster secret, need to be updated to use `argocd.argoproj.io/kubernetes-version` with the `vMajor.Minor.Patch` format instead of the previous `Major.Minor` format.
>
> More details here: https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/3.2-3.3/#cluster-version-format-change


## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.3/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.3/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 6224d6787e11f06b2b259de8548787e59acfd839: fix(actions): Use correct annotation for CNPG suspend/resume (cherry-pick #26711 for 3.3) (#26727) (@argo-cd-cherry-pick-bot[bot])
* 968c6338a706911a7d63e08986de60ac15b81514: fix(controller): handle comma-separated hook annotations for PreDelete/PostDelete hooks (cherry-pick #26420 for 3.3) (#26586) (@argo-cd-cherry-pick-bot[bot])
* 4411801980b1594907b9c9bb524188be519fe405: fix(health): use note.drySha when available (cherry-pick #26698 for 3.3) (#26750) (@argo-cd-cherry-pick-bot[bot])
* 3d3760f4b4cc63c4a347c4824e97f7416954a378: fix(ui): standard resource icons are not displayed properly.#26216 (cherry-pick #26228 for 3.3) (#26380) (@argo-cd-cherry-pick-bot[bot])
* c6df35db8eca91ba87e371fbd2a13a97b0db4bab: fix: consistency of kubeversion with helm version 3 3 (#26744) (@ppapapetrou76)
* 5e190219c9cb885fae6d2ae0ecfe1961fea8b70b: fix: multi-level cross-namespace hierarchy traversal for cluster-scop… (#26640) (@agaudreault)
### Other work
* c61c5931ce6584abb3dbb02f1c512fcbb2873c6a: chore: use base ref for cherry-pick prs (cherry-pick #26551 for 3.3) (#26553) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.3.2...v3.3.3

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

