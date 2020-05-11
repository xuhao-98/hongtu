<%@ page import="com.zjy.spring.model.user_info" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: zjy
  Date: 2019/11/14
  Time: 18:56
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
    <title>用户信息管理</title>
    <link rel="stylesheet" href="css/base.css">
    <link rel="shortcut icon" href="images/index/logo2.png" type="image/x-icon">
    <link rel="stylesheet" href="css/admin/select.css">
</head>

<body>
<div class="container">
    <form method="post" action="">
        <table class="table">

            <tr>
                <th>用户ID</th>
                <th>用户名</th>
                <th>Level</th>
                <th>操作</th>
            </tr>
            <%
                ArrayList<user_info> list= (ArrayList<user_info>) request.getAttribute("users");
                if(list.size()!=0)
                {
                for(int i=0;i<list.size();i++)
                { %>
            <tr>
                <td>
                    <%=list.get(i).getUser_id()%>
                </td>
                <td >
                    <%=list.get(i).getUser_name()%>
                </td>
                <td>
                    <%=list.get(i).getUser_type()%>
                </td>
                <td><%if(list.get(i).getUser_type()==1){%><a class="btn" href="UpUserServlet.do?user_id=<%=list.get(i).getUser_id()%>">变为管理员</a>
                    <a class="btn" href="DelUserServlet.do ?user_id=<%=list.get(i).getUser_id()%>">删除</a><%}%>
                </td>
            </tr>
            <%}
            }%>
        </table>
    </form>
</div>
</body>

</html>
