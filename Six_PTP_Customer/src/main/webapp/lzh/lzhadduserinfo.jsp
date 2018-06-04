<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2018/5/24
  Time: 15:16
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
    <title>用户信息新增</title>
</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 15px;">
    <legend>用户基本信息新增</legend>
</fieldset>
<form class="layui-form layui-form-pane" method="post">
    <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
        <ul class="layui-tab-title">
            <li class="layui-this">基本信息</li>
        </ul>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <div class="layui-form-item">
                    <label class="layui-form-label">用户名称</label>
                    <div class="layui-input-inline">
                        <input type="text" name="loginname" value="" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                    </div>
                    <label class="layui-form-label">真实姓名</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" value="" lay-verify="required" placeholder="请输入"  AUTOCOMPLETE="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">密码</label>
                    <div class="layui-input-inline">
                        <input type="password" name="userpwd" lay-verify="required" placeholder="请输入"  class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">性别</label>
                    <div class="layui-input-block">
                        <input type="radio" name="sex" title="男" value="0">
                        <input type="radio" name="sex" title="女" value="1">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">手机号码</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="userphone" lay-verify="required|phone" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">邮箱地址</label>
                        <div class="layui-input-inline">
                            <input type="text" name="eamil" lay-verify="email" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">身份证号</label>
                        <div class="layui-input-inline">
                            <input type="text" name="idcard" lay-verify="identity" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">出生日期</label>
                        <div class="layui-input-block">
                            <input type="text" name="birthdate" id="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
            </div>
           <%-- <div class="layui-tab-item">
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">学校名称</label>
                        <div class="layui-input-inline">
                            <input type="text" name="school" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">专业名称</label>
                        <div class="layui-input-inline">
                            <input type="text" name="major" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">入学日期</label>
                        <div class="layui-input-block">
                            <input type="text" name="entrancedate" id="date2" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">结业日期</label>
                        <div class="layui-input-block">
                            <input type="text" name="graduationdate" id="date3" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">学院简介</label>
                        <div class="layui-input-block">
                            <textarea placeholder="请输入内容" name="schoolinfo" class="layui-textarea"></textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-tab-item">
                <div class="layui-form-item">
                    <label class="layui-form-label">在职状态</label>
                    <div class="layui-input-block">
                        <input type="radio" name="workstatus" title="在职" value="0">
                        <input type="radio" name="workstatus" title="未职" value="1">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">单位名称</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="companyname" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">工作地址</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="areaname" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">公司规模</label>
                        <div class="layui-input-inline" style="width: 165px;">
                            <input type="tel" name="companyscale" lay-verify="number" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-form-mid">人</div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">公司类别</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="companytype" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
            </div>--%>
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