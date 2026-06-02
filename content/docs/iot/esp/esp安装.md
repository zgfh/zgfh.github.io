---
date: '2026-05-28T01:42:06+08:00'
title: 'Esp安装'
tags:
  - 'Esp安装'
---

吐槽: 感觉新版本安装是傻瓜式了，但感觉调试不友好: https://docs.espressif.com/projects/esp-idf/zh_CN/stable/esp32/get-started/macos-setup.html

我这里还是参考老文档，安装5.4.1: https://docs.espressif.com/projects/esp-idf/zh_CN/stable/esp32/get-started/linux-macos-setup-legacy.html


我的环境备注:(或者每次新建一个版本的环境)

```
mkdir -p ~/esp
cd ~/esp
#git clone -b v5.5.2 --recursive https://github.com/espressif/esp-idf.git v5.5.2
git clone -b v5.5.2 --recursive git@github.com:espressif/esp-idf.git v5.5.2

cd ~/esp/v5.5.2
./install.sh esp32,esp32s3,esp32c3

```

使用
```
. $HOME/esp/v5.5.2/export.sh

或者增加到配置文件（.profile、.bashrc、.zprofile 等）
alias get_idf_v5.5.2='. $HOME/esp/v5.5.2/export.sh'
```


在vscode 中使用: https://github.com/espressif/vscode-esp-idf-extension/blob/master/README_CN.md


TODO: 在vscode中，无法选择不同版本，可能是vscode搜索不同版本是通过新工具