#!/bin/bash
set -e
# 快速安装一个k8s，仅限测试使用
# 只试用于centos 7+
# 主节点: sh get-k8s.sh
kubeadm join 192.168.101.55:6443 
# 从节点(参数是主节点输出的): sh get-k8s.sh join 


# 系统配置
setenforce 0 && sed -i '/^SELINUX=/c\SELINUX=disabled' /etc/selinux/config
systemctl stop firewalld || echo "no firewalld"
systemctl disable firewalld || echo "no firewalld"

sysctl vm.swappiness=0
sed -i 's/vm.swappiness/#vm.swappiness/g' /etc/sysctl.conf
echo "vm.swappiness = 0" >> /etc/sysctl.conf
swapoff -a
sed -i '/ swap / s/^/#/' /etc/fstab


# 安装docker 和kubelet
docker version || curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
kubelet --version ||docker run --rm -v /tmp:/tmp daocloud.io/daocloud/kube_binary:v1.15.0 sh -c 'cp -rf /app /tmp/k8s'
kubelet --version ||cd /tmp/k8s/;./install.sh

master_install(){
# 安装k8s
kubeadm --image-repository=daocloud.io/daocloud --kubernetes-version=v1.15.0 init 


# 配置kubelet
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# 安装calico 网络
}
slave_install(){
kubeadm $@
}
if [ "$1" == "join" ];then
slave_install $@
else
master_install
fi
