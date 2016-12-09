<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/6
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>接受页面</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");                  //防止乱码
    String name = request.getParameter("username");         //获取数据
    String hidden = request.getParameter("hidden");
    String[] like = request.getParameterValues("like");     //获取多选框中的值，返回值是一个数组
    String str = like[0];                                   //初始化str
    for (int i = 1; i < like.length; i++) {                 //遍历数组
        str = str + "、"+like[i]  ;                         //拼凑字符串
    }

%>
<h2>
    姓名：<%=name%>
    编号：<%=hidden%>
</h2>

<h3>
    兴趣爱好：<%=str%>
</h3>
</body>
</html>
