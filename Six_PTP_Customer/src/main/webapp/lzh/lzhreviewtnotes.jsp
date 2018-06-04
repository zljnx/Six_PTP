<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2018/5/27
  Time: 19:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<input type="hidden" id="corporate_id" name="corporate_id" value="${corporateInfo.corporate_id}">
<table class="layui-hide" id="LAY_table_reviewtnotesinfo" style="width: 450px" lay-filter="reviewtnotesdemo"></table>
<script>
    layui.use(['form', 'layer', 'laydate', 'table'], function() {
        var form = layui.form,
            layer = parent.layer === undefined ? layui.layer : top.layer,
            table = layui.table,
            laydate = layui.laydate,
            corporate_id = $("#corporate_id").val();
        var tableIns = table.render({
            method: 'post',
            elem: '#LAY_table_reviewtnotesinfo',
            url: '<%=request.getContextPath()%>/lzhCorporateInfo/queryReviewtnotesInfo.do?corporate_id=' + corporate_id,
            page: true,
            cellMinWidth: 95,
            height: "full-30",
            //height: "full-125",
            id: 'reviewtinfoReload',
            request: {
                pageName: 'start' //页码的参数名称，默认：page
                ,
                limitName: 'number' //每页数据量的参数名，默认：limit
            },
            limit: 10,
            limits: [10, 15, 20, 25],
            cols: [[
                {
                    field: 'reviewid',
                    title: 'ID',
                    sort: true,
                    width: 70,
                    fixed: true,
                    align: "center"
                }, {
                    field: 'reviewtype',
                    title: '审核类型',
                    sort: true,
                    align: "center",
                    templet: function(d) {
                        if(d.reviewtype == 0) {
                            return "内部审核";
                        }
                        if(d.reviewtype == 1) {
                            return "外部审核";
                        }
                    }
                }
                , {
                    field: 'necertification',
                    title: '必要认证',
                    sort: true,
                    align: "center",
                    templet: function(d) {
                        if(d.necertification == 0) {
                            return "是";
                        }
                        if(d.necertification == 1) {
                            return "否";
                        }
                    }
                }
                , {
                    field: 'certificationcount',
                    title: '认证次数',
                    sort: true,
                    align: "center"
                }
                , {
                    field: 'certificationdate',
                    title: '认证时间',
                    sort: true,
                    align: "center"
                }
                , {
                    field: ' ',
                    title: '操作',
                    fixed: 'right',
                    sort: true,
                    align: 'center',
                    toolbar: '#reviewtnotesbuttonDemo'
                }
            ]]
        });
        //监听工具条
        table.on('tool(reviewtnotesdemo)', function (obj) {
            var data = obj.data;
            alert(data.reviewid)
            if (obj.event === 'del') {
                layer.confirm('确认删除', function (index) {
                    $.ajax({
                        url:"<%=request.getContextPath()%>/lzhCorporateInfo/deleteReviewtnotes.do?reviewid="+data.reviewid,
                        type:"post",
                        success:function () {
                            tableIns.reload();
                            layer.msg('删除成功', {icon: 1});
                        }
                    })
                    layer.close(index);
                });
            }
        })
    })
</script>
<script type="text/html" id="reviewtnotesbuttonDemo">
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除记录</a>
</script>
</body>
</html>
