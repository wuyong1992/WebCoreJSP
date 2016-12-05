<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/2
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>接受页面</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String uName = request.getParameter("userName");
    String uPsd = request.getParameter("psd");
    if (uName.equals("hello") && uPsd.equals("123456")) {
%>
<jsp:forward page="loginSucceed.html"/>
<%
} else {
%>
<jsp:forward page="loginErro.html"/>
<%
    }
%>

</body>
</html>
