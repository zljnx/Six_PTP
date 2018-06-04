<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2018/5/21
  Time: 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<script src="/jquery/jquery.min.js"></script>
<script src="/js/layui/layui.js"></script>
<link rel="stylesheet" href="/js/layui/css/layui.css" media="all" />
<head>
    <title>用户基本信息</title>
</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 15px;">
    <legend>用户基本信息</legend>
</fieldset>
<form class="layui-form layui-form-pane">
<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
    <ul class="layui-tab-title">
        <li class="layui-this">基本信息</li>
        <li>学历信息</li>
        <li>工作信息</li>
        <li>启用信息</li>
        <li>审核信息</li>
        <li>借款投资信息</li>
    </ul>
    <div class="layui-tab-content" style="height: 100px;">
        <div class="layui-tab-item layui-show">
            <table>
                <tr>
                    <td>用户名称：</td>
                    <td>${userInfo.loginname}</td>
                </tr>
                <tr>
                    <td>真实姓名：</td>
                    <td>${userInfo.username}</td>
                </tr>
                <tr>
                    <td>性别：</td>
                    <td>
                        <i class="layui-icon layui-icon-male" style="font-size: 15px;color: #007DDB"></i>男<input type="radio" name="sex" disabled
                               <c:if test="${userInfo.sex == 0}">checked</c:if>
                        />
                        <i class="layui-icon layui-icon-female" style="font-size: 15px;color: pink"></i>女<input type="radio" name="sex" disabled
                               <c:if test="${userInfo.sex == 1}">checked</c:if>
                        />
                    </td>
                </tr>
                <tr>
                    <td>手机号码：</td>
                    <td>${userInfo.userphone}</td>
                </tr>
                <tr>
                    <td>出生日期：</td>
                    <td>
                        <fmt:formatDate value="${userInfo.birthdate}" pattern="yyyy-MM-dd"/>
                    </td>
                </tr>
                <tr>
                    <td>身份证号：</td>
                    <td>${userInfo.idcard}</td>
                </tr>
                <tr>
                    <td>邮箱地址：</td>
                    <td>${userInfo.eamil}</td>
                </tr>
                <tr>
                    <td>注册时间：</td>
                    <td>
                        <fmt:formatDate value="${userInfo.sendtime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                    </td>
                </tr>
                <tr>
                    <td>风险评估：</td>
                    <td>
                        <i class="layui-icon layui-icon-ok" style="font-size: 15px; color: #1E9FFF;"></i>未评估<input type="radio" name="riskassess" disabled
                            <c:if test="${userInfo.riskassess == 0}">checked</c:if>
                        />
                        <i class="layui-icon layui-icon-close" style="font-size: 15px; color: #1E9FFF;"></i>已评估<input type="radio" name="riskassess" disabled
                            <c:if test="${userInfo.riskassess== 1}">checked</c:if>
                        />
                    </td>
                </tr>
                <tr>
                    <td>评估次数：</td>
                    <td>${userInfo.assesscount}/3</td>
                </tr>
            </table>
        </div>
        <div class="layui-tab-item">
            <table>
                <tr>
                    <td>学校名称：</td>
                    <td>
                        ${userInfo.school}
                    </td>
                </tr>
                <tr>
                    <td>入学日期：</td>
                    <td>
                        <fmt:formatDate value="${userInfo.entrancedate}" pattern="yyyy-MM-dd"/>
                    </td>
                </tr>
                <tr>
                    <td>结业日期：</td>
                    <td>
                        <fmt:formatDate value="${userInfo.graduationdate}" pattern="yyyy-MM-dd"/>
                    </td>
                </tr>
                <tr>
                    <td>专业名称：</td>
                    <td>
                        ${userInfo.major}
                    </td>
                </tr>
                <tr>
                    <td>学院简介：</td>
                    <td>
                        ${userInfo.schoolinfo}
                    </td>
                </tr>
            </table>
        </div>
        <div class="layui-tab-item">
            <table>
                <tr>
                    <td>在职状态：</td>
                    <td>
                        在职<input type="radio" name="workstatus" disabled
                          <c:if test="${userInfo.workstatus == 0}">checked</c:if>
                        />
                        未职<input type="radio" name="workstatus" disabled
                             <c:if test="${userInfo.workstatus == 1}">checked</c:if>
                        />
                    </td>
                </tr>
                <tr>
                    <td>单位名称：</td>
                    <td>
                        ${userInfo.companyname}
                    </td>
                </tr>
                <tr>
                    <td>工作地址：</td>
                    <td>
                        ${userInfo.areaname}
                    </td>
                </tr>
                <tr>
                    <td>公司类别：</td>
                    <td>
                        ${userInfo.companytype}
                    </td>
                </tr>
                <tr>
                    <td>公司规模：</td>
                    <td>
                        ${userInfo.companyscale}人
                    </td>
                </tr>
            </table>
        </div>
        <div class="layui-tab-item">
            <table>
                <tr>
                    <td>启用状态：</td>
                    <td>
                        已启用<input type="radio" name="status" disabled
                                 <c:if test="${userInfo.status == 0}">checked</c:if>
                        />
                        未启用<input type="radio" name="status" disabled
                                 <c:if test="${userInfo.status == 1}">checked</c:if>
                        />
                    </td>
                </tr>
                <tr>
                    <td>拉黑原因：</td>
                    <td>${userInfo.defriend}</td>
                </tr>
            </table>
        </div>
        <div class="layui-tab-item">
            <table>
                <tr>
                    <td>审核类型：</td>
                    <td>
                        内部审核<input type="radio" name="reviewtype" disabled
                                  <c:if test="${userInfo.reviewtype == 0}">checked</c:if>
                    />
                        外部审核<input type="radio" name="reviewtype" disabled
                                  <c:if test="${userInfo.reviewtype == 1}">checked</c:if>
                    />
                    </td>
                </tr>
                <tr>
                    <td>必要认证：</td>
                    <td>
                        是<input type="radio" name="necertification" disabled
                                  <c:if test="${userInfo.necertification == 0}">checked</c:if>
                    />
                        否<input type="radio" name="necertification" disabled
                                  <c:if test="${userInfo.necertification == 1}">checked</c:if>
                    />
                    </td>
                </tr>
                <tr>
                    <td>认证状态：</td>
                    <td>
                        已验证<input type="radio" name="certificationstatus" disabled
                                <c:if test="${userInfo.certificationstatus == 0}">checked</c:if>
                    />
                        未验证<input type="radio" name="certificationstatus" disabled
                                <c:if test="${userInfo.certificationstatus == 1}">checked</c:if>
                    />
                    </td>
                </tr>
                <tr>
                    <td>认证次数：</td>
                    <td>${userInfo.certificationcount}次</td>
                </tr>
                <tr>
                    <td>认证时间：</td>
                    <td><fmt:formatDate value="${userInfo.certificationdate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                </tr>
            </table>
        </div>
        <div class="layui-tab-item">
            <table>
                <tr>
                    <td>借款/投资编号：</td>
                    <td>${userInfo.borrowing_number}</td>
                </tr>
                <tr>
                    <td>借款/投资标题：</td>
                    <td>${userInfo.borrowing_title}</td>
                </tr>
                <tr>
                    <td>年化利率：</td>
                    <td>${userInfo.annual_interest_rate}</td>
                </tr>
                <tr>
                    <td>借款金额：</td>
                    <td>${userInfo.borrowing_amount}</td>
                </tr>
                <tr>
                    <td>投资金额：</td>
                    <td>${userInfo.investment_amount}</td>
                </tr>
                <tr>
                    <td>期限：</td>
                    <td>${userInfo.time_limit}</td>
                </tr>
                <tr>
                    <td>借款时间：</td>
                    <td><fmt:formatDate value="${userInfo.borrowing_time}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                </tr>
                <tr>
                    <td>投资时间：</td>
                    <td><fmt:formatDate value="${userInfo.investment_time}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                </tr>
                <tr>
                    <td>借款/投资状态类型：</td>
                    <td>
                        已完成<input type="radio" name="borrowing_stateType_id" disabled
                                   <c:if test="${userInfo.borrowing_stateType_id == 0}">checked</c:if>
                    />
                        未完成<input type="radio" name="borrowing_stateType_id" disabled
                                   <c:if test="${userInfo.borrowing_stateType_id == 1}">checked</c:if>
                    />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>
</form>
<script>
    layui.use(['element', 'form', 'util'], function(){
        var $ = layui.jquery
            , element = layui.element
            ,form = layui.form;

    });
</script>
</body>
</html>
