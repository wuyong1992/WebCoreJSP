<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/2
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="simple" class="com.javaweb.JSP.BeanDemo.SimpleBean" scope="page"/>
<%--* 表示通配符，不指定某一个具体的属性--%>
<jsp:setProperty name="simple" property="*"/>
<html>
<head>
    <title>接受input_bean.html的信息并处理，利用uesBean</title>
</head>
<body>
<h4>姓名：<%=simple.getName()%></h4>
<h4>年龄：<%=simple.getAge()%></h4>
</body>
</html>
