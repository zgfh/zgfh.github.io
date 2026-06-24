来源: https://github.com/argoproj/argo-cd/releases/tag/v3.1.16

# argoproj/argo-cd v3.1.16 Release Notes

Published at: 2026-05-05T07:37:53Z

> [!IMPORTANT]
> **END OF LIFE NOTICE**
> 
> This is the final release of the `3.1` release series. As of May 06th 2026, this version has reached end of life and will no longer receive bug fixes or security updates.
> 
> **Action Required**: 
> Please upgrade to a [supported version](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) (`v3.4`, `v3.3` or `v3.2`).

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.1.16/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.1.16/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/announcing-argo-cd-v3-1-f4389bc783c8)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* af7a36e6e9de102d1af751d5220e6eb3ffbe67d2: fix(server): Avoid error when attempting a second delete operation (cherry-pick #27495 for 3.1) (#27502) (@argo-cd-cherry-pick-bot[bot])
### Dependency updates
* c4499a3fbcc2cd5e08fda5724413fcbb7e2114c4: chore(deps): bump SonarSource/sonarqube-scan-action from 5.2.0 to 8.0.0 (cherry-pick 27602 to 3.1) (#27607) (@dudinea)

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.1.15...v3.1.16

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

