<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/7
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL接受表单参数</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
%>
<h3>EL获取</h3>
<p>第一个参数是：${paramValues.check[0]}</p>
<p>第二个参数是：${paramValues.check[1]}</p>
<p>第三个参数是：${paramValues.check[2]}</p>
<p>第四个参数是：${paramValues.check[3]}</p>
<hr>
<h3>表达式获取</h3>
<%
    String[] vlues = request.getParameterValues("check");
    for (int i=0;i<vlues.length;i++) {
%>
    <p>
        第<%=i%>个参数：<%=vlues[i]%>
    </p>
<%
    }
%>
</body>
</html>
