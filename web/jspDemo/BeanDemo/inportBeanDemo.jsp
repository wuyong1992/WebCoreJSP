<%@ page import="com.javaweb.JSP.BeanDemo.SimpleBean" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/2
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%--inport导入的方式，需要手动实例化对象--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试Bean</title>
</head>
<body>
<%
    SimpleBean simple = new SimpleBean();
    simple.setName("坚果");
    simple.setAge(25);
%>
<h1>姓名：<%=simple.getName()%></h1>
<h1>年龄：<%=simple.getAge()%></h1>
</body>
</html>
