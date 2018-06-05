<%--
  Created by IntelliJ IDEA.
  User: 吕旭刚
  Date: 2018/5/21
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!--layui-->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/layui/layui.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/layui/css/layui.css">

<html>
<head>
    <title>Title</title>
</head>


<style>

    body{margin: 10px;}
    .demo-carousel{height: 200px; line-height: 200px; text-align: center;}
</style>

<body>
<table class="layui-hide" id="lxgid" lay-filter="demo"></table>

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

            }
            ,cols: [[ //表头
                {field: 'institution_id', title: '序号',  sort: true, fixed: 'left'}
                ,{field: 'institution_account', title: '机构账号'}
                ,{field: 'institution_name', title: '机构名称'}
                ,{field: 'business_license', title: '营业执照'}
                ,{field: 'contact_name', title: '联系人姓名'}

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
                        if(k.allowed_invest == 0){
                            return "是";
                        }
                        if(k.allowed_invest == 1) {
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
        table.on('tool(demo)', function(obj){
            var data = obj.data;
            if(obj.event === 'lxgView'){
                /*layer.msg('ID：'+ data.id + ' 的查看操作');*/
                layer.open({
                    area : [ '800px', '600px' ],
                    title : "信息展示",
                    type : 2,
                    anim: 34,
                    content : "<%=request.getContextPath()%>/lxg/queryCorporateView.do?institution_id="+data.institution_id,//页面自定义
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
            }else if(obj.event === 'lxgDel'){
                layer.confirm('确认删除', function(index){
                    obj.del();
                    layer.close(index);
                });
            }
        });
    });
</script>
<script type="text/html" id="buttonDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="lxgView">查看</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="lxgDel">删除</a>
</script>

</body>
</html>
