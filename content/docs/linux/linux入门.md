---
date: '2025-11-27T05:00:23+08:00'
title: 'Linux入门'
tags: 'Linux入门'
---

## 入门

基础命令: (学习资料太多,这里只是列举下常用命令, 方便后续自己复制粘贴😄)

### 基本概念

Linux 类似 Windows，是个开源免费的操作系统；凭借稳定、占用资源少、易于自动化运维等优点，线上服务器几乎都以 Linux 为主力。

- Linux = 内核 + 发行版：常见发行版有 Ubuntu、CentOS、Debian 等，命令大体一致，包管理工具略有差异。
- 交互方式以 Shell 为主：登录后默认会进入 Bash/Zsh 等 Shell，通过命令行和脚本完成绝大部分操作。
- 文件系统采用单根目录 `/`：所有文件都挂载在根目录下，常见路径如 `/etc`（配置）、`/var/log`（日志）。
- 一切皆文件：设备、进程、网络套接字都以文件形式呈现，便于统一的权限和管理。

### 快速上手流程

1. 先熟悉导航命令（`pwd`、`ls`、`cd`），确保敢在目录间穿梭。
2. 学会查看与编辑文件（`cat`、`less`、`vi`），可以快速定位配置与日志问题。
3. 掌握权限概念（`chmod`、`chown`、`sudo`），避免“不够权限”的常见陷阱。
4. 通过包管理器安装工具（`apt`、`yum`、`dnf`），扩充系统能力。
5. 利用 `man`、`--help`、`tldr` 等文档查找功能，遇到新命令不慌张。

### 基础命令

熟悉下表中的常用命令，就能覆盖 80% 的日常运维与排障场景；示例使用了最常见的组合，遇到新需求时可在此基础上扩展参数。

| 分类 | 命令 | 说明 | 示例 |
| --- | --- | --- | --- |
| 文件/目录 | `ls` | 列出目录内容 | `ls -lah /var/log` |
| 文件/目录 | `cd` | 切换目录 | `cd /etc/systemd/system` |
| 文件/目录 | `cp` / `mv` | 复制、移动文件 | `cp app.conf app.conf.bak` |
| 文本编辑 | `vi` / `nano` | 终端编辑器 | `vi /etc/hosts` |
| 远程传输 | `scp` | 远程复制文件 | `scp file user@host:/tmp/` |
| 远程传输 | `rsync` | 增量同步目录 | `rsync -avz ./dist/ user@host:/srv/dist/` |
| 权限管理 | `chmod` / `chown` | 修改权限、所有者 | `chmod 640 secret.txt` |
| 文本处理 | `grep` | 按模式过滤 | `grep -i error app.log` |
| 文本处理 | `sed` / `awk` | 流式文本处理 | `awk '{print $1}' access.log` |
| 查看内容 | `cat` / `tac` | 快速查看文件 | `tac latest.log` |
| 查看内容 | `head` / `tail` | 查看开头、结尾 | `tail -f /var/log/syslog` |
| 查看磁盘 | `df` / `du` | 磁盘使用情况 | `du -sh *` |
| 进程管理 | `ps` / `top` | 查看进程、占用 | `ps aux \| grep nginx` |
| 进程管理 | `kill` | 发送信号终止进程 | `kill -9 <pid>` |
| 网络 | `ss` / `netstat` | 查看端口连接 | `ss -ltnp` |
| 网络 | `curl` / `wget` | HTTP 请求与下载 | `curl -I https://example.com` |
| 包管理 | `apt` / `yum` / `dnf` | 安装、升级软件 | `yum install -y htop` |
| 系统信息 | `uname` / `hostnamectl` | 查看内核、主机信息 | `uname -a` |
| 帮助 | `man` / `--help` | 查看命令帮助 | `man grep` |

### 文本处理常见场景

- `grep -R "pattern" /path`：递归搜索目录中的匹配文本
- `sed -n '1,20p' file`：按行范围打印内容
- `awk -F',' '{print $2}' data.csv`：指定分隔符抽取字段
- `sort -nr data.txt` / `uniq -c`：排序与去重计数
- `wc -l access.log`：统计行数；常配合 `grep` 查看命中量

### 文件与归档

- `tar czf logs.tar.gz /var/log/nginx`：打包并压缩目录
- `tar xzf pkg.tar.gz -C /opt/app`：指定目录解压
- `find /data -type f -size +100M`：查找大文件
- `find . -mtime -1 -name "*.log"`：查找最近 1 天生成的日志

### 权限与用户

- `chmod 750 script.sh`：限定执行权限
- `chown user:group /srv/app`：修改所有者
- `usermod -aG docker user`：把用户加入补充组
- `sudo -l`：列出当前用户可使用的 sudo 命令

### 系统监控与诊断

- `top` / `htop`：实时监控 CPU、内存、负载
- `vmstat 1 5`：快速观察 CPU/内存/IO 趋势
- `iostat -xz 1`：检查磁盘瓶颈
- `free -h`：查看内存概况
- `dmesg | tail`：读取最新内核日志，排查硬件/驱动问题
- `journalctl -u service --since "10 min ago"`：查看 systemd 服务日志

### 网络排查

- `ping` / `traceroute`：连通性与路径检查
- `dig example.com +short`：解析域名
- `curl -v http://127.0.0.1:8080/health`：调试接口
- `ss -s`：汇总当前 socket 状态
- `tcpdump -i eth0 port 443 -nn`：抓包分析，故障定位时常用

### 常用组合拳

```bash
# 快速锁定高 CPU 进程
ps aux --sort=-%cpu | head

# 查找日志里 5 分钟内的 Error 并按时间排序
journalctl -u app --since "5 min ago" | grep -i error | sort

# 排查监听端口对应的进程
ss -ltnp | grep 8080

# 对比最近两次配置差异
diff -u config.old config.new

# 批量替换文件中的文本
find ./ -type f -name "*.yaml" -exec sed -i '' 's/old/new/g' {} +
```

> 提示：遇到不熟悉的命令时，先使用 `man command` 或 `command --help` 查看内置文档；配合 `tldr command`（需额外安装）能快速浏览常见用法。
