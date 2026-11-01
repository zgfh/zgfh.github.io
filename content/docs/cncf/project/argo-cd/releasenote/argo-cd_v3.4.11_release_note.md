来源: https://github.com/argoproj/argo-cd/releases/tag/v3.4.11

# argoproj/argo-cd v3.4.11 Release Notes

Published at: 2026-10-12T10:45:13Z

## Quick Start

### Non-HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.11/manifests/install.yaml
```

### HA:

```shell
kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.4.11/manifests/ha/install.yaml
```

## Release Signatures and Provenance

All Argo CD container images are signed by cosign.  A Provenance is generated for container images and CLI binaries which meet the SLSA Level 3 specifications. See the [documentation](https://argo-cd.readthedocs.io/en/stable/operator-manual/signed-release-assets) on how to verify.

## Release Notes Blog Post
For a detailed breakdown of the key changes and improvements in this release, check out the [official blog post](https://blog.argoproj.io/argo-cd-v3-0-release-candidate-a0b933f4e58f)

## Upgrading

If upgrading from a different minor version, be sure to read the [upgrading](https://argo-cd.readthedocs.io/en/stable/operator-manual/upgrading/overview/) documentation.

## Changelog
### Bug fixes
* 1363919a4ce79c36c43fa98a194bb3d35719105c: fix(ci): use curl in kustomize checksum helper so Renovate can refresh checksums (cherry-pick #29938 for 3.4) (#30099) (@argo-cd-cherry-pick-bot[bot])
* b0db949949fe492c6f6b7dac41e6b185a0ad44d6: fix(hydrator): retry notes push on cannot lock ref errors (cherry-pick #28469 for 3.4) (#29904) (@argo-cd-cherry-pick-bot[bot])
* 114a64e838a0ab41180696b0f725dd26041e56ec: fix(reposerver): stale manifests and goroutine leak after CMP failure (#29870) (cherry-pick #29874 for 3.4) (#30141) (@argo-cd-cherry-pick-bot[bot])
* a58286e7d30955eedcbc1dc6e442606c2a0bfa31: fix(ui): show enableOCI only for Helm  (cherry-pick #29974 for 3.4)  (#30080) (@adityaraj178)
* 85e5cc22cd562f9d0493472643db112e72390fa2: fix: cache the OCI tag list (#30117) (cherry-pick #30118 for 3.4) (#30121) (@argo-cd-cherry-pick-bot[bot])
* e9ec2290abc2e7ebc480be676fe33f0e9d582e95: fix: correct scheduled-time format in CronWorkflow create-workflow action (#29915) (cherry-pick #29916 for 3.4) (#29954) (@argo-cd-cherry-pick-bot[bot])
* c12374b97d037fbe0b211e7cc48021c529505b02: fix: fix untar inbound check if dstPath is symlinked (cherry-pick #28881 release-3.4) (#30054) (@blakepettersson)
* 33db5f7ebcd94afa97debc38a802394449c1a293: fix: fixes flaky tests by making Log capturer thread-safe (cherry-pick #28328 for 3.4) (#30077) (@argo-cd-cherry-pick-bot[bot])
* 0ef69f371cc52961d5e24dbdca6d426c47670e20: fix: synchronize OCI cache cleanup with extraction (#30020) (cherry-pick #30023 for 3.4) (#30104) (@argo-cd-cherry-pick-bot[bot])
### Dependency updates
* be0b8c650cc75faa3efabf88227e2108146749f1: chore(deps): bump go-git dependency to 5.19.2 - #30013 for v3.4 (#30048) (@ranakan19)
* d3bf6736e319451ccee689e4e0a2e22ef5621f9b: chore(deps): bump google.golang.org/grpc from 1.81.1 to 1.84.0 (cherry-pick 3.4) (#29912) (@dipakkarde)
* 41386dbe817e6005a72a751088cccc522ce2bf14: chore(deps): update group golang (release-3.4) (#30093) (@argoproj-renovate[bot])

**Full Changelog**: https://github.com/argoproj/argo-cd/compare/v3.4.10...v3.4.11

<a href="https://argoproj.github.io/cd/"><img src="https://raw.githubusercontent.com/argoproj/argo-site/master/content/pages/cd/gitops-cd.png" width="25%" ></a>

