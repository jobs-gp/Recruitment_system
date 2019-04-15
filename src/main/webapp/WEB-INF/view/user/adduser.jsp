<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/user/addUser" method="post">
    <fieldset>
        <legend>添加用户</legend>

        姓名：<input type="text" name="username"><br>
        密码：<input type="password" name="password"><br>

        <input type="submit" value="提交">
    </fieldset>
</form>
</body>
</html>
