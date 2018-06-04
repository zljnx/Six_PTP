<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/5/27
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<body>
<div class="layui-col-md12" >
    <div class="layui-card">
    </div>
    *产品名称：${borrowingmanagement.productname}<br><br>
    *标的类型：${borrowingmanagement.borrowingtype}<br><br>
    *借款帐户：${borrowingmanagement.loginname}<br><br>
    *借款标题： ${borrowingmanagement.jkBorrowingtitle}<br><br>
    *借款金额：${borrowingmanagement.jkAmount}元<br><br>
    *标的属性：<input type="checkbox" name="like2" lay-skin="primary" value="担保" <c:if test="${borrowingmanagement.biaoproperty.contains('担保')}">checked='checked'</c:if> disabled="">信用
    <input type="checkbox" name="like2" lay-skin="primary" value="抵（质）押" <c:if test="${borrowingmanagement.biaoproperty.contains('（质）押')}">checked='checked'</c:if> disabled="">抵押
    <input type="checkbox" name="like2" lay-skin="primary" value="实地认证"  <c:if test="${borrowingmanagement.biaoproperty.contains('实地认证')}">checked='checked'</c:if> disabled="">实地认证
    <input type="checkbox" name="like2" lay-skin="primary" value="信用"  <c:if test="${borrowingmanagement.biaoproperty.contains('信用')}">checked='checked'</c:if> disabled="">担保
    <br><br>
    *担保方案：${borrowingmanagement.scheme}<br><br>
    *新增标识：${borrowingmanagement.identifytype}<br><br>
    *还款方式：${borrowingmanagement.refundtype}<br><br>
    *借款期限：${borrowingmanagement.jkdeadline}<br><br>
    *付息方式：${borrowingmanagement.paymenttype}<br><br>
    *起息日：${borrowingmanagement.valuedate}
    <br><br>
    *年化利率：${borrowingmanagement.jkapr}%<br><br>
    *成交服务费率：${borrowingmanagement.makeabargain}<br><br>
    *投资管理费率：${borrowingmanagement.investguanli}<br><br>
    *逾期罚息利率：${borrowingmanagement.overdue}<br><br>
    *筹款期限：${borrowingmanagement.raisefunds}天<br><br>
    <%--*起投金额：${borrowingmanagement.Investmentamount}<br><br>--%>
    *最大投资金额：${borrowingmanagement.maxamount}<br><br>
    *项目所在区域：${borrowingmanagement.province},${borrowingmanagement.city},${borrowingmanagement.area}<br><br>
    *活动使用方式：${borrowingmanagement.modeactivity}<br><br>
    *投资端：${borrowingmanagement.csorbs}<br><br>
    *借款描述：${borrowingmanagement.describea}<br><br>
</div>
</body>
</html>
