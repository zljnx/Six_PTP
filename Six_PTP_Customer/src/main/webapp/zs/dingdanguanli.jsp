<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/6/1
  Time: 11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/layui/layui.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/assets/area.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/layui/css/layui.css">
<body>
<div class="layui-col-md12">
    <div class="layui-card">
        <div class="layui-card-header">订单管理</div>
        <div class="layui-card-body">
            <form class="layui-form" id="" method="post" style="display:inline">
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">订单ID：</label>
                        <div class="layui-input-inline">
                            <input type="tel" id="ddid" name="ddid" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">用户名：</label>
                        <div class="layui-input-inline">
                            <input type="tel" id="loginname1111" name="loginname" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">状态</label>
                        <div class="layui-input-inline">
                            <select id="ddtype" name="ddtype" >
                            </select>
                        </div>
                    </div>

                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">创建时间</label>
                        <div class="layui-input-inline" >
                            <input type="text" id="creationtime" name="creationtime" class="layui-input test-item"  placeholder="年-月-日" readonly>
                        </div>
                        <div class="layui-form-mid">-</div>
                        <div class="layui-input-inline" >
                            <input type="text" id="submissiontime" name="submissiontime" class="layui-input test-item"  placeholder="年-月-日" readonly>
                        </div>
                    </div>

                    <div class="layui-inline">
                        <div class="layui-input-inline">
                            <a class="layui-btn search_btn" data-type="reload" id="dingdan111">搜索</a>
                            <button type="reset" class="layui-btn layui-btn-primary" >重置</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>


<table class="layui-hide" id="dingdanguanli" lay-filter="demo" ></table>

<script type="application/javascript">
     $(function(){
         $.ajax({
             url:"<%=request.getContextPath()%>/order/ddtype.do",
             type:"post",
             success:function(data){
                var option = "<option value=''>请选择</option>";
                for(var i=0;i<data.length;i++){
                    option+="<option value='"+data[i].ddid+"'>"+data[i].dingdanleixing+"</option>"
                }
                $("#ddtype").html(option);
             }
         })
     })


    layui.config({
    });
    //layui需要的插件
    layui.use(['laydate', 'laypage', 'layer', 'table','form','element'], function() {
        var laydate = layui.laydate //日期
            , laypage = layui.laypage //分页
            , table = layui.table //表格
            , form = layui.form//表单
            , element = layui.element//元素操作
            , layer = layui.layer;//弹出层

        //日期格式插件
        lay('.test-item').each(function(){
            laydate.render({
                elem: this
                ,type: 'datetime'
                ,trigger: 'click'
            });
        });

            //  表格
        var tableIns =  table.render({
            elem: '#dingdanguanli'
            ,method: 'post' ,
            url: '<%=request.getContextPath()%>/order/orderList.do' //数据接口
            ,page: true //开启分页
            ,limit:5
            ,limits:[5,10,15,20]
            ,id: 'dingdan'
            ,request: {
                pageName: 'start', //页码的参数名称，默认：page
                limitName: 'limit', //每页数据量的参数名，默认：limit
            }
            ,cols: [[ //表头
                {field: 'ddid', title: '订单ID',  sort: true}
                ,{field: 'loginname', title: '用户名'}
                ,{field: 'dingdanleixing', title: '类型'}
                ,{field: 'money', title: '金额(元)'}
                ,{field: 'ddstatus', title: '状态',
                    templet: function(d) {
                        if (d.ddstatus == 1) {
                            return "成功";
                        }
                        if (d.ddstatus == 2) {
                            return "失败";
                        }
                    }
                }
                ,{field: 'creationtime', title: '创建时间',width:170}
                ,{field: 'submissiontime', title: '提交时间',width:170}
                ,{field: 'finishtime', title: '完成时间',width:170}
                ,{field: 'ordersource', title: '订单来源',
                    templet: function(d) {
                        if (d.ordersource == 1) {
                            return "后台";
                        }
                        if (d.ordersource == 2) {
                            return "用户";
                        }
                    }
                }
            ]]
        });

        $("#dingdan111").on("click", function() {
            tableIns.reload({
                page: {
                    curr: 1 //重新从第 1 页开始
                },
                where: {
                    ddid:  $("#ddid").val(),
                    loginname: $("#loginname1111").val(),
                    ddtype: $("#ddtype").val(),
                    creationtime: $("#creationtime").val(),
                    submissiontime: $("#submissiontime").val()
                }
            });
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







    })

</script>
</body>
</html>
