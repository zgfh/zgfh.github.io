---
title: 科学上网
slug: hong-xing-chu-qiang
date_published: 2016-04-17T00:32:45.000Z
date_updated:   2016-11-23T23:20:19.000Z
---

　

完美讲解：

http://blog.panlin.me/posts/2015-07-19-digitalocean-shadowsocks-openvpn.html




－－－－－－－－－－－－－－aws尝试后有时候比较慢，自行选择－－－－－－－－－－－－－－－－－－－－－－－－
aws日本的机器是可以开免费机器的。免费1年。 
　日本上google还是嗖嗖的。。。

###aws注册账号，开免费主机

1. 注册账号 
中文的。注册过程就免了吧？https://aws.amazon.com/cn/free/explain/

2. 创建免费主机 
 ![](http://7u2qnb.com1.z0.glb.clouddn.com/imagesQQ20160417-1%402x.png)
 ![](http://7u2qnb.com1.z0.glb.clouddn.com/imagesQQ20160417-2%402x.png)
 ![](http://7u2qnb.com1.z0.glb.clouddn.com/imagesQQ20160417-3%402x.png)
 ![](http://7u2qnb.com1.z0.glb.clouddn.com/imagesQQ20160417-4%402x.png)
 ![](http://7u2qnb.com1.z0.glb.clouddn.com/imagesQQ20160417-5%402x.png)
 ![](http://7u2qnb.com1.z0.glb.clouddn.com/imagesQQ20160417-6%402x.png)
 ![](http://7u2qnb.com1.z0.glb.clouddn.com/imagesQQ20160417-7%402x.png)
![](http://7u2qnb.com1.z0.glb.clouddn.com/imagesQQ20160417-8%402x.png)
 ![](http://7u2qnb.com1.z0.glb.clouddn.com/imagesQQ20160417-8%402x.png)
 最后一步是下载你的sshkey。用于登陆用，下载后点击启动实例   
 然后点击查看实例，可以看到ip   
   ![](http://7u2qnb.com1.z0.glb.clouddn.com/imagesQQ20160417-10%402x.png)
 
 然后通过ssh工具和下载的key登陆(别的工具类似)
  
```
chmod 400 ssh-key.pem
ssh -i ssh-key.pem ubuntu@ip
```

###在主机上部署代理shadowsocks

1. 安装docker  
```
curl -sSL https://get.daocloud.io/docker | sh
```
2. 运行服务  
$SSPASSWORD 替换为你的密码，端口是59001(可自定义)
```
docker run -d -p 59001:1984 oddrationale/docker-shadowsocks -s 0.0.0.0 -p 1984 -k $SSPASSWORD -m aes-256-cfb
```

###客户端安装shadowsocks使用

**客户端** 
  
* mac:   
https://github.com/shadowsocks/shadowsocks-iOS/wiki/Shadowsocks-for-OSX-%E5%B8%AE%E5%8A%A9 

* windows:  
https://github.com/shadowsocks/shadowsocks-windows/wiki/Shadowsocks-Windows-%E4%BD%BF%E7%94%A8%E8%AF%B4%E6%98%8E

可以参考这个 http://www.ishadowsocks.net/ 
但服务器ip和端口，设置为你的服务器ip和端口 
好啦，一年可以用了
