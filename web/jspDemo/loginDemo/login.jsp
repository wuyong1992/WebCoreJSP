<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/2
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
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
    <form name="login" action="loginReceive.jsp" method="post">
        账号：<input name="userName" type="text" size="32" title="点击输入用户名">
        <br><br><br><br><br>

        密码：<input name="psd" type="password" size="32" title="点击输入密码">
        <br><br><br><br><br>

        <input id="sub" name="submit" type="submit" value="登录" title="点击登录">
        &nbsp;
        &nbsp;
        &nbsp;
        <input id="res" name="reset" type="reset" value="重置" title="点击重新输入账号、密码">
    </form>
</div>
</body>
</html>
