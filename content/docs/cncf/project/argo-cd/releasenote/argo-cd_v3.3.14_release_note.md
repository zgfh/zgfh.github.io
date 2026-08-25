来源: https://github.com/argoproj/argo-cd/releases/tag/v3.3.14

# argoproj/argo-cd v3.3.14 Release Notes

Published at: 2026-08-12T10:48:37Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.14/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.14/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 7242ed2d3cd3a5bb106a1922834244977de83b9f: fix(controller): reuse server-side diff result when masking Secret data (#27858) (#29076) (@1ovsss)
* d93267f05a6c59cc04f472e3bbe1dc0da1d7cf3b: fix(server): prevent SSD CLI secret mask spoofing (#29089) (#29137) (@pjiang-dev)
* 4e181b9ba61f1ab7aa85ac890328e4b4938195c9: fix(ssd): hide secret in last-applied-configuration annotation (#28989) (#29054) (@pjiang-dev)
* 80f08f9de360a22abbb314a5b6b18a71b9a4140c: fix: register pprof endpoints in repo-server using the params config map (cherry-pick #26237 for 3.3) (#29032) (@gdsoumya)
### Dependency updates
* cf38a82132a2275c6229368cdfd8872e3b0d33d6: chore(deps): bump DOMPurify to 3.4.7 for CVE-2026-49978 (#28969) (@aali309)
* d3f7e8c0b5a40611fe6751b65a475be7b26e4726: chore(deps): bump brace-expansion to 2.1.4, 1.1.18 in /ui for fixing CVE-2026-69152 (release-3.3) (#29149) (@dkarpele)
### Other work
* a0a99e187cb6126ef0f3be82d90705513d8f6f3e: chore: bump version to 3.3.14 on release-3.3 branch (#29159) (@github-actions[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.3.13...v3.3.14

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

