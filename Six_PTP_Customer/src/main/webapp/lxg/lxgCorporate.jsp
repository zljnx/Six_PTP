<%--
  Created by IntelliJ IDEA.
  User: 吕旭刚
  Date: 2018/5/21
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/layui/layui.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/layui/css/layui.css">
<style>
    body{margin: 10px;}
    .demo-carousel{height: 200px; line-height: 200px; text-align: center;}
</style>

<body>
<form class="layui-form">
    <blockquote class="layui-elem-quote quoteBox">
        <form class="layui-form">
            <div class="layui-inline">
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" id="loginname"  placeholder="请输入机构账号" />
                </div>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" id="userphone"  placeholder="请输入机构名称" />
                </div>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" id="userphone11"  placeholder="请输入联系人名称" />
                </div>

                <a class="layui-btn search_btn" data-type="reload">搜索</a>
            </div>
        </form>
    </blockquote>
</form>

<table class="layui-hide" id="lxgid" lay-filter="demo"></table></div>
<script type="application/javascript">

    layui.config({
    });

    layui.use(['laydate', 'laypage',  'table','form'], function() {
        var laydate = layui.laydate //日期
            , laypage = layui.laypage //分页
            , table = layui.table //表格
            , form = layui.form


        lay('.test-item').each(function () {
            laydate.render({
                elem: this
                , trigger: 'click'
            });
        });
        //执行一个 table 实例
        var tableIns =  table.render({
            elem: '#lxgid'
            ,method: 'post' ,
            url: '<%=request.getContextPath()%>/lxg/queryCorporate.do' //数据接口
            ,page: true //开启分页
            ,limit:5
            ,limits:[5,10,15,20]
            ,id: 'tzz'
            ,request: {
                pageName: 'start', //页码的参数名称，默认：page
                limitName: 'limit', //每页数据量的参数名，默认：limit
                 /*debtManagement:$("#touzizhong").serialize()
                 investor:  $("#investor").val(),
                 Borrowingtitle: $("#Borrowingtitle").val(),
                 investtime: $("#investtime").val(),
                 investtime: $("#settletime").val(),
                 investortype: $("#investortype").val()*/

            }
            ,cols: [[ //表头
                {field: 'institution_id', title: '序号',  sort: true, fixed: 'left'}
                ,{field: 'institution_account', title: '机构账号'}
                ,{field: 'institution_name', title: '机构名称'}
                ,{field: 'business_license', title: '营业执照'}
                ,{field: 'contact_name', title: '联系人姓名'}
                ,{field: 'contact_number', title: '联系人电话'}
                ,{field: 'registration_time', title: '注册时间',sort: true}
                ,{field: 'state_number', title: '状态',
                    templet: function(a) {
                        if(a.state_number == 1){
                            return "启用";
                        }
                        if(a.state_number == 2) {
                            return "未启用";
                        }
                    }
                }
                ,{field: 'allowed_invest', title: '是否允许投资',
                    templet: function(k) {
                        if(k.allowed_invest == 1){
                            return "是";
                        }
                        if(k.allowed_invest == 2) {
                            return "否";
                        }
                    }
                }
                ,{field: 'allowed_distressed', title: '是否允许购买不良债权',
                    templet: function(d) {
                        if(d.allowed_distressed == 1){
                            return "是";
                        }
                        if(d.allowed_distressed == 2) {
                            return "否";
                        }
                    }
                }
                ,{field:' ', title:'操作', fixed: 'right', width:178, align:'center', toolbar: '#buttonDemo'}
            ]]
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
        /*$(".search_btn").on("click", function() {
            tableIns.reload({
                page: {
                    curr: 1 //重新从第 1 页开始
                }
                /!*where: {

                    debtManagement:$("#touzizhong").serialize()*!/
                    investor:  $("#investor").val(),
                    Borrowingtitle: $("#Borrowingtitle").val(),
                    investtime: $("#investtime").val(),
                    settletime: $("#settletime").val(),
                    investortype: $("#investortype").val()

                    /!*investor:  $("#investor").val(),
                    Borrowingtitle: $("#Borrowingtitle").val(),
                    investtime: $("#investtime").val(),
                    settletime: $("#settletime").val(),
                    investortype: $("#investortype").val()
                }*!/
            });
        });*/
    });
    

</script>
<script type="text/html" id="buttonDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
</body>
</html>
