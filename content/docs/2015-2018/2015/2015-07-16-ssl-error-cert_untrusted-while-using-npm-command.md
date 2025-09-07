---
title: "SSL Error: CERT_UNTRUSTED while using npm command"
slug: ssl-error-cert_untrusted-while-using-npm-command
date_published: 2015-07-15T20:01:59.000Z
date_updated:   2015-07-15T20:01:59.000Z
---

see :http://stackoverflow.com/questions/21855035/ssl-error-cert-untrusted-while-using-npm-command
I am trying to install express framework using npm command but getting following error.

error message is
```
E:\myFindings\nodejs_programs\node>npm install -g express
npm http GET https://registry.npmjs.org/express
npm ERR! Error: SSL Error: CERT_UNTRUSTED
npm ERR!     at ClientRequest.<anonymous> (C:\Program Files\nodejs\node_modules\npm\node_modules\request\main.js:409:26)
npm ERR!     at ClientRequest.g (events.js:185:14)
npm ERR!     at ClientRequest.EventEmitter.emit (events.js:88:17)
npm ERR!     at HTTPParser.parserOnIncomingClient [as onIncoming] (http.js:1445:7)
npm ERR!     at HTTPParser.parserOnHeadersComplete [as onHeadersComplete] (http.js:111:23)
npm ERR!     at CleartextStream.socketOnData [as ondata] (http.js:1356:20)
npm ERR!     at CleartextStream.CryptoStream._push (tls.js:396:27)
npm ERR!     at SecurePair.cycle (tls.js:751:20)
npm ERR!     at EncryptedStream.CryptoStream.write (tls.js:131:13)
npm ERR!     at Socket.ondata (stream.js:38:26)
npm ERR!  [Error: SSL Error: CERT_UNTRUSTED]
npm ERR! You may report this log at:
npm ERR!     <http://github.com/isaacs/npm/issues>
npm ERR! or email it to:
npm ERR!     <npm-@googlegroups.com>

npm ERR! System Windows_NT 6.1.7601
npm ERR! command "C:\\Program Files\\nodejs\\\\node.exe" "C:\\Program Files\\nodejs\\node_modules\\npm\\bin\\npm-cli.js" "install" "-g" "express"
npm ERR! cwd E:\myFindings\nodejs_programs\node
npm ERR! node -v v0.8.0
npm ERR! npm -v 1.1.32
npm ERR! message SSL Error: CERT_UNTRUSTED
npm ERR!
npm ERR! Additional logging details can be found in:
npm ERR!     E:\myFindings\nodejs_programs\node\npm-debug.log
npm ERR! not ok code 0
help me to sort out
```

You can bypass https using below commands:
```
npm config set strict-ssl false
```
or set the registry URL from https or http like below:
```
npm config set registry="http://registry.npmjs.org/"
```
However, Personally I believe bypassing https is not the real solution, but we can use it as a workaround.
