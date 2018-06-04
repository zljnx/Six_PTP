<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/31
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/layui/layui.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/layui/css/layui.css">
</head>
<body>
<table class="layui-hide" id="logs" lay-filter="demo"></table>
<script>
    layui.config({
        version: '1525771196163' //为了更新 js 缓存，可忽略
    });
    layui.use(['laydate', 'laypage', 'form', 'table'], function () {
        var laydate = layui.laydate //日期
            , laypage = layui.laypage //分页
            , table = layui.table //表格
            , form = layui.form


        //执行一个 table 实例
        var tableIns = table.render({
            elem: '#logs'
            , url: '<%=request.getContextPath()%>/logController/logsList.do' //数据接口
            , page: true //开启分页
            , limit: 10
            , limits: [20, 50,80, 100]
            , request: {
                pageName: 'page' //页码的参数名称，默认：page
                , limitName: 'rows' //每页数据量的参数名，默认：limit
            }
            , cols: [[ //表头

                {checkbox:true, sort: true, fixed: 'left'},
                {field:'clazzName',title:'操作类名'},
                {field:'methodName',title:'操作方法名'},
                {field:'params',title:'操作参数'},
                {field:'isexception',title:'异常类型'},
            ]]
        });


        //分页
        laypage.render({
            elem: 'pageDemo' //分页容器的id
            , count: 100 //总页数
            , skin: '#1E9FFF' //自定义选中色值
            //,skip: true //开启跳页
            , jump: function (obj, first) {
                if (!first) {
                    layer.msg('第' + obj.curr + '页');
                }
            }
        });
    });
</script>
</body>
</html>
