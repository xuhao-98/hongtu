<%@ page import="com.zjy.spring.model.tm_info" %>
<%@ page import="com.zjy.spring.model.user_info" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>个人中心</title>
    <link rel="shortcut icon" href="images/index/logo2.png" type="image/x-icon">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="font/iconfont.css">
    <link rel="stylesheet" href="css/people/person.css">
    <link rel="stylesheet"  href="css/people/personheader.css">
    <link rel="stylesheet" href="css/index/footer.css">
</head>

<body>
<header id="header">
    <!-- nav 部分 start -->
    <nav class="clear">
        <div class="logo fl">
            <a href="jsp/index.jsp" target="self">
                <img src="images/index/logo.png" alt="宏图logo" width="150" height="60" title="ht">
            </a>
        </div>
        <ul class="nav-list fl">
            <li class="nav-list-link fl ">
                <a href="jsp/index.jsp" class="nav-list-click on">宏图首页</a>
            </li>
            <li class="nav-list-link fl">
                <a href="SelModelServlet.do" class="nav-list-click">时代楷模</a>
                <ol class="nav-list-con">
                    <li class="nav-list-con-item">
                        <a href="SelModelServlet.do" class="item-intro">新时代楷模</a>
                    </li>
                    <li class="nav-list-con-item">
                        <a href="SelModelServlet.do" class="item-intro">“双百”人物</a>
                    </li>
                    <li class="nav-list-con-item">
                        <a href="SelModelServlet.do" class="item-intro">道德模范</a>
                    </li>
                    <li class="nav-list-con-item">
                        <a href="SelModelServlet.do" class="item-intro">改革先锋</a>
                    </li>
                </ol>
            </li>
            <li class="nav-list-link fl">
                <a href="SelHotsPotServlet.do" class="nav-list-click">当今热点</a>
                <ol class="nav-list-con">
                    <li class="nav-list-con-item">
                        <a href="SelHotsPotServlet.do" class="item-intro">社会热点</a>
                    </li>
                    <li class="nav-list-con-item">
                        <a href="SelHotsPotServlet.do" class="item-intro">政治热点</a>
                    </li>
                </ol>
            </li>
            <li class="nav-list-link fl">
                <a href="SelHistoryServlet.do" class="nav-list-click">铭记历史</a>
            </li>
            <li class="nav-list-link fl">
                <a href="SelPolicyServlet.do" class="nav-list-click">最新政策</a>
                <ol class="nav-list-con">
                    <li class="nav-list-con-item">
                        <a href="SelPolicyServlet.do" class="item-intro">惠民政策</a>
                    </li>
                    <li class="nav-list-con-item">
                        <a href="SelPolicyServlet.do" class="item-intro">法律修订</a>
                    </li>
                </ol>
            </li>
            <li class="nav-list-link fl">
                <a href="SelDistrictServlet.do" class="nav-list-click">红色老区</a>
            </li>
            <li class="nav-list-link fl">
                <a href="SelHeroManServlet.do" class="nav-list-click">平民英雄</a>
            </li>
        </ul>
        <div class="header-serach fl">
            <form action="SearchServlet.do" method="POST" class="clear">
                <input type="search" id="search" placeholder="搜索..." class="serach-txt fl" />
                <a href="" class="search-btn fr">
                    <i class="iconfont icon-sousuo"></i>
                </a>
            </form>
        </div>
        <div class="nav-user clear fr">
            <div class="user-photo">
                <img src="images/upload/headpic/${sessionScope.user.user_pic}" alt="" class="photo-img">
            </div>
            <ul class="user-lists">
                <li class="user-list"><a href="jsp/User/person.jsp">个人中心</a></li>
                <li class="user-list"><a href="jsp/User/updatepwd.jsp">修改密码</a></li>
                <li class="user-list"><a href="ExitServlet.do">退出登录</a></li>
            </ul>
        </div>
    </nav>
    <!-- nav 部分 end-->
</header>

<!-- main start -->
<div id="wrap">
    <ul>
        <li class="con-list active">
            <a href="javascript:;">
                <i class="iconfont icon-wodexinxi"></i>
                <span>个人资料</span>
            </a>
        </li>
        <li class="con-list">
            <a href="javascript:;">
                <i class="iconfont icon-shoucang"></i>
                <span>我的收藏</span>
            </a>
        </li>
        <li class="con-list">
            <a href="javascript:;">
                <i class="iconfont icon-wodeguanzhu"></i>
                <span>我的关注</span>
            </a>
        </li>
        <li class="con-list">
            <a href="javascript:;">
                <i class="iconfont icon-wodepinglun"></i>
                <span>我的评论</span>
            </a>
        </li>
    </ul>
    <div class="cont">
        <div class="cont-title">
            <p class="cont-txt">个人资料</p>
        </div>
        <form action="UpdateUser_pic.do" method="post" enctype="multipart/form-data">
            <div class="cont-img">
                <!-- 上传头像 -->
                <img src="images/upload/headpic/${sessionScope.user.user_pic}" alt="头像">
                <a href="" class="cont-img-up">修改头像<input type="file" class="cont-img-update" name="headpic"/></a>
                <input type="submit" value="上传" class="sub">
            </div>
        </form>
        <div class="cont-id">
            <span class="id-name">ID:${sessionScope.user.user_name}</span>
        </div>
        <div class="cont-info">
            <span>关注</span><span style="margin-left: 7px; margin-right: 15px;">1</span>
            <span>粉丝</span><span style="margin-left: 7px;;">0</span>
        </div>
        <!-- 修改资料 -->

        <div class="cont-all">
            <form action="" method="post">
                <div class="cont-msg">
                    <span>手机号:</span>
                    <input type="text" class="cont-edit" name="user_phone" value="${sessionScope.user.user_phone}" readonly="readonly"/>
                </div>
                <div class="cont-msg">
                    <span>性&nbsp&nbsp&nbsp&nbsp别:</span>
                    <input type="text" name="user_sex" id="" value="${sessionScope.user.user_sex}" class="cont-edit"   readonly="readonly" />
                </div>
                <button type="submit" class="save">保存</button>
            </form>
        </div>
    </div>
</div>
<!-- main end-->
<!-- fooer start -->
<footer style="position: absolute; top: 650px;">
    <div class="footer-content">
        <img src="images/index/stxlogo.png" alt="" class="footer-content-logo">
        <div class="copyright">
            <span>地址：重庆市合川大学城假日大道1号 | 邮编：401520</span><br>
            <span>Copyright<i class="iconfont icon-copyright"></i>2019<strong>Development Team:Dockers</strong> All rights
          reserved
          版权所有</span>
        </div>
    </div>
</footer>
<!-- fooer end -->
</body>


<script>
    var conList=document.getElementsByClassName("con-list");
    var index=0;
    var arr=[fn,fn1,fn2,fn3];
    var len=conList.length;
    for(let i=0;i<len;i++){
        conList[i].onclick= function (){
            console.log(i);
            conList[index].className="con-list";
            index=i;
            conList[index].className="con-list active";
            arr[i]();
        }
    }
    function fn() {
        var xmlHttp;
        if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else { // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }

        //为引擎对象绑定监听事件 (设置回调函数)
        xmlhttp.onreadystatechange = function () {
            //等待服务器响应
            if (xmlhttp.readyState == 4) {
                //当请求状态为4时，说明请求完成
                if (xmlhttp.status == 200) {
                    //判断服务器响应状态吗是否正常
                    //取出响应的数据
                    var result = xmlhttp.responseText;
                    //将数据通过JS添加到页面
                    document.getElementById("result").innerHTML = result;
                }
            }
        }
        xmlhttp.open("POST", "", true);
        //设置Content-type
        xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xmlhttp.send(null);

        document.getElementsByClassName("cont")[0].innerHTML = `
    <div class="cont-title">
            <p class="cont-txt">个人资料</p>
        </div>
        <form action="UpdateUser_pic.do" method="post" enctype="multipart/form-data">
            <div class="cont-img">
                <!-- 上传头像 -->
        <img src="images/upload/headpic/${sessionScope.user.user_pic}" alt="头像">
        <a href="" class="cont-img-up">修改头像<input type="file" class="cont-img-update" name="headpic"/></a>
        <input type="submit" value="上传" class="sub">
        </div>
        </form>
        <div class="cont-id">
        <span class="id-name">ID:${sessionScope.user.user_name}</span>
        </div>
        <div class="cont-info">
        <span>关注</span><span style="margin-left: 7px; margin-right: 15px;">1</span>
        <span>粉丝</span><span style="margin-left: 7px;;">0</span>
        </div>
            <!-- 修改资料 -->

        <div class="cont-all">
        <form action="" method="post">
        <div class="cont-msg">
        <span>手机号:</span>
        <input type="text" class="cont-edit" name="user_phone" value="${sessionScope.user.user_phone}" readonly="readonly"/>
        </div>
        <div class="cont-msg">
        <span>性&nbsp&nbsp&nbsp&nbsp别:</span>
        <input type="text" name="user_sex" id="" value="${sessionScope.user.user_sex}" class="cont-edit"   readonly="readonly" />
        </div>
        <button type="submit" class="save">保存</button>
        </form>
        </div>
        `;
  }
  function fn1() {
  var xmlHttp;
    if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
      xmlhttp = new XMLHttpRequest();
    } else { // code for IE6, IE5
      xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }

  //为引擎对象绑定监听事件 (设置回调函数)
  xmlhttp.onreadystatechange = function () {
    //等待服务器响应
    if (xmlhttp.readyState == 4) {
      //当请求状态为4时，说明请求完成
      if (xmlhttp.status == 200) {
        //判断服务器响应状态吗是否正常
        //取出响应的数据
        var result = xmlhttp.responseText;
        //将数据通过JS添加到页面
        document.getElementById("result").innerHTML = result;
      }
    }
  }
    xmlhttp.open("POST", "https://www.baidu.com/", true);
    //设置Content-type
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send(null);

    document.getElementsByClassName("cont")[0].innerHTML = `
        <div class="cont-title">
        <p class="cont-txt">我的收藏</p>
        </div>
        <div class="cont-infos">
        <h3> 阿里秋招面试全解析（含内推岗）</h3>
        <p>2019-11-11</p>
        <button class="cancel fr">取消收藏</button>
        </div>
        <div class="cont-infos">
        <h3>利用 ajax 上传图片 删除图片 (Spring Boot)</h3>
        <p>2019-11-3</p>
        <button class="cancel fr">取消收藏</button>
        </div>
        <div class="cont-infos">
        <h3>java最简单最全入门基础笔记(不简单，不全你打我)</h3>
        <p>2019-11-1</p>
        <button class="cancel fr">取消收藏</button>
        </div>
        `;
  }

  function fn2() {
    var xmlHttp;
    if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
      xmlhttp = new XMLHttpRequest();
    } else { // code for IE6, IE5
      xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }


  //为引擎对象绑定监听事件 (设置回调函数)
  xmlhttp.onreadystatechange = function () {
    //等待服务器响应
    if (xmlhttp.readyState == 4) {
      //当请求状态为4时，说明请求完成
      if (xmlhttp.status == 200) {
        //判断服务器响应状态吗是否正常
        //取出响应的数据
        var result = xmlhttp.responseText;
        //将数据通过JS添加到页面
        document.getElementById("result").innerHTML = result;
      }
    }
  }
    xmlhttp.open("POST", "ajax", true);
    //设置Content-type
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlhttp.send(null);

    document.getElementsByClassName("cont")[0].innerHTML = `
        <div class="cont-title">
        <p class="cont-txt">我的关注</p>
        <span class="fr">共2人</span>
        </div>
        <div class="cont-person">
        <img src="images/other/2.jpg" alt="" width="55">
        <span>Trista-</span>
        <button class="fr">取消收藏</button>
        </div>
        <div class="cont-person">
        <img src="images/other/1.jpg" alt="" width="55">
        <span>LGD_Sunday</span>
        <button class="fr">取消收藏</button>
        </div>
        `;
  }

  function fn3() {
    var xmlHttp;
    if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
      xmlhttp = new XMLHttpRequest();
    } else { // code for IE6, IE5
      xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }


  //为引擎对象绑定监听事件 (设置回调函数)
  xmlhttp.onreadystatechange = function () {
    //等待服务器响应
    if (xmlhttp.readyState == 4) {
      //当请求状态为4时，说明请求完成
      if (xmlhttp.status == 200) {
        //判断服务器响应状态吗是否正常
        //取出响应的数据
        var result = xmlhttp.responseText;
        //将数据通过JS添加到页面
        document.getElementById("result").innerHTML = result;
      }
    }
  }

    xmlhttp.open("POST", "ajax", true);
    //设置Content-type
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    xmlhttp.send(null);

    document.getElementsByClassName("cont")[0].innerHTML = `
        <div class="cont-title">
        <p class="cont-txt">我的评论</p>
        </div>
        <ul class="list">
        <li class="clear">
            <!-- 获取图片路径 -->
        <img src="images/index/logo2.png" alt="">
            <!-- 获取评论路径 -->
        <p>给UP主打call！<span class="fr">2019-11-12</span></span>
        </li>
        <li class="clear">
            <!-- 获取图片路径 -->
        <img src="images/index/logo2.png" alt="">
            <!-- 获取评论路径 -->
        <p>了解了，谢谢。<span class="fr">2019-11-10</span></p>
        </li>
        </ul>
        `;
  }
</script>
<script>
    var edit = document.getElementsByClassName("cont-edit");
    var navUser = document.getElementsByClassName("nav-user")[0];
    var list = document.getElementsByClassName("user-lists")[0];

    navUser.onmouseenter=function (){
        list.style.display="block";
    }
    navUser.onmouseleave=function (){
        list.style.display="none";
    }

    for (var i = 0; i < edit.length; i++) {
        edit[i].i=i;
        edit[i].onfocus=function (){
            edit[this.i].removeAttribute("readonly");
        }
        edit[i].onblur=function (){
            edit[this.i].setAttribute("readonly","readonly");
        }
    }
</script>
</html>