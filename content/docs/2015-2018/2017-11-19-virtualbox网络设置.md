---
title: virtualbox网络设置
date: 2017-11-19 12:52:00
tags:
---

## Net Address 模式
该模式可以自己设置网络
1. 新建网络
在virtualbox的‘virtualbox’ -> 'preferences（设置）' 里面，点击‘网络’,
点击新加，可以增加网络，记得设置网络段，  
![](/images/virtualbox-preferences-network-new.jpg)
其中端口转发可以把某个ip的端口映射到主机端口，一个用途就是从主机连接虚拟机  
如：连接ip 为192.168.15.2的机器，增加端口转发： 2202 ->192.168.15.2:22  
然后ssh -p 2202 root@127.0.0.1 即是访问192.168.15.2:22

2.虚拟机的网络选择自己刚创建的网络即可
![](/images/virtualbox-network-setting.jpg)