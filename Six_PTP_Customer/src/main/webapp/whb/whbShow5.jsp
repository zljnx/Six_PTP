<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/27
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/layui/layui.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/layui/css/layui.css">
</head>
<body>
<div class="layui-inline">
    <label class="layui-form-label">用户名</label>
    <div class="layui-input-inline">
        <input type="text" name="loginname" id="loginname" autocomplete="off" class="layui-input">
    </div>
</div>

<div class="layui-inline">
    <label class="layui-form-label">姓名/企业名称</label>
    <div class="layui-input-inline">
        <input type="text" name="username" id="username" autocomplete="off" class="layui-input">
    </div>
</div>

<div class="layui-inline">
    <label class="layui-form-label">保全ID</label>
    <div class="layui-input-inline">
        <input type="text" name="b_bid" id="b_bid" autocomplete="off" class="layui-input">
    </div>
</div><br/>

<div class="layui-inline">
    <label class="layui-form-label">保全时间</label>
    <div class="layui-input-inline">
        <input type="text" name="b_bdate" class="layui-input" id="b_bdate" placeholder="">
    </div>
</div>
<div class="layui-inline">
    <label class="layui-form-label">至</label>
    <div class="layui-input-inline">
        <input type="text" name="b_date" class="layui-input" id="b_date" placeholder="">
    </div>
</div>

<div class="layui-inline">
    <label class="layui-form-label">协议编号</label>
    <div class="layui-input-inline">
        <input type="text" name="b_agreement" id="b_agreement" autocomplete="off" class="layui-input">
    </div>
</div>
<a class="layui-btn search_btn11">搜索</a>
<a class="layui-btn layui-btn-primary" onclick="daochu()">导出</a>
<script type="text/html" id="barDemo2">
    <a class="layui-btn layui-btn-primary  layui-btn-xs" lay-event="detail">保全</a>
</script>
<table class="layui-hide" id="contract1" lay-filter="demo"></table>

<script>
    layui.config({
        version: '1525771196163' //为了更新 js 缓存，可忽略
    });
    layui.use(['laydate', 'laypage', 'form', 'table'], function () {
        var laydate = layui.laydate //日期
            , laypage = layui.laypage //分页
            , table = layui.table //表格
            , form = layui.form
//常规用法
        laydate.render({
            elem: '#b_bdate'
        });
        laydate.render({
            elem: '#b_date'
        });

        //执行一个 table 实例
        var tableIns = table.render({
            elem: '#contract1'
            , url: '<%=request.getContextPath()%>/contract/selectContract1.do' //数据接口
            , page: true //开启分页
            , limit: 2
            , limits: [2, 4, 6, 8]
            , request: {
                pageName: 'start' //页码的参数名称，默认：page
                , limitName: 'limit' //每页数据量的参数名，默认：limit
            }
            , cols: [[ //表头
                {field: 'b_id', title: '序号 ', sort: true, fixed: 'left'}
                , {field: 'loginname', title: '用户名'}
                , {field: 'username', title: '姓名/企业名称	', sort: true}
                , {field: 'b_agreement', title: '协议编号'}
                , {field: 'b_bid', title: '保全ID'}
                , {field: 'b_bdate', title: '保全时间'}
                , {field: 'b_state', title: '保全状态',
                    templet: function(a) {
                        if(a.b_state == 1){
                            return "已启用";
                        }else {
                            return "未启用";
                        }
                    }
                }
                , {field: '操作', width: 165, align: 'center', toolbar: '#barDemo2'}
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
        $(".search_btn11").on("click", function () {

            tableIns.reload({
                page: {
                    curr: 1 //重新从第 1 页开始
                },
                where: {
                    loginname: $("#loginname").val(),
                    username: $("#username").val(),
                    b_bid: $("#b_bid").val(),
                    b_bdate: $("#b_bdate").val(),
                    b_date: $("#b_date").val(),
                    b_agreement: $("#b_agreement").val(),
                }
            });
        });
    });
    function daochu() {
        location.href="<%=request.getContextPath()%>/contract/daochu.do";
    }
</script>
</body>
</html>
