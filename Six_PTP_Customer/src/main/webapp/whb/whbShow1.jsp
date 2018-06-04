<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>6666</title>
</head>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/layui/layui.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/layui/css/layui.css">
<style>
    body{margin: 10px;}
    .demo-carousel{height: 200px; line-height: 200px; text-align: center;}
</style>
<body>
<div class="layui-tab layui-tab-card">
    <ul class="layui-tab-title">
        <li class="layui-this">线下催收</li>
        <li>线上催收</li>
    </ul>
    <div class="layui-tab-content" style="height: 300px;">

        <div class="layui-tab-item layui-show">


            <div class="layui-inline">
                <label class="layui-form-label">借款者</label>
                <div class="layui-input-inline">
                    <input type="tel" name="x_borrower" id="x_borrower" lay-verify="required|phone" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">催收方式</label>
                <div class="layui-input-inline">
                    <select name="x_mode" id="x_mode" lay-verify="required" lay-search="">
                        <option value="">全部</option>
                        <option value="1">电话</option>
                        <option value="2">现场</option>
                        <option value="3">法律</option>
                        <option value="4">站内信</option>
                        <option value="5">短信</option>
                        <option value="6">邮件</option>
                    </select>
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">催收时间</label>
                <div class="layui-input-inline">
                    <input type="text" name="x_collectingtime" id="x_collectingtime"  placeholder=""  class="layui-input test-item" readonly>
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">至</label>
                <div class="layui-input-inline">
                    <input type="text" name="x_collectingtime" id="x_collectingtime1"   placeholder=""  class="layui-input test-item" readonly>
                </div>
            </div>
            <div class="layui-inline">
                <div class="layui-input-inline">
                    <a class="layui-btn search_btn6" data-type="reload" >搜索</a>
                </div>
            </div>



            <script type="text/html" id="barDemo">
                <button class="layui-btn-warm popup-link mr10" data-wh="800*600">个人质料</button>
                <button class="layui-btn-warm popup-link mr10" data-wh="800*600" lay-event="detail">催款详情</button>
            </script>

            <table class="layui-hide" id="xianxia1" lay-filter="demo"></table>

        </div>





        <div class="layui-tab-item">
            <div class="layui-inline">
                <label class="layui-form-label">借款者</label>
                <div class="layui-input-inline">
                    <input type="tel" name="s_borrower" id="s_borrower" lay-verify="required|phone" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">催收方式</label>
                <div class="layui-input-inline">
                    <select name="s_collectionmethod" id="s_collectionmethod"  lay-verify="required" lay-search="">
                        <option value="">全部</option>
                        <option value="1">电话</option>
                        <option value="2">现场</option>
                        <option value="3">法律</option>
                        <option value="4">站内信</option>
                        <option value="5">短信</option>
                        <option value="6">邮件</option>
                    </select>
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">催收时间</label>
                <div class="layui-input-inline">
                    <input type="text" name="x_collectingtime" id="x_collectingtime2"  placeholder=""  class="layui-input test-item" readonly>
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">至</label>
                <div class="layui-input-inline">
                    <input type="text" name="x_collectingtime" id="x_collectingtime3"   placeholder=""  class="layui-input test-item" readonly>
                </div>
            </div>

            <div class="layui-inline">
                <div class="layui-input-inline">
                    <a class="layui-btn search_btn7" data-type="reload" >搜索</a>
                </div>
            </div>
            <table class="layui-hide" id="xianxia2" lay-filter="demo1"></table>
            <script type="text/html" id="barDemo1">
                <button class="layui-btn-warm popup-link mr10" data-wh="800*600">个人质料</button>
                <button class="layui-btn-warm popup-link mr10" data-wh="800*600" lay-event="detail">催款详情</button>
            </script>
        </div>
    </div>
</div>
<script type="application/javascript">

    //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function(){
        var element = layui.element;

        //…
    });
    layui.config({
    });

    layui.use(['laydate', 'laypage',  'table','form'], function(){
        var laydate = layui.laydate //日期
            ,laypage = layui.laypage //分页
            ,table = layui.table //表格
            , form = layui.form
        lay('.test-item').each(function(){
            laydate.render({
                elem: this
                ,trigger: 'click'
            });
        });
        //常规用法
        laydate.render({
            elem: '#x_collectingtime'
        });

        laydate.render({
            elem: '#x_collectingtime1'
        });
        //执行一个 table 实例
        var tableIns =  table.render({
            elem: '#xianxia1'
            ,method: 'post'
            ,url: '<%=request.getContextPath()%>/xianxia/selectUnderline.do' //数据接口
            ,page: true //开启分页
            ,limit:2
            ,limits:[2,4,6,8]
            ,request: {
                pageName: 'start' //页码的参数名称，默认：page
                ,limitName: 'limit' //每页数据量的参数名，默认：limit
            }
            ,cols: [[ //表头
                {field: 'x_id', title: '序号',  sort: true, fixed: 'left'}
                ,{field: 'x_Loan', title: '借款ID'}
                ,{field: 'x_borrower', title: '借款者'}
                ,{field: 'x_mode', title: '催收方式'}
                ,{field: 'x_collector', title: '催收人'}
                ,{field: 'x_collectingtime', title: '催收时间'}
                ,{field: 'x_resultssummary', title: '结果概要', sort: true}
                ,{field: '', title: '操作', sort: true, width:143,toolbar:"#barDemo"}
            ]]
        });

        //监听工具条
        table.on('tool(demo)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                ,layEvent = obj.event; //获得 lay-event 对应的值
            if(layEvent === 'detail'){
                layer.open({
                    type: 2,
                    adin:2,
                    btn:['返回','确定'],
                    skin: 'layui-layer-rim', //加上边框
                    area: ['440px', '440px'], //宽高
                    content: "<%=request.getContextPath()%>/xianxia/selectXianXia.do?id="+data.x_id, //调到新增页面
                    yes: function(index, layero){

                        layer.close(index); //如果设定了yes回调，需进行手工关闭
                    }
                });

            }
        });
        //分页
        laypage.render({
            elem: 'pageDemo' //分页容器的id
            ,skin: '#1E9FFF' //自定义选中色值
            ,skip: true //开启跳页
            ,jump: function(obj, first){
                if(!first){
                    layer.msg('第'+ obj.curr +'页');
                }
            }
        });
        $(".search_btn6").on("click", function() {

            tableIns.reload({
                page: {
                    curr: 1 //重新从第 1 页开始
                },
                where: {
                    x_borrower: $("#x_borrower").val(),
                    x_mode: $("#x_mode").val(),
                    x_collectingtime: $("#x_collectingtime").val(),
                    x_collectingtime: $("#x_collectingtime1").val()
                }
            });
        });
    });

</script>
<script type="application/javascript">

    //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
    /*layui.use('element', function(){
        var element = layui.element;

        //…
    });*/
    layui.config({
    });

    layui.use(['laydate', 'laypage',  'table','form'], function(){
        var laydate = layui.laydate //日期
            ,laypage = layui.laypage //分页
            ,table = layui.table //表格
            , form = layui.form
        lay('.test-item').each(function(){
            laydate.render({
                elem: this
                ,trigger: 'click'
            });
        });
        //常规用法
        laydate.render({
            elem: '#x_collectingtime2'
        });

        laydate.render({
            elem: '#x_collectingtime3'
        });
        //执行一个 table 实例
        var tableIns =  table.render({
            elem: '#xianxia2'
            ,method: 'post'
            ,url: '<%=request.getContextPath()%>/xianxia1/selectUnderline1.do' //数据接口
            ,page: true //开启分页
            ,limit:2
            ,limits:[2,4,6,8]
            ,request: {
                pageName: 'start' //页码的参数名称，默认：page
                ,limitName: 'limit' //每页数据量的参数名，默认：limit
            }
            ,cols: [[ //表头
                {field: 's_id', title: '序号',  sort: true, fixed: 'left'}
                ,{field: 's_loan', title: '借款ID'}
                ,{field: 's_borrower', title: '借款者'}
                ,{field: 's_collectionmethod', title: '催收方式'}
                ,{field: 's_collector', title: '催收人'}
                ,{field: 's_collectingtime', title: '催收时间'}
                ,{field: 's_title', title: '标题', sort: true}
                ,{field: '', title: '操作', sort: true, width:143,toolbar:"#barDemo1"}
            ]]
        });
        //监听工具条
        table.on('tool(demo1)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                ,layEvent = obj.event; //获得 lay-event 对应的值
            if(layEvent === 'detail'){
                layer.open({
                    type: 2,
                    adin:2,
                    btn:['返回','确定'],
                    skin: 'layui-layer-rim', //加上边框
                    area: ['440px', '440px'], //宽高
                    content: "<%=request.getContextPath()%>/xianxia1/selectXianXia1.do?id="+data.s_id, //调到新增页面
                    yes: function(index, layero){

                        layer.close(index); //如果设定了yes回调，需进行手工关闭
                    }
                });
            }
        });
        //分页
        laypage.render({
            elem: 'pageDemo' //分页容器的id
            ,skin: '#1E9FFF' //自定义选中色值
            ,skip: true //开启跳页
            ,jump: function(obj, first){
                if(!first){
                    layer.msg('第'+ obj.curr +'页');
                }
            }
        });
        $(".search_btn7").on("click", function() {

            tableIns.reload({
                page: {
                    curr: 1 //重新从第 1 页开始
                },
                where: {
                    s_borrower: $("#s_borrower").val(),
                    s_collectionmethod: $("#s_collectionmethod").val(),
                    x_collectingtime: $("#x_collectingtime2").val(),
                    x_collectingtime: $("#x_collectingtime3").val()
                }
            });
        });
    });
</script>
</body>
</html>
