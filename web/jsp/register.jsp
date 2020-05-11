<%--
  Created by IntelliJ IDEA.
  User: zjy
  Date: 2019/11/11
  Time: 15:50
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
    <title>注册</title>
    <link rel="shortcut icon" href="images/index/logo2.png" type="image/x-icon">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/register.css">
</head>

<body>

<div class="loginbg">
    <img src="images/base/bg.jpg" alt="背景">
    <img src="images/base/bg1.jpg" alt="背景1">
    <img src="images/base/bg3.jpg" alt="背景2">
</div>

<div class="container">
    <form action="RegisterServlet.do" onsubmit="return Sub() " method="post">
        <h2>用户注册</h2>
        <div class="ipt">
            <label for="user" class="three">用户名:</label>
            <input type="text" name="user_name" id="user" alt="用户名" onblur="send('AjaxServlet.do')" class="box" placeholder="请输入1-9位数字" />
        </div>
        <p id="userpan"></p>

        <div class="ipt">
            <label for="password" class="two">密码:</label>
            <input type="password" name="user_pwd" id="password" alt="密码" onblur="codePassword()" class="box"
                   placeholder="请输入6-20位的非中文字符">
        </div>
        <p id="passwordpan"></p>

        <div class="ipt">
            <label for="password2">确认密码:</label>
            <input type="password" name="password2" id="password2" alt="确认密码" onblur="codePassword2()" class="box"
                   placeholder="请再次输入您的密码">
        </div>
        <p id="password2pan"></p>
        <div class="ipt">

            <label for="tel" class="three">手机号:</label>
            <input type="tel" name="user_phone" id="tel" alt="手机号" onblur="codeTel()" class="box" placeholder="请输入您的手机号">
        </div>
        <p id="telpan"></p>

        <input type="checkbox" name="agree" id="agree">是否同意本公司协议
        <input type="submit" value="立即注册" id="sub" disabled="true" />
        <div class="bottom-txt">
            已有账号？<a href="jsp/login.jsp" class="login-link ">直接登录</a>
        </div>

    </form>
</div>
<script src="js/jquery.js"></script>
<%--<script type="text/javascript" src="js/register.js" ></script>--%>
<script>
    var index = 0;
    var timer = null;
    var $div = $('.loginbg img'); //获取背景图片div
    timer = setInterval(auto, 5000);
    auto();
    //背景图片循环轮播,通过改变透明度实现
    function auto() {
        index++;
        index = index > 2 ? 0 : index;
        $div.eq(index).animate({"opacity": "1"}, 1000).siblings().animate({"opacity": "0"}, 1000);
    }
    var agree = document.getElementById("agree");
    var sub = document.getElementById("sub");
    var password = document.getElementById('password');
    var password2 = document.getElementById('password2');
    var password2Span = document.getElementById("password2pan");

    agree.onclick = function () {
        sub.disabled = !agree.checked;
    };

    function Sub() {
        proce();
        codePassword();
        codeTel();
        return proce() && codePassword() && codeTel();
    }
    var XMLHttpReq;

    function createXMLHttpRequest() //解析函数
    {
        if (window.XMLHttpRequest) //非IE
        {
            XMLHttpReq = new XMLHttpRequest(); //ajax的核心类
        } else if (window.ActiveXObject) //IE游览器的解析方法
        {
            try {
                XMLHttpReq = new ActiveXObject("Msxm12.XMLHTTP");
            } catch (e) {
                try {
                    XMLHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
                } catch (e) {}
            }
        }
    }

    function send(url) {

        createXMLHttpRequest();

        url = url + "?user_name=" + document.getElementById("user").value;

        XMLHttpReq.open("get", url);
        XMLHttpReq.onreadystatechange = proce;
        XMLHttpReq.send(null);
    }

    function proce() {
        if (XMLHttpReq.readyState == 4) {
            if (XMLHttpReq.status == 200) {
                var str = XMLHttpReq.responseText;
                document.getElementById("userpan").innerHTML = str;
                return (str.charAt(0) === "可");
            }
        }
    }

    function codePassword() {
        return codedata("password", /^(\w){6,20}$/);
    }

    function codeTel() {
        return codedata("tel", /^1[3456789]\d{9}$/);
    }

    function codePassword2() {
        if (!password.value) {
            password2Span.innerHTML = "确认密码不能为空";
            return false;
        } else if (password2.value == password.value) {
            password2Span.innerHTML = "密码一致";
            return true;
        } else {
            password2Span.innerHTML = "前后密码不一致";
            return false;
        }

    }

    function codedata(ipt, reg) {
        var ipts = document.getElementById(ipt);
        var span = document.getElementById(ipt + "pan");
        if (!ipts.value) {
            span.innerHTML = ipts.alt + "不正确";
            return false;
        } else if (reg.test(ipts.value)) {
            span.innerHTML = ipts.alt + "正确";
            return true;
        } else {
            span.innerHTML = ipts.alt + "不正确";
            return false;
        }
    }
</script>

</body>

</html>
