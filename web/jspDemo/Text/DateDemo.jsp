<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/1
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Date测试</title>
    <style>
        div {
            height: 400px;
            margin-top: 200px;
            tab-size: 50px;
        }
        body {
            background-color: slateblue;
        }
    </style>
</head>
<body>

<center>
    <%

        out.println("<div>");
        Date today = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy:MM:dd  hh:mm:ss");
        out.println("现在时间是：" + sdf.format(today));
        out.println("</div>");

        int h = today.getHours();
        if (h >= 0 && h < 12) {
            out.println("早上好，要来点小饼干吗= =！");
        } else if (h >= 12 && h < 19) {
            out.println("下午好，要来点小饼干吗= =！");
        } else {
            out.println("晚上好，要来点小饼干吗= =！");
        }
    %>
</center>
</body>
</html>
