<%@ page import="com.javaweb.JSP.BeanDemo.SimpleBean" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/2
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>接受input_bean.html的信息并处理</title>
</head>
<body>
<%
    SimpleBean simple = new SimpleBean();
    simple.setAge(Integer.parseInt(request.getParameter("age")));
    simple.setName(request.getParameter("name"));
%>
<h3>姓名：<%=simple.getName()%></h3>
<h3>年龄：<%=simple.getAge()%></h3>
</body>
</html>
