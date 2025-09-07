---
title: python unicode
date: 2017-12-20 11:40:40
tags:
---
## 总结
1. 主动设置defaultencoding。（默认的是ascii）
2. 代码文件的保存格式要与文件头部的# coding:xxx一致
3. 如果是中文，程序内部尽量使用unicode，而不用str
4. 不确定是否是unicode
```
#unicode/str 转换为 str
if isinstance(key, unicode):
            key = key.encode('utf-8')

```


## str与字节码
`s = "人生苦短"`
s是个字符串，它本身存储的就是字节码,字节码有编码格式

## unicode与str
unicode是一种编码标准，具体的实现标准可能是utf-8，utf-16，gbk 
python 在内部使用两个字节来存储一个unicode，使用unicode对象而不是str的好处，就是unicode方便于跨平台。

你可以用如下两种方式定义一个unicode:
```
s1 = u"人生苦短"
s2 = unicode("人生苦短", "utf-8")
```

## encode与decode
```
# -*- coding:utf-8 -*-
su = "人生苦短"
# ： su是一个utf-8格式的字节串
u  = s.decode("utf-8")
# ： s被解码为unicode对象，赋给u
sg = u.encode("gbk")
# ： u被编码为gbk格式的字节串，赋给sg
print sg
# 打印sg
```

## 文件头声明编码的作用：`# -*- coding: utf-8 -*-`

*. 如果代码中有中文注释，就需要此声明
*. 比较高级的编辑器（比如我的emacs），会根据头部声明，将此作为代码文件的格式。
*. 程序会通过头部声明，解码初始化 u”人生苦短”，这样的unicode对象，（所以头部声明和代码的存储格式要一致）

### 参考：
http://wklken.me/posts/2013/08/31/python-extra-coding-intro.html
http://python.jobbole.com/81244/