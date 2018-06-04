<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2018/5/24
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<script src="/jquery/jquery.min.js"></script>
<script src="/js/layui/layui.js"></script>
<link rel="stylesheet" href="/js/layui/css/layui.css" media="all" />
<head>
    <title>Title</title>
</head>
<body>
<form class="layui-form">
    <blockquote class="layui-elem-quote quoteBox">
        <form class="layui-form">
            <div class="layui-inline">
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" id="corporate_name"  placeholder="请输入搜索的企业名称" />
                </div>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" id="person_phone_number"  placeholder="请输入搜索的联系人电话" />
                </div>
                <%--<div class="layui-input-inline">
                    <select name="scenic_id" class="scenic_id">
                        <option value="">请选择资讯类型</option>
                        <option value="1">旅游资讯</option>
                        <option value="2">旅游攻略</option>
                        <option value="3">旅游服务</option>
                        <option value="4">美文美图</option>
                    </select>
                </div>--%>
                <a class="layui-btn search_btn" data-type="reload">搜索</a>
            </div>
            <div class="layui-inline">
                <a class="layui-btn layui-btn-normal addcorproate_btn">添加企业</a>
            </div>
            <div class="layui-inline">
                <a class="layui-btn layui-btn-danger layui-btn-normal delAll_btn">批量删除</a>
            </div>
            <div class="layui-inline" style="width: 550px">
            </div>
            <div class="layui-inline">
                <a class="layui-btn layui-btn-radius layui-btn-normal" id="downAll_btn">POI导出</a>
            </div>
        </form>
    </blockquote>
</form>
<table class="layui-hide" id="LAY_table_corproateinfo" lay-filter="demo"></table>
<script>
    layui.use(['form', 'layer', 'laydate', 'table'], function() {
        var form = layui.form,
            layer = parent.layer === undefined ? layui.layer : top.layer,
            table = layui.table,
            laydate = layui.laydate;
        //监听表格复选框选择
        table.on('checkbox(demo)', function(obj){
            console.log(obj)
        });
        var tableIns =table.render({
            method: 'post',
            elem: '#LAY_table_corproateinfo',
            url: '<%=request.getContextPath()%>/lzhCorporateInfo/queryCorporateInfo.do',
            page: true,
            cellMinWidth: 95,
            height: "full-125",
            id: 'corporateinfoReload',
            request: {
                pageName: 'start' //页码的参数名称，默认：page
                ,
                limitName: 'number' //每页数据量的参数名，默认：limit
            },
            limit: 10,
            limits: [10, 15, 20, 25],
            cols: [[
                {checkbox: true, fixed: true}
                ,{field:'corporate_id', title: 'ID', sort: true, width:70, fixed: true, align: "center"}
                ,{field:'corporate_account', title: '企业账号', sort: true, width:100, align: "center"}
                ,{field:'corporate_name', title: '企业名称', sort: true, align: "center"}
                ,{field:'contact_name', title: '联系人姓名', sort: true, align: "center"}
                ,{field:'person_phone_number', title: '联系人电话', sort: true, align: "center"}
                ,{field:'social_credit', title: '社会信用代码', sort: true, align: "center"}
                ,
                {
                    field:'allowed_invest',
                    title: '是否允许投资',
                    sort: true,
                    align: "center",
                    templet: function(d) {
                        if(d.allowed_invest == 0) {
                            return "是";
                        }
                        if(d.allowed_invest == 1) {
                            return "否";
                        }
                    }
                }
                ,{
                    field:'status',
                    title: '状态',
                    sort: true,
                    align: "center",
                    templet: function(d) {
                        if(d.status == 0) {
                            return "已启用";
                        }
                        if(d.status == 1) {
                            return "未启用";
                        }
                    }
                }
                ,{field:'registration_time', title: '注册时间', sort: true, width:160, align: "center"}
                ,{field:' ', title:'操作', fixed: 'right', width:280, align:'center', toolbar: '#buttonDemo'}
            ]]
        });
        //搜索
        $(".search_btn").on("click", function() {
            var corporate_name = $('#corporate_name').val();
            var person_phone_number = $('#person_phone_number').val();
            table.reload("corporateinfoReload", {
                page: {
                    curr: 1 //重新从第 1 页开始
                },
                where: {
                    corporate_name: corporate_name, //搜索的关键字
                    person_phone_number : person_phone_number,
                }
            });
        });

        //监听工具条
        table.on('tool(demo)', function(obj){
            var data = obj.data;
            if(obj.event === 'detail'){
                /*layer.msg('ID：'+ data.id + ' 的查看操作');*/
                alert(data.corporate_id)
                layer.open({
                    area : [ '800px', '600px' ],
                    title : "信息展示",
                    type : 2,
                    anim: 6,
                    content : "<%=request.getContextPath()%>/lzhCorporateInfo/queryCorporateView.do?corporate_id="+data.corporate_id,//页面自定义
                    btn: ['返回']
                    ,yes: function(index, layero){
                        layer.close(index)
                        layer.msg('已返回', {icon: 6});
                    },
                    cancel: function(index, layero){
                        layer.close(index)
                        layer.msg('已关闭');
                    }
                });
            } else if(obj.event === 'del'){
                layer.confirm('确认删除', function(index){
                    obj.del();
                    layer.close(index);
                });
            } else if(obj.event === 'edit'){
                /*layer.alert('编辑行：<br>'+ JSON.stringify(data))*/
                layer.open({
                    area : [ '800px', '600px' ],
                    title : "信息编辑",
                    type : 2,
                    anim: 6,
                    /*closeBtn: 3,*/
                    content : "<%=request.getContextPath()%>/lzhCorporateInfo/queryCorporateViewt.do?corporate_id="+data.corporate_id,//页面自定义
                    btn: ['提交','返回']
                    ,yes: function(index, layero){
                        var form =layer.getChildFrame('form',index);
                        var data=form.serialize();
                        alert(data)
                        console.log(data)
                        $.ajax({
                            url:"<%=request.getContextPath()%>/lzhCorporateInfo/updateCorporateInfo.do",
                            type:"post",
                            data:data,
                            success:function () {
                                tableIns.reload();
                                layer.close(index);
                                layer.msg('提交成功', {icon: 1});
                            }
                        })
                    }
                    ,btn2:function(index, layero){
                        layer.close(index)
                        layer.msg('已返回');
                    },
                    cancel: function(index, layero){
                        layer.close(index)
                        layer.msg('已关闭');
                    }
                });
            }else if(obj.event === 'review'){
                layer.open({
                    area : [ '800px', '200px' ],
                    title : "审核",
                    type : 2,//1:jsp页面或者字符串  2:请求
                    anim: 6,
                    content : "<%=request.getContextPath()%>/lzhCorporateInfo/queryReviewtSize.do?corporate_id="+data.corporate_id,//页面自定义
                    btn: ['返回']
                    ,yes: function(index, layero){
                        layer.close(index)
                        layer.msg('已返回', {icon: 6});
                    },
                    cancel: function(index, layero){
                        layer.close(index)
                        layer.msg('已关闭');
                    }
                });
            }else if(obj.event === 'reviewnotes'){
                layer.open({
                    area : [ '800px', '600px' ],
                    title : "审核记录",
                    type : 2,
                    anim: 6,
                    content : "<%=request.getContextPath()%>/lzhCorporateInfo/queryReviewtSizeTwo.do?corporate_id="+data.corporate_id,
                    btn: ['返回']
                    ,yes: function(index, layero){
                        layer.close(index)
                        layer.msg('已返回', {icon: 6});
                    },
                    cancel: function(index, layero){
                        layer.close(index)
                        layer.msg('已关闭');
                    }
                });
            }
        });
        //批量删除
        $(".delAll_btn").click(function() {
            var checkStatus = table.checkStatus('corporateinfoReload'),
                data = checkStatus.data,
                ids = [];
            if(data.length > 0) {
                for(var i in data) {
                    ids.push(data[i].corporate_id);
                }
                alert(ids)
                layer.confirm('确定删除选中的记录？', {
                    icon: 3,
                    title: '警告'
                }, function(index) {
                    $.ajax({
                        url:"<%=request.getContextPath()%>/lzhCorporateInfo/delAllCorporateInfo.do?ids="+ids,
                        type:"post",
                        success:function () {
                            layer.msg('删除成功', {icon: 1});
                            tableIns.reload();
                            layer.close(index);
                        }
                    })
                });
            } else {
                layer.msg("请选择需要删除的记录");
            }
        });
        $(".addcorproate_btn").click(function() {
            layer.open({
                area : [ '800px', '600px' ],
                title : "添加企业",
                type : 2,
                anim: 6,
                content : "lzhadduserinfo.jsp",
                btn: ['提交','返回']
                ,yes:function(index, layero){
                    var form =layer.getChildFrame('form',index);
                    var data=form.serialize();
                    alert(data)
                    console.log(data)

                },btn2: function(index, layero){
                    layer.close(index)
                    layer.msg('已返回', {icon: 6});
                },
                cancel: function(index, layero){
                    layer.close(index)
                    layer.msg('已关闭');
                }
            });
        });
    });
    $("#downAll_btn").on("click", function() {
        location.href="<%=request.getContextPath()%>/lzhCorporateInfo/downAllCorporateInfo.do";
        layer.msg('导出成功', {icon: 1});
    })
</script>

<script type="text/html" id="buttonDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
    <a class="layui-btn layui-btn-warm layui-btn-xs" lay-event="review">审核</a>
    <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="reviewnotes">审核记录</a>
</script>
</body>
</html>
