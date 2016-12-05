<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/5
  Time: 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>session</title>
</head>
<body>
<h1>这是session页面</h1>
<%
    //设置属性，并设置作用范围为page
    session.setAttribute("name", "z张三");
    session.setAttribute("age", 25);
%>
<%
    //获取属性
    String userName = String.valueOf(session.getAttribute("name"));
    Integer userAge = (Integer) session.getAttribute("age");
%>
<h1>
    姓名：<%=userName%><br>
    年龄：<%=userAge%><br>
</h1>
<%--手动跳转--%>
<a href="session2.jsp">手动跳转</a>
<%--自动跳转--%>
<%--<jsp:forward page="session2.jsp"/>--%>
</body>
</html>
