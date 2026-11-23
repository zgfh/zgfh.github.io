#!/usr/bin/env python3
"""Sync the upstream LLM release timeline into one Hugo post per change batch."""

from __future__ import annotations

import argparse
import json
import os
import sys
import tempfile
from datetime import datetime, timezone
from pathlib import Path
from typing import Any
from urllib.request import Request, urlopen
from zoneinfo import ZoneInfo

SOURCE_URL = "https://raw.githubusercontent.com/RACErace/llm-release-timeline/main/data/releases.json"
TIMELINE_URL = "https://racerace.github.io/llm-release-timeline/"
REQUIRED_FIELDS = ("date", "org", "name", "kind", "note", "url", "source")
OPTIONAL_FIELDS = ("url2", "stage")
COMPARE_FIELDS = REQUIRED_FIELDS + OPTIONAL_FIELDS


class SyncError(RuntimeError):
    pass


def read_json(path: Path) -> Any:
    try:
        with path.open(encoding="utf-8") as fh:
            return json.load(fh)
    except (OSError, json.JSONDecodeError) as exc:
        raise SyncError(f"无法读取快照 {path}: {exc}") from exc


def fetch_records(url: str) -> list[dict[str, Any]]:
    request = Request(url, headers={"User-Agent": "zgfh.github.io-llm-timeline-sync/1.0"})
    try:
        with urlopen(request, timeout=30) as response:
            payload = json.loads(response.read().decode("utf-8"))
    except Exception as exc:
        raise SyncError(f"获取模型年鉴失败: {exc}") from exc
    return validate_records(payload, "上游数据")


def validate_records(payload: Any, label: str) -> list[dict[str, Any]]:
    if not isinstance(payload, list):
        raise SyncError(f"{label}必须是 JSON 数组")
    records: list[dict[str, Any]] = []
    seen: set[str] = set()
    for index, item in enumerate(payload):
        if not isinstance(item, dict):
            raise SyncError(f"{label}第 {index + 1} 条不是对象")
        missing = [field for field in REQUIRED_FIELDS if not isinstance(item.get(field), str) or not item[field].strip()]
        if missing:
            raise SyncError(f"{label}第 {index + 1} 条缺少有效字段: {', '.join(missing)}")
        key = record_key(item)
        if key in seen:
            raise SyncError(f"{label}存在重复记录标识: {key}")
        seen.add(key)
        records.append({field: item[field] for field in COMPARE_FIELDS if field in item})
    return sorted(records, key=record_key)


def record_key(record: dict[str, Any]) -> str:
    # The upstream file has no immutable record ID. A model can legitimately
    # have several release events, so org + name alone is not unique. Date and
    # kind distinguish those events while note, links and source remain fields
    # that can be reported as revisions.
    return "\x1f".join(record[field] for field in ("org", "name", "date", "kind"))


def canonical(records: list[dict[str, Any]]) -> str:
    return json.dumps(records, ensure_ascii=False, sort_keys=True, indent=2) + "\n"


def write_atomic(path: Path, content: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    fd, temporary = tempfile.mkstemp(prefix=f".{path.name}.", dir=path.parent, text=True)
    try:
        with os.fdopen(fd, "w", encoding="utf-8") as fh:
            fh.write(content)
        os.replace(temporary, path)
    except Exception:
        try:
            os.unlink(temporary)
        except OSError:
            pass
        raise


def md(value: str) -> str:
    return value.replace("\\", "\\\\").replace("[", "\\[").replace("]", "\\]")


def links(record: dict[str, Any]) -> str:
    result = [f"[{md(record['source'])}]({record['url']})"]
    if record.get("url2"):
        result.append(f"[补充资料]({record['url2']})")
    return "、".join(result)


def record_heading(record: dict[str, Any]) -> str:
    return f"{record['name']}（{record['org']}）"


def render_post(added: list[dict[str, Any]], modified: list[tuple[dict[str, Any], dict[str, Any]]], removed: list[dict[str, Any]], now: datetime) -> str:
    title = f"AI 模型年鉴变更 · {now:%Y-%m-%d %H:%M}"
    lines = ["---", f"title: {json.dumps(title, ensure_ascii=False)}", f"date: {now.isoformat()}", "tags: [\"AI\", \"模型年鉴\"]", "---", "", "## 本次变更摘要", "", f"新增 {len(added)} 条、修订 {len(modified)} 条、移除 {len(removed)} 条。", ""]
    if added:
        lines += ["## 新增模型", ""]
        for item in added:
            lines += [f"### {record_heading(item)}", "", f"- 厂商：{item['org']}", f"- 模型：{item['name']}", f"- 发布日期：{item['date']}", f"- 事件类型：{item['kind']}", f"- 变化内容：{item['note']}", f"- 原始资料：{links(item)}", ""]
    if modified:
        lines += ["## 修改的模型", ""]
        for old, new in modified:
            changes = [field for field in COMPARE_FIELDS if old.get(field) != new.get(field)]
            lines += [f"### {record_heading(new)}", "", f"变化字段：{', '.join(changes)}", "", "更新后的记录：", "", f"- 厂商：{new['org']}", f"- 模型：{new['name']}", f"- 发布日期：{new['date']}", f"- 事件类型：{new['kind']}", f"- 变化说明：{new['note']}", f"- 原始资料：{links(new)}"]
            if old.get("note") != new.get("note"):
                lines += [f"- 之前的说明：{old.get('note', '（无）')}"]
            lines += ["", "字段变更明细：", ""]
            for field in changes:
                lines.append(f"- `{field}`：{old.get(field, '（无）')} → {new.get(field, '（无）')}")
            lines.append("")
    if removed:
        lines += ["## 删除的记录", "", "以下记录已从模型年鉴数据中移除，这不代表模型已经下线。", ""]
        for item in removed:
            lines += [f"### {record_heading(item)}", "", f"- 发布日期：{item['date']}", f"- 事件类型：{item['kind']}", f"- 之前的说明：{item['note']}", f"- 原始资料：{links(item)}", ""]
    lines += ["## 原始来源", "", "查看完整模型年鉴：", "", TIMELINE_URL, ""]
    return "\n".join(lines)


def output_value(key: str, value: str) -> None:
    output = os.environ.get("GITHUB_OUTPUT")
    if output:
        with open(output, "a", encoding="utf-8") as fh:
            fh.write(f"{key}={value}\n")


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--source", default=SOURCE_URL)
    parser.add_argument("--snapshot", default="data/llm-timeline-snapshot.json", type=Path)
    parser.add_argument("--output-dir", default="content/docs/ai-model-updates", type=Path)
    parser.add_argument("--now", help="测试用 ISO 时间；默认使用北京时间")
    parser.add_argument("--max-delete-ratio", type=float, default=0.20)
    args = parser.parse_args()
    try:
        current = fetch_records(args.source)
        if not args.snapshot.exists():
            write_atomic(args.snapshot, canonical(current))
            output_value("initialized", "true")
            output_value("changed", "false")
            print("initialized=true changed=false")
            return 0
        previous = validate_records(read_json(args.snapshot), "本地快照")
        old = {record_key(item): item for item in previous}
        new = {record_key(item): item for item in current}
        added = [new[key] for key in sorted(new.keys() - old.keys())]
        removed = [old[key] for key in sorted(old.keys() - new.keys())]
        modified = [(old[key], new[key]) for key in sorted(old.keys() & new.keys()) if old[key] != new[key]]
        if removed and len(removed) > max(10, int(len(previous) * args.max_delete_ratio)):
            raise SyncError(f"删除记录数量异常: {len(removed)}/{len(previous)}，已停止执行")
        if not added and not removed and not modified:
            output_value("initialized", "false")
            output_value("changed", "false")
            print("initialized=false changed=false")
            return 0
        now = datetime.fromisoformat(args.now) if args.now else datetime.now(timezone.utc).astimezone(ZoneInfo("Asia/Shanghai"))
        filename = f"{now:%Y-%m-%d-%H%M%S}-llm-timeline.md"
        write_atomic(args.output_dir / filename, render_post(added, modified, removed, now))
        write_atomic(args.snapshot, canonical(current))
        output_value("initialized", "false")
        output_value("changed", "true")
        print(f"initialized=false changed=true article={args.output_dir / filename}")
        return 0
    except SyncError as exc:
        print(f"错误: {exc}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
