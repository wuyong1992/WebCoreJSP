<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/7
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL获取参数、接受请求参数</title>
</head>
<body>
<h1>在浏览器地址栏后面写上：?ref=Li</h1>
<h3>通过内置对象接收参数：<%=request.getParameter("ref")%></h3>
<h3>通过EL接受参数：${param.ref}</h3>

</body>
</html>
