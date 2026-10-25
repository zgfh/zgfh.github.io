来源: https://github.com/podman-container-tools/podman/releases/tag/v6.1.3

# containers/podman v6.1.3 Release Notes

Published at: 2026-09-29T15:34:46Z

### Security
- This release addresses [CVE-2026-94603](https://github.com/podman-container-tools/podman/security/advisories/GHSA-2cvf-wqm6-wr9g), where a `podman run` on a checkpoint image (any image with the `io.podman.annotations.checkpoint.runtime.name` annotation) could disable all sandboxing, including sandboxing specified by the user, when the container was created.

### Breaking Changes
- Removed support for checkpoint images in `podman run` due to serious security concerns with the different security models of running images and running checkpoints. Checkpoints ignore user-specified security configuration and are very difficult to run safely.

