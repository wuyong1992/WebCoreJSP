<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/7
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL表达式替换颜色</title>
    <%
        pageContext.setAttribute("color","green");
    %>
</head>
<body bgcolor="${pageScope.color}">

</body>
</html>
