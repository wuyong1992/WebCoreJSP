<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/5
  Time: 19:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息</title>
</head>
<body>
<%
    String name = "";
    String password = "";
    Cookie[] cookies = request.getCookies();
    if (cookies.length > 0 && null != cookies) {
        for (Cookie c : cookies) {
            if (c.getName().equals("name")) {
                name = c.getValue();
            }
            if (c.getName().equals("password")) {
                password = c.getValue();
            }
        }
    }
%>
<h2>
    用户名：<%=name%><br>
    密  码：<%=password%>
</h2>

</body>
</html>
