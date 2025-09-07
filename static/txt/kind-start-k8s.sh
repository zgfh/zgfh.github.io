#!/bin/bash
set -e
# 使用kind 安装一个3+2的集群
# 依赖: kind 二进制放到这个脚本同目录

if [[ "$1" == "-f" ]];then
   ./kind delete cluster --name kind-k8s
fi

cat >config.yaml<<-EOF
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
kubeadmConfigPatches:
- |
  apiVersion: kubeadm.k8s.io/v1beta2
  kind: ClusterConfiguration
  metadata:
    name: config
  apiServer:
    certSANs:
      - kind.k8s.local
      - 127.0.0.1
nodes:
- role: control-plane
  extraPortMappings:
  - containerPort: 6443
    hostPort: 56443
    listenAddress: "0.0.0.0" # Optional, defaults to "0.0.0.0"
    protocol: tcp # Optional, defaults to tcp
- role: control-plane
- role: control-plane
- role: worker
- role: worker
EOF
./kind create cluster --name kind-k8s --config=config.yaml --image=daocloud.io/daocloud/daolab-base_k8s:v1.18.4
docker cp kind-k8s-control-plane:/kind/bin/kubectl /usr/local/bin/kubectl
