<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/5/22
  Time: 9:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/layui/layui.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/My97/My97DatePicker/WdatePicker.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/layui/css/layui.css">

<body>
<div class="layui-col-md12">
    <div class="layui-card">
        <div class="layui-card-header">借款管理</div>
        <div class="layui-card-body">
            <form class="layui-form" id="" method="post" style="display:inline">
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">标的ID</label>
                        <div class="layui-input-inline">
                            <input type="tel" id="jksignid" name="jksignid" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">产品名称</label>
                        <div class="layui-input-inline" style="width:100px">
                            <select id="productname" name="productname" lay-search="">
                                <option value="">请选择</option>
                                <option value="质企贷">质企贷</option>
                                <option value="购房贷款">购房贷款</option>
                                <option value="抵押贷款">抵押贷款</option>
                                <option value="委托标">委托标</option>
                            </select>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">借款标题</label>
                        <div class="layui-input-inline">
                            <input type="text" id="jkBorrowingtitle" name="jkBorrowingtitle" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">借款账户</label>
                        <div class="layui-input-inline">
                            <input type="text" id="loginnameo" name="loginname" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">处理时间</label>
                        <div class="layui-input-inline" >
                            <input type="text" id="disposetimeo" name="disposetime" class="layui-input test-item"  placeholder="年-月-日" readonly>
                        </div>
                        <div class="layui-form-mid">-</div>
                        <div class="layui-input-inline" >
                            <input type="text" id="endtimeo" name="endtime" class="layui-input test-item"  placeholder="年-月-日" readonly>
                        </div>
                    </div>
                    <div class="layui-inline" >
                        <label class="layui-form-label">标的属性</label>
                        <div class="layui-input-block" style="width:100px">
                            <select id="biaoproperty" name="biaoproperty" lay-search="">
                                <option value="">请选择</option>
                                <option value="担保标">担保标</option>
                                <option value="抵押标">抵押标</option>
                                <option value="实地标">实地标</option>
                                <option value="信用标">信用标</option>
                            </select>
                        </div>
                    </div>
                   <%-- <div class="layui-inline">
                        <label class="layui-form-label">借款类型</label>
                        <div class="layui-input-inline" style="width:100px">
                            <select id="borrowingtype" name="borrowingtype" lay-search="">
                                <option value="">请选择</option>
                                <option value="1">layer</option>
                                <option value="2">form</option>
                                <option value="3">layim</option>
                            </select>
                        </div>
                    </div>--%>
                    <div class="layui-inline">
                        <label class="layui-form-label">账户类型</label>
                        <div class="layui-input-inline" style="width:100px">
                            <select id="accounttype" name="accounttype" lay-search="">
                                <option value="">请选择</option>
                                <option value="个人">个人</option>
                                <option value="企业">企业</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline" >
                        <label class="layui-form-label">状态</label>
                        <div class="layui-input-block" style="width:100px">
                            <select id="jkstatus" name="jkstatus" lay-search="">
                                <option value="">请选择</option>
                                <option value="申请中">申请中</option>
                                <option value="待审核">待审核</option>
                                <option value="待发布">待发布</option>
                                <option value="预发布">预发布</option>
                                <option value="投资中">投资中</option>
                                <option value="待放款">待放款</option>
                                <option value="还款中">还款中</option>
                                <option value="已结清">已结清</option>
                                <option value="已垫付">已垫付</option>
                                <option value="已流标">已流标</option>
                                <option value="已作废">已作废</option>
                                <option value="已转让">已转让</option>
                            </select>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">标识类型</label>
                        <div class="layui-input-inline" style="width:100px">
                            <select id="identifytype" name="identifytype" lay-search="">
                                <option value="">请选择</option>
                                <option value="未标识">未标识</option>
                                <option value="新手标">新手标</option>
                                <option value="奖励标">奖励标</option>
                            </select>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">来源</label>
                        <div class="layui-input-inline" style="width:100px">
                            <select id="source" name="source" lay-search="">
                                <option value="">请选择</option>
                                <option value="信用贷">信用贷</option>
                                <option value="担保贷">担保贷</option>
                                <option value="后台新增">后台新增</option>
                            </select>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <div class="layui-input-inline">
                            <a class="layui-btn search_btn" data-type="reload" id="jiekuan">搜索</a>
                            <button type="reset" class="layui-btn " id="xinzengxinkuan">新增</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<table class="layui-hide" id="jiekuanguanli" lay-filter="demo" ></table>
<script type="text/html" id="jiekuan">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="del">查看</a>
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="del">修改</a>
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="del" >审核</a>
    <a class="layui-btn layui-btn-disabled layui-btn-xs" lay-event="del" >发布</a>
    <a class="layui-btn layui-btn-disabled layui-btn-xs" lay-event="del" >预发布</a>
    <a class="layui-btn layui-btn-disabled layui-btn-xs" lay-event="del" >作废</a>
    <a class="layui-btn layui-btn-disabled layui-btn-xs" lay-event="del" >推荐</a>
    <a class="layui-btn layui-btn-disabled layui-btn-xs" lay-event="del" >动态管理</a>
</script>

<script type="application/javascript">
    layui.config({
    });
    //layui需要的插件
    layui.use(['laydate', 'laypage',  'table','form','element'], function() {
        var laydate = layui.laydate //日期
            , laypage = layui.laypage //分页
            , table = layui.table //表格
            , form = layui.form//表单
            , element = layui.element//元素操作


        //表格
        var tableIns =  table.render({
            elem: '#jiekuanguanli'
            ,method: 'post'
            ,url: '<%=request.getContextPath()%>/loans/loanslist.do' //数据接口
            ,page: true //开启分页
            ,limit:5
            ,limits:[5,10,15,20]
            ,id: 'jiekuanguanli'
            ,request: {
                pageName: 'start', //页码的参数名称，默认：page
                limitName: 'limit', //每页数据量的参数名，默认：limit
            }
            ,cols: [[ //表头
                {field: 'jkid', title: '序号',width:65,fixed: 'left', sort: true}
                ,{field: 'jksignid', title: '标的ID',width:100}
                ,{field: 'productname', title: '产品名称',width:88}
                ,{field: 'jkBorrowingtitle', title: '借款标题',width:100}
                ,{field: 'loginname', title: '借款账户',width:100}
                ,{field: 'jkAmount', title: '借款金额',width:88}
                ,{field: 'investmentamount', title: '投资金额',width:88}
                ,{field: 'jkapr', title: '年利率化',width:88
                    ,templet: function(d){
                        return ''+ d.jkapr +'%'
                }}
                ,{field: 'jkdeadline', title: '期限',width:68}
                ,{field: 'disposetime', title: '处理时间', width:170}
                ,{field: 'refundtype', title: '还款方式', width:146}
                ,{field: 'jkstatus', title: '状态', width:68}
                ,{fixed: 'right',title: '操作' , width:450,
                    templet: function(d) {
                        if(d.jkstatus == "申请中"){
                            return " <a class=\"layui-btn layui-btn-primary layui-btn-xs\" lay-event=\"chakan\">查看</a>\n" +
                                "    <a class=\"layui-btn layui-btn-primary layui-btn-xs\" lay-event=\"xiugai\">修改</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"shenhe\" >审核</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"fabu\" >发布</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"yufabu\" >预发布</a>\n" +
                                "    <a class=\"layui-btn layui-btn-primary layui-btn-xs\" lay-event=\"zuofei\" >作废</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"tuijian\" >推荐</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"guanli\" >动态管理</a>";
                        }
                        if(d.jkstatus == "待审核"){
                            return " <a class=\"layui-btn layui-btn-primary layui-btn-xs\" lay-event=\"chakan\">查看</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"xiugai\">修改</a>\n" +
                                "    <a class=\"layui-btn layui-btn-primary layui-btn-xs\" lay-event=\"shenhe\" >审核</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"fabu\" >发布</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"yufabu\" >预发布</a>\n" +
                                "    <a class=\"layui-btn layui-btn-primary layui-btn-xs\" lay-event=\"zuofei\" >作废</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"tuijian\" >推荐</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"guanli\" >动态管理</a>";
                        }
                        if(d.jkstatus == "待发布"){
                            return " <a class=\"layui-btn layui-btn-primary layui-btn-xs\" lay-event=\"chakan\">查看</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"xiugai\">修改</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"shenhe\" >审核</a>\n" +
                                "    <a class=\"layui-btn layui-btn-primary layui-btn-xs\" lay-event=\"fabu\" >发布</a>\n" +
                                "    <a class=\"layui-btn layui-btn-primary layui-btn-xs\" lay-event=\"yufabu\" >预发布</a>\n" +
                                "    <a class=\"layui-btn layui-btn-primary layui-btn-xs\" lay-event=\"zuofei\" >作废</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"tuijian\" >推荐</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"guanli\" >动态管理</a>";
                        }
                        if(d.jkstatus == "已作废"||d.jkstatus == "已流标"||d.jkstatus == "已转让"){
                            return " <a class=\"layui-btn layui-btn-primary layui-btn-xs\" lay-event=\"chakan\">查看</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"xiugai\">修改</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"shenhe\" >审核</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"fabu\" >发布</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"yufabu\" >预发布</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"zuofei\" >作废</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"tuijian\" >推荐</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"guanli\" >动态管理</a>";
                        }
                        if(d.jkstatus == "已结清"||d.jkstatus == "还款中"||d.jkstatus == "已垫付"){
                            return " <a class=\"layui-btn layui-btn-primary layui-btn-xs\" lay-event=\"chakan\">查看</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"xiugai\">修改</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"shenhe\" >审核</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"fabu\" >发布</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"yufabu\" >预发布</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"zuofei\" >作废</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"tuijian\" >推荐</a>\n" +
                                "    <a class=\"layui-btn layui-btn-primary layui-btn-xs\" lay-event=\"guanli\" >动态管理</a>";
                        }
                        if(d.jkstatus == "预发布"||d.jkstatus == "投资中"||d.jkstatus == "待放款"){
                            return " <a class=\"layui-btn layui-btn-primary layui-btn-xs\" lay-event=\"chakan\">查看</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"xiugai\">修改</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"shenhe\" >审核</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"fabu\" >发布</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"yufabu\" >预发布</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"zuofei\" >作废</a>\n" +
                                "    <a class=\"layui-btn layui-btn-primary layui-btn-xs\" lay-event=\"tuijian\" >推荐</a>\n" +
                                "    <a class=\"layui-btn layui-btn-disabled layui-btn-xs\" lay-event=\"guanli\" >动态管理</a>";
                        }
                    }
                }
            ]]
        });
        $("#jiekuan").on("click", function() {
            tableIns.reload({
                page: {
                    curr: 1 //重新从第 1 页开始
                },
                where: {
                    jksignid: $("#jksignid").val(),
                    productname: $("#productname").val(),
                    jkBorrowingtitle: $("#jkBorrowingtitle").val(),
                    loginname: $("#loginnameo").val(),
                    disposetime: $("#disposetimeo").val(),
                    endtime: $("#endtimeo").val(),
                    biaoproperty: $("#biaoproperty").val(),
                    borrowingtype: $("#borrowingtype").val(),
                    accounttype: $("#accounttype").val(),
                    jkstatus: $("#jkstatus").val(),
                    identifytype: $("#identifytype").val(),
                    source: $("#source").val(),
                }
            });
        });

        //监听工具条
        table.on('tool(demo)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                ,layEvent = obj.event; //获得 lay-event 对应的值
            if(layEvent === 'chakan'){
                layer.open({
                    title: '详细信息',
                    type: 2,
                    area: ['560px', '600px'],
                    content: "<%=request.getContextPath()%>/loans/xiangqing.do?jkid="+data.jkid //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
                });
            }else if(layEvent === 'shenhe'){

                layer.open({
                        title: '审核'
                    ,content:'是否通过审核？'
                    ,btn: ['通过', '不通过']
                    ,yes: function(index, layero){
                        $.ajax({
                            url: '<%=request.getContextPath()%>/loans/tongguo.do',
                            type: 'post',
                            data: {"jkid": data.jkid},
                            success: function (data) {
                                if (data == "success") {
                                    layer.msg('处理成功', {icon: 6});
                                    layer.close(index);
                                    tableIns.reload();
                                }
                            }
                        })
                    }
                    ,btn2: function(index, layero){
                        //按钮【按钮二】的回调
                        $.ajax({
                            url: '<%=request.getContextPath()%>/loans/butongguo.do',
                            type: 'post',
                            data: {"jkid": data.jkid},
                            success: function (data) {
                                if (data == "success") {
                                    layer.msg('处理成功', {icon: 6});
                                    layer.close(index);
                                    tableIns.reload();
                                }
                            }
                        })
                        //return false 开启该代码可禁止点击该按钮关闭
                    }
                    ,cancel: function(){
                        //右上角关闭回调

                        //return false 开启该代码可禁止点击该按钮关闭
                    }
                });

           /*     layer.open({

                    type: 1,
                    area: ['160px', '100px'],
                    content: '<button class="layui-btn layui-btn-radius layui-btn-normal" id="tongguo" >通过</button>\n' +
                    '<button class="layui-btn layui-btn-radius layui-btn-danger" id="butongguo">不通过</button>' //这里content是一个普通的String
                });


                $("#tongguo").on("click", function() {
                    alert(data.jkid)

                })

                $("#butongguo").on("click", function() {

                })*/
                /*layer.open({
                    title: '审核',
                    type: 2,
                    content: "<%=request.getContextPath()%>/loans/shenhe.do?jkid="+data.jkid //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
                });*/
            }else if(layEvent === 'zuofei'){
                layer.confirm('确定进行此操作？', function(index) {
                    $.ajax({
                        url: '<%=request.getContextPath()%>/loans/zuofei.do',
                        type: 'post',
                        data: {'jkid': data.jkid},
                        success: function (data) {
                            if (data == "success") {
                                layer.msg('处理成功', {icon: 6});
                                layer.close(index);
                                tableIns.reload();
                            }
                        }
                    });
                })
            }else if(layEvent === 'fabu'){
                layer.confirm('确定进行此操作？', function(index) {
                    $.ajax({
                        url: '<%=request.getContextPath()%>/loans/fabu.do',
                        type: 'post',
                        data: {'jkid': data.jkid},
                        success: function (data) {
                            if (data == "success") {
                                layer.msg('处理成功', {icon: 6});
                                layer.close(index);
                                tableIns.reload();
                            }
                        }
                    });
                })
            }else if(layEvent === 'yufabu'){
                layer.open({
                    title: '预发布'
                    ,content:'<input type="text" id="yufabutime"  class="layui-input Wdate"  onClick="WdatePicker({dateFmt:\'yyyy-MM-dd HH:mm:ss\'})" placeholder="年-月-日" readonly>'
                    ,btn: ['提交']
                    //宽高
                    ,yes: function(index, layero){
                        if($("#yufabutime").val()==""||$("#yufabutime").val()==null){
                            layer.msg('请输入时间', {icon: 5});
                        }else {
                            $.ajax({
                                url: '<%=request.getContextPath()%>/loans/yufabu.do',
                                type: 'post',
                                data: {"yufabutime": $("#yufabutime").val(), "jkid": data.jkid},
                                success: function (data) {
                                    if (data == "success") {
                                        layer.msg('处理成功', {icon: 6});
                                        layer.close(index);
                                        tableIns.reload();
                                    }
                                }
                            })
                        }
                    }
                    ,cancel: function(){
                        //右上角关闭回调

                        //return false 开启该代码可禁止点击该按钮关闭
                    }
                });

            }else if(layEvent === 'tuijian'){
                layer.confirm('确定推荐？', function(index) {
                    $.ajax({
                        url: '<%=request.getContextPath()%>/loans/tuijian1.do',
                        type: 'post',
                        data: {'jkid': data.jkid},
                        success: function (data) {
                            if (data == "success") {
                                layer.msg('成功', {icon: 6});
                                layer.close(index);
                                tableIns.reload();
                            }
                        }
                    });
                })
            }

        });

        $("#xinzengxinkuan").on("click", function() {
            location.href="addjiekuan.jsp"
        })

        //日期格式插件
        lay('.test-item').each(function(){
            laydate.render({
                elem: this
                ,type: 'datetime'
                ,trigger: 'click'
            });
        });
    });
</script>
</body>
</html>
