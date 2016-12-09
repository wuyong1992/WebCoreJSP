<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/7
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL表达式</title>
</head>
<body>
<p>三目运算符</p>
<%--
1.这个表达式需要注意的是运算顺序（赋值操作优先级最低），先判断true是否为真，为真，则0，再将0赋值给a。最后输出a的值。
2.注意写法，和括号的范围
--%>
<p>${"${"}a=true?0:1}:${a=true?0:1}</p>
<%--由于上述操作，a的值已经为0--%>
${a!=0?0:1}<br>
<%--利用括号改变优先级，此时b的值为true--%>
${(b=true)?0:1}<br>
${b!=true?0:1}
<hr>
<p>算术运算符</p>
<p>7 >= 5：${7 >= 5}</p>
<p>7 ge 5：${7 ge 5}</p>
<p>7 &ge; 5：${7 ge 5}</p>
<p>7 ==; 5：${7 == 5}</p>
<p>7 eq; 5：${7 eq 5}</p>
<p>7 &Equal;; 5：${7 eq 5}</p>
<hr>
<p>空判断</p>
<p>${"${"}empty ""}：${empty ""}</p>
<p>${"${"}empty "sth."}：${empty "sth."}</p>


</body>
</html>
