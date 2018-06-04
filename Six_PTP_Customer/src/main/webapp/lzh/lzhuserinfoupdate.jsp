<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2018/5/21
  Time: 16:49
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
    <title>用户信息编辑</title>
</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 15px;">
    <legend>用户信息编辑</legend>
</fieldset>
<form class="layui-form layui-form-pane" method="post">
    <input type="hidden" name="id" value="${userInfo.id}">
    <input type="hidden" name="eid" value="${userInfo.eid}">
    <input type="hidden" name="areaid" value="${userInfo.areaid}">
    <input type="hidden" name="workid" value="${userInfo.workid}">
    <input type="hidden" name="borrowing_id" value="${userInfo.borrowing_id}">
    <input type="hidden" name="reviewid" value="${userInfo.reviewid}">
    <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
        <ul class="layui-tab-title">
            <li class="layui-this">基本信息</li>
            <li>学历信息</li>
            <li>工作信息</li>
            <li>启用信息</li>
            <li>审核信息</li>
            <li>借款投资信息</li>
        </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <div class="layui-form-item">
                <label class="layui-form-label">用户名称</label>
                <div class="layui-input-inline">
                    <input type="text" name="loginname" value="${userInfo.loginname}" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                </div>
                <label class="layui-form-label">真实姓名</label>
                <div class="layui-input-inline">
                    <input type="text" name="username" value="${userInfo.username}" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">性别</label>
                <div class="layui-input-block">
                    <input type="radio" name="sex" title="男" value="0"
                           <c:if test="${userInfo.sex == 0}">checked</c:if>
                    >
                    <input type="radio" name="sex" title="女" value="1"
                           <c:if test="${userInfo.sex == 1}">checked</c:if>
                    >
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">手机号码</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="userphone" value="${userInfo.userphone}" lay-verify="required|phone" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">邮箱地址</label>
                    <div class="layui-input-inline">
                        <input type="text" name="eamil" value="${userInfo.eamil}" lay-verify="email" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">身份证号</label>
                    <div class="layui-input-inline">
                        <input type="text" name="idcard" value="${userInfo.idcard}" lay-verify="identity" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">出生日期</label>
                    <div class="layui-input-block">
                        <input type="text" name="birthdate" id="date" placeholder="yyyy-MM-dd" value="<fmt:formatDate value="${userInfo.birthdate}" pattern="yyyy-MM-dd"/>" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">风险评估</label>
                <div class="layui-input-block">
                    <input type="radio" name="riskassess" title="未评估" value="0"
                           <c:if test="${userInfo.riskassess == 0}">checked</c:if>
                    >
                    <input type="radio" name="riskassess" title="已评估" value="1"
                           <c:if test="${userInfo.riskassess == 1}">checked</c:if>
                    >
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">剩余评估次数</label>
                    <div class="layui-input-inline" style="width: 100px;">
                        <input type="text" name="assesscount" value="${userInfo.assesscount}" placeholder="C" autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-mid">/3</div>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">注册时间</label>
                <div class="layui-input-block">
                    <input type="text" name="sendtime" placeholder="yyyy-MM-dd HH:mm:ss" value="<fmt:formatDate value="${userInfo.sendtime}" pattern="yyyy-MM-dd HH:mm:ss"/>" autocomplete="off" class="layui-input" readonly>
                </div>
            </div>
        </div>
        <div class="layui-tab-item">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">学校名称</label>
                    <div class="layui-input-inline">
                        <input type="text" name="school" value="${userInfo.school}" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">专业名称</label>
                    <div class="layui-input-inline">
                        <input type="text" name="major" value="${userInfo.major}" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">入学日期</label>
                    <div class="layui-input-block">
                        <input type="text" name="entrancedate" id="date2" placeholder="yyyy-MM-dd" value="<fmt:formatDate value="${userInfo.entrancedate}" pattern="yyyy-MM-dd"/>" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">结业日期</label>
                    <div class="layui-input-block">
                        <input type="text" name="graduationdate" id="date3" placeholder="yyyy-MM-dd" value="<fmt:formatDate value="${userInfo.graduationdate}" pattern="yyyy-MM-dd"/>" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">学院简介</label>
                    <div class="layui-input-block">
                        <textarea placeholder="请输入内容" name="schoolinfo" class="layui-textarea">${userInfo.schoolinfo}</textarea>
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-tab-item">
            <div class="layui-form-item">
                <label class="layui-form-label">在职状态</label>
                <div class="layui-input-block">
                    <input type="radio" name="workstatus" title="在职" value="0"
                           <c:if test="${userInfo.workstatus == 0}">checked</c:if>
                    >
                    <input type="radio" name="workstatus" title="未职" value="1"
                           <c:if test="${userInfo.workstatus == 1}">checked</c:if>
                    >
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">单位名称</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="companyname" value="${userInfo.companyname}" lay-verify="required" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">工作地址</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="areaname" value="${userInfo.areaname}" lay-verify="required" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">公司规模</label>
                    <div class="layui-input-inline" style="width: 165px;">
                        <input type="tel" name="companyscale" value="${userInfo.companyscale}" lay-verify="number" autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-mid">人</div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">公司类别</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="companytype" value="${userInfo.companytype}" lay-verify="required" autocomplete="off" class="layui-input">
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
                               <c:if test="${userInfo.status == 0}">checked</c:if>
                        >
                        <input type="radio" name="status" title="未启用" value="1"
                               <c:if test="${userInfo.status == 1}">checked</c:if>
                        >
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">拉黑原因</label>
                    <div class="layui-input-block">
                        <textarea placeholder="请输入内容" name="defriend" class="layui-textarea">${userInfo.defriend}</textarea>
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-tab-item">
            <div class="layui-form-item">
                <label class="layui-form-label">审核类型</label>
                <div class="layui-input-block">
                    <input type="radio" name="reviewtype" title="内部审核" value="0"
                           <c:if test="${userInfo.reviewtype == 0}">checked</c:if>
                    >
                    <input type="radio" name="reviewtype" title="外部审核" value="1"
                           <c:if test="${userInfo.reviewtype == 1}">checked</c:if>
                    >
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">必要认证</label>
                <div class="layui-input-block">
                    <input type="radio" name="necertification" title="是" value="0"
                           <c:if test="${userInfo.necertification == 0}">checked</c:if>
                    >
                    <input type="radio" name="necertification" title="否" value="1"
                           <c:if test="${userInfo.necertification == 1}">checked</c:if>
                    >
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">认证状态</label>
                <div class="layui-input-block">
                    <input type="radio" name="certificationstatus" title="已验证" value="0"
                           <c:if test="${userInfo.certificationstatus == 0}">checked</c:if>
                    >
                    <input type="radio" name="certificationstatus" title="未验证" value="1"
                           <c:if test="${userInfo.certificationstatus == 1}">checked</c:if>
                    >
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">认证次数</label>
                <div class="layui-input-inline" style="width: 165px;">
                    <input type="tel" name="certificationcount" value="${userInfo.certificationcount}" lay-verify="number" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid">次</div>
                <label class="layui-form-label">认证时间</label>
                <div class="layui-input-inline">
                    <input type="tel" name="certificationdate" value="<fmt:formatDate value="${userInfo.certificationdate}" pattern="yyyy-MM-dd HH:mm:ss"/>" lay-verify="required" autocomplete="off" class="layui-input" readonly>
                </div>
            </div>
        </div>
        <div class="layui-tab-item">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label" style="width: 120px">借款/投资编号</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="borrowing_number" value="${userInfo.borrowing_number}" lay-verify="required" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label" style="width: 120px">借款/投资标题</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="borrowing_title" value="${userInfo.borrowing_title}" lay-verify="required" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">年化利率</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="annual_interest_rate" value="${userInfo.annual_interest_rate}" lay-verify="required" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">期限</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="time_limit" value="${userInfo.time_limit}" lay-verify="required" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">借款金额</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="borrowing_amount" value="${userInfo.borrowing_amount}" lay-verify="required" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">投资金额</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="investment_amount" value="${userInfo.investment_amount}" lay-verify="required" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">借款时间</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="borrowing_time" id="date4" value="<fmt:formatDate value="${userInfo.borrowing_time}" pattern="yyyy-MM-dd"/>" lay-verify="required" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">投资时间</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="investment_time" id="date5" value="<fmt:formatDate value="${userInfo.investment_time}" pattern="yyyy-MM-dd"/>" lay-verify="required" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">借款/投资状态类型</label>
                <div class="layui-input-block">
                    <input type="radio" name="borrowing_stateType_id" title="已完成" value="0"
                           <c:if test="${userInfo.borrowing_stateType_id == 0}">checked</c:if>
                    >
                    <input type="radio" name="borrowing_stateType_id" title="未完成" value="1"
                           <c:if test="${userInfo.borrowing_stateType_id == 1}">checked</c:if>
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
        var insss=laydate.render({
            elem: '#date3'
            ,calendar: true
            /*,type: 'datetime'*/
            ,type:'date'
            ,format: 'yyyy-MM-dd'
            ,min: '1918-12-31'
            ,max: '2018-12-31'
            ,ready: function(){
                insss.hint('亲！日期可选值只能在 <br> 1918-12-31 到 2017-12-31');
            }
            //日期切换的回调
            ,change: function(value, date){
                layer.msg('你选择的日期是：' + value );
            }
        });
        var inssss=laydate.render({
            elem: '#date4'
            ,calendar: true
            /*,type: 'datetime'*/
            ,type:'date'
            ,format: 'yyyy-MM-dd'
            ,min: '1918-12-31'
            ,max: '2018-12-31'
            ,ready: function(){
                inssss.hint('亲！日期可选值只能在 <br> 1918-12-31 到 2017-12-31');
            }
            //日期切换的回调
            ,change: function(value, date){
                layer.msg('你选择的日期是：' + value );
            }
        });

        var inssssss=laydate.render({
            elem: '#date5'
            ,calendar: true
            /*,type: 'datetime'*/
            ,type:'date'
            ,format: 'yyyy-MM-dd'
            ,min: '1918-12-31'
            ,max: '2018-12-31'
            ,ready: function(){
                inssssss.hint('亲！日期可选值只能在 <br> 1918-12-31 到 2017-12-31');
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
