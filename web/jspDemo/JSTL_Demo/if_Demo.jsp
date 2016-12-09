<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/8
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>c:if</title>
</head>
<body>
<c:if test="${10>5}" var="sco" scope="page">
    <h3>10当然大于5了</h3>
</c:if>
</body>
</html>
