# Copilot instructions (zzg-blog)

## Project overview
- This repo is a Hugo static site for https://www.daozzg.com/.
- Theme is pulled via Hugo Modules: `module.imports` in `hugo.yaml` imports `github.com/imfing/hextra` (see `go.mod`).
- Primary content lives under `content/` (notably `content/docs/` and `content/about.md`). Section landing pages use `_index.md`.
- Rendering is customized with Hugo templates under `layouts/` (notably the docs list view).

## Key conventions (repo-specific)
- URLs are case-sensitive by design: `disablePathToLower: true` in `hugo.yaml`. Do not “normalize” paths/filenames/links to lowercase; keep existing casing (many pages use Chinese filenames).
- Treat `public/` and `resources/` as build outputs (see `.gitignore`) and do not commit them. Do not hand-edit generated HTML/CSS/JS; change sources in `content/`, `layouts/`, `static/`, etc, then rebuild.
- New content created via Hugo should follow `archetypes/default.md` (front matter has `date`, `title`, `tags`).
- Markdown rendering allows raw HTML: `markup.goldmark.renderer.unsafe: true` in `hugo.yaml`.

## Developer workflows
- Local preview: `hugo server --buildDrafts --disableFastRender`.
- Production build (local): `hugo --gc --minify` (outputs to `public/`).
- Container build:
  - Standard: `docker build -t zzg-blog .` (uses `Dockerfile`, builds via `ghcr.io/gohugoio/hugo:v0.150.1`, serves with nginx).
  - China mirror: `docker build -f Dockerfile.cn -t zzg-blog .` (uses DaoCloud mirrors and sets `GOPROXY`/`HUGO_MODULE_PROXY`).

## CI / deployment
- GitHub Pages deploy is in `.github/workflows/pages.yaml`.
  - It installs Hugo Extended (`HUGO_VERSION` currently `0.147.7`) and runs `hugo --gc --minify --baseURL "/"` then uploads `./public`.
  - Go is set up as `1.22`, while `go.mod` declares `go 1.23.5` (keep an eye on this if module resolution changes).
  - It sets `fetch-depth: 0` to support `.GitInfo` / `.Lastmod` (also enabled by `params.enableGitInfo: true`).
- Docker image publishing is in `.github/workflows/image.yaml`.
  - Pushes to Aliyun registry and GHCR; requires `ALIYUN_USERNAME` / `ALIYUN_PASSWORD` secrets.

## Where to make changes
- Site config, languages, menus, edit-link base: `hugo.yaml`.
- Docs list rendering (article list + folder tree JS `toggleFolder`): `layouts/docs/list.html`.
- Custom head-end hooks for scripts (currently a placeholder): `layouts/_partials/custom/head-end.html`.

## When changing Hugo versions
- Keep versions aligned across build surfaces (they currently differ):
  - Docker builder image in `Dockerfile` / `Dockerfile.cn` (currently `v0.150.1`).
  - `HUGO_VERSION` in `.github/workflows/pages.yaml` (currently `0.147.7`).
