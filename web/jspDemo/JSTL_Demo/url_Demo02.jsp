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
通过传参的形式
<c:url value="http://www.baidu.com" var="baidu">
    <c:param name="name" value="zhangsan"/>
    <c:param name="age" value="25"/>
</c:url>
<a href="${baidu}">新的地址，注意地址栏后缀</a>

</body>
</html>
