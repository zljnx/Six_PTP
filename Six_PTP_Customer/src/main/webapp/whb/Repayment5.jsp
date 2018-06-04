<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>layui</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/layui/layui.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/layui/css/layui.css">
</head>
<body>
<form class="layui-form" action="<%=request.getContextPath()%>/xianxia/addXianXia.do" method="post" id="add_form" >
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">用户名：</label>
            <div class="layui-input-inline">
                <input type="text" name="x_username"  id="x_username" autocomplete="off" class="layui-input">
            </div>
        </div>
       <div class="layui-inline">
            <label class="layui-form-label">姓名：</label>
            <div class="layui-input-inline">
                <input type="text" name="x_name"  autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">借款ID：</label>
            <div class="layui-input-inline">
                <input type="text" name="x_Loan"    class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">催收方式：</label>
            <div class="layui-input-block">
                <input type="radio" name="x_mode" value="1" title="电话" checked="">
                <input type="radio" name="x_mode" value="2" title="现场">
                <input type="radio" name="x_mode" value="3" title="法律">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">催收人：</label>
            <div class="layui-input-inline">
                <input type="tel" name="x_collector"  autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
        <div class="layui-inline">
            <label class="layui-form-label">催收时间：</label>
            <div class="layui-input-inline">
                <input type="text" name="x_collectingtime" id="date" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
            </div>
        </div><br/><br/>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">结果概要：</label>
        <div class="layui-input-block">
            <textarea name="x_resultssummary" class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">备注：</label>
        <div class="layui-input-block">
            <textarea name="x_remarks" class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn layui-btn-warm">提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>

<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });
    });
</script>
</body>
</html>