<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@taglib prefix="html" tagdir="/WEB-INF/tags" %><!--定义前置与tag文件位置-->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>登录</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">

    <!-- Main Style Sheet -->
    <link rel="stylesheet" href="<c:url value="/css/main.css"/>">
    <!--<link href="css/signin.css" rel="stylesheet">-->
    <!-- Modernizr -->
    <script src="<c:url value="/js/vendor/modernizr-2.6.2.min.js" />"></script>
    <!-- Respond.js for IE 8 or less only -->
    <!--[if (lt IE 9) & (!IEMobile)]>
    <![endif]-->
    <script src="<c:url value=" /js/vendor/respond.min.js" />"></script>
</head>
</head>
<body style="background-color: gainsboro">



<header role="banner">
    <nav role="navigation" class="navbar navbar-default">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><img src="img/logo.png" alt="ThisUsCommunity'" width="200px"></a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="index.html"><span class="glyphicon glyphicon-home"></span>主页</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-plus"></span>注册</a></li>
                    <li class="active"><a href="#"><span class="glyphicon glyphicon-user"></span>登录</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-list-alt"></span>社区版块</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-tag"></span>社区话题</a></li>
                </ul>
                <form class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>
            </div><!--/.nav-collapse -->
        </div><!--/.container -->
    </nav>
</header>

<div  style="position:absolute;top: 10%;left: 39%">
    <img src="<c:url value="/img/user.png"/>">
</div>
<div class="container" style="position: absolute;top: 40%; left: 36%; width: 400px;" >
    <form class="form-signin" action="<c:url value="/login/doLogin.html"/> " method="post">
        <c:if test="${!empty errorMsg }">
            <div style="color: #00b3ee">${errorMsg}</div>
        </c:if>
        <h2 class="form-signin-heading">Welcome to ThisIsUsCommunity</h2>
        <h3 class="form-signin-heading"></h3>
        <label for="inputUserName" class="sr-only">userName</label>
        <input type="text" id="inputUserName" name="userName" class="form-control" placeholder="用户名" required>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" name="password" class="form-control" placeholder="密码" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
    </form>
</div> <!-- /container -->



<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')</script>
<script src="/js/plugins.js"></script>
<script src="/js/main.js"></script>

<!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
<script>
    var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
    (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
        g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
        s.parentNode.insertBefore(g,s)}(document,'script'));
</script>

</body>
</html>
