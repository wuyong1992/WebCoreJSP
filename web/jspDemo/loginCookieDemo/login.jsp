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
<hr>

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

<form action="doLogin.jsp" method="post">
    <h3>

        账号：<input type="text" name="name" value="<%=name%>"><br>
        密码：<input type="password" name="password" value="<%=password%>"><br>
        <input type="checkbox" name="cookie" checked="checked" id="rem">十天内记住我的登录状态。
        <br>
        <input type="submit" name="submit" value="登录">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" name="reset" value="重置">
    </h3>
</form>
<%--
<%
    request.setCharacterEncoding("utf-8");      //  设置读取编码方式，否则出现中文可能乱码，可能发生错误
    String uName = request.getParameter("name");
    String uPasswd = request.getParameter("password");
    if ((uName != null) && (uPasswd != null)) {
        if (uName.equals("张三") && uPasswd.equals("123")) {
            session.setAttribute("user", uName);

            response.setHeader("refresh", "3,URL=doLogin.jsp");
%>

<h3>登录成功，3秒后跳转至欢迎页面！</h3>
<h2><a href="doLogin.jsp">如果没有跳转，点击这里进行跳转</a></h2>
<%
} else {
%>
<h2>登录错误，请检查你的账号或者密码。</h2>
<%
        }
    }
%>--%>


</body>
</html>
