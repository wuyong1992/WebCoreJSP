<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/7
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL的四种范围</title>
</head>
<body>
<%
    pageContext.setAttribute("name","来自page的问候");
    request.setAttribute("name","来自request的问候");
    session.setAttribute("name","来自session的问候");
    application.setAttribute("name","来自application的问候");
%>
<%--查找范围是page--->request--->session--->application--%>
<h3>不限制查找范围的情况下，默认从page开始</h3>
${name}
<hr>
<h3>指定查找范围，则可以在相应的范围内查找</h3>
${pageScope.name}<br>
${requestScope.name}<br>
${sessionScope.name}<br>
${applicationScope.name}<br>
</body>
</html>
