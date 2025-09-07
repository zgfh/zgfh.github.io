---
title: docker-compose
slug: docker-compose
date_published: 2016-09-07T21:42:15.000Z
date_updated:   2016-09-07T21:50:16.000Z
---

##docker-compose

#####安装
下面是daocloud提供了简单安装方式，执行下就行（如果执行错误，见http://get.daocloud.io/ 的更新）
这是个python，没有别的依赖，离线安装的话，直接下载后copy到目标机器也能用
```
curl -L https://get.daocloud.io/docker/compose/releases/download/1.8.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

```

#####使用
docker-compose 依赖一个配置文件docker-compose.yml
简单例子：
之前你运行一个nginx是这样：
```
docker run -v /some/nginx.conf:/etc/nginx/nginx.conf:ro -p 80:80 -e test_env:test -d daocloud.io/nginx
```
现在，新建一个docker-compose.yml文件，内容如下
```
prometheus-server:
   image: daocloud.io/nginx
   ports:
     -  "80:80"
   environment:
    - test_env=test
   volumes:
     - /some/nginx.conf:/etc/nginx/nginx.conf

```
然后执行
```
docker-compose up -d 
```
启动容器，更多参数`docker-compose -h ` 查看，或官方文档：https://docs.docker.com/compose/gettingstarted/
