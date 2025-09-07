---
title: tomcat service 相关（windows）
slug: tomcat-service-xiang-guan
date_published: 2015-04-19T06:13:11.000Z
date_updated:   2015-04-19T06:20:55.000Z
---

由于需要一台电脑安装多个tomcat服务。所有没有安装tomcat.exe版  

1.tomcat安装  

* 下载zip包
* 配置了JAVA_HOME    
* 点击tomcat目录下的/bin/startup.bat 或  cmd到tomcat/bin目录： catalina.bat run 即可运行  
   
2.tomcat制作成服务配置  

*  cmd到tomcat/bin目录：  
*  service.bat  install  服务名   
*  可以在 管理--服务中找到你刚注册的服务名，进行启动，关闭  
* 也可以cmd下：     net start/stop  服务名  
   
  **卸载服务 service.bat  uninstall  服务名**  
  
3.tomcat服务运行参数
 直接catalina.bat run 运行的时候，可以在catalina.bat内添加参数
 但做成服务后不能使用该方法   
 
* cmd regedit 打开注册表
* 找到 HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Apache Software Foundation\Procrun 2.0\Tomcat7\Parameters\JAVA  
* 调整Options 或ClassPATH
 
  
  参考：  
  
  >http://blog.csdn.net/hejielhwx/article/details/10175883
  
  >http://www.blogjava.net/nkjava/archive/2012/03/08/371535.html
  
    
