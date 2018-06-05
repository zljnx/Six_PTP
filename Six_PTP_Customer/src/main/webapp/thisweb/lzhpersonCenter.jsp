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
                $("#id1").val(data[0].id);
                $("#id2").val(data[0].id);
                $("#userimg").attr("src",data[0].filename);
                $("#loginname").val(data[0].loginname);
                $("#userphone").val(data[0].userphone);
                $("#email").val(data[0].eamil);
            },
            error:function(){
                alert("回显失败")
            }
        })
    });
</script>
<body>
    <div style="float:right;margin-right:360px">
            <form id="mainform" method="post" enctype="multipart/form-data" >
                <div class="fileInputContainer">
                    <input type="file" name="file" id="fileInput" hidden >
                    <input type="hidden" name="id" id="id1">
                    <img src="" id="userimg" style="height: 100px;width: 100px">
                </div>
            </form>
    </div>
    <form class="layui-form">
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">用户名称</label>
            <div class="layui-input-inline" >
                <input type="text" name="loginname" id="loginname" lay-verify="required" autocomplete="off" class="layui-input">
                <input type="text" name="id" id="id2" hidden>
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">手机号码</label>
            <div class="layui-input-inline">
                <input type="tel" name="userphone" id="userphone" lay-verify="required|phone" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">用户邮箱</label>
            <div class="layui-input-inline">
                <input type="text" name="eamil" id="email" lay-verify="email" autocomplete="off" class="layui-input">
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
    $(".fileInputContainer").on("click",function(){
       document.getElementById("fileInput").click();
    });
    $('#fileInput').change(function() {
        var file = $(".fileInputContainer").find("input")[0].files[0];
        //创建读取文件的对象
        var reader = new FileReader();
        //创建文件读取相关的变量
        var imgFile;
        //为文件读取成功设置事件
        reader.onload = function (e) {
            alert('文件读取完成');
            imgFile = e.target.result;
            $("#userimg").attr('src', imgFile);
            $(".layui-nav-img").attr('src', imgFile);
        };
        //正式读取文件
        reader.readAsDataURL(file);
        //$("#sub").click();
        //window.location.reload();
        var formData = new FormData($('#mainform')[0]);

        $.ajax({
            url: "/lzhUserInfo/uploadPhoto.do",
            type: 'post',
            data:formData,
            processData: false,
            contentType: false,
            error:function () {
            }
        });
    })
</script>
</body>
</html>