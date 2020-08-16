#!/bin/bash
#change NEW_IP
if [[ $# -eq 1 ]] && [[ "$1" == "help" ]] ; then
echo "curl https://zgfh.github.io/get-k8s.sh/set-static-ip.sh |sh -s -- 192.168.101.xx"
exit 1
fi
init_centos_host(){
local NEW_IP=${1}
CONFIG=`ls /etc/sysconfig/network-scripts/ifcfg-en*`
sed -i -e 's@^ONBOOT="no@ONBOOT="yes@' $CONFIG
sed -i -e "s@^BOOTPROTO=@BOOTPROTO=static\n#@" $CONFIG
grep "IPADDR" $CONFIG && sed -i -e "s@^IPADDR=@IPADDR=${NEW_IP}\n#@" $CONFIG||echo "IPADDR=${NEW_IP}" >>$CONFIG
grep "GATEWAY" $CONFIG && sed -i -e "s@^GATEWAY=@GATEWAY=192.168.1.1\n#@" $CONFIG ||echo "GATEWAY=192.168.1.1" >>$CONFIG
grep "NETMASK" $CONFIG && sed -i -e "s@^NETMASK=@NETMASK=255.255.0.0\n#@" $CONFIG ||echo "NETMASK=255.255.0.0" >>$CONFIG
grep "DNS1" $CONFIG && sed -i -e "s@^DNS1=@DNS1=192.168.1.29\n#@" $CONFIG ||echo "DNS1=192.168.1.29" >>$CONFIG
echo ${NEW_IP//./-} >/etc/hostname
echo "$NEW_IP    ${NEW_IP//./-}">>/etc/hosts
hostname ${NEW_IP//./-}
echo "ip have set to $NEW_IP, reboot will active"
#reboot
}
init_ubuntu_host(){
local NEW_IP=${1}
cat >/etc/network/interfaces <<-EOF
# interfaces(5) file used by ifup(8) and ifdown(8)
auto lo
iface lo inet loopback
#eth0
auto eth0
iface eth0 inet static
address ${NEW_IP}
netmask 255.255.0.0
gateway 192.168.1.1
dns-nameservers 192.168.1.29
EOF
sed -i 's/GRUB_CMDLINE_LINUX=/GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0"\n#/g'  /etc/default/grub
update-grub
echo ${NEW_IP//./-} >/etc/hostname
hostname ${NEW_IP//./-}
echo "ip have set to $NEW_IP, reboot will active"
}

init_host(){
if [[ -f "/etc/network/interfaces" ]];then
  init_ubuntu_host $@
else
  init_centos_host $@
fi
}
init_host $@
