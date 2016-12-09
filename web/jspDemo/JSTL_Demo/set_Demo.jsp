<%@ page import="com.javaweb.JSP.BeanDemo.DogBean" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/8
  Time: 13:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>c:set</title>
</head>
<body>
<%--target存储的目标，property指定的target属性--%>
<c:set var="name" value="zhangsan" scope="page"/> 
${name}
<hr>
<h3>uesBean</h3>
<jsp:useBean id="book" class="com.javaweb.JSP.BeanDemo.BookBean"/>
<c:set target="${book}" property="bookName" value="java"/>
<c:set target="${book}" property="money" value="45"/>
<p>书名：${book.bookName}</p>
<p>价格：${book.money}</p>

<hr>
<h3>普通Bean</h3>
<%
    DogBean dog = new DogBean();
    pageContext.setAttribute("dog01",dog);
%>
<c:set target="${dog01}" property="name" value="huang"/>
<c:set target="${dog01}" property="age" value="2"/>
<p>小狗的名字是：${dog01.name}</p>
<p>小狗的年龄是：${dog01.age}</p>
</body>
</html>
