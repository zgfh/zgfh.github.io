# zzg-blog 项目信息

## 项目概览

基于 Hugo 的静态博客站点，使用 **Hextra** 主题，通过 GitHub Actions 部署到 GitHub Pages，域名 `https://www.daozzg.com/`。

## 技术栈

- **Hugo** (Dockerfile: v0.150.1, Actions: 0.147.7)
- **Hextra** 主题 (Hugo Module, `github.com/imfing/hextra` v0.11.1)
- **Go** 1.22 (Hugo Module 依赖)
- **Nginx** (生产容器)
- Docker 多架构构建 (amd64/arm64)

## 关键配置

- **baseURL:** `https://www.daozzg.com/`
- **languageCode:** `zh-cn`
- **disablePathToLower:** `true` — 路径区分大小写，不要将中文文件名/路径规范化为小写
- **markup.goldmark.renderer.unsafe:** `true` — Markdown 允许原生 HTML

## CI/CD

| 工作流 | 触发条件 | 用途 |
|--------|---------|------|
| `pages.yaml` | push main | 部署到 GitHub Pages |
| `image.yaml` | push main | 构建并推送阿里云容器镜像 |
| `docker-image.yml` | push main / tag v* | 多架构构建推送到 GHCR |

## .gitignore 关键项

- `public/`、`resources/` — Hugo 构建产物，不可手动编辑
- `.vscode/` — 本地脚本（deploy.sh、add_front_matter.sh、wechat_sync.sh）

---

## 目录规范

### 内容目录 (`content/docs/`)

**每层目录必须包含 `_index.md`**，作为章节入口。

```yaml
# _index.md front matter 格式
---
date: '2025-09-29T04:49:17+08:00'
title: 'SectionName'
tags: 'SectionName'
---
```

### 文章 front matter 格式

```yaml
---
title: 文章标题
slug: article-slug
date_published: 2026-06-24T00:00:00.000Z
date_updated: 2026-06-24T00:00:00.000Z
tags: ["tag1", "tag2"]
---
```

或者使用 archetype 格式：

```yaml
---
date: '2026-06-24T12:00:00+08:00'
title: '文章标题'
tags: ['tag1']
---
```

### 一级目录（section）划分

| 目录 | 用途 | 维护方式 |
|------|------|---------|
| `2015-2018/` | 早期文章归档 | 手动 |
| `ai/` | AI 相关笔记 | 手动 |
| `cncf/` | CNCF 项目单组件知识（介绍/安装/配置/FAQ）+ 自动生成数据 | 混合维护 |
| `db/` | 数据库/中间件笔记 | 手动 |
| `ios/` | iOS 开发笔记 | 手动 |
| `iot/` | 物联网/开发板笔记 | 手动 |
| `k8s/` | K8s 跨组件实践经验（CI/CD、部署、稳定性等） | 手动 |
| `linux/` | Linux 相关笔记 | 手动 |
| `web/` | Web 安全与前端相关笔记 | 手动 |

### cncf/ 目录（混合维护）

```
cncf/
  _index.md
  landscape/
    _index.md
    changelog/       # 变更日志（自动生成）
    all.yaml         # CNCF landscape 数据
    cncf.yaml        # CNCF 项目清单
  project/
    _index.md
    changelog/       # 项目变更日志（自动生成）
    {project-name}/  # 各 CNCF 项目
      _index.md
      {manual-post}.md    # 手写博客：介绍、安装、配置、FAQ 等
      releasenote/        # 项目版本发布说明（自动生成）
```

### 子目录规范

- 每层目录必备 `_index.md`
- 二级目录下按主题拆分子目录（如 `db/mysql/`、`iot/esp32/`）
- 文件名可用中文（如 `2017-11-18-k8s安装.md`）
- 图片放在对应文章同级目录

### 新建 section 示例

```
content/docs/web/
  _index.md           # 章节入口
  web-security-attacks.md
```

### 注意

- **不要手动编辑** `public/`、`resources/` 目录
- `content/docs/cncf/` 下 `landscape/`、`changelog/`、`releasenote/` 为自动生成内容，不要手动编辑；`project/{name}/` 下可写手写博客
- 主题通过 Hugo Module 管理，不要直接修改 `themes/` 目录
- 多个 Hugo 版本共存，注意兼容性（Dockerfile v0.150.1，Actions v0.147.7）
