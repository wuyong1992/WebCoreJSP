<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/7
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL集合操作——Map</title>
</head>
<body>
<%
    Map map = new HashMap();
    map.put("zhangsan", "25");
    map.put("lisi", "26");
    map.put("wangwu", "27");
    map.put("zhaoliu", "28");
    request.setAttribute("age",map);
%>
<h3>zhangsan的年龄是${age.zhangsan}</h3>
<h3>lisi的年龄是${age.lisi}</h3>
<h3>wangwu的年龄是${age.wangwu}</h3>
<h3>zhaoliu的年龄是${age.zhaoliu}</h3>
</body>
</html>
