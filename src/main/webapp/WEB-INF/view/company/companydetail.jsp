<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title>Title</title>


</head>
<body>


<table align="center" valign="center" border="1">
    <tr>
        <th>职位编号</th>
        <th>用户编号</th>
        <th>职位</th>
        <th>职位详情<th>
        <th>修改操作</th>
        <th>职位类型</th>
        <th>发布时间</th>
        <th>职位数量</th>
        <th>职位描述</th>
        <th>职位要求</th>
        <th>薪资</th>
        <th>联系电话</th>
        <th>工作地址</th>
        <th>公司名称</th>
        <th>公司描述</th>
        <th>简历编号</th>
        <th>真实姓名</th>
        <th>身份证号</th>
        <th>性别</th>
        <th>教育经历</th>
        <th>毕业院校</th>
        <th>掌握语言</th>
        <th>语言等级</th>
        <th>计算机等级</th>
        <th>专业</th>
        <th>工作经验</th>
        <th>职位</th>
        <th>期望薪资</th>
        <th>电话号</th>
        <th>邮箱</th>
        <th>qq</th>
        <th>现住址</th>
        <th>投递结果</th>
    </tr>
    <c:forEach items="${manage}" var="p">
        <tr>
                <td>${p.positionid}</td>
                <td>${p.userid}</td>
                <td>${p.positions}</td>
                <td>${p.postype}</td>
                <td>${p.posdate}</td>
                <td>${p.posnum}</td>
                <td>${p.posdes}</td>
                <td>${p.posreq}</td>
                <td>${p.possal}</td>
                <td>${p.posphone}</td>
                <td>${p.posloc}</td>
                <td>${p.company}</td>
                <td>${p.comdes}</td>
                <td>${p.resumeid}</td>
                <td>${p.realname}</td>
                <td>${p.idnum}</td>
                <td>${p.sex}</td>
                <td>${p.education}</td>
                <td>${p.school}</td>
                <td>${p.languages}</td>
                <td>${p.lanlevel}</td>
                <td>${p.comlevel}</td>
                <td>${p.major}</td>
                <td>${p.workexp}</td>
                <td>${p.positions}</td>
                <td>${p.exsalary}</td>
                <td>${p.phonenum}</td>
                <td>${p.email}</td>
                <td>${p.qq}</td>
                <td>${p.nowaddress}</td>
                <td>${p.acceptorrefuse}</td>
            <%--<td><a href="/company/getCompanyDetail?positionid=${c.positionid}">投递详情</a></td>--%>
                <%--<td><input type="button" value="修改" onclick="updatePosition(${p.positionid});"/></td>--%>
                <%--<td><a href="/position//deletePosition?id=${p.positionid}">删除</a></td>--%>
        </tr>
    </c:forEach>
    <%--<div>--%>
    <%--<a href="/position/addPositionJsp" >新增职位</a>--%>

    <%--</div>--%>
</table>
</form>
</body>
</html>
