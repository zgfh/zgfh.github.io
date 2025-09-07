---
title: ajax跨域
slug: ajaxkua-yu
date_published: 2015-03-12T22:45:47.000Z
date_updated:   2015-03-13T00:03:30.000Z
---

跨域的解决方式是CORS [CORS介绍](http://www.cnblogs.com/Darren_code/p/cors.html)  
弄了好久，其实只要允许options请求，在head内加入标识允许字段即可。
但是老项目的原因，权限动不了，options会302跳登录界面  
就想到用nginx前端过滤  
1.正常情况下，跳转到服务器  
2.遇到options请求，直接返回，并带上指定head  

```
 location / {
                if ($request_method = OPTIONS ) {
                add_header Access-Control-Allow-Origin "*";
                add_header Access-Control-Allow-Methods "POST, GET, PUT, OPTIONS, DELETE";
                add_header Access-Control-Allow-Headers "Origin, X-Requested-With, Content-Type, Accept, Authorization";
                add_header Access-Control-Allow-Credentials "true";
                add_header Content-Length 0;
                add_header  Access-Control-Max-Age 3600;
                add_header Content-Type text/plain;
                return 200;
                 }
                proxy_pass http://zzg-dev.zgfh.xyz;
        }
```
问题：目前ajax跨区不允许302等跳转，感觉没必要，就没再查解决方法
