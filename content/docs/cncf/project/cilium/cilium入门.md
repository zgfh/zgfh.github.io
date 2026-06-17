---
date: '2026-06-07T21:38:35+08:00'
title: 'Cilium入门'
tags:
  - 'Cilium入门'
---

## 路由模式

1. 是否启用bgp 路由等

## 网络模式

1. 也有类似calico 的直连, vxlan隧道


## 可观测

Hubble 

## 替换 kube-proxy

1. kubeadm init 时添加 --skip-phases=addon/kube-proxy
2. 安装 Cilium 并设置 kubeProxyReplacement=strict (完全替换)

## 替换 ingress

## 替换 istio?


## 坑
1. 执行cilium uninstall 后,并不会清理iptables等,如果有问题需要自己重启下主机进行重置
2. 
## 参考:

1. https://docs.cilium.io/en/stable/installation/k8s-install-kubeadm/
1. https://zhuanlan.zhihu.com/p/589302885
1. https://blog.liaosirui.com/%E7%B3%BB%E7%BB%9F%E8%BF%90%E7%BB%B4/E.%E5%AE%B9%E5%99%A8%E4%B8%8E%E5%AE%B9%E5%99%A8%E7%BC%96%E6%8E%92/Kubernetes/%E7%BD%91%E7%BB%9C/CNIProvider/Cilium/Cilium%E5%8E%9F%E7%90%86%E5%92%8C%E6%A6%82%E5%BF%B5/Cilium%E7%BB%84%E4%BB%B6.html
1. https://community-github.cn-sh2.ufileos.com/network/modules/aliyun-terway/aliyun-cilium.html#_1
1. https://docs.giantswarm.io/overview/security/kernel-settings/

