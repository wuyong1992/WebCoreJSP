<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/5
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取Cookie</title>
</head>
<body>
<%
    //获取Cookie，利用getCookies(),返回值是一个数组
    Cookie[] cookies = request.getCookies();
    for (Cookie cookie : cookies) {
%>
    <h1>
        <%=cookie.getName()%> ----> <%=cookie.getValue()%>
    </h1>
<%
    }
%>
</body>
</html>
