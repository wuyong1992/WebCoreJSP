<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/6
  Time: 18:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功页面</title>
    <style>
        div {
            width: 40%;
            height: 40%;
            margin: auto;
            text-align: center;
            position: absolute;
            top: 30%;
            left: 30%;
        }
    </style>
</head>
<body>
<div>
    <h1>
        <%=session.getAttribute("user")%>欢迎回来!
        <br>
    </h1>
    <h3>
        <a href="zhuxiao.jsp">可以点击这里进行注销</a>
    </h3>
</div>
</body>
</html>
