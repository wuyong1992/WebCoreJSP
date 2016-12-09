<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/8
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>c:forEach</title>
</head>
<body>
<%
    List li = new ArrayList();
    li.add("zhangsan");
    li.add("lisi");
    li.add("wangwu");
    pageContext.setAttribute("name", li);
%>
<c:forEach var="tmp" items="${name}" step="1">
    ${tmp}<br>
</c:forEach>
<hr>

<%
    String[] num = {"01", "02", "03", "04", "05", "06"};
    pageContext.setAttribute("num", num);
%>
<c:forEach items="${num}" var="tmp" begin="2" end="4" step="1">
    ${tmp}<br>
</c:forEach>
<hr>
<%
    String test = "这是个句子，用来测试c:forTokens。如果可以，将显示四个分段！";
    pageContext.setAttribute("test",test);
%>
<c:forTokens items="${test}" delims="，。！" var="tmp">
    ${tmp} <br>
</c:forTokens>


</body>
</html>
