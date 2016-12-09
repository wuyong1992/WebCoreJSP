<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/8
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>c:import 传递参数页面</title>
</head>
<body>
<c:import url="import_Demo03.jsp" charEncoding="utf-8">
    <c:param name="name" value="张三"/>
    <c:param name="age" value="25"/>
</c:import>
</body>
</html>
