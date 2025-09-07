---
title: docker images 删除
slug: docker-images-shan-chu
date_published: 2015-04-17T22:42:47.000Z
date_updated:   2015-04-26T18:38:56.000Z
---

docker build images 后会产生好多没有名字的镜像，占空间，还很难查找自己要找的镜像，

一键删除没有名称的镜像
```
docker images |grep "<none>" |awk '{print $3}' |xargs docker rmi
```
