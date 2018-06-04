<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2018/5/26
  Time: 9:57
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
    <title>企业基本信息</title>
</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 15px;">
    <legend>用户基本信息</legend>
</fieldset>
<form class="layui-form layui-form-pane">
    <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
        <ul class="layui-tab-title">
            <li class="layui-this">企业信息</li>
            <li>企业介绍</li>
            <li>财务状况</li>
            <li>联系信息</li>
            <li>启用信息</li>
            <li>审核信息</li>
            <li>借款投资信息</li>
        </ul>
        <div class="layui-tab-content" style="height: 100px;">
            <div class="layui-tab-item layui-show">
                <table>
                    <tr>
                        <td>企业名称：</td>
                        <td>${corporateInfo.corporate_name}</td>
                    </tr>
                    <tr>
                        <td>企业简称：</td>
                        <td>${corporateInfo.corporate_referred}</td>
                    </tr>
                    <tr>
                        <td>社会信用代码：</td>
                        <td>${corporateInfo.social_credit}</td>
                    </tr>
                    <tr>
                        <td>注册资金：</td>
                        <td>${corporateInfo.rehistration_money}</td>
                    </tr>
                    <tr>
                        <td>行业：</td>
                        <td>${corporateInfo.industry}</td>
                    </tr>
                    <tr>
                        <td>企业规模：</td>
                        <td>${corporateInfo.corporate_scale}人</td>
                    </tr>
                    <tr>
                        <td>法人：</td>
                        <td>${corporateInfo.contact_name}</td>
                    </tr>
                    <tr>
                        <td>法人身份证号：</td>
                        <td>${corporateInfo.person_number}</td>
                    </tr>
                    <tr>
                        <td>资产净值：</td>
                        <td>${corporateInfo.equity}</td>
                    </tr>
                    <tr>
                        <td>贷款卡证书编号：</td>
                        <td>${corporateInfo.credit_number}</td>
                    </tr>
                    <tr>
                        <td>企业信用证书编号：</td>
                        <td>${corporateInfo.enterprise_number}</td>
                    </tr>
                    <tr>
                        <td>是否允许投资：</td>
                        <td>
                            <i class="layui-icon layui-icon-male" style="font-size: 15px;color: #007DDB"></i>是<input type="radio" name="allowed_invest" disabled
                                <c:if test="${corporateInfo.allowed_invest == 0}">checked</c:if>
                        />
                            <i class="layui-icon layui-icon-female" style="font-size: 15px;color: pink"></i>否<input type="radio" name="allowed_invest" disabled
                                 <c:if test="${corporateInfo.allowed_invest == 1}">checked</c:if>
                        />
                        </td>
                    </tr>
                    <tr>
                        <td>注册时间：</td>
                        <td>
                            <fmt:formatDate value="${corporateInfo.registration_time}" pattern="yyyy-MM-dd HH:mm:ss"/>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="layui-tab-item">
                <table>
                    <tr>
                        <td>企业简介：</td>
                        <td>
                            ${corporateInfo.corporate_introduction}
                        </td>
                    </tr>
                    <tr>
                        <td>经营情况：</td>
                        <td>
                            ${corporateInfo.operating_condition}
                        </td>
                    </tr>
                    <tr>
                        <td>涉诉情况：</td>
                        <td>
                            ${corporateInfo.cases_lawsuit}
                        </td>
                    </tr>
                    <tr>
                        <td>征信情况：</td>
                        <td>
                            ${corporateInfo.credit_conditions}
                        </td>
                    </tr>
                </table>
            </div>
            <div class="layui-tab-item">
                <table>
                    <tr>
                        <td>年份：</td>
                        <td>
                            ${corporateInfo.financial_year}年
                        </td>
                    </tr>
                    <tr>
                        <td>主营收入：</td>
                        <td>
                            ${corporateInfo.business_income}万元
                        </td>
                    </tr>
                    <tr>
                        <td>净利润：</td>
                        <td>
                            ${corporateInfo.net_profit}万元
                        </td>
                    </tr>
                    <tr>
                        <td>总资产：</td>
                        <td>
                            ${corporateInfo.total_assets}万元
                        </td>
                    </tr>
                    <tr>
                        <td>净资产：</td>
                        <td>
                            ${corporateInfo.net_worth}万元
                        </td>
                    </tr>
                    <tr>
                        <td>备注：</td>
                        <td>
                            ${corporateInfo.financial_note}
                        </td>
                    </tr>
                </table>
            </div>
            <div class="layui-tab-item">
                <table>
                    <tr>
                        <td>所在区域：</td>
                        <td>
                            ${corporateInfo.areaname}
                        </td>
                    </tr>
                    <tr>
                        <td>联系地址：</td>
                        <td>
                            ${corporateInfo.contact_address}
                        </td>
                    </tr>
                    <tr>
                        <td>法人手机号码：</td>
                        <td>
                            ${corporateInfo.person_phone_number}
                        </td>
                    </tr>
                    <tr>
                        <td>法人邮箱地址：</td>
                        <td>
                            ${corporateInfo.person_email_address}
                        </td>
                    </tr>
                    <tr>
                        <td>企业联系人：</td>
                        <td>
                            ${corporateInfo.business_contact}
                        </td>
                    </tr>
                    <tr>
                        <td>网站地址：</td>
                        <td>
                            ${corporateInfo.web_site_address}
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
                                      <c:if test="${corporateInfo.status == 0}">checked</c:if>
                        />
                            未启用<input type="radio" name="status" disabled
                                      <c:if test="${corporateInfo.status == 1}">checked</c:if>
                        />
                        </td>
                    </tr>
                    <tr>
                        <td>拉黑原因：</td>
                        <td>${corporateInfo.defriend}</td>
                    </tr>
                </table>
            </div>
            <div class="layui-tab-item">
                <table>
                    <tr>
                        <td>审核类型：</td>
                        <td>
                            内部审核<input type="radio" name="reviewtype" disabled
                                       <c:if test="${corporateInfo.reviewtype == 0}">checked</c:if>
                        />
                            外部审核<input type="radio" name="reviewtype" disabled
                                       <c:if test="${corporateInfo.reviewtype == 1}">checked</c:if>
                        />
                        </td>
                    </tr>
                    <tr>
                        <td>必要认证：</td>
                        <td>
                            是<input type="radio" name="necertification" disabled
                                    <c:if test="${corporateInfo.necertification == 0}">checked</c:if>
                        />
                            否<input type="radio" name="necertification" disabled
                                    <c:if test="${corporateInfo.necertification == 1}">checked</c:if>
                        />
                        </td>
                    </tr>
                    <tr>
                        <td>认证状态：</td>
                        <td>
                            已验证<input type="radio" name="certificationstatus" disabled
                                      <c:if test="${corporateInfo.certificationstatus == 0}">checked</c:if>
                        />
                            未验证<input type="radio" name="certificationstatus" disabled
                                      <c:if test="${corporateInfo.certificationstatus == 1}">checked</c:if>
                        />
                        </td>
                    </tr>
                    <tr>
                        <td>认证次数：</td>
                        <td>${corporateInfo.certificationcount}次</td>
                    </tr>
                    <tr>
                        <td>认证时间：</td>
                        <td><fmt:formatDate value="${corporateInfo.certificationdate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                    </tr>
                </table>
            </div>
            <div class="layui-tab-item">
                <table>
                    <tr>
                        <td>借款/投资编号：</td>
                        <td>${corporateInfo.borrowing_number}</td>
                    </tr>
                    <tr>
                        <td>借款/投资标题：</td>
                        <td>${corporateInfo.borrowing_title}</td>
                    </tr>
                    <tr>
                        <td>年化利率：</td>
                        <td>${corporateInfo.annual_interest_rate}</td>
                    </tr>
                    <tr>
                        <td>借款金额：</td>
                        <td>${corporateInfo.borrowing_amount}</td>
                    </tr>
                    <tr>
                        <td>投资金额：</td>
                        <td>${corporateInfo.investment_amount}</td>
                    </tr>
                    <tr>
                        <td>期限：</td>
                        <td>${corporateInfo.time_limit}</td>
                    </tr>
                    <tr>
                        <td>借款时间：</td>
                        <td><fmt:formatDate value="${corporateInfo.borrowing_time}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                    </tr>
                    <tr>
                        <td>投资时间：</td>
                        <td><fmt:formatDate value="${corporateInfo.investment_time}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                    </tr>
                    <tr>
                        <td>借款/投资状态类型：</td>
                        <td>
                            已完成<input type="radio" name="borrowing_stateType_id" disabled
                                      <c:if test="${corporateInfo.borrowing_stateType_id == 0}">checked</c:if>
                        />
                            未完成<input type="radio" name="borrowing_stateType_id" disabled
                                      <c:if test="${corporateInfo.borrowing_stateType_id == 1}">checked</c:if>
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
