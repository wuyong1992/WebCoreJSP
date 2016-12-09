<%@ page import="java.util.Date" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/8
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>I18N国际化，时间格式化</title>
</head>
<body>
<%
    pageContext.setAttribute("date", new Date());
%>
<%--<fmt:formatDate value="${date}" type="both" dateStyle="default" timeStyle="default" var="date"/>
<h3>默认时间显示为：<br>${date}</h3>--%>
<hr>
<fmt:formatDate value="${date}" type="both" pattern="yyyy年MM月dd日   HH：mm：ss：SSS" var="date"/>
<h3>自定义时间显示为：<br>${date}</h3>
</body>
</html>
