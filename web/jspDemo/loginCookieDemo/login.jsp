<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/5
  Time: 19:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
</head>
<body>
<h1>登录页面</h1>

<form action="login.jsp" method="post">
    <h3>

        账号：<input type="text" name="name" value=""><br>
        密码：<input type="password" name="password" value=""><br>
        <input type="checkbox" id="rem">十天内记住我的登录状态。
        <br>
        <input type="submit" name="submit" value="登录">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" name="reset" value="重置">
    </h3>
</form>
<%
    request.setCharacterEncoding("utf-8");
    String name = "";
    String password = "";
    name = request.getParameter("name");
    password = request.getParameter("password");
    if (null != name && null != password && "张三".equals(name) && "123".equals(password)) {
        session.setAttribute("uesrName", name);
        response.setHeader("refresh", "3;URL=doLogin.jsp");
%>
        <h3>登录成功，3秒后跳转</h3>
        <h5>如果页面没有跳转，点击<a href="doLogin.jsp">这里</a></h5>
<%
    } else {
%>
        <h3>登录错误，请检查账号及密码！</h3>
<%
    }
%>
</body>
</html>
