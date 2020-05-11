<%--
  Created by IntelliJ IDEA.
  User: zjy
  Date: 2019/11/14
  Time: 21:47
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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>宏图</title>
    <link rel="shortcut icon" href="./images/index/logo2.png" type="image/x-icon">
    <link rel="stylesheet" href="./css/base.css">
    <link rel="stylesheet" href="./css/index/header2.css">
    <link rel="stylesheet" href="./font/iconfont.css">
    <link rel="stylesheet" href="./css/index/main.css">
    <link rel="stylesheet" href="./css/index/footer.css">
    <style>
        .nav-user>a{
            font-size: 15px;
            font-weight: bold;
            margin: 0 5px;
            color: #aaa;
        }
        .nav-user>a:hover{
            color: #000;
        }
    </style>
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
                <a href="SelModelServlet" class="nav-list-click">时代楷模</a>
                <ol class="nav-list-con">
                    <li class="nav-list-con-item">
                        <a href="SelModelServlet" class="item-intro">新时代楷模</a>
                    </li>
                    <li class="nav-list-con-item">
                        <a href="SelModelServlet" class="item-intro">“双百”人物</a>
                    </li>
                    <li class="nav-list-con-item">
                        <a href="SelModelServlet" class="item-intro">道德模范</a>
                    </li>
                    <li class="nav-list-con-item">
                        <a href="SelModelServlet" class="item-intro">改革先锋</a>
                    </li>
                </ol>
            </li>
            <li class="nav-list-link fl">
                <a href="SelHotsPotServlet" class="nav-list-click">当今热点</a>
                <ol class="nav-list-con">
                    <li class="nav-list-con-item">
                        <a href="SelHotsPotServlet" class="item-intro">社会热点</a>
                    </li>
                    <li class="nav-list-con-item">
                        <a href="SelHotsPotServlet" class="item-intro">政治热点</a>
                    </li>
                </ol>
            </li>
            <li class="nav-list-link fl">
                <a href="SelHistoryServlet" class="nav-list-click">铭记历史</a>
            </li>
            <li class="nav-list-link fl">
                <a href="SelPolicyServlet" class="nav-list-click">最新政策</a>
                <ol class="nav-list-con">
                    <li class="nav-list-con-item">
                        <a href="SelPolicyServlet" class="item-intro">惠民政策</a>
                    </li>
                    <li class="nav-list-con-item">
                        <a href="SelPolicyServlet" class="item-intro">法律修订</a>
                    </li>
                </ol>
            </li>
            <li class="nav-list-link fl">
                <a href="SelDistrictServlet" class="nav-list-click">红色老区</a>
            </li>
            <li class="nav-list-link fl">
                <a href="SelHeroManServlet" class="nav-list-click">平民英雄</a>
            </li>
        </ul>
        <div class="header-serach fl">
            <form action="SearchServlet" method="POST" class="clear">
                <input type="search" id="search" placeholder="搜索..." class="serach-txt fl" />
                <a href="" class="search-btn fr">
                    <i class="iconfont icon-sousuo"></i>
                </a>
            </form>
        </div>
        <div class="nav-user clear">
            <p>欢迎您！</p>
            <a href="./html/person.html">个人中心</a>
            <a href="index.html">注销</a>
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
                <a href="SelModelServlet">
                    <h3>时代楷模</h3>
                    <p>体现“爱国、敬业、诚信、友善”的价值准则</p>
                </a>
            </li>
            <li class="nav-item ">
                <a href="SelHotsPotServlet">
                    <h3>当今热点</h3>
                    <p>当代社会的新闻热点</p>
                </a>
            </li>
            <li class="nav-item ">
                <a href="SelHistoryServlet">
                    <h3>铭记历史</h3>
                    <p>永不能忘的中国历史上的事件</p>
                </a>
            </li>
            <li class="nav-item ">
                <a href="SelPolicyServlet">
                    <h3>最新政策</h3>
                    <p>社会方面新推行的政策</p>
                </a>
            </li>
        </ul>
    </div>
    <!-- header-nav 部分 end -->
</header>
<!-- header 部分 end -->


<!-- main 部分 start -->
<article id="content">
    <!-- model 部分 start -->
    <div class="model">
        <div class="model-title">
            <a href="SelModelServlet">
                <h3>时代楷模</h3>
                <p>EPOCH MODEL</p>
            </a>
        </div>
        <div class="model-cont">
            <ul class="clear">
                <li class="model-cont-item fl">
                    <a href="SelModelServlet">
                        <i class="iconfont icon-xinshidai"></i>
                        <div class="model-cont-intro clear">
                            <h3>新时代楷模</h3>
                            <p>“新时代楷模”是由中宣部集中组织宣传的全国重大先进典型。</p>
                            <i class="iconfont icon-jiantou fr"></i>
                        </div>
                    </a>
                </li>
                <li class="model-cont-item fl">
                    <a href="SelModelServlet">
                        <i class="iconfont icon-renwu2"></i>
                        <div class="model-cont-intro clear">
                            <h3>“双百”人物</h3>
                            <p>100位为新中国成立作出突出贡献的英雄模范人物和感动中国人物。</p>
                            <i class="iconfont icon-jiantou fr"></i>
                        </div>
                    </a>
                </li>
                <li class="model-cont-item fl">
                    <a href="SelModelServlet">
                        <i class="iconfont icon-daodemofan1"></i>
                        <div class="model-cont-intro clear">
                            <h3>道德模范</h3>
                            <p>道德模范是具有良好道德修养的人并且促进中国特色社会主义建设。</p>
                            <i class="iconfont icon-jiantou fr"></i>
                        </div>
                    </a>
                </li>
                <li class="model-cont-item fl">
                    <a href="SelModelServlet">
                        <i class="iconfont icon-gongrenxianfenghao"></i>
                        <div class="model-cont-intro clear">
                            <h3>改革先锋</h3>
                            <p>“改革先锋”，是中华人民共和国在庆祝改革开放40周年大会上授予的荣誉称号。</p>
                            <i class="iconfont icon-jiantou fr"></i>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="model-info">
            <h2>“时代楷模”是由中宣部集中组织宣传的全国重大先进典型。</h2>
            <p>时代楷模充分体现“爱国、敬业、诚信、友善”的价值准则，充分体现中华传统美德，是具有很强先进性、代表性、时代性和典型性的先进人物。</p>
            <h3>时代楷模事迹厚重感人、道德情操高尚、影响广泛深远。根据时代楷模的职业身份，以中宣部和有关部门名义发布。
            </h3>
        </div>
    </div>
    <!-- model 部分 end -->
    <!-- hotspot 部分 start -->

    <div class="hotspot">
        <div class="hotspot-title">
            <a href="SelHotsPotServlet">
                <h3>当今热点</h3>
                <p>NOWADAYS HOTSPOT</p>
            </a>
        </div>
        <div class="hotspot-cont">
            <ul class="clear">
                <li class="hotspot-cont-item fl">
                    <a href="SelHotsPotServlet">
                        <i class="iconfont icon-shehui"></i>
                        <h3>社会热点</h3>
                    </a>
                </li>
                <li class="hotspot-cont-item fl">
                    <a href="SelHotsPotServlet">
                        <i class="iconfont icon-zhengzhi"></i>
                        <h3>政治热点</h3>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <!-- hotspot 部分 end -->
    <!-- history 部分 start -->
    <div class="history">
        <div class="history-title">
            <a href="SelHistoryServlet">
                <h3>铭记历史</h3>
                <p>REMEMBER HISTORY</p>
            </a>
        </div>
        <div class="history-cont">
            <ul>
                <li class="history-choose active">全部</li>
                <li class="history-choose ">抗日战争</li>
                <li class="history-choose">解放战争</li>
            </ul>
        </div>
        <div class="history-conts on">
            <ol class="history-lists">
                <li class="history-list">
                    <a href="SelHistoryServlet" class="history-list-link">
                        <div class="his-con">
                            <img src="images/history/krzz/bt1.jpg" alt="" class="fl his-con-photo">
                            <h3 class="his-con-msg">百团大战！</h3>
                            <div class="his-con-item">
                                <span class="his-con-time">百团大战是抗战时期中国军队主动出击日军的一次最大规模的战役，他打出了敌后抗日军民的声威，振奋了全国人民争取抗战胜利的信心。</span>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="history-list">
                    <a href="SelHistoryServlet" class="history-list-link">
                        <div class="his-con">
                            <img src="images/history/krzz/rbtx1.jpg" alt="" class="fl his-con-photo">
                            <h3 class="his-con-msg">日本投降！</h3>
                            <div class="his-con-item">
                                <span class="his-con-time">宣告了法西斯轴心国的彻底覆灭,标志着中国全民族抗战暨世界反法西斯战争取得最后胜利,人类历史上漫长而血腥的第二次世界大战画上了句点。</span>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="history-list">
                    <a href="SelHistoryServlet" class="history-list-link">
                        <div class="his-con">
                            <img src="images/history/jfzz/nc1.jpg" alt="" class="fl his-con-photo">
                            <h3 class="his-con-msg">南昌起义，打响第一枪！</h3>
                            <div class="his-con-item">
                  <span
                          class="his-con-time">南昌起义是中国共产党直接领导的带有全局意义的一次武装起义，打响了武装反抗国民党反动统治的第一枪，同时也是中国共产党独立领导武装革命战争和创建人民军队开始的标志。</span>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="history-list">
                    <a href="SelHistoryServlet" class="history-list-link">
                        <div class="his-con">
                            <img src="images/history/jfzz/hh1.png" alt="" class="fl his-con-photo">
                            <h3 class="his-con-msg">淮海战役！</h3>
                            <div class="his-con-item">
                                <span class="his-con-time">中国共产党在淮海战役中取胜，加速了中国的革命进程，长江中下游以北的地区基本解放，也为解放军取得渡江战役的胜利奠定了坚实的基础。</span>
                            </div>
                        </div>
                    </a>
                </li>
            </ol>
            <div class="his-sub">
                <a href="SelHistoryServlet">
                    <input type="submit" value="查看更多历史" class="submit" name="submit">
                </a>
            </div>
        </div>
        <div class="history-conts">
            <ol class="history-lists">
                <li class="history-list">
                    <a href="SelHistoryServlet" class="history-list-link">
                        <div class="his-con">
                            <img src="images/history/krzz/rbtx1.jpg" alt="" class="fl his-con-photo">
                            <h3 class="his-con-msg">日本投降！</h3>
                            <div class="his-con-item">
                                <span class="his-con-time">宣告了法西斯轴心国的彻底覆灭,标志着中国全民族抗战暨世界反法西斯战争取得最后胜利,人类历史上漫长而血腥的第二次世界大战画上了句点。</span>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="history-list">
                    <a href="SelHistoryServlet" class="history-list-link">
                        <div class="his-con">
                            <img src="images/history/krzz/bt1.jpg" alt="" class="fl his-con-photo">
                            <h3 class="his-con-msg">百团大战！</h3>
                            <div class="his-con-item">
                                <span class="his-con-time">百团大战是抗战时期中国军队主动出击日军的一次最大规模的战役，他打出了敌后抗日军民的声威，振奋了全国人民争取抗战胜利的信心。</span>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="history-list">
                    <a href="SelHistoryServlet" class="history-list-link">
                        <div class="his-con">
                            <img src="images/history/krzz/qqsb1.jpg" alt="" class="fl his-con-photo">
                            <h3 class="his-con-msg">七七事变！</h3>
                            <div class="his-con-item">
                  <span
                          class="his-con-time">南昌起义是中国共产党直接领导的带有全局意义的一次武装起义，打响了武装反抗国民党反动统治的第一枪，同时也是中国共产党独立领导武装革命战争和创建人民军队开始的标志。</span>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="history-list">
                    <a href="SelHistoryServlet" class="history-list-link">
                        <div class="his-con">
                            <img src="images/history/krzz/njdts1.jpg" alt="" class="fl his-con-photo">
                            <h3 class="his-con-msg">南京大屠杀！</h3>
                            <div class="his-con-item">
                                <span class="his-con-time">中国共产党在淮海战役中取胜，加速了中国的革命进程，长江中下游以北的地区基本解放，也为解放军取得渡江战役的胜利奠定了坚实的基础。</span>
                            </div>
                        </div>
                    </a>
                </li>
            </ol>
            <div class="his-sub">
                <a href="SelHistoryServlet">
                    <input type="submit" value="查看更多历史" class="submit" name="submit">
                </a>
            </div>
        </div>
        <div class="history-conts">
            <ol class="history-lists">
                <li class="history-list">
                    <a href="SelHistoryServlet" class="history-list-link">
                        <div class="his-con">
                            <img src="images/history/jfzz/nc1.jpg" alt="" class="fl his-con-photo">
                            <h3 class="his-con-msg">南昌起义，打响第一枪！</h3>
                            <div class="his-con-item">
                  <span
                          class="his-con-time">南昌起义是中国共产党直接领导的带有全局意义的一次武装起义，打响了武装反抗国民党反动统治的第一枪，同时也是中国共产党独立领导武装革命战争和创建人民军队开始的标志。</span>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="history-list">
                    <a href="SelHistoryServlet" class="history-list-link">
                        <div class="his-con">
                            <img src="images/history/jfzz/pj1.jpg" alt="" class="fl his-con-photo">
                            <h3 class="his-con-msg">平津战役！</h3>
                            <div class="his-con-item">
                                <span class="his-con-time">宣告了法西斯轴心国的彻底覆灭,标志着中国全民族抗战暨世界反法西斯战争取得最后胜利,人类历史上漫长而血腥的第二次世界大战画上了句点。</span>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="history-list">
                    <a href="SelHistoryServlet" class="history-list-link">
                        <div class="his-con">
                            <img src="images/history/jfzz/ls1.jpg" alt="" class="fl his-con-photo">
                            <h3 class="his-con-msg">辽沈战役！</h3>
                            <div class="his-con-item">
                  <span
                          class="his-con-time">南昌起义是中国共产党直接领导的带有全局意义的一次武装起义，打响了武装反抗国民党反动统治的第一枪，同时也是中国共产党独立领导武装革命战争和创建人民军队开始的标志。</span>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="history-list">
                    <a href="SelHistoryServlet" class="history-list-link">
                        <div class="his-con">
                            <img src="images/history/jfzz/hh1.png" alt="" class="fl his-con-photo">
                            <h3 class="his-con-msg">淮海战役！</h3>
                            <div class="his-con-item">
                                <span class="his-con-time">中国共产党在淮海战役中取胜，加速了中国的革命进程，长江中下游以北的地区基本解放，也为解放军取得渡江战役的胜利奠定了坚实的基础。</span>
                            </div>
                        </div>
                    </a>
                </li>
            </ol>
            <div class="his-sub">
                <a href="SelHistoryServlet">
                    <input type="submit" value="查看更多历史" class="submit" name="submit">
                </a>
            </div>
        </div>
    </div>
    <!-- history 部分 end -->
    <!-- policy start -->
    <div class="policy">
        <div class="policy-title">
            <a href="SelPolicyServlet">
                <h3>最新政策</h3>
                <p>LATEST POLICY</p>
            </a>
        </div>
        <div class="policy-intro">
            <p>
                最新政策是用以指导具体政策的主导性政策。一般反映了占社会主导力量的社会群体的政治信仰和社会价值观，其中或多或少包括了政策决定者的政治信仰和社会价值观。主要特点是:(1)在层次上，基本政策一般由中央政府或其授权机关制定和发布，在层次上是比较高的；(2)在范围上，大多数情况下，基本政策在范围上要覆盖全国，适用于几乎所有的地域、行业、公民及公民团体；(3)在时间上，除非出现非常重大的变化，基本政策在相当长一段时期内是不会发生根本性变化的；(4)在权威上，只要是基本政策，都会被具体政策所援引，都会成为许多具体政策的政策依据，具有相当的权威性。
            </p>
        </div>
        <div class="policy-cont">
            <ul class="clear">
                <li class="policy-cont-item fl">
                    <a href="SelPolicyServlet">
                        <i class="iconfont icon-huiminzhengce"></i>
                        <h3>惠民政策</h3>
                    </a>
                </li>
                <li class="policy-cont-item fl">
                    <a href="SelPolicyServlet">
                        <i class="iconfont icon-falv"></i>
                        <h3>法律修订</h3>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <!-- policy end -->
    <!-- district start -->
    <div class="district">
        <div class="district-title">
            <a href="SelDistrictServlet">
                <h3>红色老区</h3>
                <p>RED OLD DISTRICT</p>
            </a>
        </div>
        <div class="district-cont">
            <ul class="clear">
                <li class="district-cont-item fl">
                    <a href="SelDistrictServlet">
                        <img src="images/index/jgs.jpg" alt="" width="300" height="150">
                    </a>
                </li>
                <li class="district-cont-item fl">
                    <a href="SelDistrictServlet">
                        <img src="images/index/ya.jpg" alt="" width="300" height="150">
                    </a>
                </li>
                <li class="district-cont-item fl">
                    <a href="SelDistrictServlet">
                        <img src="images/index/sgn.jpg" alt="" width="300" height="150">
                    </a>
                </li>
                <li class="district-cont-item fl">
                    <a href="SelDistrictServlet">
                        <img src="images/index/qms.jpg" alt="" width="300" height="150">
                    </a>
                </li>
                <li class="district-cont-item fl">
                    <a href="SelDistrictServlet">
                        <img src="images/index/xbp.jpg" alt="" width="300" height="150">
                    </a>
                </li>
                <li class="district-cont-item fl">
                    <a href="SelDistrictServlet">
                        <img src="images/index/mzg.jpg" alt="" width="300" height="150">
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <!-- district end -->
    <!-- hero start -->
    <div class="hero">
        <a href="SelHeroManServlet">
            <img src="images/index/hero.jpg" alt="hero" width="100%"  title="点击图片跳转到平民英雄详情页面" />
        </a>
    </div>
    <!-- hero end -->
</article>
<!-- main 部分 end -->
<!-- fooer start -->
<footer>
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
</div>
<script src="js/index.js"></script>
<script src="js/jquery.js"></script>
<script type="text/javascript">
    var index = 0;
    var timer = null;
    var $div = $('.bg-link'); //获取背景图片div
    timer = setInterval(auto, 5000);
    auto();
    //背景图片循环轮播,通过改变透明度实现
    function auto() {
        index++;
        index = index > 2 ? 0 : index;
        $div.eq(index).animate({
            "opacity": "1"
        }, 1000).siblings().animate({
            "opacity": "0"
        }, 1000);
    };
</script>
</body>


</html>
