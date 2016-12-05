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
<h1>这是request2</h1>
<%
    //不设置，直接获取由pageContext传过来的属性，测试是是否能获取
    String userName = String.valueOf(request.getAttribute("name"));
    Integer userAge = (Integer) request.getAttribute("age");
%>
<h3>
    姓名：<%=userName%><br>
    年龄：<%=userAge%><br>
</h3>

</body>
</html>
