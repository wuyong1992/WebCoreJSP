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
    <title>处理页面</title>
</head>
<body>

<h1>登录成功！</h1>

<%
    String[] isUserCookies = request.getParameterValues("cookie");
    if (isUserCookies.length > 0 && null != isUserCookies) {
        String username = request.getParameter("name");
        String pssword = request.getParameter("password");
        Cookie cNmae = new Cookie("username", username);
        Cookie cPassword = new Cookie("password", pssword);
        cNmae.setMaxAge(864000);
        cPassword.setMaxAge(864000);
        response.addCookie(cNmae);
        response.addCookie(cPassword);
    } else {
        Cookie[] cookies = request.getCookies();
        if (cookies.length > 0 && null != cookies) {
            for (Cookie c : cookies) {
                if (c.getName().equals("name")||c.getName().equals("password")) {
                    c.setMaxAge(0);
                    response.addCookie(c);
                }
            }
        }
    }
%>


<a href="user.jsp" target="_blank">查看个人信息</a>
</body>
</html>
