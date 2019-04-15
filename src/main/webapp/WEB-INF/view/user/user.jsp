<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title>Title</title>
    <script type="text/javascript">
            function updateUser(id,username) {
                document.getElementById("listForm").action = "/user/updateJsp?autoid="+ id+"username="+ username;
                document.getElementById("listForm").submit();

            }

    </script>
</head>
<body>
<h1></h1>
<form id="listForm"  method="post">
    <table align="center" valign="center" border="1">
        <tr>
            <th>用户ID</th>
            <th>用户名</th>

        </tr>
        <c:forEach items="${list}" var="data">
            <tr>
                <td>${data.autoid}</td>
                <td>${data.username}</td>
                <td><input type="button" value="修改" onclick="updateUser(${data.autoid});"/></td>
                <td><a href="/user/deleteUser?id=${data.autoid}">删除</a></td>
            </tr>
        </c:forEach>
<a href="/user/addJsp" >增加</a>
    </table>

    <%--<td><a href="/user/updateJsp?autoid=${data.autoid}&username=${data.username}">修改</a></td>--%>
    <!-- <td><input type="button" value="删除"/></td>-->
    <%--<td><form action="/user/updateUsers" method="post" value="修改" onclick="updateUser(${data.autoid});"></td>--%>
</form>
</body>
</html>
