来源: https://github.com/argoproj/argo-cd/releases/tag/v3.4.9

# argoproj/argo-cd v3.4.9 Release Notes

Published at: 2026-09-14T06:41:58Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.9/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.9/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* b938a5e7238c5993534156acdd39953d0aab2bc0: fix(health): a KubeVirt VirtualMachine declared stopped is Healthy (cherry-pick #29664 for 3.4) (#29666) (@argo-cd-cherry-pick-bot[bot])
* 8d84b9380186ef6e1b694c718128ddb4b4cbb5ee: fix(health): report suspended FlinkDeployment as healthy (#26818) (cherry-pick #28995 for 3.4) (#29527) (@argo-cd-cherry-pick-bot[bot])
* bfd48bd87729d1675509d89cf9eeb41d83d6a967: fix(repository): clean repository on revision change (cherry-pick #28771 for 3.4) (#29485) (@argo-cd-cherry-pick-bot[bot])
* 4e0f6b78ce57547415eaac042a35a29f7fa0345c: fix(resource_customizations): Crossplane MRs should report Progressing (not Healthy) whilst provisioning [ISSUE:  #29381] (cherry-pick #29382 for 3.4) (#29521) (@argo-cd-cherry-pick-bot[bot])
* 182c837b67b7176e03342b19e0a7d23a4da347af: fix(sync): correctly set operationState values on retry (#26530) (cherry-pick #28778 for 3.4) (#29432) (@omkar619-dev)
* ae7133151cd1ad803455a18a810c7a091de09b69: fix(ui): guard SSO redirect to stop 401 retry loop (cherry-pick #28807 for 3.4) (#29632) (@argo-cd-cherry-pick-bot[bot])
* 38b5adf870e5aa0521a0a2e2638af11cf087a518: fix(ui): use hydrateTo branch name when set (cherry-pick #29562 for 3.4) (#29566) (@crenshaw-dev)
* fb9431d44e8f61fe0b156a1abb9289b9d85dbe2c: fix: GRPCRoute health check ignores stale observedGeneration conditions (#28086) (cherry-pick #28087 for 3.4) (#29518) (@argo-cd-cherry-pick-bot[bot])
* 51edefdfb252547d408b70da03fceb78a3e0e387: fix: handle GrafanaFolder negative-polarity condition (#29395) (cherry-pick #29397 for 3.4) (#29523) (@argo-cd-cherry-pick-bot[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.4.8...v3.4.9

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

