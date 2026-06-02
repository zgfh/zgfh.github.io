---
date: '2025-11-27T04:49:43+08:00'
title: 'Linux资料'
tags: ["Linux资料"]
---

## 背景

我个人不是专攻 linux 系统的, 但工作会涉及linux 相关的使用和在linux 上的服务的问题定位
如:

1. 常规的使用: 部署 k8s 等
2. 基础问题排除: 部署问题排除, 容器故障排除, 容器的网络问题排除等
3. 性能分析: 容器或进程的内存 怎么占用这么高？是不是泄漏了？ 为什么cpu占用不高性能上不去?

所以, 这里主要以汇总资料为主,方便自己后续方便查找

## 入门资料

见 [入门资料](./linux入门.md)

## 概念

个人理解: Linux 的核心是"内核 + 用户空间"协作，它向下管理硬件资源，向上提供统一的接口供程序运行。几条常用的心智模型：

- 内核负责调度 CPU、内存、磁盘、网络等资源，用户态应用通过系统调用与内核交互。
- "一切皆文件"：无论是磁盘文件、设备节点还是网络套接字，都可用类似的方式读写、赋权。
- 进程和线程是最小的执行单元；Shell 只是用户与系统的桥梁，命令本质上是启动新的进程。

对我大多数使用场景,也都是围绕 进程 的生命周期 来工作

1. 进程的创建: 部署或叫运行 应用

   - 启动 python,shell 等程序: `python xx.py`, `bash xx.sh`, `./app`
   - 启动服务:  `systemctl start sshd xxx`
   - 其实在 shell 中执行的命令，大部分也会启动一个进程(也有例外哈): `sleep 3600`

2. 进程的查看和问题排除:
   - 进程列表: `ps -ef`, `ps aux --sort=-%cpu`
   - 进程树: `pstree -p`, `ps -eo pid,ppid,cmd --forest` 便于确认父子关系
   - 资源占用: `top`, `htop`, `pidstat -u -p <pid>` 查看 CPU/内存/IO 压力
   - 打开的文件与端口: `lsof -p <pid>`, `ls -l /proc/<pid>/fd`, `ss -lptn`
   - 实时监控: `watch -n 1 'ps -o pid,cmd,%cpu,%mem -p <pid>'`, 或结合 `systemd-cgls`, `systemctl status <service>`

3. 进程的修改: 我理解一般很少操作😄
4. 进程的删除:
   - 服务停止: `systemctl stop xxx`
   - 杀死: `kill xxx`

### 开机过程(第一个进程如何启动起来的)

当我们打开安装了linux系统的设备(不管是服务器还是虚拟机)的电源(服务器的物理按钮或者是虚拟机的开始按钮),就会执行linux系统的加载过程

大概过程:

1. 系统的引导过程: 固件(BIOS/UEFI) 启动并找到linux系统存储在那个存储上（可能是硬盘，u盘，光碟，网络）(),并开始运行
2. linux 内核的加载和启动
3. 系统就会运行1号进程
4. 其他开机默认启动的服务(进程)

学习资料:
- [鸟哥](http://cn.linux.vbird.org/linux_basic/0510osloader.php)
- [启动过程](https://zhuanlan.zhihu.com/p/679712103)
- [从linux系统文件角度分析启动过程](https://cloud.tencent.com/developer/article/1114481)

### 一个文件为什么能运行

一个二进制文件或命令能够直接运行的原因: 一般程序经过编译构建为二进制的时候, 是按 ELF 格式写入文件保存的, 运行时linux 会根据这种格式启动进程

学习资料:

- [从ELF文件到Linux进程](https://zhuanlan.zhihu.com/p/7341931974)

