<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title></title>
</head>
<body>
登录失败!请检查账号或密码出错！
${message}
<br>
<a href="<%=path%>/index.jsp" rel="external nofollow" >返回</a>
</body>
</html>
