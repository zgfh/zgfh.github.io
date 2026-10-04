# 争光的博客

基于 Hugo + Hextra，访问 [www.daozzg.com](https://www.daozzg.com/)。推送 `main` 后由现有 GitHub Actions 发布。

## 本地说明书后台

在仓库根目录运行（Python 3.10+；macOS 推荐 13+）：

```sh
bash tools/blog-admin/start.sh
```

首次启动会创建独立虚拟环境并安装 Flask、Pillow、HEIC 解码库，需要联网下载依赖。Mac 上会使用系统 Swift 编译 Apple Vision OCR；若提示找不到编译器，先运行 `xcode-select --install`。后续上传和识别在本机完成，不需要云端 API Key。

1. 电脑与手机连接同一个 Wi-Fi，保持电脑和后台运行。
2. 用手机浏览器打开终端显示的 `http://电脑局域网IP:8765/#token=…` **完整地址**。访问码每次重启变化；页面自动读取并从地址栏移除。也可以在页面粘贴访问码。
3. 点击「说明书模式」，输入产品名称，如「小米空气净化器」。
4. 用「拍照添加」连续拍摄，或「从相册选择」批量添加。拍照按钮调用手机原生相机，不依赖 HTTPS 的网页摄像头 API。具体相机选择界面由手机浏览器决定。
5. 预览照片，通过「前移 / 后移 / 删除」调整顺序，点击「提交并保存博客」。页面显示识别进度和最终文件路径。
6. 检查文章和图片，再按原有 Git 提交、推送流程发布。后台不会自动提交、推送或发布。

默认监听 `0.0.0.0:8765`，仅用于可信局域网，不要把端口暴露到公网。如果手机打不开，请检查电脑防火墙是否允许 Python 入站，以及 Wi-Fi 是否启用访客隔离；从终端多个 IP 中选择实际 Wi-Fi 的地址。结束时按 Ctrl+C。自定义端口：

```sh
bash tools/blog-admin/start.sh --port 8766
```

### 生成内容

```text
content/docs/说明书/
  _index.md
  小米空气净化器说明书.md
  小米空气净化器说明书-随机编号-01.jpg
  小米空气净化器说明书-随机编号-02.jpg
```

文件名和标题统一为 `xxx说明书`；已带「说明书」后缀不会重复添加。同名文章会拒绝保存，不覆盖旧文章。图片与 Markdown 同目录，并使用 `./图片名.jpg` 的 URL 编码相对链接，适用于本地预览、GitHub Pages 和自定义域名。

正文依次是图片、按页排列的 OCR 文字，文字会随正文进入 Hextra 搜索索引。OCR 文字按短标题、编号列表和段落进行基础排版，并折叠保留原始识别文字供核对；多栏阅读顺序、背景文字和识别错误仍需人工检查。OCR 内容进行 HTML / Hugo 短代码转义。支持 JPEG、PNG、WebP、HEIC/HEIF；最多 30 张、单张 20 MB、请求总量 120 MB、单图 5000 万像素。照片按 EXIF 自动旋转，转为最长边 4000 像素的 JPEG，并去掉 EXIF 定位等元信息；原始照片不存入仓库。

识别失败时整篇不保存，可重新提交；单页无文字会保留图片并提示。处理期间只允许一个任务。刷新页面可以继续查询已上传的任务，同一浏览器标签页保留最近任务 ID；重启后台不恢复未完成任务。不要在处理时关闭后台。任务完成后自动清理临时图片；异常断电留下的 `tools/blog-admin/.runtime/upload-*` 可在停机时删除。

### 免费 OCR 选择

- **Apple Vision（Mac 默认）**：系统自带，支持中英文，本地离线处理，不需要注册服务或付 API 调用费。最适合这台 Mac。首次编译需 Xcode Command Line Tools。
- **[Tesseract](https://tesseract-ocr.github.io/tessdoc/Installation.html)**：Apache 2.0 开源免费，本后台已提供适配。适合清晰的印刷文字，安装中文语言包后可离线使用。
- **[PaddleOCR](https://github.com/PaddlePaddle/PaddleOCR)**：Apache 2.0 开源，提供中文识别、版面分析等能力；可作为后续复杂说明书的替代方案，目前未接入。

强制使用 Tesseract：

```sh
# macOS
brew install tesseract tesseract-lang
# Debian / Ubuntu（替代上面的安装命令）
# sudo apt install python3-venv tesseract-ocr tesseract-ocr-chi-sim tesseract-ocr-eng
bash tools/blog-admin/start.sh --ocr tesseract
```

非 macOS 默认使用 Tesseract。启动时检查 `chi_sim` 和 `eng` 语言包是否齐全。OCR 不保证百分之百准确，反光、小字、表格、多栏排版可能需要人工核对，以照片原文为准。

### 验证

```sh
tools/blog-admin/.venv/bin/python -m unittest discover -s tools/blog-admin -p 'test_*.py'
```

测试在临时内容目录内创建文章，不写入真实博客。真实 OCR 集成测试在 macOS 调用 Vision，在其他平台需先安装 Tesseract 及语言包。
