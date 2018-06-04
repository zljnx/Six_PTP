<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/layui/layui.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/layui/css/layui.css">
<style>
    body{margin: 10px;}
    .demo-carousel{height: 200px; line-height: 200px; text-align: center;}
</style>
<body>
<div class="layui-col-md12">
    <div class="layui-card">
        <div class="layui-card-header">线上债权转让管理</div>
        <div class="layui-card-body">
            <form class="layui-form" id="daizhuanrang" method="post" style="display:inline">
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">债券ID</label>
                        <div class="layui-input-inline">
                            <input type="tel" id="zqid" name="zqid" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">标的ID</label>
                        <div class="layui-input-inline">
                            <input type="tel" id="signid" name="signid" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">借款标题</label>
                        <div class="layui-input-inline">
                            <input type="text" id="Borrowingtitle" name="Borrowingtitle" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">债权转让者</label>
                        <div class="layui-input-inline">
                            <input type="text" id="sellers" name="sellers" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">申请时间</label>
                        <div class="layui-input-inline" >
                            <input type="text" id="applyfortime" name="applyfortime" class="layui-input test-item"  placeholder="年-月-日" readonly>
                        </div>
                        <div class="layui-form-mid">-</div>
                        <div class="layui-input-inline" >
                            <input type="text" id="endtime" name="endtime" class="layui-input test-item"  placeholder="年-月-日" readonly>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <div class="layui-input-inline">
                            <a class="layui-btn search_btn" data-type="reload" id="sousuo0">搜索</a>
                            <a class="layui-btn "  id="fabu">批量发布</a>
                        </div>
                    </div>
                </div>
            </form>

            <form class="layui-form" id="zhuanrangzhong" method="post" style="display:inline">
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">债券ID</label>
                        <div class="layui-input-inline">
                            <input type="tel" id="zqid1" name="zqid" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">标的ID</label>
                        <div class="layui-input-inline">
                            <input type="tel" id="signid1" name="signid" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">借款标题</label>
                        <div class="layui-input-inline">
                            <input type="text" id="Borrowingtitle1" name="Borrowingtitle" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">债权转让者</label>
                        <div class="layui-input-inline">
                            <input type="text" id="sellers1" name="sellers" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">申请时间</label>
                        <div class="layui-input-inline" >
                            <input type="text" id="applyfortime1" name="applyfortime" class="layui-input test-item"  placeholder="年-月-日" readonly>
                        </div>
                        <div class="layui-form-mid">-</div>
                        <div class="layui-input-inline" >
                            <input type="text" id="endtime1" name="endtime" class="layui-input test-item"  placeholder="年-月-日" readonly>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <div class="layui-input-inline">
                            <a class="layui-btn search_btn" data-type="reload" id="sousuo1">搜索</a>
                            <button type="button" class="layui-btn" id="xiajia">批量下架</button>
                        </div>
                    </div>
                </div>
            </form>

            <form class="layui-form" id="yizhuanrang" method="post" style="display:inline">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">债券ID</label>
                    <div class="layui-input-inline">
                        <input type="tel" id="zqid2" name="zqid" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">标的ID</label>
                    <div class="layui-input-inline">
                        <input type="tel" id="signid2" name="signid" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">借款标题</label>
                    <div class="layui-input-inline">
                        <input type="text" id="Borrowingtitle2" name="Borrowingtitle" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">债权转让者</label>
                    <div class="layui-input-inline">
                        <input type="text" id="sellers2" name="sellers" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">申请时间</label>
                    <div class="layui-input-inline" >
                        <input type="text" id="applyfortime2" name="applyfortime" class="layui-input test-item"  placeholder="年-月-日" readonly>
                    </div>
                    <div class="layui-form-mid">-</div>
                    <div class="layui-input-inline" >
                        <input type="text" id="endtime2" name="endtime" class="layui-input test-item"  placeholder="年-月-日" readonly>
                    </div>
                </div>
                <div class="layui-inline">
                    <div class="layui-input-inline">
                        <a class="layui-btn search_btn" data-type="reload" id="sousuo2">搜索</a>
                    </div>
                </div>
            </div>
        </form>

            <form class="layui-form" id="shibai" method="post" style="display:inline">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">债券ID</label>
                    <div class="layui-input-inline">
                        <input type="tel" id="zqid3" name="zqid" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">标的ID</label>
                    <div class="layui-input-inline">
                        <input type="tel" id="signid3" name="signid" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">借款标题</label>
                    <div class="layui-input-inline">
                        <input type="text" id="Borrowingtitle3" name="Borrowingtitle" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">债权转让者</label>
                    <div class="layui-input-inline">
                        <input type="text" id="sellers3" name="sellers" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">申请时间</label>
                    <div class="layui-input-inline" >
                        <input type="text" id="applyfortime3" name="applyfortime" class="layui-input test-item"  placeholder="年-月-日" readonly>
                    </div>
                    <div class="layui-form-mid">-</div>
                    <div class="layui-input-inline" >
                        <input type="text" id="endtime3" name="endtime" class="layui-input test-item"  placeholder="年-月-日" readonly>
                    </div>
                </div>
                <div class="layui-inline">
                    <div class="layui-input-inline">
                        <a class="layui-btn search_btn" data-type="reload" id="sousuo3">搜索</a>
                    </div>
                </div>
            </div>

        </form>
        </div>
    </div>
</div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend></legend>
</fieldset>

<div class="layui-tab layui-tab-brief" lay-filter="demo">
    <ul class="layui-tab-title">
        <li class="layui-this">待转让</li>
        <li>转让中</li>
        <li>已转让</li>
        <li>转让失败</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <table class="layui-hide" id="zrzq0" lay-filter="demo"></table>
        </div>
        <div class="layui-tab-item">
            <table class="layui-hide" id="zrzq1" lay-filter="demo"></table>
        </div>
        <div class="layui-tab-item">
            <table class="layui-hide" id="zrzq2" lay-filter="demo"></table>
        </div>
        <div class="layui-tab-item">
            <table class="layui-hide" id="zrzq3" lay-filter="demo"></table>
        </div>
    </div>
</div>

<script type="text/html" id="barDemo1">
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">发布</a>
</script>
<script type="text/html" id="barDemo2">
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">下架</a>
</script>

<script type="application/javascript">
    layui.config({
    });
    //layui需要的插件
    layui.use(['laydate', 'laypage',  'table','form','element'], function(){
        var laydate = layui.laydate //日期
            ,laypage = layui.laypage //分页
            ,table = layui.table //表格
            ,form = layui.form//表单
            ,element = layui.element//元素操作

        //日期格式插件
        lay('.test-item').each(function(){
            laydate.render({
                elem: this
                ,type: 'datetime'
                ,trigger: 'click'
            });
        });
        //监听复选框
        table.on('checkbox(demo)', function(obj){
        });
        //监听工具条
        table.on('tool(demo)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                ,layEvent = obj.event; //获得 lay-event 对应的值
            if(layEvent === 'del'){
                layer.confirm('确定进行此操作？', function(index){
                   $.ajax({
                       url: "<%=request.getContextPath()%>/zhuanrang/delDebenturetransfer.do",
                       type: "POST",
                       data:{"zrid":data.zrid,"zrstatus":data.zrstatus},
                       success:function(data){
                           obj.del();
                           layer.close(index);
                           layer.msg("成功", {icon: 6});
                       }, error: function(){
                           layer.msg("失败", {icon: 5});
                       }
                   })
                });
            }
        });

        function aaaaa() {
            document.getElementById('daizhuanrang').style.display='inline';
            document.getElementById('zhuanrangzhong').style.display='none';
            document.getElementById('yizhuanrang').style.display='none';
            document.getElementById('shibai').style.display='none';
            /*$("#touzizhong").style.display='inline';*/
            var tableIns =  table.render({
                elem: '#zrzq0'
                ,method: 'post'
                ,url: '<%=request.getContextPath()%>/zhuanrang/DebenturetransferList.do?zrstatus=0' //数据接口
                ,page: true //开启分页
                ,limit:5
                ,limits:[5,10,15,20]
                ,id: 'zrzq0'
                ,request: {
                    pageName: 'start', //页码的参数名称，默认：page
                    limitName: 'limit', //每页数据量的参数名，默认：limit
                }
                ,cols: [[ //表头
                    {checkbox: true, fixed: true}
                    ,{field: 'zrid', title: '序号',width:60}
                    ,{field: 'zqid', title: '债权ID'}
                    ,{field: 'signid', title: '标的ID'}
                    ,{field: 'borrowingtitle', title: '借款标题'}
                    ,{field: 'sellers', title: '债权转让者'}
                    ,{field: 'restperiods', title: '剩余期数'}
                    ,{field: 'zrapr', title: '年利率化'}
                    ,{field: 'amountbond', title: '债权价值(元)'}
                    ,{field: 'transferprice', title: '转让价格(元)'}
                    ,{field: 'transferrate', title: '转让费率'}
                    ,{field: 'applyfortime', title: '申请时间', width:170}
                    ,{fixed: 'right',title: '操作' , align:'center', toolbar: '#barDemo1'}
                ]]
            });

                $("#sousuo0").on("click", function(){
                    tableIns.reload({
                        page: {
                            curr: 1 //重新从第 1 页开始
                        },
                        where: {
                            zqid:$("#zqid").val(),
                            signid:  $("#signid").val(),
                            Borrowingtitle: $("#Borrowingtitle").val(),
                            sellers: $("#sellers").val(),
                            applyfortime: $("#applyfortime").val(),
                            endtime: $("#endtime").val()
                        }
                    });
                });

            $("#fabu").click(function(){
                var checkStatus = table.checkStatus('zrzq0'),
                    data = checkStatus.data;
                    newsId = [];
                if(data.length > 0) {
                    for(var i in data) {
                        newsId.push(data[i].zrid);
                    }
                    layer.confirm('确定发布选中的信息？', {
                        icon: 3,
                        title: '提示信息'
                    }, function(index) {
                        $.post("<%=request.getContextPath()%>/zhuanrang/pldelDebenturetransfer.do?ids="+newsId,
                            //{"ids":newsId},//将需要删除的newsId作为参数传入
                            function(result) {
                                tableIns.reload();
                                layer.close(index);
                        });
                    });
                } else {
                    layer.msg("请选择需要发布的信息");
                }
            });



        }
        $(function(){
            aaaaa();
        })
        //监听tab切换
        element.on('tab(demo)',function(data){
            indexs =data.index;
            if(data.index==0){
                aaaaa();
            }
            if(data.index==1){
                document.getElementById('zhuanrangzhong').style.display='inline';
                document.getElementById('daizhuanrang').style.display='none';
                document.getElementById('yizhuanrang').style.display='none';
                document.getElementById('shibai').style.display='none';
                var tableIns =  table.render({
                    elem: '#zrzq'+indexs+''
                    ,method: 'post'
                    ,url: '<%=request.getContextPath()%>/zhuanrang/DebenturetransferList.do?zrstatus='+data.index //数据接口
                    ,page: true //开启分页
                    ,limit:5
                    ,limits:[5,10,15,20]
                    ,id: 'zrzq1'
                    ,request: {
                        pageName: 'start', //页码的参数名称，默认：page
                        limitName: 'limit', //每页数据量的参数名，默认：limit
                    }
                    ,cols: [[ //表头
                        {checkbox: true, fixed: true}
                        ,{field: 'zrid', title: '序号', width:60}
                        ,{field: 'zqid', title: '债权ID'}
                        ,{field: 'signid', title: '标的ID'}
                        ,{field: 'borrowingtitle', title: '借款标题'}
                        ,{field: 'sellers', title: '债权转让者'}
                        ,{field: 'restperiods', title: '剩余期数'}
                        ,{field: 'zrapr', title: '年利率化'}
                        ,{field: 'amountbond', title: '债权价值(元)'}
                        ,{field: 'transferprice', title: '转让价格(元)'}
                        ,{field: 'transferrate', title: '转让费率'}
                        ,{field: 'applyfortime', title: '申请时间', width:170}
                        ,{fixed: 'right',title: '操作' , align:'center', toolbar: '#barDemo2'}
                    ]]
                });
                $("#sousuo1").on("click", function() {
                    tableIns.reload({
                        page: {
                            curr: 1 //重新从第 1 页开始
                        },
                        where: {
                            zqid:$("#zqid1").val(),
                            signid: $("#signid1").val(),
                            Borrowingtitle: $("#Borrowingtitle1").val(),
                            sellers: $("#sellers1").val(),
                            applyfortime: $("#applyfortime1").val(),
                            endtime: $("#endtime1").val()
                        }
                    });
                });

                $("#xiajia").click(function(){
                    var checkStatus = table.checkStatus('zrzq1'),
                        data = checkStatus.data;
                    newsId = [];
                    if(data.length > 0) {
                        for(var i in data) {
                            newsId.push(data[i].zrid);
                        }
                        layer.confirm('确定下架选中的信息？', {
                            icon: 3,
                            title: '提示信息'
                        }, function(index) {
                            $.post("<%=request.getContextPath()%>/zhuanrang/plxiajiaDebenturetransfer.do?ids="+newsId,
                                //{"ids":newsId},//将需要删除的newsId作为参数传入
                                function(result) {
                                    tableIns.reload();
                                    layer.close(index);
                                });
                        });
                    } else {
                        layer.msg("请选择需要下架的信息");
                    }
                });
            }
            if(data.index==2){
                document.getElementById('yizhuanrang').style.display='inline';
                document.getElementById('daizhuanrang').style.display='none';
                document.getElementById('zhuanrangzhong').style.display='none';
                document.getElementById('shibai').style.display='none';
                var tableIns =  table.render({
                    elem: '#zrzq'+indexs+''
                    ,method: 'post'
                    ,url: '<%=request.getContextPath()%>/zhuanrang/DebenturetransferList.do?zrstatus='+data.index //数据接口
                    ,page: true //开启分页
                    ,limit:5
                    ,limits:[5,10,15,20]
                    ,id: 'tzz'
                    ,request: {
                        pageName: 'start', //页码的参数名称，默认：page
                        limitName: 'limit', //每页数据量的参数名，默认：limit
                    }
                    ,cols: [[ //表头
                        {field: 'zrid', title: '序号',width:60}
                        ,{field: 'zqid', title: '债权ID'}
                        ,{field: 'signid', title: '标的ID'}
                        ,{field: 'borrowingtitle', title: '借款标题'}
                        ,{field: 'sellers', title: '债权转让者'}
                        ,{field: 'restperiods', title: '剩余期数'}
                        ,{field: 'zrapr', title: '年利率化'}
                        ,{field: 'amountbond', title: '债权价值(元)'}
                        ,{field: 'transferprice', title: '转让价格(元)'}
                        ,{field: 'transferrate', title: '转让费率'}
                        ,{field: 'applyfortime', title: '申请时间', width:170}
                    ]]
                });
                $("#sousuo2").on("click", function() {
                    tableIns.reload({
                        page: {
                            curr: 1 //重新从第 1 页开始
                        },
                        where: {
                            zqid:$("#zqid2").val(),
                            signid:  $("#signid2").val(),
                            Borrowingtitle: $("#Borrowingtitle2").val(),
                            sellers: $("#sellers2").val(),
                            applyfortime: $("#applyfortime2").val(),
                            endtime: $("#endtime2").val()
                        }
                    });
                });
            }
            if(data.index==3){
                document.getElementById('shibai').style.display='inline';
                document.getElementById('daizhuanrang').style.display='none';
                document.getElementById('yizhuanrang').style.display='none';
                document.getElementById('zhuanrangzhong').style.display='none';
                var tableIns =  table.render({
                    elem: '#zrzq'+indexs+''
                    ,method: 'post'
                    ,url: '<%=request.getContextPath()%>/zhuanrang/DebenturetransferList.do?zrstatus='+data.index //数据接口
                    ,page: true //开启分页
                    ,limit:5
                    ,limits:[5,10,15,20]
                    ,id: 'tzz'
                    ,request: {
                        pageName: 'start', //页码的参数名称，默认：page
                        limitName: 'limit', //每页数据量的参数名，默认：limit
                    }
                    ,cols: [[ //表头
                        {field: 'zrid', title: '序号',width:60}
                        ,{field: 'zqid', title: '债权ID'}
                        ,{field: 'signid', title: '标的ID'}
                        ,{field: 'borrowingtitle', title: '借款标题'}
                        ,{field: 'sellers', title: '债权转让者'}
                        ,{field: 'restperiods', title: '剩余期数'}
                        ,{field: 'zrapr', title: '年利率化'}
                        ,{field: 'amountbond', title: '债权价值(元)'}
                        ,{field: 'transferprice', title: '转让价格(元)'}
                        ,{field: 'transferrate', title: '转让费率'}
                        ,{field: 'applyfortime', title: '申请时间', width:170}
                    ]]
                });
                $("#sousuo3").on("click", function() {
                    tableIns.reload({
                        page: {
                            curr: 1 //重新从第 1 页开始
                        },
                        where: {
                            zqid:$("#zqid3").val(),
                            signid:  $("#signid3").val(),
                            Borrowingtitle: $("#Borrowingtitle3").val(),
                            sellers: $("#sellers3").val(),
                            applyfortime: $("#applyfortime3").val(),
                            endtime: $("#endtime3").val()
                        }
                    });
                });
            }

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

        });


    });





</script>

</body>
</html>