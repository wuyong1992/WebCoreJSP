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
    <title>session2</title>
</head>
<body>
<h1>这是session2页面</h1>

<%
    //获取属性
    String userName = String.valueOf(session.getAttribute("name"));
    Integer userAge = (Integer) session.getAttribute("age");
%>
<h1>
    姓名：<%=userName%><br>
    年龄：<%=userAge%><br>
</h1>


</body>
</html>
