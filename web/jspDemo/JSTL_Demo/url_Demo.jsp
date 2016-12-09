<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/8
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>c:url</title>
</head>
<body>
<%--c:url标签，不会直接跳转，而是将链接作为字符串存储--%>
<c:url value="http://www.baidu.com"/> <br>
<%--效果一样--%>
<c:url value="http://www.baidu.com" var="baidu"/>
${baidu}
<br>
<a href="${baidu}">baidu</a>
</body>
</html>
