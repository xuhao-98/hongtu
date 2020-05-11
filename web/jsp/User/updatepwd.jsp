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
  <title>修改密码</title>
  <link rel="shortcut icon" href="images/index/logo2.png" type="image/x-icon">
  <link rel="stylesheet" href="css/base.css">
  <link rel="stylesheet"  href="css/people/personheader.css">
  <link rel="stylesheet" href="css/updatepwd.css">
  <link rel="stylesheet" href="font/iconfont.css">
  <link rel="stylesheet" href="css/index/footer.css">
</head>

<body>
  <div id="container">
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
            <a href="SelHotsPotServlet.do" class="nav-list-click on">当今热点</a>
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
    </header>

    <article id="article">
      <div class="cont-title">
        <p class="cont-txt">修改密码</p>
      </div>
      <div class="main">
        <form action="UpdateUserServlet.do?user_id=${sessionScope.user.user_id}" method="post">
          <label for="name">昵 称：</label>
          <input type="text" name="user_name" id="name"><br />
          <label for="pwd">密 码：</label>
          <input type="password" name="user_pwd" id="pwd"><br />
         <div class="btn">
          <input type="submit" value="保存" id="submit">
         </div>
        </form>
      </div>
      <a href="#header" class="in-click" title="返回顶部"></a>
    </article>
    <!-- fooer start -->
    <footer>
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
  </div>

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
</body>

</html>