---
date: '2025-09-07T08:26:52+08:00'
title: '博客编写说明'
---

针对非关键事情,特别是琐碎杂事,我的记性一直不好😄
为了避免自己遗忘如何维护本博客,记录下博客的关键信息

## 初始化
参考: https://imfing.github.io/hextra/zh-cn/docs/getting-started/
```
hugo new site zzg-blog --format=yaml
cd zzg-blog
# 下载主题
hugo mod get github.com/imfing/hextra
# 配置自动发布
mkdir -p .github/workflows
curl -o .github/workflows/pages2.yaml https://raw.githubusercontent.com/imfing/hextra-starter-template/refs/heads/main/.github/workflows/pages.yaml

cat > hugo.yaml <<-EOF
module:
  imports:
    - path: github.com/imfing/hextra
run: |
  hugo \
    --gc --minify \
    --baseURL "https://zgfh.github.io/"
EOF


hugo new content/_index.md
hugo new content/docs/_index.md
hugo server --buildDrafts --disableFastRender

```

提交
```
# 这里手动配置下
vi .gitignore
# 修改 title, 导航 等
vi hugo.yaml
git init
git add .
git remote add origin git@github.com:zgfh/zzg-blog.git
git push -u origin main
```

### 

## 写博客
运行服务,可以试试看到效果
```
hugo server --buildDrafts --disableFastRender
```
增加 docs 文章
```
hugo new content/docs/xx/xxx.md
```