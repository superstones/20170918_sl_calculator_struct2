<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/18
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>计算器</title>
  </head>
  <body>

  <form action="Calculator" method="get">
    操作数1<input type="text" name="num1" value="${requestScope.num1}"><br>
    运算符<input type="radio" name="op" value="+" ${requestScope.op}>+
    <input type="radio" name="op" value="-" ${requestScope.op }>-
    <input type="radio" name="op" value="*" ${requestScope.op }>*
    <input type="radio" name="op" value="/" ${requestScope.op }>/<br>
    操作数2<input type="text" name="num2" value="${requestScope.num2}"><br>
    <input type="submit" name="提交" value="提交"><br>
    结果：<input type="number" value="${requestScope.result}">

  </form>
  </body>
</html>
