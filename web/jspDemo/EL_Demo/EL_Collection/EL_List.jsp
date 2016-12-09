<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/7
  Time: 17:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL集合操作——List</title>
</head>
<body>
<%
    List li = new ArrayList();      //实例化接口，并向集合中添加元素
    li.add("zhangsan");
    li.add("lisi");
    li.add("wangwu");
    li.add("zhaoliu");
    request.setAttribute("name",li);    //向request集合中保存
%>
<P>第一个元素是：${name[0]}</P>
<P>第二个元素是：${name[1]}</P>
<P>第三个元素是：${name[2]}</P>
<P>第四个元素是：${name[3]}</P>

</body>
</html>
