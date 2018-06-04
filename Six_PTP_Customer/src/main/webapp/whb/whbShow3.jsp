<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/24
  Time: 14:36
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
<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
    <ul class="layui-tab-title">
        <li class="layui-this">企业借款协议</li>
        <li>个人借款协议</li>
        <li>债权转让协议</li>
        <li>垫付协议</li>
        <li>不良债权转让协议</li>
    </ul>
    <div class="layui-tab-content" style="height: 100px;">
        <div class="layui-tab-item layui-show">

            <div class="layui-inline">
                <label class="layui-form-label">借款账号</label>
                <div class="layui-input-inline">
                    <input type="text" name="e_number" id="e_number"  autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-inline">
                <label class="layui-form-label">签订日期</label>
                <div class="layui-input-inline">
                    <input type="text" name="e_date" id="e_date1" lay-verify="date" placeholder="" autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-inline">
                <label class="layui-form-label">至</label>
                <div class="layui-input-inline">
                    <input type="text" name="e_date" id="e_date2" lay-verify="date" placeholder="" autocomplete="off" class="layui-input">
                </div>
            </div>
            <a class="layui-btn layui-btn-primary layui-btn-xs search_btn">搜索</a>
            <script type="text/html" id="barDemo1">
                <a class="layui-btn layui-btn-primary  layui-btn-xs" lay-event="detail">合同</a>
            </script>

            <table class="layui-hide" id="enterprise1" lay-filter="demo"></table>

        </div>

        <div class="layui-tab-item">

            <div class="layui-inline">
                <label class="layui-form-label">借款账号</label>
                <div class="layui-input-inline">
                    <input type="text" name="e_number" id="e_number1"  autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-inline">
                <label class="layui-form-label">签订日期</label>
                <div class="layui-input-inline">
                    <input type="text" name="e_date" id="e_date3" lay-verify="date" placeholder="" autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-inline">
                <label class="layui-form-label">至</label>
                <div class="layui-input-inline">
                    <input type="text" name="e_date" id="e_date4" lay-verify="date" placeholder="" autocomplete="off" class="layui-input">
                </div>
            </div>
            <a class="layui-btn layui-btn-primary layui-btn-xs search_btn2">搜索</a>
            <script type="text/html" id="barDemo2">
                <a class="layui-btn layui-btn-primary  layui-btn-xs" lay-event="detail">合同</a>
            </script>

            <table class="layui-hide" id="enterprise2" lay-filter="demo"></table>

        </div>


        <div class="layui-tab-item">

            <div class="layui-inline">
                <label class="layui-form-label">转让者</label>
                <div class="layui-input-inline">
                    <input type="text" name="sellers" id="sellers"  autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-inline">
                <label class="layui-form-label">签订日期</label>
                <div class="layui-input-inline">
                    <input type="text" name="c_date" id="c_date1" lay-verify="date" placeholder="" autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-inline">
                <label class="layui-form-label">至</label>
                <div class="layui-input-inline">
                    <input type="text" name="c_date" id="c_date2" lay-verify="date" placeholder="" autocomplete="off" class="layui-input">
                </div>
            </div>
            <a class="layui-btn layui-btn-primary layui-btn-xs search_btn3">搜索</a>
            <script type="text/html" id="barDemo3">
                <a class="layui-btn layui-btn-primary  layui-btn-xs" lay-event="detail">合同</a>
            </script>

            <table class="layui-hide" id="enterprise3" lay-filter="demo"></table>

        </div>
        <div class="layui-tab-item">

            <div class="layui-inline">
                <label class="layui-form-label">借款账号</label>
                <div class="layui-input-inline">
                    <input type="text" name="loginname" id="loginname"  autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-inline">
                <label class="layui-form-label">签订日期</label>
                <div class="layui-input-inline">
                    <input type="text" name="a_date" id="a_date1" lay-verify="date" placeholder="" autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-inline">
                <label class="layui-form-label">至</label>
                <div class="layui-input-inline">
                    <input type="text" name="a_date" id="a_date2" lay-verify="date" placeholder="" autocomplete="off" class="layui-input">
                </div>
            </div>
            <a class="layui-btn layui-btn-primary layui-btn-xs search_btn4">搜索</a>
            <script type="text/html" id="barDemo4">
                <a class="layui-btn layui-btn-primary  layui-btn-xs" lay-event="detail">合同</a>
            </script>

            <table class="layui-hide" id="enterprise4" lay-filter="demo"></table>

        </div>
        <div class="layui-tab-item">

            <div class="layui-inline">
                <label class="layui-form-label">受让者</label>
                <div class="layui-input-inline">
                    <input type="text" name="b_transferee" id="b_transferee"  autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-inline">
                <label class="layui-form-label">转让日期</label>
                <div class="layui-input-inline">
                    <input type="text" name="b_date" id="b_date1" lay-verify="date" placeholder="" autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-inline">
                <label class="layui-form-label">至</label>
                <div class="layui-input-inline">
                    <input type="text" name="b_date" id="b_date2" lay-verify="date" placeholder="" autocomplete="off" class="layui-input">
                </div>
            </div>
            <a class="layui-btn layui-btn-primary layui-btn-xs search_btn5">搜索</a>
            <script type="text/html" id="barDemo5">
                <a class="layui-btn layui-btn-primary  layui-btn-xs" lay-event="detail">合同</a>
            </script>

            <table class="layui-hide" id="enterprise5" lay-filter="demo"></table>

        </div>
    </div>
</div>
<script>
    layui.config({
        version: '1525771196163' //为了更新 js 缓存，可忽略
    });
    layui.use('element', function(){
        var $ = layui.jquery
            ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

    });
    layui.use(['laydate', 'laypage', 'form', 'table'], function () {
        var laydate = layui.laydate //日期
            , laypage = layui.laypage //分页
            , table = layui.table //表格
            , form = layui.form
//常规用法
        laydate.render({
            elem: '#c_date1'
        });
        laydate.render({
            elem: '#c_date2'
        });
        laydate.render({
            elem: '#e_date1'
        });
        laydate.render({
            elem: '#e_date2'
        });
        laydate.render({
            elem: '#e_date3'
        });
        laydate.render({
            elem: '#e_date4'
        });
        laydate.render({
            elem: '#a_date1'
        });
        laydate.render({
            elem: '#a_date2'
        });
        laydate.render({
            elem: '#b_date1'
        });
        laydate.render({
            elem: '#b_date2'
        });

        //执行一个 table 实例
        var tableIns = table.render({
            elem: '#enterprise1'
            , url: '<%=request.getContextPath()%>/enterprise/selectEnterprise.do' //数据接口
            , page: true //开启分页
            , limit: 2
            , limits: [2, 4, 6, 8]
            , request: {
                pageName: 'start' //页码的参数名称，默认：page
                , limitName: 'limit' //每页数据量的参数名，默认：limit
            }
            , cols: [[ //表头
                {field: 'e_id', title: '序号 ', sort: true, fixed: 'left'}
                , {field: 'e_title', title: '借款标题'}
                , {field: 'e_number', title: '借款账号', sort: true}
                , {field: 'corporate_name', title: '企业名称'}
                , {field: 'e_date', title: '签订日期'}
                , {field: '操作', width: 165, align: 'center', toolbar: '#barDemo1'}
            ]]
        });

        //监听工具条
        table.on('tool(demo)', function (obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                , layEvent = obj.event; //获得 lay-event 对应的值
            if (layEvent === 'detail') {
                layer.msg('查看操作');
            }
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
        $(".search_btn").on("click", function () {

            tableIns.reload({
                page: {
                    curr: 1 //重新从第 1 页开始
                },
                where: {
                    e_number: $("#e_number").val(),
                    e_date: $("#e_date1").val(),
                    e_date: $("#e_date2").val(),
                }
            });
        });
    });
</script>

<script>
    layui.config({
        version: '1525771196163' //为了更新 js 缓存，可忽略
    });
    layui.use('element', function(){
        var $ = layui.jquery
            ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

    });
    layui.use(['laydate', 'laypage', 'form', 'table'], function () {
        var laydate = layui.laydate //日期
            , laypage = layui.laypage //分页
            , table = layui.table //表格
            , form = layui.form


        //执行一个 table 实例
        var tableIns = table.render({
            elem: '#enterprise2'
            , url: '<%=request.getContextPath()%>/enterprise/selectEnterprise2.do' //数据接口
            , page: true //开启分页
            , limit: 2
            , limits: [2, 4, 6, 8]
            , request: {
                pageName: 'start' //页码的参数名称，默认：page
                , limitName: 'limit' //每页数据量的参数名，默认：limit
            }
            , cols: [[ //表头
                {field: 'e_id', title: '序号 ', sort: true, fixed: 'left'}
                , {field: 'e_title', title: '借款标题'}
                , {field: 'e_number', title: '借款账号', sort: true}
                , {field: 'username', title: '姓名'}
                , {field: 'idcard', title: '身份证'}
                , {field: 'e_date', title: '签订日期'}
                , {field: '操作', width: 165, align: 'center', toolbar: '#barDemo2'}
            ]]
        });

        //监听工具条
        table.on('tool(demo)', function (obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                , layEvent = obj.event; //获得 lay-event 对应的值
            if (layEvent === 'detail') {
                layer.msg('查看操作');
            }
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
        $(".search_btn2").on("click", function () {

            tableIns.reload({
                page: {
                    curr: 1 //重新从第 1 页开始
                },
                where: {
                    e_number: $("#e_number1").val(),
                    e_date: $("#e_date3").val(),
                    e_date: $("#e_date4").val(),
                }
            });
        });
    });
</script>

<script>
    layui.config({
        version: '1525771196163' //为了更新 js 缓存，可忽略
    });
    layui.use('element', function(){
        var $ = layui.jquery
            ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

    });
    layui.use(['laydate', 'laypage', 'form', 'table'], function () {
        var laydate = layui.laydate //日期
            , laypage = layui.laypage //分页
            , table = layui.table //表格
            , form = layui.form


        //执行一个 table 实例
        var tableIns = table.render({
            elem: '#enterprise3'
            , url: '<%=request.getContextPath()%>/claims/selectClaims.do' //数据接口
            , page: true //开启分页
            , limit: 2
            , limits: [2, 4, 6, 8]
            , request: {
                pageName: 'start' //页码的参数名称，默认：page
                , limitName: 'limit' //每页数据量的参数名，默认：limit
            }
            , cols: [[ //表头
                {field: 'c_id', title: '序号 ', sort: true, fixed: 'left'}
                , {field: 'sellers', title: '转让者'}
                , {field: 'c_transferee', title: '受让者', sort: true}
                , {field: 'amountbond', title: '转让债权(元)'}
                , {field: 'transferprice', title: '受让价格(元)'}
                , {field: 'c_date', title: '签订日期'}
                , {field: '操作', width: 165, align: 'center', toolbar: '#barDemo3'}
            ]]
        });

        //监听工具条
        table.on('tool(demo)', function (obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                , layEvent = obj.event; //获得 lay-event 对应的值
            if (layEvent === 'detail') {
                layer.msg('查看操作');
            }
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
        $(".search_btn3").on("click", function () {

            tableIns.reload({
                page: {
                    curr: 1 //重新从第 1 页开始
                },
                where: {
                    sellers: $("#sellers").val(),
                    c_date: $("#c_date1").val(),
                    c_date: $("#c_date2").val(),
                }
            });
        });
    });
</script>

<script>
    layui.config({
        version: '1525771196163' //为了更新 js 缓存，可忽略
    });
    layui.use('element', function(){
        var $ = layui.jquery
            ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

    });
    layui.use(['laydate', 'laypage', 'form', 'table'], function () {
        var laydate = layui.laydate //日期
            , laypage = layui.laypage //分页
            , table = layui.table //表格
            , form = layui.form


        //执行一个 table 实例
        var tableIns = table.render({
            elem: '#enterprise4'
            , url: '<%=request.getContextPath()%>/advance/selectAdvance.do' //数据接口
            , page: true //开启分页
            , limit: 2
            , limits: [2, 4, 6, 8]
            , request: {
                pageName: 'start' //页码的参数名称，默认：page
                , limitName: 'limit' //每页数据量的参数名，默认：limit
            }
            , cols: [[ //表头
                {field: 'a_id', title: '序号 ', sort: true, fixed: 'left'}
                , {field: 'a_title', title: '借款标题'}
                , {field: 'loginname', title: '借款账号', sort: true}
                , {field: 'a_guarantee', title: '担保账号'}
                , {field: 'a_amount', title: '垫付金额(元)'}
                , {field: 'a_date', title: '垫付日期'}
                , {field: '操作', width: 165, align: 'center', toolbar: '#barDemo4'}
            ]]
        });

        //监听工具条
        table.on('tool(demo)', function (obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                , layEvent = obj.event; //获得 lay-event 对应的值
            if (layEvent === 'detail') {
                layer.msg('查看操作');
            }
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
        $(".search_btn4").on("click", function () {

            tableIns.reload({
                page: {
                    curr: 1 //重新从第 1 页开始
                },
                where: {
                    loginname: $("#loginname").val(),
                    a_date: $("#a_date1").val(),
                    a_date: $("#a_date2").val(),
                }
            });
        });
    });
</script>

<script>
    layui.config({
        version: '1525771196163' //为了更新 js 缓存，可忽略
    });
    layui.use('element', function(){
        var $ = layui.jquery
            ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

    });
    layui.use(['laydate', 'laypage', 'form', 'table'], function () {
        var laydate = layui.laydate //日期
            , laypage = layui.laypage //分页
            , table = layui.table //表格
            , form = layui.form


        //执行一个 table 实例
        var tableIns = table.render({
            elem: '#enterprise5'
            , url: '<%=request.getContextPath()%>/bad/selectBad.do' //数据接口
            , page: true //开启分页
            , limit: 2
            , limits: [2, 4, 6, 8]
            , request: {
                pageName: 'start' //页码的参数名称，默认：page
                , limitName: 'limit' //每页数据量的参数名，默认：limit
            }
            , cols: [[ //表头
                {field: 'b_id', title: '序号 ', sort: true, fixed: 'left'}
                , {field: 'b_title', title: '借款标题', sort: true}
                , {field: 'b_transferee', title: '受让者', sort: true}
                , {field: 'amountbond', title: '债权价值(元)', sort: true}
                , {field: 'transferprice', title: '转让价格(元)', sort: true}
                , {field: 'b_date', title: '转让日期', sort: true}
                , {field: '操作', width: 165, align: 'center', toolbar: '#barDemo5'}
            ]]
        });

        //监听工具条
        table.on('tool(demo)', function (obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                , layEvent = obj.event; //获得 lay-event 对应的值
            if (layEvent === 'detail') {
                layer.msg('查看操作');
            }
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
        $(".search_btn5").on("click", function () {

            tableIns.reload({
                page: {
                    curr: 1 //重新从第 1 页开始
                },
                where: {
                    b_transferee: $("#b_transferee").val(),
                    b_date: $("#b_date1").val(),
                    b_date: $("#b_date2").val(),
                }
            });
        });
    });
</script>
</body>
</html>
