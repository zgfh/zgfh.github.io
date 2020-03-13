frp 代理
详细使用参考：https://github.com/fatedier/frp

### 服务器端
需要公网ip,开防火墙80,58700/tcp,58701/udp,定义一个域名（可以二级，三级，四级），例如 *.frp.zgfh.io,解析到服务器的公网ip
复制 frps 到服务器,修改frp/frps.ini里面的密码，运行`docker-compose up -d `

### 客户端
详细使用参考：https://github.com/fatedier/frp,
frpc下是个demo，复制 frpc 到本级或需要代理的服务器(也可以下载二进制)
修改frp/frpc.ini 里面的密码和服务器端相同
修改域名为服务器的设置的域名,
运行`docker-compose up -d `，然后访问你设定的域名测试是否成功
