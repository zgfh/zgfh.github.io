---
date: '{{ .Date }}'
title: '{{ replace .File.ContentBaseName "-" " " | title }}'
tags: '{{ replace .File.ContentBaseName "-" " " | title }}'
---
