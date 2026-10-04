"""Local, authenticated manual uploader. Does not commit or publish the blog."""
from __future__ import annotations

import argparse
import hmac
import html
import json
import os
from pathlib import Path
import platform
import re
import secrets
import shutil
import socket
import subprocess
import tempfile
import threading
import unicodedata
import warnings
from datetime import datetime
from urllib.parse import quote

from flask import Flask, jsonify, render_template, request
from PIL import Image, ImageOps, UnidentifiedImageError
from pillow_heif import register_heif_opener
from werkzeug.exceptions import HTTPException

register_heif_opener()
Image.MAX_IMAGE_PIXELS = 50_000_000
HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
MAX_FILES = 30
MAX_FILE_BYTES = 20 * 1024 * 1024


def article_title(value):
    value = unicodedata.normalize("NFC", value.strip())
    if not value or len(value) > 70 or re.search(r'[\x00-\x1f\x7f/\\:*?"<>|{}#%]', value):
        raise ValueError("名称须为 1–70 字，不能包含路径或特殊字符 / \\ : * ? \" < > | { } # %。")
    if value.startswith(".") or value.endswith("."):
        raise ValueError("名称不能以点开头或结尾。")
    return value if value.endswith("说明书") else value + "说明书"


def prepare_ocr(engine):
    engine = ("vision" if platform.system() == "Darwin" else "tesseract") if engine == "auto" else engine
    if engine == "vision":
        if platform.system() != "Darwin":
            raise RuntimeError("Apple Vision 仅支持 macOS，请使用 --ocr tesseract。")
        binary = HERE / ".runtime" / "vision-ocr"
        source = HERE / "vision.swift"
        binary.parent.mkdir(exist_ok=True)
        if not binary.exists() or binary.stat().st_mtime < source.stat().st_mtime:
            print("首次启动：正在编译本地 Apple Vision OCR…", flush=True)
            subprocess.run(["swiftc", str(source), "-o", str(binary)], check=True, timeout=180)
        return engine, [str(binary)]
    binary = shutil.which("tesseract")
    if not binary:
        raise RuntimeError("未安装 Tesseract。请按 readme.md 安装引擎与中文语言包。")
    languages = subprocess.run([binary, "--list-langs"], capture_output=True, text=True, check=True).stdout.splitlines()
    if not {"chi_sim", "eng"}.issubset(set(languages)):
        raise RuntimeError("Tesseract 缺少 chi_sim 或 eng 语言包，请按 readme.md 安装。")
    return engine, [binary]


def recognize(path, engine, command):
    args = command + [str(path)]
    if engine == "tesseract":
        args += ["stdout", "-l", "chi_sim+eng"]
    try:
        result = subprocess.run(args, capture_output=True, text=True, timeout=120, check=True)
    except (subprocess.SubprocessError, OSError) as exc:
        raise RuntimeError("图片识别失败或超时，请换用清晰照片后重试；本次未保存文章。") from exc
    return result.stdout.strip()


def normalize_image(upload, destination):
    # Decode the actual bytes; never trust the filename, MIME type, or EXIF orientation.
    with warnings.catch_warnings():
        warnings.simplefilter("error", Image.DecompressionBombWarning)
        try:
            with Image.open(upload) as source:
                if source.format not in {"JPEG", "PNG", "WEBP", "HEIF", "HEIC"}:
                    raise ValueError("仅支持 JPEG、PNG、WebP、HEIC/HEIF 图片。")
                source.load()
                image = ImageOps.exif_transpose(source)
                image.thumbnail((4000, 4000))
                if "A" in image.getbands():
                    rgba = image.convert("RGBA")
                    image = Image.new("RGB", rgba.size, "white")
                    image.paste(rgba, mask=rgba.getchannel("A"))
                else:
                    image = image.convert("RGB")
                # Do not copy EXIF (including location) into the blog.
                image.save(destination, "JPEG", quality=92, optimize=True)
        except (UnidentifiedImageError, OSError, Image.DecompressionBombError, Image.DecompressionBombWarning) as exc:
            raise ValueError("图片损坏、格式不支持或超过 5000 万像素，请重新选择。") from exc


def format_ocr(text):
    """Conservative reading layout; always retain the unmodified OCR for review."""
    def escape(value):
        return html.escape(value).replace("{", "&#123;")

    blocks = []
    items = []
    paragraph = []

    def flush():
        if paragraph:
            blocks.append("<p>" + "<br>".join(escape(line) for line in paragraph) + "</p>")
            paragraph.clear()
        if items:
            blocks.append("<ol>" + "".join(f'<li value="{number}">{escape(value)}</li>' for number, value in items) + "</ol>")
            items.clear()

    for line in (text or "（此页未识别出文字）").splitlines():
        line = line.strip()
        numbered = re.match(r"^(\d{1,3})[.、．]\s*(.+)$", line)
        heading = len(line) <= 30 and line.endswith(("：", "？", "?"))
        if not line:
            flush()
        elif heading:
            flush()
            blocks.append("<h4>" + escape(line) + "</h4>")
        elif numbered:
            if paragraph:
                flush()
            items.append((int(numbered[1]), numbered[2]))
        elif items and not line.startswith(("注", "备注", "※", "*")):
            number, previous = items[-1]
            separator = " " if previous[-1:].isascii() and line[:1].isascii() else ""
            items[-1] = (number, previous + separator + line)
        else:
            if items:
                flush()
            paragraph.append(line)
    flush()
    reading = '<div class="ocr-reading" style="overflow-wrap: anywhere; line-height: 1.9;">' + "".join(blocks) + "</div>"
    original = '<details><summary>查看原始识别文字（核对用）</summary><pre style="white-space: pre-wrap; overflow-wrap: anywhere;">' + escape(text) + "</pre></details>"
    return reading + "\n\n" + original


def create_app(content_root=None, token=None, ocr=None):
    app = Flask(__name__)
    app.config.update(MAX_CONTENT_LENGTH=120 * 1024 * 1024, MAX_FORM_PARTS=40)
    section = Path(content_root or ROOT / "content" / "docs") / "说明书"
    token = token or secrets.token_urlsafe(24)
    engine, command = ocr or prepare_ocr("auto")
    jobs = {}
    lock = threading.Lock()
    busy = threading.Lock()
    staging_root = HERE / ".runtime"
    staging_root.mkdir(exist_ok=True)

    @app.before_request
    def authenticate():
        if request.path.startswith("/api/"):
            supplied = request.headers.get("Authorization", "")
            if not hmac.compare_digest(supplied.encode(), ("Bearer " + token).encode()):
                return jsonify(error="访问码无效，请使用终端显示的地址重新打开。"), 401

    @app.after_request
    def headers(response):
        response.headers["Cache-Control"] = "no-store"
        response.headers["X-Content-Type-Options"] = "nosniff"
        response.headers["Referrer-Policy"] = "no-referrer"
        response.headers["Content-Security-Policy"] = "default-src 'self'; img-src 'self' blob:; style-src 'self'; script-src 'self'; connect-src 'self'; frame-ancestors 'none'; base-uri 'none'; form-action 'self'"
        return response

    @app.errorhandler(HTTPException)
    def http_error(exc):
        return jsonify(error="上传总量不能超过 120 MB。" if exc.code == 413 else exc.description), exc.code

    @app.get("/")
    def index():
        return render_template("index.html")

    @app.get("/api/status")
    def status():
        return jsonify(engine=engine, max_files=MAX_FILES)

    def update(job_id, **values):
        with lock:
            jobs[job_id].update(values)

    def process(job_id, title, stage, count):
        published_images = []
        try:
            texts, notices = [], []
            for i in range(1, count + 1):
                update(job_id, message=f"正在识别第 {i}/{count} 张图片…", current=i)
                text = recognize(stage / f"{i:02}.jpg", engine, command)
                texts.append(text)
                if not text:
                    notices.append(f"第 {i} 张图片未识别出文字。")
            section.mkdir(parents=True, exist_ok=True)
            index_file = section / "_index.md"
            if not index_file.exists():
                with index_file.open("x", encoding="utf-8") as stream:
                    stream.write("---\ntitle: '说明书'\ntags: ['说明书']\n---\n\n收集产品说明书、图片与可搜索的识别文字。\n")
            target = section / f"{title}.md"
            if target.exists():
                raise ValueError("同名说明书已经存在，请修改名称后提交；不会覆盖原文。")
            now = datetime.now().astimezone().isoformat(timespec="seconds")
            lines = ["---", f"title: {json.dumps(title, ensure_ascii=False)}", f"date: '{now}'", "tags: ['说明书']", "---", "", "## 说明书图片", ""]
            for i in range(1, count + 1):
                filename = f"{title}-{job_id}-{i:02}.jpg"
                destination = section / filename
                shutil.copyfile(stage / f"{i:02}.jpg", destination)
                published_images.append(destination)
                # Root-relative URL: images are section resources, not article page resources.
                url = "/docs/" + quote("说明书", safe="") + "/" + quote(filename, safe="")
                lines.extend([f"![第 {i} 页]({url})", ""])
            lines += ["## 图片识别文字", "", "> 以下文字由本地 OCR 自动识别，可能有误，请以原图为准。", ""]
            for i, text in enumerate(texts, 1):
                lines += [f"### 第 {i} 页", "", format_ocr(text), ""]
            markdown = "\n".join(lines)
            prepared = stage / "article.md"
            prepared.write_text(markdown, encoding="utf-8")
            # Link atomically without overwriting, even if another writer created the title.
            os.link(prepared, target)
            published_images.clear()
            update(job_id, state="done", message="说明书已保存", path=f"content/docs/说明书/{title}.md", warnings=notices, text="\n\n".join(texts), formatted_html="".join(f"<h3>第 {i} 页</h3>" + format_ocr(text) for i, text in enumerate(texts, 1)))
        except Exception as exc:
            for path in published_images:
                path.unlink(missing_ok=True)
            message = str(exc) if isinstance(exc, (ValueError, RuntimeError)) else "保存失败，请检查磁盘空间及目录权限后重试。"
            app.logger.exception("Manual creation failed")
            update(job_id, state="error", message=message)
        finally:
            shutil.rmtree(stage, ignore_errors=True)
            busy.release()

    @app.post("/api/manuals")
    def upload():
        if not busy.acquire(blocking=False):
            return jsonify(error="已有说明书正在处理，请稍后重试。"), 409
        stage = None
        handed_off = False
        try:
            title = article_title(request.form.get("name", ""))
            if (section / f"{title}.md").exists():
                return jsonify(error="同名说明书已经存在，请修改名称。"), 409
            files = request.files.getlist("images")
            if not 1 <= len(files) <= MAX_FILES:
                raise ValueError(f"请选择 1–{MAX_FILES} 张图片。")
            stage = Path(tempfile.mkdtemp(prefix="upload-", dir=staging_root))
            for i, file in enumerate(files, 1):
                file.stream.seek(0, 2)
                size = file.stream.tell()
                file.stream.seek(0)
                if size > MAX_FILE_BYTES:
                    raise ValueError(f"第 {i} 张图片超过 20 MB。")
                normalize_image(file.stream, stage / f"{i:02}.jpg")
            job_id = secrets.token_hex(8)
            with lock:
                # Retain recent results for reconnects while bounding memory use.
                while len(jobs) >= 100:
                    jobs.pop(next(iter(jobs)))
                jobs[job_id] = dict(state="processing", message="图片已上传，准备识别…", total=len(files), current=0)
            worker = threading.Thread(target=process, args=(job_id, title, stage, len(files)), daemon=True)
            worker.start()
            handed_off = True
            return jsonify(id=job_id), 202
        except ValueError as exc:
            return jsonify(error=str(exc)), 400
        finally:
            if not handed_off:
                if stage:
                    shutil.rmtree(stage, ignore_errors=True)
                busy.release()

    @app.get("/api/jobs/<job_id>")
    def job(job_id):
        with lock:
            result = jobs.get(job_id)
            return (jsonify(result), 200) if result else (jsonify(error="任务不存在或服务已重启，请先检查仓库中的文章。"), 404)

    return app


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--host", default="0.0.0.0")
    parser.add_argument("--port", type=int, default=8765)
    parser.add_argument("--ocr", choices=["auto", "vision", "tesseract"], default="auto")
    args = parser.parse_args()
    engine = prepare_ocr(args.ocr)
    token = secrets.token_urlsafe(24)
    app = create_app(token=token, ocr=engine)
    print(f"\n本机：http://127.0.0.1:{args.port}/#token={token}", flush=True)
    addresses = set()
    if platform.system() == "Darwin":
        result = subprocess.run(["ifconfig"], capture_output=True, text=True, check=True)
        addresses.update(re.findall(r"inet (\d+\.\d+\.\d+\.\d+)", result.stdout))
    else:
        addresses.update(socket.gethostbyname_ex(socket.gethostname())[2])
    for address in sorted(addresses - {"127.0.0.1"}):
        print(f"手机（同一 Wi-Fi）：http://{address}:{args.port}/#token={token}", flush=True)
    print(f"OCR：{engine[0]}。访问地址包含临时访问码，勿分享；关闭终端服务即停止。\n", flush=True)
    # Suppress request logs so neither titles nor authentication information are logged.
    import logging
    logging.getLogger("werkzeug").setLevel(logging.ERROR)
    app.run(host=args.host, port=args.port, debug=False, threaded=True, use_reloader=False)


if __name__ == "__main__":
    main()
