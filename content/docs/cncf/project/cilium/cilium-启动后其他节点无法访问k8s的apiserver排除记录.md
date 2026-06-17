---
date: '2026-06-18T01:17:46+08:00'
title: 'Cilium 启动后其他节点无法访问k8s的apiserver排除记录'
tags:
  - 'Cilium 启动后其他节点无法访问k8s的apiserver排除记录'
---

# 避坑指南：Oracle Cloud (OCI) + Ubuntu 24.04 搭建 Kubernetes 踩坑 Cilium 网络死锁全记录

在云厂商环境（特别是 Oracle Cloud Infrastructure, OCI）中使用最新的 Ubuntu 24.04 运行 Kubernetes，并采用 **Cilium** 作为 CNI（容器网络接口）时，极易遭遇两类网络致命暗坑：
1. **系统整机阻断/业务端口无法外网访问。**
2. **多节点集群间宿主机物理网络（Ping/6443 端口）在内核 eBPF 内部产生死循环断连。**

本文将深度还原排查过程，剖析技术原理，并提供经过验证、最彻底的终极重装修复方案。

---

## 🛑 坑一：Oracle 官方镜像自带的 iptables 拦截

### 1. 现象描述
在 OCI 控制台的安全组（NSG）或安全列表里已经完全放行了端口，但无论是外网、节点内，只要系统重启，新放行的业务端口（如 NodePort）依然无法访问。

### 2. 根因剖析
运行 `cat /etc/iptables/rules.v4` 会发现 Oracle 官方定制镜像（Cloud Image）自带了以下两条兜底的硬拒绝规则：
```text
-A INPUT -j REJECT --reject-with icmp-host-prohibited
-A FORWARD -j REJECT --reject-with icmp-host-prohibited
```
* 防火墙规则自上而下匹配。后续 K8s 动态追加的规则往往在 `REJECT` 之后，导致规则直接失效。
* `FORWARD` 链的 `REJECT` 会直接粉碎 Pod 的跨节点通信及 Service 流量。

### 3. 彻底解决方案
利用 `sed` 命令注释掉这两条阻碍规则，并使用系统的持久化工具刷新内存规则，确保重启不丢失：

```bash
# 安全注释 INPUT 和 FORWARD 链的 REJECT 规则
sudo sed -i '/-A INPUT -j REJECT --reject-with icmp-host-prohibited/s/^/# /' /etc/iptables/rules.v4
sudo sed -i '/-A FORWARD -j REJECT --reject-with icmp-host-prohibited/s/^/# /' /etc/iptables/rules.v4

# 重新加载使其立即且永久生效
sudo netfilter-persistent reload
```

---

## 🌪️ 坑二：Cilium 默认网段与主机网段重叠，引发 eBPF 内部“打水漂”死循环

### 1. 现象描述
关闭 `kubelet` 时，集群各节点之间内网完全互通，可以正常 `ping` 对方，也可以访问主节点的 `6443` 端口。但**只要开启 kubelet 启动 Cilium，两台机器立刻失联**（无法 ping，无法通信），而奇怪的是，你本地电脑依然可以通过公网 SSH 正常登录它们。

### 2. 排查与抓包取证
在被访问节点（IP1）的物理网卡和虚拟网卡上同时开启 `tcpdump` 观测流量，可以捕捉到罕见的 **eBPF 广播风暴死锁（eBPF Broadcast Loop）** 奇观：
```bash
# 终端 1 抓物理网卡
sudo tcpdump -i enp0s6 port 6443 or icmp -nn
# 终端 2 抓 Cilium 虚拟网卡
sudo tcpdump -i cilium_host port 6443 or icmp -nn
```
**抓包结果重现：**
```text
enp0s6 In  IP IP2 > IP1: ICMP echo request ...
cilium_host Out IP IP1 > IP2: ICMP echo reply ...
cilium_net In  IP IP1 > IP2: ICMP echo reply ...
cilium_host Out IP IP1 > IP2: ICMP echo reply ...
cilium_net In  IP IP1 > IP2: ICMP echo reply ...
```
* **分析**：请求确实平安到达了物理网卡 `enp0s6`（证明云安全组无错）。但响应的回包在不到 **1毫秒** 内，在系统的 `cilium_host` 和 `cilium_net` 虚拟网卡之间被**无限交替转发**。流量在内存中疯狂打转，根本无法回到物理网卡发出去！

### 3. 冲突根因：Cilium CLI 默认网段（10.0.0.0/8）污染
通过快捷命令 `cilium install` 默认安装时，Cilium 采用 `cluster-pool` 模式，其全局大网段默认是极其霸道的 **`10.0.0.0/8`**。
Cilium 会完全无视 K8s 节点自带的 `podCIDR` 配置，强行为当前节点切出一个子网段（比如 `10.0.1.0/24`）。

然而，**Oracle 云宿主机的真实物理内网网段刚好就是 `10.0.1.0/24`**。
这直接导致宿主机物理子网与集群容器子网在空间上彻底重叠，Cilium 强行改写的 `cilium_host` 内核路由直接将宿主机之间的基础流量“截胡”，引发了死锁。

---

## ⚙️ 彻底解决：无残留精准网段重装方案

在已有历史残留的集群中，仅通过命令升级极易遭遇 `CiliumNode` CRD 对象历史缓存死锁，导致新网段参数被架空。最稳妥、干净的方法是通过以下三步进行**肉体毁灭后的重新安装**：

### 第一步：卸载旧版并拔除 CRD 历史残留
```bash
# 1. 执行官方卸载
cilium uninstall

# 2. 强行删除所有历史节点遗留的 CRD 网络分配数据（最核心，否则重装后 IP 依然不变）
kubectl delete ciliumnodes --all
```

### 第二步：使用精准的 IPAM 层级变量重新安装
使用 `ipam.operator.clusterPoolIPv4PodCIDRList` 参数，显式将 Cilium 的地址批发池强制挪到完全不冲突的干净网段（例如 `10.251.0.0/16`）：

```bash
cilium install \
  --set ipam.mode=cluster-pool \
  --set ipam.operator.clusterPoolIPv4PodCIDRList='10.251.0.0/16'
```

### 第三步：驱逐业务 Pod 刷新网络
等待 Cilium 顺利安装 Ready 后，成批量产驱逐那些拿着历史错误旧网段的业务 Pod，触发其重新在 `10.251` 网段获取新 IP：
```bash
kubectl delete pods --all -A --field-selector status.phase=Running
```

---

## 🏁 见证奇迹的时刻
完成重装后，在宿主机终端输入命令查看虚拟网卡：
```bash
ip addr show cilium_host
```
此时 `inet` 会成功抛弃危险的 `10.0.0.199` 历史冲突值，精准蜕变为：
`inet 10.251.0.x/32 scope global cilium_host`

运行 `ip route show` 也会发现原本大面积重叠的路由表在空间上彻底被剥离。多节点之间的内网 `ping` 探测和 `6443` 控制平面瞬间全部恢复畅通，暗坑完美修复！
