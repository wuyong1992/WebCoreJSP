<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/8
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>c:import 参数的页面</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
%>
<h3>
    name的参数：${param.name}<br>
    age的参数：${param.age}
</h3>
</body>
</html>
