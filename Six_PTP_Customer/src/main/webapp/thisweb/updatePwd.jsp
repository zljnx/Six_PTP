<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>我的黄金杯网贷</title>
    <script type="text/javascript" src="../jquery/jquery.min.js"></script>
    <script src="../layui/layui.js"></script>
    <link rel="stylesheet" href="../layui/css/layui.css" media="all" />
    <script type="text/javascript" src="../layui/lay/modules/layer.js"></script>
</head>
<script>
    $(document).ready(function(){
        //要执行的js代码段
        $.ajax({
            url:"/lzhUserInfo/queryUserImg.do?id="+${sessionScope.adminSession.id},
            type:"post",
            dataType: "json",
            success:function(data){
                $("#loginname").val(data[0].loginname);
                $("#id").val(data[0].id);
            },
            error:function(){
                alert("回显失败")
            }
        })
    });
</script>
<body>
<form class="layui-form">
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">用户名称</label>
            <div class="layui-input-inline" >
                <input type="hidden" name="id" id="id">
                <input type="text" name="loginname" id="loginname" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">原密码</label>
            <div class="layui-input-inline">
                <input type="password" name="olduserpwd" id="userpwd" placeholder="请输入原密码" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">新密码</label>
            <div class="layui-input-inline">
                <input type="password" name="userpwd" id="newuserpwd" placeholder="请输入新密码" lay-verify="required|phone" onkeyup="compare();" autocomplete="off" class="layui-input"><span id="span1"></span>
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">确认密码</label>
            <div class="layui-input-inline">
                <input type="password" name="userpwd2" id="newuserpwd2" placeholder="请再次输入密码" lay-verify="email" onkeyup="compare();" autocomplete="off" class="layui-input"><span id="span2"></span>
            </div>
        </div>
    </div>
</form>
<script type="text/javascript">
    layui.use(['element', 'form', 'util'], function(){
        var $ = layui.jquery
            , element = layui.element
            ,form = layui.form;
    });
    function compare(){
        var a=document.getElementById('newuserpwd').value;
        var b=document.getElementById('newuserpwd2').value;
        var c=document.getElementById('userpwd').value;
        if(a==c&&a!=""&&c!=""){
            document.getElementById('span1').innerHTML="不能与原密码一致!";
        }
        if(a!=c){
            document.getElementById('span1').innerHTML="";
        }
        if(a==b&&a!=""&&b!=""){
            document.getElementById('span2').innerHTML="";
        }
        if(a!=b&&a!=""&&b!=""){
            document.getElementById('span2').innerHTML="两次密码不一致!";
        }
    }
</script>
</body>
</html>