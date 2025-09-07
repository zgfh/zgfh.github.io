---
title: ngrok 后台运行
slug: ngrok-hou-tai-yun-xing
date_published: 2015-04-23T21:27:40.000Z
date_updated:   2015-04-23T21:29:13.000Z
---

ngrok的安装使用就不说了，官网上的很简单，也可以百度下  

关于让他后台运行谷歌了半天，找到了个不错的解决方法  

启动的时候这样启动  

```
./ngrok -log=stdout > ngrok.log start  test1 test2 &
```
我的.ngrok 文件
```
tunnels:
  test1:
    proto:
      http: 80
  config:
    proto:
      http: 4040
  test2:
    proto:
      tcp: 22
```

>https://github.com/inconshreveable/ngrok/issues/57
