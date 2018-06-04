<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/5/24
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="layui-col-md12" >
    <div class="layui-card">
    </div>
    会员账号：${personalloanintention.loginname}<br><br>
    企业名称：${personalloanintention.firmname}<br><br>
    注册号：${personalloanintention.registrationnumber}<br><br>
    联系人： ${personalloanintention.username}<br><br>
    手机号码：${personalloanintention.userphone}<br><br>
    借款金额：${personalloanintention.grAmount}元<br><br>
    借款期限：${personalloanintention.grdeadline}<br><br>
    借款类型：<input type="checkbox" name="like1" lay-skin="primary" value="1" <c:if test="${personalloanintention.grjktype==1}">checked='checked'</c:if> disabled="">信用
    <input type="checkbox" name="like1" lay-skin="primary" value="2" <c:if test="${personalloanintention.grjktype==2}">checked='checked'</c:if> disabled="">抵押
    <input type="checkbox" name="like1" lay-skin="primary" value="3"  <c:if test="${personalloanintention.grjktype==3}">checked='checked'</c:if> disabled="">实地认证
    <input type="checkbox" name="like1" lay-skin="primary" value="4"  <c:if test="${personalloanintention.grjktype==4}">checked='checked'</c:if> disabled="">担保
    <br><br>
    所在城市：${personalloanintention.grcity}<br><br>
    筹款期限：${personalloanintention.grFundraisingdeadline}<br><br>
    借款描述：${personalloanintention.grjkdescribe}<br><br>
    提交时间：<fmt:formatDate value="${personalloanintention.grsubmittime}" pattern="yyyy-MM-dd HH:mm:ss" />
    <br><br>
    处理人：${personalloanintention.handler}<br><br>
    处理时间：<fmt:formatDate value="${personalloanintention.handlingtime}" pattern="yyyy-MM-dd HH:mm:ss" />
    <br><br>
    处理结果描述：${personalloanintention.dispose}<br><br>
</div>
</body>
</html>
