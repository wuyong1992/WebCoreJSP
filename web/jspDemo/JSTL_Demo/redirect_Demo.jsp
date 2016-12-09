<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/8
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>c:redirect</title>
</head>
<body>
<c:redirect url="import_Demo03.jsp">
    <c:param name="name" value="zhangsan02"/>
</c:redirect>
</body>
</html>
