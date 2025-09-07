---
title: 七牛上传前端实例
slug: qi-niu-shang-chuan-qian-duan-shi-li
date_published: 2015-04-23T07:16:42.000Z
date_updated:   2015-04-24T02:01:53.000Z
---



<body>
	<form method="post" action="http://up.qiniu.com" enctype="multipart/form-data">
    <ul>
        <li>
            <label for="token">token:</label>
            <input id="token" name="token" class="ipt" value="">
        </li>
        <li>
            <label for="key">上传的图片名，请自行排重:</label>
            <input name="key" class="ipt" id="key" value="admin-xxxx.jpg">
        </li>
        <li>
            <label for="bucket">照片:</label>
            <input name="file" class="ipt" type="file" />
        </li>
        <li>
            <input type="submit" value="提交">
        </li>
    </ul>
</form>
</body>
</html>
