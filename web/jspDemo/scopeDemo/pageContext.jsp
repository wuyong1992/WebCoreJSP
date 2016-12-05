<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/5
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pageContext</title>
</head>
<body>
<h1>这是pageContext页面</h1>

<%
    //设置属性，并设置作用范围为page
    pageContext.setAttribute("name", "z张三");
    pageContext.setAttribute("age", 25);
%>
<%
    //获取属性
    String userName = String.valueOf(pageContext.getAttribute("name"));
    Integer userAge = (Integer) pageContext.getAttribute("age");
%>
<h1>
    姓名：<%=userName%><br>
    年龄：<%=userAge%><br>
</h1>
<%--手动跳转--%>
<a href="pageContext2.jsp">手动跳转</a>
<%--自动跳转--%>
<%--<jsp:forward page="pageContext2.jsp"/>--%>
</body>
</html>
