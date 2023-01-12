#!/bin/bash
set -e
# 快速安装一个k8s，仅限测试使用
# 只试用于centos 7+

# 主节点: curl -fsSL https://zgfh.github.io/get-k8s.sh -o get-k8s.sh && bash get-k8s.sh 
# 从节点: curl -fsSL https://zgfh.github.io/get-k8s.sh -o get-k8s.sh && bash get-k8s.sh join <master_ip>     
# 网络: kubectl apply -f https://zgfh.github.io/calico-v3.24.2.yaml

# 如果只想初始化环境，手动通过kubeadm 安装 curl -fsSL https://zgfh.github.io/get-k8s.sh -o get-k8s.sh && bash get-k8s.sh init

K8S_VERSION=${K8S_VERSION-"v1.25.3"}

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
containerd -v >/dev/null 2>&1 || containerd_install
kubelet --version >/dev/null 2>&1 ||rm -rf /tmp/k8s
kubelet --version >/dev/null 2>&1 ||(ctr image pull daocloud.io/daocloud/kube_binary:${K8S_VERSION} && ctr run --mount type=bind,src=/tmp,dst=/tmp,options=rbind:rw --rm  daocloud.io/daocloud/kube_binary:${K8S_VERSION} k8s  sh -c "cp -rf /app /tmp/k8s")
kubelet --version >/dev/null 2>&1 ||(cd /tmp/k8s/;./install.sh)
yum install -y socat ebtables ethtool conntrack-tools
}

k8s_binary_install(){

# kubelet,kubeadm,kubectl
#RELEASE="$(curl -sSL https://files.m.daocloud.io/dl.k8s.io/release/stable.txt)"
RELEASE=${K8S_RELEASE}
ARCH="amd64"
DOWNLOAD_DIR=/usr/local/bin
cd $DOWNLOAD_DIR
sudo curl -L --remote-name-all https://dl.k8s.io/release/${RELEASE}/bin/linux/${ARCH}/{kubeadm,kubelet,kubectl}
sudo chmod +x {kubeadm,kubelet,kubectl}

RELEASE_VERSION="v0.4.0"
curl -sSL "https://raw.githubusercontent.com/kubernetes/release/${RELEASE_VERSION}/cmd/kubepkg/templates/latest/deb/kubelet/lib/systemd/system/kubelet.service" | sed "s:/usr/bin:${DOWNLOAD_DIR}:g" | sudo tee /etc/systemd/system/kubelet.service
sudo mkdir -p /etc/systemd/system/kubelet.service.d
curl -sSL "https://raw.githubusercontent.com/kubernetes/release/${RELEASE_VERSION}/cmd/kubepkg/templates/latest/deb/kubeadm/10-kubeadm.conf" | sed "s:/usr/bin:${DOWNLOAD_DIR}:g" | sudo tee /etc/systemd/system/kubelet.service.d/10-kubeadm.conf

systemctl enable --now kubelet


CRICTL_VERSION="v1.25.0"
ARCH="amd64"
curl -L --remote-name-all "https://files.m.daocloud.io/github.com/kubernetes-sigs/cri-tools/releases/download/${CRICTL_VERSION}/crictl-${CRICTL_VERSION}-linux-${ARCH}.tar.gz" 
tar -zvxf crictl-${CRICTL_VERSION}-linux-${ARCH}.tar.gz -C $DOWNLOAD_DIR
# https://github.com/DaoCloud/public-image-mirror

}

containerd_install(){
# cri https://github.com/DaoCloud/public-binary-files-mirror
export NERDCTL_VERSION="0.22.2"
mkdir -p nerdctl ;cd nerdctl
wget https://files.m.daocloud.io/github.com/containerd/nerdctl/releases/download/v${NERDCTL_VERSION}/nerdctl-full-${NERDCTL_VERSION}-linux-amd64.tar.gz
tar -zvxf nerdctl-full-${NERDCTL_VERSION}-linux-amd64.tar.gz
mkdir -p /opt/cni/bin ;cp -f libexec/cni/* /opt/cni/bin/ ;cp bin/* /usr/local/bin/ ;cp lib/systemd/system/*.service /usr/lib/systemd/system/

cat >/etc/containerd/config.toml<<-EOF
version = 2
root = "/var/lib/containerd"
state = "/run/containerd"
oom_score = 0

[grpc]
  max_recv_message_size = 16777216
  max_send_message_size = 16777216

[debug]
  level = "info"

[metrics]
  address = ""
  grpc_histogram = false

[plugins]
  [plugins."io.containerd.grpc.v1.cri"]
    sandbox_image = "daocloud.io/daocloud/pause:3.8"
    max_container_log_line_size = -1
    [plugins."io.containerd.grpc.v1.cri".containerd]
      default_runtime_name = "runc"
      snapshotter = "overlayfs"
      [plugins."io.containerd.grpc.v1.cri".containerd.runtimes]
        [plugins."io.containerd.grpc.v1.cri".containerd.runtimes.runc]
          runtime_type = "io.containerd.runc.v2"
          runtime_engine = ""
          runtime_root = ""
          [plugins."io.containerd.grpc.v1.cri".containerd.runtimes.runc.options]
            systemdCgroup = true
    [plugins."io.containerd.grpc.v1.cri".registry]
      [plugins."io.containerd.grpc.v1.cri".registry.configs]
        [plugins."io.containerd.grpc.v1.cri".registry.configs."xx.daocloud.io"]
          [plugins."io.containerd.grpc.v1.cri".registry.configs."xx.daocloud.io".tls]
            insecure_skip_verify = true
      [plugins."io.containerd.grpc.v1.cri".registry.mirrors]
        [plugins."io.containerd.grpc.v1.cri".registry.mirrors."docker.io"]
          endpoint = ["https://registry-1.docker.io"]
EOF

systemctl enable containerd ;systemctl start containerd --now
systemctl enable buildkit;systemctl start buildkit --now

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
