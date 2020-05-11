<%--
  Created by IntelliJ IDEA.
  User: zjy
  Date: 2019/11/14
  Time: 14:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>修改新闻</title>
    <link rel="stylesheet"
          href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script
            src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script
            src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h3>更新新闻</h3>
    <form action="${pageContext.request.contextPath}/UpdateRouteServlet"
          method="post" enctype="multipart/form-data">
        <div class="input-group mb-3">
            <div eeclass="input-group-prepend">
                <span class="input-group-text">新闻编号</span>
            </div>
            <input type="text" class="form-control"  disabled="disabled"
                   value="${route1.r_no }">
            <input type="hidden"  class="form-control" name="r_no"  value="${route1.r_no}"
            >
        </div>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text">新闻标题</span>
            </div>
            <input type="text" class="form-control" name="r_title"
                   value="${route1.r_title }">
        </div>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text">新闻内容</span>
            </div>
            <textarea class="form-control p-4" name="r_content" style="min-height: 500px;"
                      value="${route1.r_content }"></textarea>
        </div>
        <div class="custom-file">
            <label class="custom-file-label" for="customFile">选择图片</label> <input
                type="file" class="custom-file-input" name="r_picture1"
                id="customFile">
        </div>
        <button type="submit" class="btn btn-primary btn-block btn-sm mt-3">确认修改</button>
    </form>
</div>
</body>
</html>
