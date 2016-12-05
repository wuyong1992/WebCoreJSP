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
    <title>request</title>
</head>
<body>
<h1>这是request页面</h1>

<%
    //设置属性，并设置作用范围为page
    request.setAttribute("name", "z张三");
    request.setAttribute("age", 25);
%>
<%
    //获取属性
    String userName = String.valueOf(request.getAttribute("name"));
    Integer userAge = (Integer) request.getAttribute("age");
%>
<h1>
    姓名：<%=userName%><br>
    年龄：<%=userAge%><br>
</h1>
<%--手动跳转后页面无法获取相应属性，自动跳转后可以获取相应属性。
原因：通过链接手动跳转，地址栏改变，属于客户端跳转（请求重定向）
      通过forward自动跳转后，地址栏不变，属于服务器跳转（请求转发）--%>
<%--手动跳转--%>
<a href="request2.jsp">手动跳转</a>
<%--自动跳转--%>
<%--<jsp:forward page="request2.jsp"/>--%>
</body>
</html>
