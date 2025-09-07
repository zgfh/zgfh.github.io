---
title: nginx base auth
slug: nginx-base-auth
date_published: 2016-04-20T07:01:17.000Z
date_updated:   2016-04-20T07:01:17.000Z
---

##config
增加两行配置
```
location / {
    auth_basic           "closed site";
    auth_basic_user_file conf/htpasswd;
}
```
##生成htpasswd
生成一个用户名admin，密码admin的帐户
```
sudo sh -c "echo -n 'admin:'" >> htpasswd
sudo sh -c "openssl passwd admin" >> htpasswd
```
