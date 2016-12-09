<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/6
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取路径</title>
</head>
<body>
<%
    String path = application.getRealPath("/");     //"/"表示根目录
%>
<h1>
    真实路径：<%=path%>
</h1>
</body>
</html>
