---
title: centos_http代理(ubuntu类似)
date: 2017-11-18 21:25:25
tags:
---
本教程基于centos7， ubuntu类似，只需要替换下面的“yum” 为“apt-get” 即可

## 安装shadowsocks 并启用socket5代理
安装  
```
yum  install -y python-pip
pip install shadowsocks

```
用shadowsocks启动一个socket5代理  
修改下面的配置，保存到/etc/shadowsocks_local.json(没有就新建一个)  
```
{
  "server": "{your-server}",
  "server_port": 40002,
  "local_port": 1080,
  "password": "{your-password}",
  "timeout": 600,
  "method": "aes-256-cfb"
}
```
启动
```
sslocal -c /etc/shadowsocks_local.json -d start
```
测试
```
curl --socks5-hostname localhost:1080 google.com
```
如果返回301表示成功


## 转socket5为http代理
安装
```
yum install -y privoxy
```
配置,在/etc/privoxy/config 增加一行配置，指定上面开的socks5的端口
```
echo "forward-socks5 / 127.0.0.1:1080 ." >>/etc/privoxy/config
```
启动
```
service privoxy start
```
测试
```
curl --proxy localhost:8118 google.com
```
如果返回301表示成功

## 使用
打开终端口，先导入环境变量
```
export PROXY_PORT=8118
export PROXY_IP=127.0.0.1
export http_proxy=http://$PROXY_IP:$PROXY_PORT
export HTTP_PROXY=$http_proxy
export https_proxy=$http_proxy
export HTTPS_PROXY=$http_proxy
export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com,example.com,192.168.1.11,192.168.1.12,192.168.1.13"
```
然后再进行的http访问如果支持HTTP_PROXY环境变量（npm,curl等都支持），就会自动通过代理访问

### 另外，设置docker使用代理
https://docs.docker.com/engine/admin/systemd/#httphttps-proxy


