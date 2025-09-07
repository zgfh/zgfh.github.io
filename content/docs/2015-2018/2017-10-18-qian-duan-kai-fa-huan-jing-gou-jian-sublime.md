---
title: 前端开发环境构建－sublime
slug: qian-duan-kai-fa-huan-jing-gou-jian-sublime
tags: "前端"
date_published: 2017-10-18T06:40:56.000Z
date_updated:   2017-10-18T06:40:56.000Z
---

sublime 是一款非常优秀的文本编辑器，同时结合强大的插件市场，可以用来进行前端，python，go等开发工具

###安装sublime

见：http://www.sublimetext.com/  
*启用sublime插件功能*  
见：https://packagecontrol.io/installation  
1.打开Sublime 3，然后按 ctrl+` 或者在View → Show Console 
2.在打开的窗口里黏贴这个网站上的代码（注意: Sublime 2和3所黏贴的代码不一样，注意选择）： 
 https://packagecontrol.io/installation
```
import urllib.request,os,hashlib; h = '2915d1851351e5ee549c20394736b442' + '8bc59f460fa1548d1514676163dafc88'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)　　
```
3.安装完成后，按 Ctrl+Shift+p (Windows) / Command+Shift+p (Mac), 输入'Install Packages'，之后Sublime会自动下载插件列表，然后弹出一个小的下拉菜单让你填写想要下载的插件名称。
###插件安装 

见http://www.cnblogs.com/freefish12/p/5502731.html



