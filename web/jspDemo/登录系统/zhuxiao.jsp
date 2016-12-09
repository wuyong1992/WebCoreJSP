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
    <title>注销页面</title>
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
    <%
        response.setHeader("refresh", "3;URL=denglu.jsp");        //定时跳转
        session.invalidate();                                   //让当前会话失效，及注销
    %>
    <h1>您已成功退出本页面，3秒后回到首页！</h1>
    <h5>
        <a href="denglu.jsp">如果没有回到首页，请点击这里！</a>
    </h5>
</div>
</body>
</html>
