<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/8
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>c:import</title>
</head>
<body>
<%--写上多余属性时，不能直接发挥作用--%>
<c:import url="http://www.baidu.com" charEncoding="utf-8" var="baidu" />
<%--需要用EL来调取var中的值--%>
${baidu}
</body>
</html>
