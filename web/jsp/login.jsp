<%--
  Created by IntelliJ IDEA.
  User: zjy
  Date: 2019/11/11
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="Keywords" content="">
    <meta name="description" content="">
    <title>登录</title>
    <link rel="shortcut icon" href="images/index/logo2.png" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="font/iconfont.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<div class="loginbg">
    <img src="images/base/bg.jpg" alt="bg"  width="100%" height="100%">
    <img src="images/base/bg1.jpg" alt="bg1"   width="100%" height="100%">
    <img src="images/base/bg3.jpg" alt="bg2"   width="100%" height="100%">
</div>
<div id="login">
    <form action="LoginServlet.do" method="post" target="_blank" class="login-form">
        <h1 id="title">用户登录</h1>
        <div class="txtb">
            <input type="text" class="txt" id="user"  onblur="codeUser()"  name="user_name" required autocomplete="off">
            <p data-placeholder="用户名" class="tips"></p>
            <span id="userSpan" class="span"></span>
        </div>
        <div class="txtb">
            <input type="password" class="txt" onblur="codePwd()" id="password" name="user_pwd" required>
            <p data-placeholder="密码" class="tips"></p>
            <span id="passwordSpan" class="span"></span>
        </div>
        <input type="submit" class="but" value="登录" id="submit" />
        <div class="bottom-txt">
            没有账号？<a href="jsp/register.jsp" class="login-link ">注册</a>
        </div>
    </form>
</div>
<script>
    $(".txtb .txt").on("focus", function () {
        $(this).addClass("focus");
    });
    $(".txtb .txt").on("blur", function () {
        if ($(this).val() == '')
            $(this).removeClass("focus");
    });
</script>
<script type="text/javascript" src="js/login.js"></script>
</body>

</html>
