---
title: jar logger 问题
slug: jar-logger-wen-ti
date_published: 2015-04-11T01:31:35.000Z
date_updated:   2015-04-11T01:36:02.000Z
tags: jar logger, jar log
---

因为jar一般是作为别的项目依赖，所以最好不要直接指定日志的实现。  

* 之前写项目，一般是加个logback什么的，再加个配置文件就可以输出log了，但现在是做成jar,就不能乱玩了，否则别人依赖后怎么控制你的日志输出呢？

### slf4j
百度了下，才知道slf4j，它提供一个标准的logger api,本身不提供log的实现，是具体运行的项目的时候再去知道，（详细百度‘slf4j’）  
so,只需要加上这个就解决问题了。

 * 同时，为了测试输出日志，可以添加slf4j-simple，maven项目可以加只限于test的时候使用，这样打包完成后，是没有指定日志实现的，具体的实现交给用户选择。  
 
如下：

	<!-- Logging with SLF4J -->
		<dependency>
			<groupId>org.slf4j</groupId>
			<artifactId>slf4j-api</artifactId>
			<version>1.7.7</version>
		</dependency>

		<!-- 测试使用 -->
		<dependency>
			<groupId>org.slf4j</groupId>
			<artifactId>slf4j-simple</artifactId>
			<version>1.7.7</version>
			<scope>test</scope>
		</dependency>
