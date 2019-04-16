<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <title>浏览职位详情</title>

        <meta http-equiv="Content-Type" content="text/html; charset=utf8">

        <meta charset="utf-8">

        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="../../../css/bootstrap.css" rel="stylesheet">

        <script src="../../../js/jquery-1.11.3.min.js"></script>

        <script src="../../../js/bootstrap.min.js"></script>

</head>

<body>
<div class="container">
        <div class="row"  >
                <div class="col-lg-6 col-md-6 col-sm-6">
                        <img src="../../../img/logo.jpg" width="80px" height="80px" />
                </div>
                <div align="right" class="col-lg-6 col-md-6 col-sm-6" style="padding-top: 25px;">
                        <h5>${employ.account},你好！</h5>
                </div>
        </div>
</div>

<!--导航栏-->
<div class="container" style="margin-top: 10px;">
        <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="/index.jsp">首页</a>
                        </div>

                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav">
                                        <li class="active">
                                                <a href="/position/getPosition"/>职位浏览<span class="sr-only">(current)</span></a>
                                        </li>
                                        <li>
                                                <a href="/resume/getResume?userid=${employ.userid}"/>我的简历</a>
                                        </li>
                                        <li>
                                                <a href="/resume/addreJsp?userid=${employ.userid}"/>新增简历</a>
                                        </li>
                                        <li>
                                                <a href="/employ/getEmployInfo"/>投递反馈</a>
                                        </li>
                                        <li class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">热门职位 <span class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                        <li>
                                                                <a href="#">安卓开发工程师</a>
                                                        </li>
                                                        <li>
                                                                <a href="#">ios开发工程师</a>
                                                        </li>
                                                        <li>
                                                                <a href="#">大数据工程师</a>
                                                        </li>
                                                        <li role="separator" class="divider"></li>
                                                        <li>
                                                                <a href="#">java高级工程师</a>
                                                        </li>
                                                        <li role="separator" class="divider"></li>
                                                        <li>
                                                                <a href="#">算法工程师</a>
                                                        </li>
                                                </ul>
                                        </li>
                                </ul>
                                <form class="navbar-form navbar-right" role="search">
                                        <div class="form-group">
                                                <input type="text" class="form-control" size="35" placeholder="Search">
                                        </div>
                                        <button type="submit" class="btn btn-default">搜索</button>
                                </form>
                        </div>
                </div>
        </nav>
</div>

<div class="container" >
        <h2 class="text-success">职位名称：${perposition.positions}</h2>
        <h3 class="text-success">发布时间：${perposition.posdate}</h3>
        <h3 class="text-success">职位类型：${perposition.postype}</h3>
        <h3 class="text-success">职位数量：${perposition.posnum}</h3>
        <h3 class="text-success">职位描述：${perposition.posdes}</h3>
        <h3 class="text-success">职位要求：${perposition.posreq}</h3>
        <h3 class="text-success">薪   资：${perposition.possal}</h3>
        <h3 class="text-success">联系电话：${perposition.posphone}</h3>
        <h3 class="text-success">工作地点：${perposition.posloc}</h3>
        <a href="/resume/getOneResume?userid=${employ.userid}&positionid=${perposition.positionid}&positions=${perposition.positions}" class="btn bg-success">投简历</a>
</div>
</body>
</html>
