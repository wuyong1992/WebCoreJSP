<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/5
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>每隔一段时间刷新页面并计数</title>
    <style>
        h1 {
            text-align: center;
        }
    </style>
</head>
<body>
<%!
    //设置全局变量，因为response.setHeader()内的参数必须为两个字符串，所以这里的时间设置为String类型
    int count = 0;
    String tmp = "2";
%>
<%
    //第一个字符串为刷新，第二个为频率
    response.setHeader("refresh", tmp);
%>
<h1>
    每隔<%=tmp%>s刷新一次页面，当前刷新次数：<%=count++%>次。
    <%
        //可以在jsp内陆直接写代码判断
        if (count <= 5) {
            out.println("刷新5次后跳转至贴吧！");
        } else if (count == 6) {
            out.println("不刷了,去贴吧转转吧");
            //第二个参数可以设置刷新频率已经跳转地址
            response.setHeader("refresh", "2,URL=http://tieba.baidu.com/");
        } else {
            count = 0;
        }
    %>
</h1>
</body>
</html>
