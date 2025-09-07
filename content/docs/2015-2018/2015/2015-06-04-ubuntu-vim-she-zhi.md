---
title: ubuntu vim 设置
slug: ubuntu-vim-she-zhi
date_published: 2015-06-04T11:48:19.000Z
date_updated:   2015-06-04T11:48:19.000Z
tags: ubuntu vim, vim设置, vim
---

在终端下使用vim进行编辑时，默认情况下，编辑的界面上是没有显示行号、语法高亮度显示、智能缩进等功能的。为了更好的在vim下进行工作，需要手动设置一个配置文件：.vimrc。  
在启动vim时，当前用户根目录下的.vimrc文件会被自动读取，该文件可以包含一些设置甚至脚本，所以，一般情况下把.vimrc文件创建在当前用户的根目录下比较方便，即创建的命令为：  
$vi ~/.vimrc  
设置完后  
$:x 或者 $wq  
进行保存退出即可。  
下面给出一个例子，其中列出了经常用到的设置，详细的设置信息请参照参考资料：  
“双引号开始的行为注释行，下同  
“去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
```
set nocompatible  
“显示行号  
set nummber  
“检测文件的类型  
 filetype on  
“记录历史的行数  
  set history=1000  
   “背景使用黑色  
set background=dark  
“语法高亮度显示  
  syntax on  
 
“下面两行在进行编写代码时，在格式对起上很有用；  
“第一行，vim使用自动对起，也就是把当前行的对起格式应用到下一行；  
“第二行，依据上面的对起格式，智能的选择对起方式，对于类似C语言编  
“写上很有用  
set autoindent  
set smartindent  
“第一行设置tab键为4个空格，第二行设置当行之间交错时使用4个空格
set tabstop=4
set shiftwidth=4
“设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号  
set showmatch  
“去除vim的GUI版本中的toolbar  
set guioptions-=T  
“当vim进行编辑时，如果命令错误，会发出一个响声，该设置去掉响声  
set vb t_vb=  
“在编辑过程中，在右下角显示光标位置的状态行  
set ruler  
“默认情况下，寻找匹配是高亮度显示的，该设置关闭高亮显示  
set nohls  
“查询时非常方便，如要查找book单词，当输入到/b时，会自动找到第一
“个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的单词，依
“次类推，进行查找时，使用此设置会快速找到答案，当你找要匹配的单词
“时，别忘记回车
set incsearch
“修改一个文件后，自动进行备份，备份的文件名为原文件名加“~“后缀
if has(“vms”)
   set nobackup
else
   set backup
endif
 
如果去除注释后，一个完整的.vimrc配置信息如下所示：
 
set nocompatible
set nummber
filetype on
set history=1000
set background=dark
syntax on
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set showmatch
set guioptions-=T
set vb t_vb=
set ruler
set nohls
set incsearch
if has(“vms”)
   set nobackup
else
   set backup
endif
 
 
如果设置完后，发现功能没有起作用，检查一下系统下是否安装了vim-enhanced包，查询命令为：
$rpm –q vim-enhanced
```

参考资料：


1. vim的完全翻译版在下面连接处可以找到
http://vimcdoc.sourceforge.net/
可以下栽其中的一个PDF版本，里面介绍的很详细，强烈推荐：）   
2. 更详细的vim信息可以访问：
http://www.vim.org/   
3. 一个带有英文注释的.vimrc例子
http://www.vi-improved.org/vimrc.php
