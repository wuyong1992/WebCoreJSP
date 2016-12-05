<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/2
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%--利用jsp：uesBean 的方式导入。
id：表示实例化对象的名称
scope：表示使用的范围
class：对象所在的包.类名称
下面可以直接是用这个实例化对象，不用再new一个对象--%>
<jsp:useBean id="simple" scope="page" class="com.javaweb.JSP.BeanDemo.SimpleBean"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试JavaBean</title>
</head>
<body>
<%
    simple.setName("大坚果");
    simple.setAge(25);
%>
<h2>姓名：<%=simple.getName()%></h2>
<h2>年龄：<%=simple.getAge()%></h2>
</body>
</html>
