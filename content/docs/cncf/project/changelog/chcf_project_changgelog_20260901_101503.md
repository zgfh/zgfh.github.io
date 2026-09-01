---
title: 'CNCF 项目版本动态：2026 年 7—8 月'
date: 2026-09-01T10:15:03+0800
tags: ['CNCF', 'Release Notes', 'Kubernetes']
---

# CNCF 项目版本动态：2026 年 7—8 月

本期收录 **19 个项目、71 个版本**。更新集中在 Kubernetes 基础设施、云原生网络、GitOps、策略治理与可观测性领域。其中，Kubernetes 1.37、Cilium 1.20、Argo CD 3.5、Kyverno 1.19、Karmada 1.19、Prometheus 3.14 和 Podman 6.1 是更值得关注的功能版本；其余多为维护版本和安全、稳定性修复。

## 本期重点

### Kubernetes 与核心基础设施

- **Kubernetes 1.37 正式发布**，同时 1.34、1.35、1.36 三条版本线继续发布补丁版本。计划升级前，应结合官方 CHANGELOG 核对 API 变化和节点组件兼容性。
- **etcd 3.7.1、3.6.14、3.5.33** 覆盖三条维护线；使用 Kubernetes 自建控制面的环境应优先检查备份恢复流程、客户端兼容性与滚动升级顺序。
- **containerd 2.3.4 / 2.2.7、CoreDNS 1.14.7** 均属于基础组件维护更新，建议与 Kubernetes 升级窗口一并验证。

### 网络：Cilium 1.20 是本期最大更新

Cilium 1.20 带来 Gateway API v1.6.1、`TCPRoute`/`UDPRoute`、后端 TLS、外部鉴权、可扩展 datapath、AWS ENI IPv6、Multi-Pool IPAM 迁移、拓扑感知服务流量、加权 Maglev、稳定版 MCS API，以及更完整的可观测性和性能优化。

升级时需要特别留意旧版双向认证、Envoy Go 扩展、Kafka-aware policy、`CiliumNodeConfig v2alpha1`、libnetwork 与自定义 CNI 配置。1.20.1 已补充一批 DSR、IPAM、Envoy 和 Cluster Mesh 修复，生产环境宜直接评估最新补丁版本。

### GitOps、策略与多集群

- **Argo CD 3.5** 是新的功能版本，并已连续发布 3.5.1、3.5.2；仍在 3.3、3.4 分支的用户也有对应补丁可选。升级前重点验证 CRD、ApplicationSet、仓库访问与 SSO 配置。
- **Kyverno 1.19** 和 **Karmada 1.19** 分别推进策略治理与多集群编排能力；Karmada 1.16—1.18 多条维护线同步更新，便于暂不升主版本的集群获取修复。
- **Volcano 1.15.2** 延续批处理与 AI 工作负载调度方向，同时 1.13、1.14 维护线仍有更新。

### 可观测性与运行时

- **Prometheus 3.14**、**Thanos 0.42.4** 是本期指标与长期存储方向的主要更新；升级时建议验证查询兼容性、对象存储配置和 sidecar/Store Gateway 组合。
- **OpenTelemetry 2026.06—2026.07** 汇总了两个月的网站、规范引用、Collector/SDK 版本和多语言文档更新。
- **Podman 6.1** 发布正式版，nerdctl 2.3.5、Helm 4.2.4/3.21.4、Jenkins 与 Keycloak 也分别更新了当前及维护版本线。

## 升级建议

1. 优先处理网络、控制面和安全相关补丁，再评估功能版本升级。
2. Kubernetes、etcd、containerd、CoreDNS 和 CNI 应作为一组检查兼容矩阵，不建议只看单个组件版本。
3. Cilium 1.20、Argo CD 3.5、Podman 6.1 等跨次版本升级，应先阅读升级说明并在测试环境验证配置迁移。
4. 同一项目同时出现多个维护分支时，只选择与现有主版本匹配的最新补丁，不需要逐级安装每个补丁版本。

## 完整版本索引

### 容器编排与核心组件

- **Kubernetes**（7）：[1.37.0]({{< relref "../kubernetes/releasenote/kubernetes_v1.37.0_release_note.md" >}})、[1.36.4]({{< relref "../kubernetes/releasenote/kubernetes_v1.36.4_release_note.md" >}})、[1.36.3]({{< relref "../kubernetes/releasenote/kubernetes_v1.36.3_release_note.md" >}})、[1.35.8]({{< relref "../kubernetes/releasenote/kubernetes_v1.35.8_release_note.md" >}})、[1.35.7]({{< relref "../kubernetes/releasenote/kubernetes_v1.35.7_release_note.md" >}})、[1.34.11]({{< relref "../kubernetes/releasenote/kubernetes_v1.34.11_release_note.md" >}})、[1.34.10]({{< relref "../kubernetes/releasenote/kubernetes_v1.34.10_release_note.md" >}})
- **etcd**（3）：[3.7.1]({{< relref "../etcd/releasenote/etcd_v3.7.1_release_note.md" >}})、[3.6.14]({{< relref "../etcd/releasenote/etcd_v3.6.14_release_note.md" >}})、[3.5.33]({{< relref "../etcd/releasenote/etcd_v3.5.33_release_note.md" >}})
- **containerd**（2）：[2.3.4]({{< relref "../containerd/releasenote/containerd_v2.3.4_release_note.md" >}})、[2.2.7]({{< relref "../containerd/releasenote/containerd_v2.2.7_release_note.md" >}})
- **CoreDNS**（1）：[1.14.7]({{< relref "../coredns/releasenote/coredns_v1.14.7_release_note.md" >}})

### 网络与多集群

- **Cilium**（8）：[1.20.1]({{< relref "../cilium/releasenote/cilium_v1.20.1_release_note.md" >}})、[1.20.0]({{< relref "../cilium/releasenote/cilium_v1.20.0_release_note.md" >}})、[1.19.7]({{< relref "../cilium/releasenote/cilium_v1.19.7_release_note.md" >}})、[1.19.6]({{< relref "../cilium/releasenote/cilium_v1.19.6_release_note.md" >}})、[1.18.13]({{< relref "../cilium/releasenote/cilium_v1.18.13_release_note.md" >}})、[1.18.12]({{< relref "../cilium/releasenote/cilium_v1.18.12_release_note.md" >}})、[1.17.18]({{< relref "../cilium/releasenote/cilium_v1.17.18_release_note.md" >}})、[1.21.0-pre.0]({{< relref "../cilium/releasenote/cilium_v1.21.0-pre.0_release_note.md" >}})
- **Calico**（2）：[3.32.2]({{< relref "../calico/releasenote/calico_v3.32.2_release_note.md" >}})、[3.31.7]({{< relref "../calico/releasenote/calico_v3.31.7_release_note.md" >}})
- **Karmada**（7）：[1.19.0]({{< relref "../karmada/releasenote/karmada_v1.19.0_release_note.md" >}})、[1.18.3]({{< relref "../karmada/releasenote/karmada_v1.18.3_release_note.md" >}})、[1.18.2]({{< relref "../karmada/releasenote/karmada_v1.18.2_release_note.md" >}})、[1.17.6]({{< relref "../karmada/releasenote/karmada_v1.17.6_release_note.md" >}})、[1.17.5]({{< relref "../karmada/releasenote/karmada_v1.17.5_release_note.md" >}})、[1.16.9]({{< relref "../karmada/releasenote/karmada_v1.16.9_release_note.md" >}})、[1.16.8]({{< relref "../karmada/releasenote/karmada_v1.16.8_release_note.md" >}})

### 交付、策略与调度

- **Argo CD**（9）：[3.5.2]({{< relref "../argo-cd/releasenote/argo-cd_v3.5.2_release_note.md" >}})、[3.5.1]({{< relref "../argo-cd/releasenote/argo-cd_v3.5.1_release_note.md" >}})、[3.5.0]({{< relref "../argo-cd/releasenote/argo-cd_v3.5.0_release_note.md" >}})、[3.5.0-rc3]({{< relref "../argo-cd/releasenote/argo-cd_v3.5.0-rc3_release_note.md" >}})、[3.4.8]({{< relref "../argo-cd/releasenote/argo-cd_v3.4.8_release_note.md" >}})、[3.4.7]({{< relref "../argo-cd/releasenote/argo-cd_v3.4.7_release_note.md" >}})、[3.4.6]({{< relref "../argo-cd/releasenote/argo-cd_v3.4.6_release_note.md" >}})、[3.3.14]({{< relref "../argo-cd/releasenote/argo-cd_v3.3.14_release_note.md" >}})、[3.3.13]({{< relref "../argo-cd/releasenote/argo-cd_v3.3.13_release_note.md" >}})
- **Kyverno**（1）：[1.19.0]({{< relref "../kyverno/releasenote/kyverno_v1.19.0_release_note.md" >}})
- **Volcano**（5）：[1.15.2]({{< relref "../volcano/releasenote/volcano_v1.15.2_release_note.md" >}})、[1.15.1]({{< relref "../volcano/releasenote/volcano_v1.15.1_release_note.md" >}})、[1.14.5]({{< relref "../volcano/releasenote/volcano_v1.14.5_release_note.md" >}})、[1.14.4]({{< relref "../volcano/releasenote/volcano_v1.14.4_release_note.md" >}})、[1.13.4]({{< relref "../volcano/releasenote/volcano_v1.13.4_release_note.md" >}})
- **Helm**（2）：[4.2.4]({{< relref "../helm/releasenote/helm_v4.2.4_release_note.md" >}})、[3.21.4]({{< relref "../helm/releasenote/helm_v3.21.4_release_note.md" >}})

### 可观测性

- **Prometheus**（2）：[3.14.0]({{< relref "../prometheus/releasenote/prometheus_v3.14.0_release_note.md" >}})、[3.13.2]({{< relref "../prometheus/releasenote/prometheus_v3.13.2_release_note.md" >}})
- **Thanos**（4）：[0.42.4]({{< relref "../thanos/releasenote/thanos_v0.42.4_release_note.md" >}})、[0.42.3]({{< relref "../thanos/releasenote/thanos_v0.42.3_release_note.md" >}})、[0.42.2]({{< relref "../thanos/releasenote/thanos_v0.42.2_release_note.md" >}})、[0.42.1]({{< relref "../thanos/releasenote/thanos_v0.42.1_release_note.md" >}})
- **OpenTelemetry 文档站**（2）：[2026.07]({{< relref "../opentelemetry.io/releasenote/opentelemetry.io_2026.07_release_note.md" >}})、[2026.06]({{< relref "../opentelemetry.io/releasenote/opentelemetry.io_2026.06_release_note.md" >}})

### 容器工具与平台组件

- **Podman**（4）：[6.1.0]({{< relref "../podman/releasenote/podman_v6.1.0_release_note.md" >}})、[6.1.0-rc1]({{< relref "../podman/releasenote/podman_v6.1.0-rc1_release_note.md" >}})、[6.0.2]({{< relref "../podman/releasenote/podman_v6.0.2_release_note.md" >}})、[5.8.6]({{< relref "../podman/releasenote/podman_v5.8.6_release_note.md" >}})
- **nerdctl**（1）：[2.3.5]({{< relref "../nerdctl/releasenote/nerdctl_v2.3.5_release_note.md" >}})
- **Jenkins**（8）：[2.579]({{< relref "../jenkins/releasenote/jenkins_jenkins-2.579_release_note.md" >}})、[2.578]({{< relref "../jenkins/releasenote/jenkins_jenkins-2.578_release_note.md" >}})、[2.577]({{< relref "../jenkins/releasenote/jenkins_jenkins-2.577_release_note.md" >}})、[2.576]({{< relref "../jenkins/releasenote/jenkins_jenkins-2.576_release_note.md" >}})、[2.575]({{< relref "../jenkins/releasenote/jenkins_jenkins-2.575_release_note.md" >}})、[2.574]({{< relref "../jenkins/releasenote/jenkins_jenkins-2.574_release_note.md" >}})、[2.573]({{< relref "../jenkins/releasenote/jenkins_jenkins-2.573_release_note.md" >}})、[2.568.2]({{< relref "../jenkins/releasenote/jenkins_jenkins-2.568.2_release_note.md" >}})
- **Keycloak**（3）：[26.7.3]({{< relref "../keycloak/releasenote/keycloak_26.7.3_release_note.md" >}})、[26.7.2]({{< relref "../keycloak/releasenote/keycloak_26.7.2_release_note.md" >}})、[26.7.1]({{< relref "../keycloak/releasenote/keycloak_26.7.1_release_note.md" >}})

> 说明：预发布版本（如 `Cilium 1.21.0-pre.0`、`Argo CD 3.5.0-rc3`、`Podman 6.1.0-rc1`）仅用于前瞻和测试，不建议直接用于生产环境。
