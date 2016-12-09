<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/6
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取路径02</title>
</head>
<body>
<%
    String path02 = this.getServletConfig().getServletContext().getRealPath("/");
%>
<h1>
    真实路径：<%=path02%>
</h1>
</body>
</html>
