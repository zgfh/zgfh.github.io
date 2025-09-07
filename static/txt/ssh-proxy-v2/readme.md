这个目录是个ssh 代理工具，通过docker的重启机制在ssh 连接断开后会自动重新连接

### 下载
```
mkdir ssh-proxy && cd ssh-proxy
wget https://raw.githubusercontent.com/zgfh/zgfh.github.io/master/ssh-proxy-v2/docker-compose.yml
```

### 使用方法
这里假设你希望 代理B主机的9011端口到A主机的9011，即访问A:9011 相当于访问B:9011
把本目录的文件复制到你的主机A,然后修改docker-compose.yaml 里面到ssh的主机地址为你的主机B，然后启动
```
docker-compose up -d
```
另：这个可以各种代理，更多参考：https://www.daozzg.com/2018/03/23/ssh-forward/
