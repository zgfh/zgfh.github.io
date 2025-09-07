---
title: eclipse 环境配置
slug: eclipse-huan-jing-pei-zhi
date_published: 2015-03-14T19:31:37.000Z
date_updated:   2015-07-16T02:32:02.000Z
---

每次都要配置环境，每次都因为环境遇到各种问题，现在在这里记下来。为了自己，为了新来的同事。

1.编码，一般都设置为UTF-8,所有的。见：http://blog.sina.com.cn/s/blog_45dc83410100spq1.html
http://jingyan.baidu.com/article/f96699bbb151d6894e3c1b08.html

2.注释，最好统一，之后复制改下自己的信息。见:http://www.cnblogs.com/senzjx/archive/2009/09/21/1570950.html

3.jd-eclipse,一个自动下载jdk和反编译的工具。见：http://jd.benow.ca/

4.代码格式，最后大家的每行的代码数等一直，不然每次格式化代码，git就会提示一堆修改。见：http://blog.zgfh.xyz/?post=16

5.字体 
在菜单windows-->prefereces里面，找到General-->Appearance-->Colors and Fonts，然后在右边找到你要修改的字体或背景，点Edit...即可。
比如修改Java的字体，就找Java-->Java Editor Text Font

6.一些快捷键（主要最后在英文输入法下面，搜狗什么的，有时候会快捷键冲突）
ctrl+shift+o 格式化代码  t
ctrl+shift+o 快速导入此文件中所有需要导入的类。  

7.主题：
方法2：通过站点更新
eclipse：Help->Install New Software->Work with:Update Site - http://eclipse-color-theme.github.com/update
MyEclipse：Help->MyEclipse Confrontation Center->Software->add site->输入name:ColorTheme,URL:http://eclipse-color-theme.github.com/update->点击OK->在Personal Sites下的Eclipse Color Theme下的Eclipse Color Theme右键Add to Profile->等待五分钟安装插件的时间->点击右下角的apply changes
 
安装的过程中发生了错误，不过貌似没事，顺利安装好了，有点奇怪。
安装后需要重启Eclipse。重启后打开Window->Preferences->General->Apperance->Color Theme(未安装插件前是没有这个选项的)
