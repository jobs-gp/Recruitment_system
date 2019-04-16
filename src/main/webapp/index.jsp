<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
      String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>招聘系统首页</title>

    <link href="css/bootstrap.css" rel="stylesheet">

    <script src="js/jquery-1.11.3.min.js"></script>

    <script src="js/bootstrap.min.js"></script>
</head>

<body>

<!--logo部分-->
<div class="container">
    <div class="row" style="background-image: url(img/services.jpg);" >
        <div class="col-lg-6 col-md-6 col-sm-6">
            <img src="img/logo.jpg" width="80px" height="80px" />
        </div>
        <div align="right" class="col-lg-6 col-md-6 col-sm-6" style="padding-top: 25px;">
            <a href="login/login.jsp" class="btn btn-primary btn-large">用户注册</a>
            <a href="login/login.jsp" class="btn btn-primary btn-large">企业注册</a>
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
                <a class="navbar-brand" href="#">首页</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="#">职位浏览<span class="sr-only">(current)</span></a>
                    </li>
                    <li>
                        <a href="#">XX</a>
                    </li>
                    <li>
                        <a href="#">XX</a>
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

<!--轮播图-->
<div class="container">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="img/1.jpg" alt="...">
                <div class="carousel-caption">

                </div>
            </div>
            <div class="item">
                <img src="img/2.jpg" alt="...">
                <div class="carousel-caption">

                </div>
            </div>
            <div class="item">
                <img src="img/3.jpg" alt="...">
                <div class="carousel-caption">

                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>

<div class="container" >
    <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6">
            <form class="form-horizontal" action="/employ/login" method="POST">
                    <div>
                    <div class="control-group">
                        <label class="control-label" for="inputAccount">求职者账号</label>
                        <div class="controls">
                            <input type="text" id="inputAccount" placeholder="Account" name="account" value="${employ.account}">
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="inputPassword">密码</label>
                        <div class="controls">
                            <input type="password" id="inputPassword" placeholder="Password" name="pwd" value="${employ.pwd}">
                        </div>
                    </div>
                        <input type="submit" name="submit" value="登录" class="btn"/>
                    </div>
            </form>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6">
            <form class="form-horizontal" action="/company/HrLogin" method="POST" >
                <div>
                    <div class="control-group">
                        <label class="control-label" for="inputEmployerAccount">企业账号</label>
                        <div class="controls">
                            <input type="text" id="inputEmployerAccount" placeholder="EmployerAccount" name="employerAccount" value="${employer.employerAccount}">
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="inputEmployerPassword">密码</label>
                        <div class="controls">
                            <input type="password" id="inputEmployerPassword" placeholder="EmployerPwd" name="employerPwd" value="${employer.employerPwd}">
                        </div>
                    </div>
                    <input type="submit" name="submit" value="登录" class="btn"/>
                </div>
            </form>
        </div>
    </div>
</div>

    <!--友情链接和版权信息-->
    <table class="container" style="margin-top: 10px;">
        <div class="row">
            <div class="" align="center">
                <div style="margin-top: 15px;">
                    <a href="#"><font color="black">关于我们</font></a>
                    <a href="#"><font color="black">联系我们</font></a>
                    <a href="#"><font color="black">招贤纳士</font></a>
                    <a href="#"><font color="black">法律声明</font></a>
                    <a href="#"><font color="black">友情链接</font></a>
                    <a href="#"><font color="black">服务声明</font></a>
                    <a href="#"><font color="black">广告声明</font></a>
                    <p style="margin-top: 10px;">
                        北京石油化工学院康庄校区 3086寝  吴逸新  联系电话：XXXX-XXXXXXX
                    </p>
                </div>
            </div>
        </div>
    </table>
</body>
</html>
