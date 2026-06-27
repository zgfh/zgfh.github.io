---
title: 推介 k8s-remote-node：零依赖，把任意 Linux 机器变成 Kubernetes 节点
slug: k8s-remote-node
date_published: 2026-06-27T00:00:00.000Z
date_updated: 2026-06-27T00:00:00.000Z
tags: ["Kubernetes", "Virtual Kubelet", "SSH", "边缘计算", "Home Lab"]
---

只需 SSH + Docker，无需安装 kubelet，就能把任意 Linux 机器接入 Kubernetes 集群。

## 你的痛点

你在公有云上有几台 2C4G 的低配机器跑着生产服务。部署方式是 SSH 上去 `docker compose up -d`——简单粗暴，但每次换机器、重装系统都得手动重新部署一遍。没有统一的编排，没有自愈，看日志要挨台上去看。

你想用 K8s 来统一管理这些机器，但装上 kubelet + containerd，一套组件就吃掉 500MB+ 内存——对你这种小配置机器来说太奢侈了。

你就想：**能不能既享受 K8s 的标准编排能力，又不用在每台机器上装 K8s 组件？**

## k8s-remote-node 一句话简介

**[k8s-remote-node](https://github.com/zgfh/k8s-remote-node)** 是一个 Virtual Kubelet Provider —— 它在你的 K8s 集群里注册一个"虚拟节点"，背后通过 **SSH** 连接到真实机器，用 **Docker Compose** 管理容器。

目标机器上**不需要安装任何 Kubernetes 组件**，有 SSH 和 Docker 就够。

## 对比

| | 传统接入 | k8s-remote-node |
|---|---|---|
| 需要安装的组件 | kubelet + containerd + CNI | SSH + Docker（你大概率已经装了） |
| 额外资源占用 | ~500MB+ 内存，1+ CPU | 零 |
| 需要开放的端口 | 10250, 30000-32767, ... | 22 |
| NAT 穿透 | 需要 VPN / Tunnel | 天然支持 |
| 接入时间 | 30 分钟起步 | 30 秒 |

## 怎么做到的？

核心思路很直白：

```
kubectl apply pod.yaml
        │
        ▼
┌─────────────────────────┐
│  K8s API Server         │
│  (调度 Pod 到虚拟节点)    │
└───────────┬─────────────┘
            │
            ▼
┌─────────────────────────┐
│  k8s-remote-node        │  ← 在集群内运行一个 Deployment
│  (Virtual Kubelet)      │
│                         │
│  Pod Spec → docker-     │
│  compose.yml → SFTP     │
│  上传 → ssh exec:       │
│  docker compose up -d   │
└───────────┬─────────────┘
            │  SSH (port 22)
            ▼
┌─────────────────────────┐
│  你的远程机器             │
│  /opt/vk-pods/          │
│    default/nginx-demo/  │
│      docker-compose.yml │
│  docker compose up -d   │
│  → 容器跑起来了           │
└─────────────────────────┘
```

Pod Spec 被翻译成 `docker-compose.yml`，通过 SFTP 上传到远程机器，一条 `docker compose up -d` 就起来了。后续的状态同步、日志查看、exec 执行，全部走 SSH。

**不需要远程机器连集群，是集群主动去连远程机器。** 后者藏在 NAT 后面也无所谓。

## 快速上手

### 0. 远程机器准备

```bash
# 确保有 Docker + Compose 插件
docker compose version
# 确保 SSH key 认证可用
```

### 1. 在集群里部署

```bash
kubectl apply -f deploy/rbac.yaml
kubectl apply -f deploy/ssh-secret.yaml
kubectl apply -f deploy/deployment.yaml
```

### 2. 检查节点

```bash
kubectl get nodes
# NAME                         STATUS   ROLES   AGE
# ssh-node-192-168-1-201       Ready    agent   5s
```

### 3. 跑一个 Pod

```bash
kubectl apply -f deploy/test-pod.yaml
kubectl get pods -o wide
# NAME          READY   STATUS    NODE
# nginx-demo    1/1     Running   ssh-node-192-168-1-201
```

你的 nginx 现在跑在远程机器的 Docker 里，但管理方式和集群里其他 Pod 完全一样。

## 支持哪些操作？

| kubectl 命令 | 实际执行 |
|---|---|
| `kubectl create pod` | Pod → compose.yml → SFTP → `docker compose up -d` |
| `kubectl delete pod` | `docker compose down -v` + `rm -rf` |
| `kubectl logs` | `docker compose logs --tail=N` |
| `kubectl exec` | `docker compose exec -T <container> <cmd>` |
| `kubectl get pods` | `docker compose ps --format json` → 映射为 PodStatus |

Volume 也处理好了：ConfigMap、Secret、EmptyDir、HostPath 全部支持。ConfigMap/Secret 变更后还会自动同步到远程机器。

## 适用场景

### 公有云小机器统一纳管

公有云上有多台低配机器，原来靠 `docker compose up -d` 手动部署。上了这个之后，统一的 `kubectl` 管所有机器，不用挨台 SSH、换机器不用重装服务、ConfigMap/Secret 变更自动下发——享受 K8s 的标准编排能力，但机器上依然只跑 Docker。

### Home Lab

家里有台 NAS 或树莓派跑着 Docker 服务？不用再装一套 K8s 全家桶，SSH 接进来就能跑批处理、定时任务、实验性 Pod。

### 边缘计算

边缘设备大多是 ARM 小板子，资源有限。装上 SSH 就能被集群统一调度和管理，不需要每台设备都跑一个 kubelet。

## 配置一览

部署时通过环境变量控制：

| 变量 | 默认值 | 说明 |
|---|---|---|
| `SSH_HOST` | **必填** | 远程机器 IP |
| `SSH_USER` | `root` | SSH 用户名 |
| `SSH_PORT` | `22` | SSH 端口 |
| `SSH_KEY_PATH` | `/etc/ssh-key/id_rsa` | 私钥路径 |
| `VK_NODE_NAME` | `ssh-node-<host>` | 虚拟节点名称 |
| `WORK_DIR` | `/opt/vk-pods` | 远程机器上存放 compose 文件的目录 |
| `NODE_CAPACITY_CPU` | `8` | 节点 CPU 容量（调度依据） |
| `NODE_CAPACITY_MEMORY` | `16Gi` | 节点内存容量 |
| `NODE_CAPACITY_PODS` | `100` | 最大 Pod 数 |

## 它的边界

当然，这玩意不是万能的，也有明确的适用边界：

- **不适合追求性能的场景**：没有 CNI 插件，容器用 Docker 网络。对网络性能有极致要求的应用还是老实装 kubelet。
- **不适合多副本高可用**：机器挂了就是挂了，节点会变 NotReady，但没有自动迁移。
- **不适合 GPU 场景**：资源映射当前只支持 CPU/Memory。
- **节点上的 Docker 是共享的**：远程机器上如果有其他 Docker 容器，和 k8s-remote-node 管理的容器跑在同一个 Docker daemon 下，需要自己做资源规划。

它的定位很清晰：**用最小的成本，把一台"有个 Docker"的机器变成 K8s 节点。** 不是要替代 kubelet，而是让你多一种选择。

## 总结

如果你厌倦了"为了加个节点折腾半天"，试试 [k8s-remote-node](https://github.com/zgfh/k8s-remote-node)。SSH 能通，Pod 就能跑。

> 也推荐阅读前一篇：[从零开发 Virtual Kubelet Provider](/docs/k8s/extend/virtual-kubelet-provider)，了解 Provider 的内部实现原理。
