<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/6
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>取得用户的操作时间</title>
</head>
<body>
<%
    Long start = session.getCreationTime();             //获取创建时间
    Long end = session.getLastAccessedTime();           //获取最后一次操作时间
    Long time = (end - start)/1000;                     //取差，/1000得到秒数
%>
<h1>
    你操作的时间以及有<%=time%>秒了！
</h1>
</body>
</html>
