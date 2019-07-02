#!/bin/bash
set -e
# 快速安装一个k8s，仅限测试使用
# 只试用于centos 7+
# 主节点: curl -fsSL https://raw.githubusercontent.com/zgfh/zgfh.github.io/master/get-k8s.sh -o get-k8s.sh && bash get-k8s.sh 
# 从节点: curl -fsSL https://raw.githubusercontent.com/zgfh/zgfh.github.io/master/get-k8s.sh -o get-k8s.sh && bash get-k8s.sh join <MATER_IP> --token <TOKEN> --discovery-token-ca-cert-hash <ca-cert-hash>      


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
docker version >/dev/null 2>&1 || curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
kubelet --version >/dev/null 2>&1 ||docker run --rm -v /tmp:/tmp daocloud.io/daocloud/kube_binary:v1.15.0 sh -c 'cp -rf /app /tmp/k8s'
kubelet --version >/dev/null 2>&1 ||cd /tmp/k8s/;./install.sh

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
