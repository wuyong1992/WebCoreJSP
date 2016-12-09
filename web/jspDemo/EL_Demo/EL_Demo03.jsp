<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/7
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL表达式pageContext</title>
</head>
<body>
<h3>浏览器信息：${header["User-Agent"]}</h3>
<hr>
<h3>${"${"}}查找</h3>
<context-param>
    <param-name>userName</param-name>
    <param-value>Li</param-value>
</context-param>
<br>
${initParam.userName}
<h3>application查找</h3>
<%
    String user = application.getInitParameter("userName");
%>
<%=user%>
<hr>
<%
    Cookie cookie = new Cookie("name", "Li");
    cookie.setMaxAge(86400);
    response.addCookie(cookie);
%>
<h3>利用for循环找Cookie</h3>
<%
    Cookie[] cookies = request.getCookies();
    for (int i = 0; i < cookies.length; i++) {
%>
<%=cookies[i].getName()%> ---> <%=cookies[i].getValue()%>
<br>
<%
    }
%>

<h3>利用${"${"}}找Cookie</h3>
${cookie.name.value}
<hr>
<h3>判断当前回话是否为新</h3>
${pageContext.session.isNew()}
<hr>

<h3>sessionID</h3>
${pageContext.session.id}
<hr>

<h3>主机端服务信息</h3>
${pageContext.servletContext.serverInfo}
</body>
</html>
