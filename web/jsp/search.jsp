<%@ page import="com.zjy.spring.model.tm_info" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: zjy
  Date: 2019/11/14
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<html>

<head onload="loada()">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>当前搜索</title>
    <link rel="shortcut icon" href="images/index/logo2.png" type="image/x-icon">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="font/iconfont.css">
    <link rel="stylesheet" href="css/serach.css">
    <link rel="stylesheet" href="css/index/header.css">
    <link rel="stylesheet" href="css/index/footer.css">
</head>

<body>
<header id="header">
    <!-- nav 部分 start -->
    <nav class="clear">
        <div class="logo fl">
            <a href="index.jsp" target="self">
                <img src="images/index/logo.png" alt="宏图logo" width="150" height="60" title="ht">
            </a>
        </div>
        <ul class="nav-list fl">
            <li class="nav-list-link fl ">
                <a href="index.jsp" class="nav-list-click on">宏图首页</a>
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
        <div  id="loginD">
            <div class="nav-user clear">
                <div class="nav-login fl">
                    <a href="jsp/login.jsp">
                        <i class="iconfont icon-denglu"></i>登录</a>
                </div>
                <div class="nav-register fl">
                    <a href="jsp/register.jsp">
                        <i class="iconfont icon-zhuce"></i>注册</a>
                </div>
            </div>
        </div>
    </nav>
    <!-- nav 部分 end-->
    <div class="header-bg">
        <a href="javascript:;" class="bg-link">
            <img src="images/base/bg.jpg" alt="背景" height="560" width="100%">
        </a>
        <a href="javascript:;" class="bg-link">
            <img src="images/base/bg1.jpg" alt="背景" height="560" width="100%">
        </a>
        <a href="javascript:;" class="bg-link">
            <img src="images/base/bg3.jpg" alt="背景" height="560" width="100%">
        </a>
    </div>
    <!-- header-nav 部分 start -->
    <div class="header-nav ">
        <ul class="clear">
            <li class="nav-item ">
                <a href="SelModelServlet.do">
                    <h3>时代楷模</h3>
                    <p>体现“爱国、敬业、诚信、友善”的价值准则</p>
                </a>
            </li>
            <li class="nav-item ">
                <a href="SelHotsPotServlet.do">
                    <h3>当今热点</h3>
                    <p>当代社会的新闻热点</p>
                </a>
            </li>
            <li class="nav-item ">
                <a href="SelHistoryServlet.do">
                    <h3>铭记历史</h3>
                    <p>永不能忘的中国历史上的事件</p>
                </a>
            </li>
            <li class="nav-item ">
                <a href="SelPolicyServlet.do">
                    <h3>最新政策</h3>
                    <p>社会方面新推行的政策</p>
                </a>
            </li>
        </ul>
    </div>
    <!-- header-nav 部分 end -->
</header>
<!-- header 部分 end -->
<article id="article">
    <div class="guide">
        <a href="../index.html">宏图首页</a>
        <span class="jiantou">>></span>
        <span>搜索结果</span>
    </div>
    <%
        ArrayList<tm_info> list= (ArrayList<tm_info>) request.getAttribute("list");
        for(int i=0;i<list.size();i++)
        { %>
    <div class="art-content">
        <!-- 文章内容 -->
        <div class="news-title">
            <h3>
                <a href="SelServlet.do?tm_id=<%=list.get(i).getTm_id()%>" target="_blank"><%=list.get(i).getTm_title()%></a>
            </h3>
        </div>
        <div class="news-time">
            <span>时间:</span><span><%=list.get(i).getTm_data()%></span>
        </div>
        <div class="news-cont">
            <p><%=list.get(i).getTm_article()%></p>
        </div>
    </div>
    <%}%>
</article>
<!-- fooer start -->
<footer style="margin-top: 50px;">
    <div class="footer-content">
        <img src="images/index/stxlogo.png" alt="" class="footer-content-logo">
        <div class="copyright">
            <span>地址：重庆市合川大学城假日大道1号 | 邮编：401520</span><br>
            <span>Copyright<i class="iconfont icon-copyright"></i>2019<strong>Development Team:Dockers</strong> All rights reserved
              版权所有</span>
        </div>
    </div>
</footer>
<!-- fooer end -->
<script src="js/index.js"></script>
</body>
<script>
    function loada() {
        <%if(request.getAttribute("user")!=null)
  {%>
        document.getElementById("loginD").innerHTML =` <div class="nav-user1 fr clear"><div class="user-photo"> <img src="images/upload/headpic/${sessionScope.user.user_pic}" alt="" class="photo-img"> </div> <ul class="user-lists"> <li class="user-list"><a href="jsp/User/person.jsp">个人中心</a></li> <li class="user-list"><a href="jsp/User/updatepwd.jsp">修改密码</a></li> <li class="user-list"><a href="ExitServlet.do">退出登录</a></li> </ul></div>`;
        <%}
      else
        {%>
        document.getElementById("loginD").innerHTML =` <div class="nav-user clear"> <div class="nav-login fl"><a href="jsp/login.jsp"><i class="iconfont icon-denglu"></i>登录</a></div><div class="nav-register fl"><a href="jsp/register.jsp"><i class="iconfont icon-zhuce"></i>注册</a></div></div>`
        <%}%>
    }
    var navUser = document.getElementsByClassName("nav-user1")[0];
    var list = document.getElementsByClassName("user-lists")[0];
    navUser.onmouseover=function (){
        list.style.display="block";
    }
    navUser.onmouseout=function (){
        list.style.display="none";
    }
</script>
</html>
