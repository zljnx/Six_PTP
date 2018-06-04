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
        <li class="layui-this">近30天待还款</li>
        <li>逾期待还款</li>
        <li>严重逾期待还款</li>
    </ul>
    <div class="layui-tab-content" style="height: 300px;">

        <div class="layui-tab-item layui-show">

            <div class="layui-inline">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-inline">
                    <input type="tel" name="c_loginname" id="c_loginname" lay-verify="required|phone" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">借款标题</label>
                <div class="layui-input-inline">
                    <input type="tel" name="c_title" id="c_title" lay-verify="required|phone" autocomplete="off" class="layui-input">
                </div>
            </div><br/><br/>
            <div class="layui-inline">
                <label class="layui-form-label">下一日还款</label>
                <div class="layui-input-inline">
                    <input type="text" name="c_daytime" id="c_daytime"  placeholder=""  class="layui-input test-item" readonly>
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">至</label>
                <div class="layui-input-inline">
                    <input type="text" name="c_daytime" id="c_daytime1"   placeholder=""  class="layui-input test-item" readonly>
                </div>
            </div>
            <div class="layui-inline">
                <div class="layui-input-inline">
                    <a class="layui-btn search_btn" data-type="reload" >搜索</a>
                </div>
            </div>
            <div class="layui-inline">
                <div class="layui-input-inline">
                    <a class="layui-btn " data-type="reload" onclick="addRepayment1()">线上催收</a>
                </div>
            </div>

            <table class="layui-hide" id="huankuan1" lay-filter="demo"></table>
            借款总金额:<font color="red"><span id="jie1"></span></font>
            本期应还总金额:<font color="red"><span id="jie2"></span></font>
            剩余应还总额:<font color="red"><span id="jie3"></span></font>
            <script type="text/html" id="barDemo">
               <button class="layui-btn-warm popup-link mr10" data-wh="800*600">个人质料</button>
               <button class="layui-btn-warm popup-link mr10" data-wh="800*600" onclick="func7()">线下催收</button>
            </script>
        </div>
        <div class="layui-tab-item">
            <div class="layui-inline">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-inline">
                    <input type="tel" name="c_loginname" id="c_loginname1" lay-verify="required|phone" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">借款标题</label>
                <div class="layui-input-inline">
                    <input type="tel" name="c_title" id="c_title1" lay-verify="required|phone" autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-inline">
                <label class="layui-form-label">催收记录</label>
                <div class="layui-input-inline">
                    <select name="c_record" id="c_record" lay-verify="required" lay-search="">
                        <option value="">全部</option>
                        <option value="1">无</option>
                        <option value="2">有</option>
                    </select>
                </div>
            </div>

            <div class="layui-inline">
                <div class="layui-input-inline">
                    <a class="layui-btn search_btn1" data-type="reload" >搜索</a>
                </div>
            </div>
            <div class="layui-inline">
                <div class="layui-input-inline">
                    <a class="layui-btn " data-type="reload" onclick="addRepayment2()">线上催收</a>
                </div>
            </div>

            <table class="layui-hide" id="huankuan2" lay-filter="demo"></table>
            <script type="text/html" id="barDemo1">
                <button class="layui-btn-warm popup-link mr10" data-wh="800*600">个人质料</button>
                <button class="layui-btn-warm popup-link mr10" data-wh="800*600" onclick="func8()">线下催收</button>
            </script>

            借款总金额:<font color="red"><span id="jie4"></span></font>
            本期应还总金额:<font color="red"><span id="jie5"></span></font>
            剩余应还总额:<font color="red"><span id="jie6"></span></font>
        </div>

        <div class="layui-tab-item">
            <div class="layui-inline">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-inline">
                    <input type="tel" name="c_loginname" id="c_loginname2" lay-verify="required|phone" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">借款标题</label>
                <div class="layui-input-inline">
                    <input type="tel" name="c_title" id="c_title2" lay-verify="required|phone" autocomplete="off" class="layui-input">
                </div>
            </div>


            <div class="layui-inline">
                <div class="layui-input-inline">
                    <a class="layui-btn search_btn2" data-type="reload" >搜索</a>
                </div>
            </div>
            <div class="layui-inline">
                <div class="layui-input-inline">
                    <a class="layui-btn " data-type="reload" onclick="addRepayment3()">线上催收</a>
                </div>
            </div>
            <script type="text/html" id="barDemo2">
                <button class="layui-btn-warm popup-link mr10" data-wh="800*600">个人质料</button>
                <button class="layui-btn-warm popup-link mr10" data-wh="800*600" onclick="func9()">线下催收</button>
                <button class="layui-btn-warm popup-link mr10" data-wh="800*600" lay-event="del" >拉黑</button>
            </script>
            <table class="layui-hide" id="huankuan3" lay-filter="demo"></table>
            借款总金额:<font color="red"><span id="jie7"></span></font>
            本期应还总金额:<font color="red"><span id="jie8"></span></font>
            剩余应还总额:<font color="red"><span id="jie9"></span></font>
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
            elem: '#c_daytime'
        });

        laydate.render({
            elem: '#c_daytime1'
        });
        //执行一个 table 实例
        var tableIns =  table.render({
            elem: '#huankuan1'
            ,method: 'post'
            ,url: '<%=request.getContextPath()%>/repayment/selectRepayment.do' //数据接口
            ,page: true //开启分页
            ,limit:2
            ,limits:[2,4,6,8]
            ,request: {
                pageName: 'start' //页码的参数名称，默认：page
                ,limitName: 'limit' //每页数据量的参数名，默认：limit
            }
            ,cols: [[ //表头
                 {checkbox: true, fixed: true, sort: true, fixed: 'left',type:'checkbox'}
                ,{field: 'c_id', title: '序号'/*,  sort: true, fixed: 'left'*/}
                ,{field: 'c_title', title: '借款标题'}
                ,{field: 'c_loginname', title: '用户名'}
                ,{field: 'c_jiemoney', title: '借款金额(元)'}
                ,{field: 'c_qishu', title: '期数'}
                ,{field: 'c_huanmoney', title: '本期应还金额(元)'}
                ,{field: 'c_shengmoney', title: '剩余应还总额(元)'}
                ,{field: 'c_day', title: '距离下次还款'}
                ,{field: 'c_daytime', title: '下一还款日', sort: true}
                ,{field:'center', title: '操作', width:143,toolbar:"#barDemo"}
            ]]
            ,page: true
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
        $(".search_btn").on("click", function() {

            tableIns.reload({
                page: {
                    curr: 1 //重新从第 1 页开始
                },
                where: {
                    c_loginname: $("#c_loginname").val(),
                    c_title: $("#c_title").val(),
                    c_daytime: $("#c_daytime").val(),
                    c_daytime: $("#c_daytime1").val()
                }
            });
        });
    });
    function func7() {
//页面层
        layer.open({
            type: 2,
            adin:2,
            btn:['返回','确定'],
            skin: 'layui-layer-rim', //加上边框
            area: ['550px', '550px'], //宽高
            content: "Repayment1.jsp", //调到新增页面
            yes: function(index, layero){
               $.ajax({
                   /*url:"<%=request.getContextPath()%>/xianxia/addXianXia.do",*/
                   type:"post",
                   data:$("#add_form").serialize(),
                   success:function(){

                   }
               });
                layer.close(index); //如果设定了yes回调，需进行手工关闭
            }
        });

    }
   function addRepayment1() {
       layer.open({
           type: 2,
           adin:2,
           btn:['返回','确定'],
           skin: 'layui-layer-rim', //加上边框
           area: ['450px', '450px'], //宽高
           content: "Repayment2.jsp", //调到新增页面
           yes: function(index, layero){
               $.ajax({
                   /*url:"<%=request.getContextPath()%>/xianxia/addXianXia.do",*/
                   type:"post",
                   data:$("#add_form").serialize(),
                   success:function(){

                   }
               });
               layer.close(index); //如果设定了yes回调，需进行手工关闭
           }
       });
   }
   $(function(){
       $.ajax({
             url: "<%=request.getContextPath() %>/repayment/queryAllMoney.do",
             type: "post",
             /*data:{id:$("#successAllMoney")},*/
              datatype:'json',
               success: function (data) {
               /*alert(data)*/
               $("#jie1").html(data);
            }
       });
   })
    $(function(){
        $.ajax({
            url: "<%=request.getContextPath() %>/repayment/queryAllMoney1.do",
            type: "post",
            /*data:{id:$("#successAllMoney")},*/
            datatype:'json',
            success: function (data) {
                /*alert(data)*/
                $("#jie2").html(data);
            }
        });
    })
    $(function(){
        $.ajax({
            url: "<%=request.getContextPath() %>/repayment/queryAllMoney2.do",
            type: "post",
            /*data:{id:$("#successAllMoney")},*/
            datatype:'json',
            success: function (data) {
                /*alert(data)*/
                $("#jie3").html(data);
            }
        });
    })
</script>
<script type="application/javascript">


        /* //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function(){
        var element = layui.element;

        //…
    });*/
    layui
        .config({});

        layui.use(['laydate', 'laypage', 'table', 'form'], function () {
            var laydate = layui.laydate //日期
                , laypage = layui.laypage //分页
                , table = layui.table //表格
                , form = layui.form


            //执行一个 table 实例
            var tableIns = table.render({
                elem: '#huankuan2'
                , method: 'post'
                , url: '<%=request.getContextPath()%>/repayment1/selectRepayment1.do' //数据接口
                , page: true //开启分页
                , limit: 2
                , limits: [2, 4, 6, 8]
                , request: {
                    pageName: 'start' //页码的参数名称，默认：page
                    , limitName: 'limit' //每页数据量的参数名，默认：limit
                }
                , cols: [[ //表头
                    {checkbox: true, fixed: true, sort: true, fixed: 'left',type:'checkbox'}
                    ,{field: 'c_id', title: '序号', sort: true, fixed: 'left', width:73}
                    , {field: 'c_title', title: '借款标题'}
                    , {field: 'c_loginname', title: '用户名'}
                    , {field: 'c_jiemoney', title: '借款金额(元)'}
                    , {field: 'c_qishu', title: '期数',width:63}
                    , {field: 'c_huanmoney', title: '本期应还金额(元)'}
                    , {field: 'c_shengmoney', title: '剩余应还总额(元)'}
                    , {field: 'c_overduecost', title: '逾期费用'}
                    , {field: 'c_yuqiday', title: '逾期天数'}
                    , {field: 'c_cuitime', title: '最近催收时间', sort: true}
                    ,{field: '', title: '操作', sort: true, width:143,toolbar:"#barDemo1"}
                ]]
            });

            //分页
            laypage.render({
                elem: 'pageDemo' //分页容器的id
                , skin: '#1E9FFF' //自定义选中色值
                , skip: true //开启跳页
                , jump: function (obj, first) {
                    if (!first) {
                        layer.msg('第' + obj.curr + '页');
                    }
                }
            });
            $(".search_btn1").on("click", function () {

                tableIns.reload({
                    page: {
                        curr: 1 //重新从第 1 页开始
                    },
                    where: {
                        c_loginname: $("#c_loginname1").val(),
                        c_title: $("#c_title1").val(),
                        c_record: $("#c_record").val(),

                    }
                });
            });
        });
        function func8() {
//页面层
            layer.open({
                type: 2,
                adin:2,
                btn:['返回','确定'],
                skin: 'layui-layer-rim', //加上边框
                area: ['450px', '450px'], //宽高
                content: "Repayment3.jsp", //调到新增页面
                yes: function(index, layero){
                    $.ajax({
                        /*url:"<%=request.getContextPath()%>/xianxia/addXianXia.do",*/
                        type:"post",
                        data:$("#add_form").serialize(),
                        success:function(){

                        }
                    });
                    layer.close(index); //如果设定了yes回调，需进行手工关闭
                }
            });

        }
        function addRepayment2() {
            layer.open({
                type: 2,
                adin:2,
                btn:['返回','确定'],
                skin: 'layui-layer-rim', //加上边框
                area: ['450px', '450px'], //宽高
                content: "Repayment4.jsp", //调到新增页面
                yes: function(index, layero){
                    $.ajax({
                        /*url:"<%=request.getContextPath()%>/xianxia/addXianXia.do",*/
                        type:"post",
                        data:$("#add_form").serialize(),
                        success:function(){

                        }
                    });
                    layer.close(index); //如果设定了yes回调，需进行手工关闭
                }
            });
        }
        $(function(){
            $.ajax({
                url: "<%=request.getContextPath() %>/repayment1/queryAllMoney.do",
                type: "post",
                /*data:{id:$("#successAllMoney")},*/
                datatype:'json',
                success: function (data) {
                    /*alert(data)*/
                    $("#jie4").html(data);
                }
            });
        })
        $(function(){
            $.ajax({
                url: "<%=request.getContextPath() %>/repayment1/queryAllMoney1.do",
                type: "post",
                /*data:{id:$("#successAllMoney")},*/
                datatype:'json',
                success: function (data) {
                    /*alert(data)*/
                    $("#jie5").html(data);
                }
            });
        })
        $(function(){
            $.ajax({
                url: "<%=request.getContextPath() %>/repayment1/queryAllMoney2.do",
                type: "post",
                /*data:{id:$("#successAllMoney")},*/
                datatype:'json',
                success: function (data) {
                    /*alert(data)*/
                    $("#jie6").html(data);
                }
            });
        })
</script>
<script type="application/javascript">


    /* //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
     layui.use('element', function(){
     var element = layui.element;

     //…
     });*/

    layui
        .config({

        });

    layui.use(['laydate', 'laypage', 'table', 'form'], function () {
        var laydate = layui.laydate //日期
            , laypage = layui.laypage //分页
            , table = layui.table //表格
            , form = layui.form


        //执行一个 table 实例
        var tableIns = table.render({
            elem: '#huankuan3'
            , method: 'post'
            , url: '<%=request.getContextPath()%>/repayment2/selectRepayment2.do' //数据接口
            , page: true //开启分页
            , limit: 2
            , limits: [2, 4, 6, 8]
            , request: {
                pageName: 'start' //页码的参数名称，默认：page
                , limitName: 'limit' //每页数据量的参数名，默认：limit
            }
            , cols: [[ //表头
                {checkbox: true, fixed: true, sort: true, fixed: 'left',type:'checkbox'}
                ,{field: 'c_id', title: '序号',width:63}
                , {field: 'c_title', title: '借款标题',width:93}
                , {field: 'c_loginname', title: '用户名',width:73}
                , {field: 'c_jiemoney', title: '借款金额(元)',width:113}
                , {field: 'c_qishu', title: '期数',width:63}
                , {field: 'c_huanmoney', title: '本期应还金额(元)',width:143}
                , {field: 'c_shengmoney', title: '剩余应还总额(元)',width:143}
                , {field: 'c_overduecost', title: '逾期费用',width:93}
                , {field: 'c_yuqiday', title: '逾期天数',width:93}
                , {field: 'c_cuitime', title: '最近催收时间', sort: true}
                ,{field: '', title: '操作', sort: true, width:193,toolbar:"#barDemo2"}
            ]]
        });

        //分页
        laypage.render({
            elem: 'pageDemo' //分页容器的id
            , skin: '#1E9FFF' //自定义选中色值
            , skip: true //开启跳页
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
                    c_loginname: $("#c_loginname2").val(),
                    c_title: $("#c_title2").val(),
                }
            });
        });
        table.on('tool(demo)', function(obj){
            var data = obj.data;
            if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){
                    //obj.del();
                  /*console.log(obj);
                     console.log(data);*/
                    layer.close(index);

                    $.ajax({
                        url: "<%=request.getContextPath()%>/repayment2/delRepayment.do",
                        type: "post",
                        data:{'id':data.c_id},

                        success: function(data){




                                //删除这一行
                                /*obj.del();*/
                                //关闭弹框
                               /* layer.close(index);*/
                               layer.msg("删除成功", {icon: 6});
                                layer.closeAll();
                                parent.location.reload();




                        },

                    error:function(){
                            alert(data);

                        },

                    });
                });
            }

        });
    });
    function func9() {
//页面层
        layer.open({
            type: 2,
            adin:2,
            btn:['返回','确定'],
            skin: 'layui-layer-rim', //加上边框
            area: ['450px', '450px'], //宽高
            content: "Repayment5.jsp", //调到新增页面
            yes: function(index, layero){
                $.ajax({
                    /*url:"<%=request.getContextPath()%>/xianxia/addXianXia.do",*/
                    type:"post",
                    data:$("#add_form").serialize(),
                    success:function(){

                    }
                });
                layer.close(index); //如果设定了yes回调，需进行手工关闭
            }
        });

    }
    function addRepayment3() {
        layer.open({
            type: 2,
            adin:2,
            btn:['返回','确定'],
            skin: 'layui-layer-rim', //加上边框
            area: ['450px', '450px'], //宽高
            content: "Repayment6.jsp", //调到新增页面
            yes: function(index, layero){
                $.ajax({
                    /*url:"<%=request.getContextPath()%>/xianxia/addXianXia.do",*/
                    type:"post",
                    data:$("#add_form").serialize(),
                    success:function(){

                    }
                });
                layer.close(index); //如果设定了yes回调，需进行手工关闭
            }
        });
    }
    $(function(){
        $.ajax({
            url: "<%=request.getContextPath() %>/repayment2/queryAllMoney.do",
            type: "post",
            /*data:{id:$("#successAllMoney")},*/
            datatype:'json',
            success: function (data) {
                /*alert(data)*/
                $("#jie7").html(data);
            }
        });
    })
    $(function(){
        $.ajax({
            url: "<%=request.getContextPath() %>/repayment2/queryAllMoney1.do",
            type: "post",
            /*data:{id:$("#successAllMoney")},*/
            datatype:'json',
            success: function (data) {
                /*alert(data)*/
                $("#jie8").html(data);
            }
        });
    })
    $(function(){
        $.ajax({
            url: "<%=request.getContextPath() %>/repayment2/queryAllMoney2.do",
            type: "post",
            /*data:{id:$("#successAllMoney")},*/
            datatype:'json',
            success: function (data) {
                /*alert(data)*/
                $("#jie9").html(data);
            }
        });
    })
</script>
</body>
</html>
