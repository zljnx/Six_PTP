<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/5/24
  Time: 9:25
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
        <div class="layui-card-header">企业借款意向管理</div>
        <div class="layui-card-body">
            <form class="layui-form" id="" method="post" style="display:inline">
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">联系人</label>
                        <div class="layui-input-inline">
                            <input type="tel" id="username1" name="username" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">选择地区</label>
                        <div class="layui-input-inline">
                            <select name="province" id="province1" lay-filter="province">
                                <option value="">请选择省</option>
                            </select>
                        </div>
                        <div class="layui-input-inline" style="display: none;">
                            <select name="city" lay-filter="city" id="city1">
                                <option value="">请选择市</option>
                            </select>
                        </div>
                        <div class="layui-input-inline" style="display: none;">
                            <select name="area" lay-filter="area" id="area1">
                                <option value="">请选择县/区</option>
                            </select>
                        </div>

                    </div>


                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">提交时间</label>
                        <div class="layui-input-inline" >
                            <input type="text" id="grsubmittime1" name="grsubmittime" class="layui-input test-item"  placeholder="年-月-日" readonly>
                        </div>
                        <div class="layui-form-mid">-</div>
                        <div class="layui-input-inline" >
                            <input type="text" id="handlingtime1" name="handlingtime" class="layui-input test-item"  placeholder="年-月-日" readonly>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">状态</label>
                        <div class="layui-input-inline">
                            <select id="grjkstatus1" name="grjkstatus" >
                                <option value="">请选择</option>
                                <option value="1">未处理</option>
                                <option value="2">已处理</option>
                            </select>
                        </div>
                    </div>

                    <div class="layui-inline">
                        <div class="layui-input-inline">
                            <a class="layui-btn search_btn" data-type="reload" id="qiye">搜索</a>
                            <button type="reset" class="layui-btn layui-btn-primary" >重置</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<table class="layui-hide" id="qiyejiekuan" lay-filter="demo" ></table>


<script type="application/javascript">
    layui.config({
    });
    //layui需要的插件
    layui.use(['laydate', 'laypage', 'layer', 'table','form','element'], function(){
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

        //表格
        var tableIns =  table.render({
            elem: '#qiyejiekuan'
            ,method: 'post'
            ,url: '<%=request.getContextPath()%>/borrowmoney/queryQiyeList.do' //数据接口
            ,page: true //开启分页
            ,limit:5
            ,limits:[5,10,15,20]
            ,id: 'qiye'
            ,request: {
                pageName: 'start', //页码的参数名称，默认：page
                limitName: 'limit', //每页数据量的参数名，默认：limit
            }
            ,cols: [[ //表头
                {field: 'grjkid', title: '序号', width:60}
                ,{field: 'firmname', title: '企业名称', width:90}
                ,{field: 'registrationnumber', title: '注册号', width:78}
                ,{field: 'username', title: '联系人', width:78}
                ,{field: 'userphone', title: '手机号码', width:120}
                ,{field: 'grAmount', title: '借款金额(元)'}
                ,{field: 'grdeadline', title: '借款期限', width:87}
                ,{field: 'grjktype', title: '借款类型', width:87,
                    templet: function(d) {
                        if(d.grjktype == 1){
                            return "信用";
                        }
                        if(d.grjktype == 2){
                            return "抵押";
                        }
                        if(d.grjktype == 3){
                            return "实地认证";
                        }
                        if(d.grjktype == 4){
                            return "担保";
                        }
                    }
                }
                ,{field: 'grcity', title: '所在城市'}
                ,{field: 'grFundraisingdeadline', title: '筹款期限', width:87}
                ,{field: 'grjkdescribe', title: '借款描述'}
                ,{field: 'grsubmittime', title: '提交时间', width:170}
                ,{field: 'grjkstatus', title: '状态', width:78,
                    templet: function(d) {
                        if(d.grjkstatus == 1){
                            return "未处理";
                        }
                        if(d.grjkstatus == 2){
                            return "已处理";
                        }
                    }
                }
                ,{
                    fixed: 'right',
                    title: '操作' ,
                    align:'center',
                    templet: function(d) {
                        if(d.grjkstatus == 1){
                            return " <a class=\"layui-btn layui-btn-primary layui-btn-xs\" lay-event=\"chuli\">处理</a>\n" +
                                "    <a class=\"layui-btn layui-btn-primary layui-btn-xs\" lay-event=\"xiangqing\">详情</a>";
                        }
                        if(d.grjkstatus == 2){
                            return "<a class=\"layui-btn layui-btn-primary layui-btn-xs\" lay-event=\"xiangqing\">详情</a>";
                        }
                    }

                }
            ]]
        });

        $("#qiye").on("click", function() {
            tableIns.reload({
                page: {
                    curr: 1 //重新从第 1 页开始
                },
                where: {
                    username:  $("#username1").val(),
                    province: $("#province1 option:selected").text(),
                    city: $("#city1 option:selected").text(),
                    area:  $("#area1 option:selected").text(),
                    grsubmittime: $("#grsubmittime1").val(),
                    handlingtime: $("#handlingtime1").val(),
                    grjkstatus: $("#grjkstatus1").val()
                }
            });
        });

        //监听工具条
        table.on('tool(demo)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                ,layEvent = obj.event; //获得 lay-event 对应的值
            if(layEvent === 'chuli'){q
                layer.prompt({
                    formType: 2,
                    //content:'*处理结果描述 （50字以内）：<br><textarea id="wenbenyu" rows="20" cols="60"></textarea>',
                    title: '处理',
                    value: '',
                    area: ['500px', '350px']
                }, function(value, index, elem){

                    if(value==""||value.length==0){
                        layer.msg("不能为空哦", {icon: 5});
                        return false;
                    }else if(value.length>50){
                        layer.msg("请控制在50字以内", {icon: 5});
                        return false;
                    }else {
                        $.ajax({
                            url: '<%=request.getContextPath()%>/borrowmoney/gerenchuli.do',
                            type: 'post',
                            data: {'dispose': value, 'grjkid': data.grjkid},
                            success: function (data) {
                                if (data == "success") {
                                    layer.msg('处理成功', {icon: 6});
                                    layer.close(index);
                                    tableIns.reload();
                                }
                            }, error: function () {
                                layer.msg("处理失败", {icon: 5});
                            }
                        })
                    }
                });
            }else if(layEvent === 'xiangqing'){
                layer.open({
                    title: '企业借款意向详情',
                    type: 2,
                    area: ['560px', '600px'],
                    content: "<%=request.getContextPath()%>/borrowmoney/qiyexiangqing.do?grjkid="+data.grjkid //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
                });
                //location.href="<%=request.getContextPath()%>/borrowmoney/qiyexiangqing.do?grjkid="+data.grjkid;
                //$.post("<%=request.getContextPath()%>/borrowmoney/gerenxiangqing.do?grjkid="+data.grjkid);
            }
        });

    });
</script>

<script>
    //初始数据
    var areaData = Area;
    var $form;
    var form;
    var $;
    layui.use(['jquery', 'form'], function() {
        $ = layui.jquery;
        form = layui.form;
        $form = $('form');
        loadProvince();
    });
    //加载省数据
    function loadProvince() {
        var proHtml = '';
        for (var i = 0; i < areaData.length; i++) {
            proHtml += '<option value="' + areaData[i].provinceCode + '_' + areaData[i].mallCityList.length + '_' + i + '">' + areaData[i].provinceName + '</option>';
        }
        //初始化省数据
        $form.find('select[name=province]').append(proHtml);
        form.render();
        form.on('select(province)', function(data) {
            $form.find('select[name=area]').html('<option value="">请选择县/区</option>').parent().hide();
            var value = data.value;
            var d = value.split('_');
            var code = d[0];
            var count = d[1];
            var index = d[2];
            if (count > 0) {
                loadCity(areaData[index].mallCityList);
            } else {
                $form.find('select[name=city]').parent().hide();
            }
        });
    }
    //加载市数据
    function loadCity(citys) {
        var cityHtml = '';
        for (var i = 0; i < citys.length; i++) {
            cityHtml += '<option value="' + citys[i].cityCode + '_' + citys[i].mallAreaList.length + '_' + i + '">' + citys[i].cityName + '</option>';
        }
        $form.find('select[name=city]').html(cityHtml).parent().show();
        form.render();
        form.on('select(city)', function(data) {
            var value = data.value;
            var d = value.split('_');
            var code = d[0];
            var count = d[1];
            var index = d[2];
            if (count > 0) {
                loadArea(citys[index].mallAreaList);
            } else {
                $form.find('select[name=area]').parent().hide();
            }
        });
    }
    //加载县/区数据
    function loadArea(areas) {
        var areaHtml = '';
        for (var i = 0; i < areas.length; i++) {
            areaHtml += '<option value="' + areas[i].areaCode + '">' + areas[i].areaName + '</option>';
        }
        $form.find('select[name=area]').html(areaHtml).parent().show();
        form.render();
        form.on('select(area)', function(data) {
            //console.log(data);
        });
    }
</script>
</body>
</html>

