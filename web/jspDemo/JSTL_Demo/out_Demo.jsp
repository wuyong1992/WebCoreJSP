<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/8
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试c:out</title>
</head>
<body>
<c:out value="Hello World"/> <br>
<%--不管value写不写内容，都得有，否则报错！这个方法输出略有缺陷--%>
<c:out value="${aa}">
    Hello World
</c:out>
<hr/>
<%
    pageContext.setAttribute("info","test msg");
%>
<c:out value="${info}"/> <br>
<c:out value="${outfo}" default="if value is null,i'am show"/> <br>
<c:out value="${outfo}">没有该属性</c:out>
<hr>

</body>
</html>
