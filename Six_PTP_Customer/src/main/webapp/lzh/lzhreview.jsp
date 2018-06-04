<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2018/5/23
  Time: 20:04
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
    <form class="layui-form layui-form-pane" method="post" id="reviewform">
        <input type="hidden" name="id" value="${userInfo.id}">
        <input type="hidden" id="reviewid" name="reviewid" value="${userInfo.reviewid}">
        <input type="hidden" name="reviewtype" value="${userInfo.reviewtype}">
        <input type="hidden" name="necertification" value="${userInfo.necertification}">
        <input type="hidden" name="certificationcount" value="${userInfo.certificationcount}">
        <input type="hidden" name="certificationstatus" value="${userInfo.certificationstatus}">
        <input type="hidden" name="certificationdate" value="<fmt:formatDate value="${userInfo.certificationdate}" pattern="yyyy-MM-dd HH:mm:ss"/>">
    </form>
    <table class="layui-hide" id="LAY_table_reviewinfo" lay-filter="reviewdemo"></table>
    <script>
        layui.use(['form', 'layer', 'laydate', 'table'], function() {
            var form = layui.form,
                layer = parent.layer === undefined ? layui.layer : top.layer,
                table = layui.table,
                laydate = layui.laydate,
                reviewid = $("#reviewid").val();
            var tableIns = table.render({
                method: 'post',
                elem: '#LAY_table_reviewinfo',
                url: '<%=request.getContextPath()%>/lzhUserInfo/queryReviewInfo.do?reviewid=' + reviewid,
                page: false,
                cellMinWidth: 95,
                //height: "full-125",
                id: 'reviewinfoReload',
                request: {
                    pageName: 'start' //页码的参数名称，默认：page
                    ,
                    limitName: 'number' //每页数据量的参数名，默认：limit
                },
                limit: 5,
                limits: [5, 10, 15, 20],
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
                        field: 'certificationstatus',
                        title: '认证状态',
                        sort: true,
                        align: "center",
                        templet: function(d) {
                            if(d.certificationstatus == 0) {
                                return "已验证";
                            }
                            if(d.certificationstatus == 1) {
                                return "未验证";
                            }
                        }
                    }
                    , {
                        field: 'certificationdate',
                        title: '认证时间',
                        sort: true,
                        width:160,
                        align: "center"
                    }
                    , {
                        field: ' ',
                        title: '操作',
                        fixed: 'right',
                        sort: true,
                        align: 'center',
                        width:120,
                        toolbar: '#reviewbuttonDemo'
                    }
                ]]
            });
            //监听工具条
            table.on('tool(reviewdemo)', function (obj) {
                var data = obj.data;
                if (obj.event === 'edit') {
                    var formdata=$("#reviewform").serialize();
                    $.ajax({
                        url:"<%=request.getContextPath()%>/lzhUserInfo/updateAndsaveReview.do",
                        type:"post",
                        data:formdata,
                        success:function (flag) {
                            if (flag == 'success') {
                                tableIns.reload();
                                layer.msg('验证通过', {icon: 1});
                            } else if (flag == 'error') {
                                layer.msg('该用户已通过验证', {icon: 2});
                            }
                        }
                    })
                }
            })
        })
    </script>
    <script type="text/html" id="reviewbuttonDemo">
        <a class="layui-btn layui-btn-xs" lay-event="edit">通过</a>
    </script>
</body>
</html>
