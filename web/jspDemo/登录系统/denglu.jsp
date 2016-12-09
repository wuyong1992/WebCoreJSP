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
    <%--创建表单--%>
    <form action="denglu.jsp" method="post">
        账号：
        <input type="text" name="name" title="点击输入用户名张三">

        密码：
        <input type="password" name="password" title="点击输入密码123">

        <input type="submit" name="submit" value="登录" title="点击登录">

        <input type="reset" name="reset" value="重置" title="点击重置">
        <br>
        <br>
        <br>
        <br>
        <input type="checkbox" checked="checked" name="cookie">十天内保存我的登录状态
    </form>

    <%--<%
        int tmp=3;
    %>--%>
    <%
        request.setCharacterEncoding("utf-8");      //  设置读取编码方式，否则出现中文可能乱码，可能发生错误
        String uName = request.getParameter("name");
        String uPasswd = request.getParameter("password");
        if ((uName != null) && (uPasswd != null)) {
            if (uName.equals("张三") && uPasswd.equals("123")) {
                session.setAttribute("user", uName);
                session.setAttribute("password",uPasswd);
                response.setHeader("refresh", "3,URL=huanying.jsp");
    %>

    <%
        //Cookie操作
        String[] cook = request.getParameterValues("cookie");
        if (cook.length > 0 && null != cook) {
            Cookie cName = new Cookie("cookieName", uName);
            Cookie cPasswd = new Cookie("cookiePasswd", uPasswd);
            cName.setMaxAge(864000);
            cPasswd.setMaxAge(864000);
            response.addCookie(cName);
            response.addCookie(cPasswd);
        } else {
            Cookie[] cookies = request.getCookies();
            if (cookies.length > 0 && null != cookies) {

            }
        }
    %>
    <h3>登录成功，3秒后跳转至欢迎页面！</h3>
    <h2><a href="huanying.jsp">如果没有跳转，点击这里进行跳转</a></h2>
    <%
    } else {
    %>
    <h2>登录错误，请检查你的账号或者密码。</h2>
    <%
            }
        }
    %>
</div>
</body>
</html>

