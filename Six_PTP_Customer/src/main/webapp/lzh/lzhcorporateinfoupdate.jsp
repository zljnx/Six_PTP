<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2018/5/27
  Time: 13:08
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
    <title>企业信息编辑</title>
</head>
<body>
<form class="layui-form layui-form-pane" method="post">
    <input type="hidden" name="contact_id" value="${corporateInfo.contact_id}">
    <input type="hidden" name="financial_id" value="${corporateInfo.financial_id}">
    <input type="hidden" name="borrowing_id" value="${corporateInfo.borrowing_id}">
    <input type="hidden" name="reviewid" value="${corporateInfo.reviewid}">
    <input type="hidden" name="areaid" value="${corporateInfo.areaid}">
    <input type="hidden" name="contact_area" value="${corporateInfo.contact_area}">
    <input type="hidden" name="corporate_id" value="${corporateInfo.corporate_id}">
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
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <div class="layui-form-item">
                    <label class="layui-form-label">企业名称</label>
                    <div class="layui-input-inline">
                        <input type="text" name="corporate_name" value="${corporateInfo.corporate_name}" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                    </div>
                    <label class="layui-form-label">企业简称</label>
                    <div class="layui-input-inline">
                        <input type="text" name="corporate_referred" value="${corporateInfo.corporate_referred}" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label" style="width: 120px">社会信用代码</label>
                    <div class="layui-input-inline">
                        <input type="text" name="social_credit" value="${corporateInfo.social_credit}" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                    </div>
                    <label class="layui-form-label">注册资金</label>
                    <div class="layui-input-inline">
                        <input type="text" name="rehistration_money" value="${corporateInfo.rehistration_money}" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">行业</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="industry" value="${corporateInfo.industry}" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">企业规模</label>
                        <div class="layui-input-inline">
                            <input type="text" name="corporate_scale" value="${corporateInfo.corporate_scale}" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">法人</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="contact_name" value="${corporateInfo.contact_name}" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label" style="width: 120px">法人身份证号</label>
                        <div class="layui-input-inline">
                            <input type="text" name="person_number" value="${corporateInfo.person_number}" lay-verify="identity" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">资产净值</label>
                        <div class="layui-input-inline">
                            <input type="text" name="equity" value="${corporateInfo.equity}" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label" style="width: 120px">贷款卡证书编号</label>
                        <div class="layui-input-inline">
                            <input type="text" name="credit_number" value="${corporateInfo.credit_number}" lay-verify="identity" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label" style="width: 120px">企业信用证书编号</label>
                        <div class="layui-input-inline">
                            <input type="text" name="enterprise_number" value="${corporateInfo.enterprise_number}" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label" style="width: 120px">是否允许投资</label>
                    <div class="layui-input-block">
                        <input type="radio" name="allowed_invest" title="是" value="0"
                               <c:if test="${corporateInfo.allowed_invest == 0}">checked</c:if>
                        >
                        <input type="radio" name="allowed_invest" title="否" value="1"
                               <c:if test="${corporateInfo.allowed_invest == 1}">checked</c:if>
                        >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">注册时间</label>
                    <div class="layui-input-block">
                        <input type="text" name="registration_time" placeholder="yyyy-MM-dd HH:mm:ss" value="<fmt:formatDate value="${corporateInfo.registration_time}" pattern="yyyy-MM-dd HH:mm:ss"/>" autocomplete="off" class="layui-input" readonly>
                    </div>
                </div>
            </div>
            <div class="layui-tab-item">
                <div class="layui-form-item">
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">企业简介</label>
                        <div class="layui-input-block">
                            <textarea placeholder="请输入内容" name="corporate_introduction" class="layui-textarea">${corporateInfo.corporate_introduction}</textarea>
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">经营情况</label>
                        <div class="layui-input-block">
                            <textarea placeholder="请输入内容" name="operating_condition" class="layui-textarea">${corporateInfo.operating_condition}</textarea>
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">涉诉情况</label>
                        <div class="layui-input-block">
                            <textarea placeholder="请输入内容" name="cases_lawsuit" class="layui-textarea">${corporateInfo.cases_lawsuit}</textarea>
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">征信情况</label>
                        <div class="layui-input-block">
                            <textarea placeholder="请输入内容" name="credit_conditions" class="layui-textarea">${corporateInfo.credit_conditions}</textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-tab-item">
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">年份</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="financial_year" value="${corporateInfo.financial_year}" lay-verify="number" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">主营收入</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="business_income" value="${corporateInfo.business_income}" lay-verify="number" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">净利润</label>
                        <div class="layui-input-inline" style="width: 165px;">
                            <input type="tel" name="net_profit" value="${corporateInfo.net_profit}" lay-verify="number" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-form-mid">万元</div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">总资产</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="total_assets" value="${corporateInfo.total_assets}" lay-verify="number" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">净资产</label>
                        <div class="layui-input-inline" style="width: 165px;">
                            <input type="tel" name="net_worth" value="${corporateInfo.net_worth}" lay-verify="number" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-form-mid">万元</div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">备注</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="financial_note" value="${corporateInfo.financial_note}" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-tab-item">
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label" >所在区域</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="areaname" value="${corporateInfo.areaname}" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">联系地址</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="contact_address" value="${corporateInfo.contact_address}" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">法人手机号码</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="person_phone_number" value="${corporateInfo.person_phone_number}" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">法人邮箱地址</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="person_email_address" value="${corporateInfo.person_email_address}" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">企业联系人</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="business_contact" value="${corporateInfo.business_contact}" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">网站地址</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="web_site_address" value="${corporateInfo.web_site_address}" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-tab-item">
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">启用状态</label>
                        <div class="layui-input-block">
                            <input type="radio" name="status" title="已启用" value="0"
                                   <c:if test="${corporateInfo.status == 0}">checked</c:if>
                            >
                            <input type="radio" name="status" title="未启用" value="1"
                                   <c:if test="${corporateInfo.status == 1}">checked</c:if>
                            >
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">拉黑原因</label>
                        <div class="layui-input-block">
                            <textarea placeholder="请输入内容" name="defriend" class="layui-textarea">${corporateInfo.defriend}</textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-tab-item">
                <div class="layui-form-item">
                    <label class="layui-form-label">审核类型</label>
                    <div class="layui-input-block">
                        <input type="radio" name="reviewtype" title="内部审核" value="0"
                               <c:if test="${corporateInfo.reviewtype == 0}">checked</c:if>
                        >
                        <input type="radio" name="reviewtype" title="外部审核" value="1"
                               <c:if test="${corporateInfo.reviewtype == 1}">checked</c:if>
                        >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">必要认证</label>
                    <div class="layui-input-block">
                        <input type="radio" name="necertification" title="是" value="0"
                               <c:if test="${corporateInfo.necertification == 0}">checked</c:if>
                        >
                        <input type="radio" name="necertification" title="否" value="1"
                               <c:if test="${corporateInfo.necertification == 1}">checked</c:if>
                        >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">认证状态</label>
                    <div class="layui-input-block">
                        <input type="radio" name="certificationstatus" title="已验证" value="0"
                               <c:if test="${corporateInfo.certificationstatus == 0}">checked</c:if>
                        >
                        <input type="radio" name="certificationstatus" title="未验证" value="1"
                               <c:if test="${corporateInfo.certificationstatus == 1}">checked</c:if>
                        >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">认证次数</label>
                    <div class="layui-input-inline" style="width: 165px;">
                        <input type="tel" name="certificationcount" value="${corporateInfo.certificationcount}" lay-verify="number" autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-mid">次</div>
                    <label class="layui-form-label">认证时间</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="certificationdate" value="<fmt:formatDate value="${corporateInfo.certificationdate}" pattern="yyyy-MM-dd HH:mm:ss"/>" lay-verify="required" autocomplete="off" class="layui-input" readonly>
                    </div>
                </div>
            </div>
            <div class="layui-tab-item">
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label" style="width: 120px">借款/投资编号</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="borrowing_number" value="${corporateInfo.borrowing_number}" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label" style="width: 120px">借款/投资标题</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="borrowing_title" value="${corporateInfo.borrowing_title}" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">年化利率</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="annual_interest_rate" value="${corporateInfo.annual_interest_rate}" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">期限</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="time_limit" value="${corporateInfo.time_limit}" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">借款金额</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="borrowing_amount" value="${corporateInfo.borrowing_amount}" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">投资金额</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="investment_amount" value="${corporateInfo.investment_amount}" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">借款时间</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="borrowing_time" id="date" value="<fmt:formatDate value="${corporateInfo.borrowing_time}" pattern="yyyy-MM-dd"/>" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">投资时间</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="investment_time" id="date2" value="<fmt:formatDate value="${corporateInfo.investment_time}" pattern="yyyy-MM-dd"/>" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label" style="width: 120px">借款/投资状态</label>
                    <div class="layui-input-block">
                        <input type="radio" name="borrowing_stateType_id" title="已完成" value="0"
                               <c:if test="${corporateInfo.borrowing_stateType_id == 0}">checked</c:if>
                        >
                        <input type="radio" name="borrowing_stateType_id" title="未完成" value="1"
                               <c:if test="${corporateInfo.borrowing_stateType_id == 1}">checked</c:if>
                        >
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<script>
    layui.use(['element', 'form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate
            ,$ = layui.jquery
            , element = layui.element;

        //日期
        var ins=laydate.render({
            elem: '#date'
            ,calendar: true
            /*,type: 'datetime'*/
            ,type:'date'
            ,format: 'yyyy-MM-dd'
            ,min: '1918-12-31'
            ,max: '2018-12-31'
            ,ready: function(){
                ins.hint('亲！日期可选值只能在 <br> 1918-12-31 到 2017-12-31');
            }
            //日期切换的回调
            ,change: function(value, date){
                layer.msg('你选择的日期是：' + value );
            }
            /*//选中后的回调
            ,done: function(value, date){
                layer.msg('你选择的日期是：' + value + '<br>获得的对象是' + JSON.stringify(date));
            }*/
        });

        var inss=laydate.render({
            elem: '#date2'
            ,calendar: true
            /*,type: 'datetime'*/
            ,type:'date'
            ,format: 'yyyy-MM-dd'
            ,min: '1918-12-31'
            ,max: '2018-12-31'
            ,ready: function(){
                inss.hint('亲！日期可选值只能在 <br> 1918-12-31 到 2017-12-31');
            }
            //日期切换的回调
            ,change: function(value, date){
                layer.msg('你选择的日期是：' + value );
            }
        });
        //自定义验证规则
        /*form.verify({
            title: function(value){
                if(value.length < 5){
                    return '标题至少得5个字符啊';
                }
            }
            ,pass: [/(.+){6,12}$/, '密码必须6到12位']
            ,content: function(value){
                layedit.sync(editIndex);
            }
        });*/

        //监听指定开关
        /*form.on('switch(switchTest)', function(data){
            layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
                offset: '6px'
            });
            layer.tips('温馨提示：切勿随意更改', data.othis)
        });*/
    });
</script>
</body>
</html>
