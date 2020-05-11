<%--
  Created by IntelliJ IDEA.
  User: zjy
  Date: 2019/11/14
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>管理员页面</title>
    <link rel="shortcut icon" href="images/index/logo2.png" type="image/x-icon">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/admin/admin.css">

</head>

<body>
<!-- main start -->

<body>
<div class="container">
    <h3>管理员:<span id="name">${sessionScope.user.user_name}</span> 欢迎回来</h3>
    <a href="ExitServlet.do" class="back">退出</a>
    <ul class="list-group">
        <li class="list-group-item"><a href="SelMServlet.do">时代楷模的操作</a></li>
        <li class="list-group-item"><a href="SelHotServlet.do">当今热点的操作</a></li>
        <li class="list-group-item"><a href="SelHServlet.do">铭记历史的操作</a></li>
        <li class="list-group-item"><a href="SelPServlet.do">最新政策的操作</a></li>
        <li class="list-group-item"><a href="SelDservlet.do">红色老区的操作</a></li>
        <li class="list-group-item"><a href="SelHeroServlet.do">平民英雄的操作</a></li>
        <li class="list-group-item"><a href="SelUserServlet.do">用户信息操作</a></li>
    </ul>
</div>
</body>

</html>
<!-- main end-->
</body>
<!-- <script>
var list = document.getElementsByClassName("con-list");
var cont = document.getElementsByClassName("cont");
var index = 0;
for (var i = 0; i < list.length; i++) {
list[i].i = i;
list[index].style.backgroundColor = "rgb(240,50,50)";
list[i].onclick = function () {
list[index].style.backgroundColor = "";
cont[index].className = "cont";
index = this.i;
list[index].style.backgroundColor = "rgb(240,50,50)";
cont[index].className = "cont show";
}
}

var update = document.getElementsByClassName("update")[0];
var edit = document.getElementsByClassName("cont-edit");
var save = document.getElementsByClassName("save")[0];
update.onclick = function () {
for (var i = 0; i < edit.length; i++) {
edit[i].style.border = "1px solid #aaa";
edit[i].setAttribute("contenteditable", "true");
save.style.display = "block";
}
}
</script> -->

</html>
