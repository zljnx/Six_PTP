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
<form class="layui-form" action="<%=request.getContextPath()%>/xianxia1/addXianShang.do" method="post" id="add_form" >
    <div class="layui-form-item">
        <label class="layui-form-label">催收方式：</label>
        <div class="layui-input-block">
            <input type="radio" name="s_collectionmethod" value="1" onclick="show(this);" title="站内信" checked="">
            <input type="radio" name="s_collectionmethod" value="2" onclick="show(this);" title="短信">
            <input type="radio" name="s_collectionmethod" value="3" onclick="show(this);" title="邮件">
        </div><br/>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">发送用户：</label>
                <div class="layui-input-inline">
                      周陆军
                </div>
            </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">标题：</label>
            <div class="layui-input-inline">
                <input type="text" name="s_title"    class="layui-input">
            </div>
        </div>
    </div>

    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">内容：</label>
        <div class="layui-input-block">
            <textarea name="s_content" class="layui-textarea"></textarea>
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