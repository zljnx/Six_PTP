<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2018/6/1
  Time: 23:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% session.invalidate(); %>
<jsp:forward page="zlj/login.jsp"></jsp:forward>
</body>
</html>
