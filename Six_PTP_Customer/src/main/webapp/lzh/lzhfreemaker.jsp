<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2018/6/5
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script src="/jquery/jquery.min.js"></script>
<script src="/js/layui/layui.js"></script>
<link rel="stylesheet" href="/js/layui/css/layui.css" media="all" />
<body>
<br>
        <a class="layui-btn layui-btn-radius layui-btn-normal" id="downAll_btn">全部生成</a>

<script>
    $("#downAll_btn").on("click",function(){
        $.ajax({
            url:"/lzhfreemarker/queryUserInfoFm.do?id=1",
            type:"post"
        })
        $.ajax({
            url:"/lzhfreemarker/queryUserInfoFmt.do?id=1",
            type:"post"
        })
        alert("生成成功")
    });
</script>
</body>
</html>
