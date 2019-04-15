<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <script type="text/javascript">
        function updateUser(id,username) {
            document.getElementById("listForm").action = "/user/updateUsers?autoid="+ id+"username="+ username;
            document.getElementById("listForm").submit();}
    </script>
    <title>Title</title>
</head>
<body>
<form action="/user/updateUsers" method="post">
    <fieldset>
        <legend>编辑用户</legend>
        用户ID：<input type="text" name="autoid" value="<%=request.getParameter("autoid")%>"/><br>

        修改姓名：<input type="text" name="username" value="<%=request.getParameter("username")%>"/><br>

        <input type="submit" value="修改"/>
    </fieldset>
    <%--<input type="button" value="修改" onclick="updateUser(<%=request.getParameter("autoId")%>,<%=request.getParameter("username")%>);">--%>
</form>
</body>
</html>
