<%@ page import="java.util.ArrayList " %>
<%@ page import="com.zjy.spring.model.tm_info" %>
<%--
  Created by IntelliJ IDEA.
  User: zjy
  Date: 2019/11/14
  Time: 14:13
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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>文章管理</title>
    <link rel="stylesheet" href="css/base.css">
    <link rel="shortcut icon" href="images/index/logo2.png" type="image/x-icon">
    <link rel="stylesheet" href="css/admin/select.css">
</head>

<body>
<div class="container">
    <form method="post" action="">
        <table class="table">
            <tr>
                <th>编号</th>
                <th>题目</th>
                <th>操作</th>
            </tr>
            <%ArrayList<tm_info> list= (ArrayList<tm_info>) request.getAttribute("Model");
                if(list.size()!=0)
                {
                for(int i=0;i<list.size();i++)
                { %>
            <tr>
                <td>
                    <%=list.get(i).getTm_id()%>
                </td>
                <td >
                    <%=list.get(i).getTm_title()%>
                </td>
<%--               修改 尚未做成--%>
                <td><a class="btn" href="Sel.do?tm_id=<%=list.get(i).getTm_id()%>" >修改</a>
                    <a class="btn" href="DelArticleServlet.do?tm_id=<%=list.get(i).getTm_id()%>">删除</a>
                </td>
            </tr>
            <%}
            }%>

        </table>
        <div class="row">
            <a class="btn1" href="">添加</a>
        </div>
    </form>
</div>
</body>

</html>
