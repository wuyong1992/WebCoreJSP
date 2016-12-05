<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/5
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>创建Cookie，并提交</title>
</head>
<body>
<%
    //创建Cookie，先创建，再使用
    Cookie c1 = new Cookie("name", "张三");
    Cookie c2 = new Cookie("age", "25");
    response.addCookie(c1);
    response.addCookie(c2);
    c1.setMaxAge(60);
    c2.setMaxAge(60);
%>

</body>
</html>
