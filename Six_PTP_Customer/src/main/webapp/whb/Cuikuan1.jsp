<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<form>
    <table>

        <tr>

            <td>催款者：<br/><br/></td>
            <td>${user.s_borrower}<br/><br/></td>

        </tr>

        <tr>

            <td>催款ID：<br/><br/></td>
            <td>${user.s_loan} <br/><br/></td>

        </tr>

        <tr>

            <td>催收方式：<br/><br/></td>
            <td> ${user.s_collectionmethod}<br/><br/></td>

        </tr>

        <tr>
            <td>催收人：<br/><br/></td>
            <td>${user.s_collector}<br/><br/> </td>

        </tr>

        <tr>

            <td>催收时间：<br/><br/></td>
            <td><fmt:formatDate value="${user.s_collectingtime}"></fmt:formatDate><br/><br/></td>

        </tr>

        <tr>

            <td>标题：<br/><br/></td>
            <td>${user.s_title}<br/><br/> </td>

        </tr>

        <tr>

            <td>内容：<br/><br/></td>
            <td>${user.s_content} <br/><br/></td>

        </tr>


    </table>
</form>
</body>
</html>