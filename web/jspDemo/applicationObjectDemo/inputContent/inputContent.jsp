<%@ page import="java.io.File" %>
<%@ page import="java.io.PrintStream" %>
<%@ page import="java.io.FileOutputStream" %>
<%@ page import="java.util.Scanner" %>
<%@ page import="java.io.FileInputStream" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/6
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>接收内容并保存文件及内容</title>
</head>
<body>
<h2>接受内容并保存文件内容</h2>
<%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("fileName");
    String content = request.getParameter("fileContent");
    String filename = this.getServletConfig().getServletContext().getRealPath("/")+"note"
            + File.separator+name+".txt";      //File.separator代表路径分隔符，拼凑文件名称,使其文件类型为.txt
    File file = new File(filename);
    if (!file.getParentFile().exists()) {
        file.getParentFile().mkdir();
    }
    PrintStream ps = null;
    ps = new PrintStream(new FileOutputStream(file));
    ps.println(content);
    ps.close();

%>
<%
    Scanner scan = new Scanner(new FileInputStream(file));
    scan.useDelimiter("\n");
    StringBuffer sb = new StringBuffer();
    while (scan.hasNext()) {
        sb.append(scan.next()).append("<br>");
    }
    scan.close();
%>
<%=sb%>
</body>
</html>
