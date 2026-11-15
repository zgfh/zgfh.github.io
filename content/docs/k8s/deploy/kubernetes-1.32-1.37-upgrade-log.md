---
date: '2026-11-15T05:20:00+08:00'
title: 'Kubernetes v1.32 到 v1.37 逐小版本升级记录'
tags: ['Kubernetes', 'kubeadm', '升级', '运维']
categories: ['Kubernetes', '运维']
---

本文记录本次单控制面 Kubernetes 集群从 v1.32.1 逐小版本升级到 v1.37.2 的实际过程，便于后续对比、复盘和学习。升级节点为 `192.168.1.202`，工作节点为 `192.168.1.203`。

## 升级结果

| 阶段 | 目标版本 | 结果 | 备注 |
| --- | --- | --- | --- |
| 初始状态 | v1.32.1 | 已确认 | containerd CRI 超时，203 节点 NotReady |
| 第 1 步 | v1.32.13 | 已完成 | etcd、API Server、controller-manager、scheduler 均升级成功 |
| 第 2 步 | v1.33.13 | 已完成 | CoreDNS 更新到 v1.12.0 |
| 第 3 步 | v1.34.13 | 已完成 | CoreDNS 更新到 v1.12.1；CreateJob 仅告警 |
| 第 4 步 | v1.35.10 | 已完成 | CoreDNS 更新到 v1.13.1 |
| 第 5 步 | v1.36.6 | 已完成 | CoreDNS 更新到 v1.14.2 |
| 第 6 步 | v1.37.2 | 已完成 | etcd 更新到 3.7.0-0，CoreDNS 更新到 v1.14.6 |

## 故障恢复

1. 控制面节点的 `containerd` 服务虽然显示 active，但 CRI RPC 已超时；重启 containerd 后 etcd、scheduler 和 controller-manager 静态 Pod 自动恢复。
2. 工作节点 `192.168.1.203` 在线且 SSH 正常，但 kubelet 从 2026-07-06 起处于 inactive/disabled。执行 `systemctl enable --now kubelet` 后节点重新注册并变为 Ready。
3. 203 上旧 Calico sandbox/init-container 卡在 containerd removing 状态，导致 Calico BGP 不建立。重启 203 的 containerd 和 kubelet 后，两个 Calico Pod 均恢复为 `1/1 Running`。
4. 当前 shell 的 HTTPS 代理会错误代理集群 API 地址，因此执行升级时为 `127.0.0.1`、`192.168.1.202` 和 `k8s.home.daozzg.com` 设置 `NO_PROXY`。
5. 升级 v1.36 前，202 上的 CRI 再次无响应。在确认依赖 nerdctl 的 `ss` 容器状态并通知后重启 containerd，CRI 和业务容器均恢复正常，再继续升级。

## 脚本修复

`host_manager/upgrade_k8s.sh` 做了以下兼容性修复：

- 健康检查使用显式的 containerd endpoint 执行 `crictl ps`，避开当前 crictl 0.1.0 对 `crictl info` 返回格式的解析问题。
- 当前版本从集群节点实际的 `kubeletVersion` 读取，而不是只读取本机 kubeadm 版本，支持升级中断后的断点续跑。
- 本集群 kubeadm 创建的 pause-image 健康检查 Job 不会 Complete，因此 `kubeadm upgrade apply` 对 `CreateJob` 使用 `--ignore-preflight-errors=CreateJob`；API、CRI、节点和 `/readyz` 检查仍保持强制执行。
- 每个 Kubernetes 二进制下载后均执行 SHA-256 校验。
- DaoCloud 的 CoreDNS 镜像实际位于 `coredns/coredns` 路径，脚本会拉取正确路径并标记为 kubeadm 配置中使用的镜像名。

## 镜像仓库问题

集群 kubeadm 配置使用 `k8s.m.daocloud.io`。直接请求仓库根路径下的以下 CoreDNS 标签会返回 HTTP 403：

- `coredns:v1.12.0`
- `coredns:v1.12.1`
- `coredns:v1.13.1`
- `coredns:v1.14.2`
- `coredns:v1.14.6`

确认 DaoCloud 镜像的实际仓库路径为 `coredns/coredns` 后，从正确路径拉取，再标记为 kubeadm 配置中需要的镜像名，例如：

```bash
nerdctl -n k8s.io pull \
  k8s.m.daocloud.io/coredns/coredns:v1.14.6

nerdctl -n k8s.io tag \
  k8s.m.daocloud.io/coredns/coredns:v1.14.6 \
  k8s.m.daocloud.io/coredns:v1.14.6
```

## 备份与回退点

重装和升级前均保留了 etcd 备份，主要回退点如下：

- `/root/etcd-backup-20261115-014129`：重装前的完整备份。
- `/root/etcd-backup-20261115-043816`：进入 v1.36 前的快照。
- `/root/etcd-backup-20261115-045531`：进入 v1.37 前的快照。

升级始终按 Kubernetes 次版本顺序执行，没有跨越次版本；控制面完成并健康后，再同步工作节点的 kubelet。

## 关键验证

每个小版本完成后至少确认：

```bash
KUBECONFIG=/etc/kubernetes/admin.conf kubectl get nodes -o wide
KUBECONFIG=/etc/kubernetes/admin.conf kubectl get --raw=/readyz
crictl --runtime-endpoint unix:///run/containerd/containerd.sock ps
```

最终验收结果：

- 202 控制面和 203 工作节点均为 `Ready`，版本均为 v1.37.2。
- etcd 为 3.7.0-0，CoreDNS 为 v1.14.6；控制面组件和 addon 均已更新。
- 集群 Pod 全部处于 `Running` 或 `Completed`，API Server `/readyz` 通过。
- Kubernetes 证书已续期至 2027-11-14。
- 202 上依赖 nerdctl 的 `ss-kcptun-client-1` 和 `ss-ss-1` 容器均为 Up。
