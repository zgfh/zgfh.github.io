#!/bin/bash
set -e
# 快速安装一个k8s，仅限测试使用
# 只试用于centos 7+

# 主节点: curl -fsSL https://zgfh.github.io/get-k8s.sh -o get-k8s.sh && bash get-k8s.sh 
# 从节点: curl -fsSL https://zgfh.github.io/get-k8s.sh -o get-k8s.sh && bash get-k8s.sh join <master_ip>     
# 网络: kubectl apply -f https://zgfh.github.io//calico-v3.10.yaml

# 如果只想初始化环境，手动通过kubeadm 安装 curl -fsSL https://zgfh.github.io/get-k8s.sh -o get-k8s.sh && bash get-k8s.sh init

K8S_VERSION=${K8S_VERSION-"v1.19.2"}

init_host(){
# 系统配置
setenforce 0 && sed -i '/^SELINUX=/c\SELINUX=disabled' /etc/selinux/config
systemctl stop firewalld || echo "no firewalld"
systemctl disable firewalld || echo "no firewalld"

# swap
sysctl vm.swappiness=0
sed -i 's/vm.swappiness/#vm.swappiness/g' /etc/sysctl.conf
echo "vm.swappiness = 0" >> /etc/sysctl.conf
swapoff -a
sed -i '/ swap / s/^/#/' /etc/fstab

# overlay & br_netfilter
lsmod | grep br_netfilter || modprobe br_netfilter
cat <<EOF | tee /etc/modules-load.d/k8s.conf
overlay
br_netfilter
EOF

modprobe overlay
modprobe br_netfilter

cat >/etc/sysctl.d/k8s.conf <<EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward=1
EOF

sudo sysctl --system



#DEVICE=$(ls -l /sys/class/net | awk '$NF~/pci0/ { print $(NF-2); exit }')
#IPADDR=$(ip -br address show dev $DEVICE | awk '{print substr($3,1,index($3,"/")-1);}')
#ping -c `hostname` || echo '$IPADDR `hostname`' >>/etc/hosts

# 安装containerd 和kubelet
docker version >/dev/null 2>&1 || containerd_install
kubelet --version >/dev/null 2>&1 ||rm -rf /tmp/k8s
kubelet --version >/dev/null 2>&1 ||(docker run --rm -v /tmp:/tmp daocloud.io/daocloud/kube_binary:${K8S_VERSION} sh -c 'cp -rf /app /tmp/k8s')
kubelet --version >/dev/null 2>&1 ||(cd /tmp/k8s/;./install.sh)
yum install -y socat ebtables ethtool conntrack-tools
}
containerd_install(){
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
yum update -y && yum install -y containerd.io

mkdir -p /etc/containerd
containerd config default | tee /etc/containerd/config.toml

systemctl restart containerd
}


master_install(){
init_host
# 安装k8s
kubeadm --image-repository=daocloud.io/daocloud --kubernetes-version=${K8S_VERSION} init --pod-network-cidr=10.252.0.0/16 --token=vqheb6.vqheb6tdangerous


# 配置kubelet
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# 安装calico 网络

}
slave_install(){
init_host
kubeadm join $1:6443 --token=vqheb6.vqheb6tdangerous --discovery-token-unsafe-skip-ca-verification
echo "you need run (master print this): kubeadm join <masterip> --token xxx "
}

# 重置
reset_install(){
kubeadm reset -f

}

# 重置
init_install(){
init_host
echo "now,you can install k8s: "
echo "  kubeadm --image-repository=daocloud.io/daocloud --kubernetes-version=${K8S_VERSION} init --pod-network-cidr=10.252.0.0/16 "
}


if [ "$1" == "join" ];then
slave_install $2
elif [ "$1" == "reset" ];then
reset_install
elif [ "$1" == "init" ];then
init_install
else
master_install
fi
