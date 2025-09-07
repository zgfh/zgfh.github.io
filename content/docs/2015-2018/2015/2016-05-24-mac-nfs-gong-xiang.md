---
title: mac nfs 共享
slug: mac-nfs-gong-xiang
date_published: 2016-05-23T20:24:03.000Z
date_updated:   2016-05-23T22:24:57.000Z
---


NFS（Network File System）是主要在 Unix 系统间实现磁盘文件共享的一种方法，其优点是传输速度比SAMBA快。在MAC系统之中也是支持这种共享方式的创建与访问。

#####操作方法如下：
打开“Terminal”，并按提示输入管理员账号，
```
sudo vi /etc/exports  ##编辑/etc/exports
```
按“i”进行插入编辑，
```
/Users -alldirs -ro -network 192.168.0.0 -mask 255.255.0.0
```
***说明***：共享Users目录和所有子文件夹给192.168.0.0全网段，并设置为只读。
按“Esc”, 键入 :wq  保存并退出。
```
sudo nfsd enable #确认NFSD服务开启
sudo nfsd update #刷新NFSD共享资源
showmount -e #显示当前共享的资源
```

即使系统重启，只要登陆进入MAC系统，别的设备即可访问NFS共享。

#####其他说明
不共享带有空格的文件夹，若要NFS共享“/Volumes/Store/My Movies”,则将共享目录设置为“/Volumes/Store”，保证其他系统平台能正常访问。
MAC系统方法见下图；Win系统企业或旗舰版可添加系统组件（请参考此文），Win系统其他版本访问方法需要用客户端（Nekodrive）。


有简便的图形化操作软件“NFS Manager“。但此软是DEMO版本，有保存限制，请高手帮忙破解。


link:https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man5/exports.5.html#//apple_ref/doc/man/5/exports
