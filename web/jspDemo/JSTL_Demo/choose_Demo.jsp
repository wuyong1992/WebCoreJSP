<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/8
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>c:choose</title>
</head>
<body>
<h3>根据输入的年龄做出相应结果</h3>
<form action="choose_Demo.jsp" method="post">
    <h3>请输入你的年龄：<input type="text" name="age" maxlength="2" title="请输入2位以内的数字"  onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"></h3>
    <input type="submit" value="提交">
    <input type="reset" value="重置">
</form>
<c:set var="color" value="blue"/>
<c:if test="${param.age > 60}" var="ages" scope="page">
    <c:set var="color" value="red"/>
</c:if>
<font color="${color}" size="5">
    <c:choose>
        <%--如果为空则啥也不显示--%>
        <c:when test="${param.age==null}">

        </c:when>
        <c:when test="${param.age>60&&param.age<100}">
            <h3>老人家</h3>
        </c:when>
        <c:when test="${param.age>40&&param.age<=60}">
            <h3>大叔</h3>
        </c:when>
        <c:when test="${param.age<=40&&param.age>20}">
            <h3>年轻人</h3>
        </c:when>
        <c:otherwise>
            <h3>别玩了，认真点</h3>
        </c:otherwise>
    </c:choose>
</font>
</body>
</html>
