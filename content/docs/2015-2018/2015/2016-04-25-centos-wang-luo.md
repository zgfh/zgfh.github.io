---
title: centos 网络
slug: centos-wang-luo
date_published: 2016-04-25T03:51:16.000Z
date_updated:   2016-04-25T03:51:16.000Z
---

##dhcp
see https://www.centos.org/docs/5/html/Deployment_Guide-en-US/s1-dhcp-configuring-client.html

/etc/sysconfig/network
```
NETWORKING=yes
```
 /etc/sysconfig/network-scripts/ifcfg-eth0
```
DEVICE=eth0
BOOTPROTO=dhcp
ONBOOT=yes
```

#静态
```
TYPE=Ethernet
BOOTPROTO=static
DEFROUTE=yes
PEERDNS=yes
PEERROUTES=yes
IPV4_FAILURE_FATAL=no
IPADDR=10.1.1.200
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_PEERDNS=yes
IPV6_PEERROUTES=yes
IPV6_FAILURE_FATAL=no
NAME=enp0s3
UUID=75a170ba-6bfa-4553-8070-e658eb8ffb1e
ONBOOT=yes
```

##getway
vi /etc/sysconfig/network
```
#add  
NETWORKING=yes
HOSTNAME=unixmen-centos7
GATEWAY=10.1.1.253
```
