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
        <div class="layui-card-header">债权管理</div>
        <div class="layui-card-body">
            <form class="layui-form" id="touzizhong" method="post" style="display:inline">
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">投资人</label>
                        <div class="layui-input-inline">
                            <input type="tel" id="investor" name="investor" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">借款标题</label>
                        <div class="layui-input-inline">
                            <input type="text" id="Borrowingtitle" name="Borrowingtitle" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">投资时间</label>
                        <div class="layui-input-inline" >
                            <input type="text" id="investtime" name="investtime" class="layui-input test-item"  placeholder="年-月-日" readonly>
                        </div>
                        <div class="layui-form-mid">-</div>
                        <div class="layui-input-inline" >
                            <input type="text" id="settletime" name="settletime" class="layui-input test-item"  placeholder="年-月-日" readonly>
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">投资人类型</label>
                        <div class="layui-input-inline">
                            <select id="investortype" name="investortype" lay-search="">
                                <option value="">直接选择或搜索选择</option>
                                <option value="1">个人</option>
                                <option value="2">企业</option>
                                <option value="3">机构</option>
                            </select>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <div class="layui-input-inline">
                            <a class="layui-btn search_btn" data-type="reload" id="search_btn0">搜索</a>
                            c
                        </div>
                    </div>
                </div>

            </form>
            <form class="layui-form" id="huikuanzhong" method="post" style="display:none" >
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">债券ID</label>
                        <div class="layui-input-inline">
                            <input type="tel" id="zqid" name="zqid" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">债权人</label>
                        <div class="layui-input-inline">
                            <input type="text" id="investor1" name="investor" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">借款标题</label>
                        <div class="layui-input-inline">
                            <input type="text" id="Borrowingtitle1" name="Borrowingtitle" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">投资时间</label>
                        <div class="layui-input-inline" >
                            <input type="text" id="investtime1" name="investtime" class="layui-input test-item"  placeholder="年-月-日" readonly>
                        </div>
                        <div class="layui-form-mid">-</div>
                        <div class="layui-input-inline" >
                            <input type="text" id="settletime1" name="settletime" class="layui-input test-item"  placeholder="年-月-日" readonly>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">债权人类型</label>
                        <div class="layui-input-inline">
                            <select id="investortype1" name="investortype" lay-search="">
                                <option value="">直接选择或搜索选择</option>
                                <option value="1">个人</option>
                                <option value="2">企业</option>
                                <option value="3">机构</option>
                            </select>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <div class="layui-input-inline">
                            <a class="layui-btn search_btn" data-type="reload" id="search_btn1">搜索</a>
                            <button type="reset" class="layui-btn layui-btn-primary" >重置</button>
                        </div>
                    </div>
                </div>
            </form>
            <form class="layui-form" id="yijieqing" method="post" style="display:none" >
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">债券ID</label>
                        <div class="layui-input-inline">
                            <input type="tel" id="zqid1" name="zqid" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">债权人</label>
                        <div class="layui-input-inline">
                            <input type="text" id="investor2" name="investor" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">借款标题</label>
                        <div class="layui-input-inline">
                            <input type="text" id="Borrowingtitle2" name="Borrowingtitle" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">结清时间</label>
                        <div class="layui-input-inline" >
                            <input type="text" id="investtime2" name="investtime" class="layui-input test-item"  placeholder="年-月-日" readonly>
                        </div>
                        <div class="layui-form-mid">-</div>
                        <div class="layui-input-inline" >
                            <input type="text" id="settletime2" name="settletime" class="layui-input test-item"  placeholder="年-月-日" readonly>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">债权人类型</label>
                        <div class="layui-input-inline">
                            <select id="investortype2" name="investortype" lay-search="">
                                <option value="">直接选择或搜索选择</option>
                                <option value="1">个人</option>
                                <option value="2">企业</option>
                                <option value="3">机构</option>
                            </select>
                        </div>
                        <div class="layui-inline">
                            <div class="layui-input-inline">
                                <a class="layui-btn search_btn" data-type="reload" id="search_btn2">搜索</a>
                                <button type="reset" class="layui-btn layui-btn-primary" >重置</button>
                            </div>
                        </div>
                </div>
                </div>

            </form>

            <form class="layui-form" id="yizhuanchu" method="post" style="display:none" >
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">债券ID</label>
                        <div class="layui-input-inline">
                            <input type="tel" id="zqid2" name="zqid" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">借款标题</label>
                        <div class="layui-input-inline">
                            <input type="text" id="Borrowingtitle3" name="Borrowingtitle" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">投资时间</label>
                        <div class="layui-input-inline" >
                            <input type="text" id="investtime3" name="investtime" class="layui-input test-item"  placeholder="年-月-日" readonly>
                        </div>
                        <div class="layui-form-mid">-</div>
                        <div class="layui-input-inline" >
                            <input type="text" id="settletime3" name="settletime" class="layui-input test-item"  placeholder="年-月-日" readonly>
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">卖出者类型</label>
                        <div class="layui-input-inline">
                            <select id="sellerstype3" name="sellerstype" lay-search="">
                                <option value="">直接选择或搜索选择</option>
                                <option value="1">个人</option>
                                <option value="2">企业</option>
                                <option value="3">机构</option>
                            </select>
                        </div>
                    </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">买入者类型</label>
                            <div class="layui-input-inline">
                                <select id="buyerstype" name="buyerstype" lay-search="">
                                    <option value="">直接选择或搜索选择</option>
                                    <option value="1">个人</option>
                                    <option value="2">企业</option>
                                    <option value="3">机构</option>
                                </select>
                            </div>
                    <div class="layui-inline">
                        <div class="layui-input-inline">
                            <a class="layui-btn search_btn" data-type="reload" id="search_btn3">搜索</a>
                            <button type="reset" class="layui-btn layui-btn-primary" >重置</button>
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
        <li class="layui-this">投资中</li>
        <li>回款中</li>
        <li>已结清</li>
        <li>已转出</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <table class="layui-hide" id="test0" lay-filter="demo"></table>
        </div>
        <div class="layui-tab-item">
            <table class="layui-hide" id="test1" lay-filter="demo"></table>
        </div>
        <div class="layui-tab-item">
            <table class="layui-hide" id="test2" lay-filter="demo"></table>
        </div>
        <div class="layui-tab-item">
            <table class="layui-hide" id="test3" lay-filter="demo"></table>
        </div>
    </div>
</div>

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
                ,trigger: 'click'
            });
        });
        function aaaaa() {
            document.getElementById('touzizhong').style.display='inline';
            document.getElementById('yizhuanchu').style.display='none';
            document.getElementById('huikuanzhong').style.display='none';
            document.getElementById('yijieqing').style.display='none';
            /*$("#touzizhong").style.display='inline';*/
            var tableIns =  table.render({
                elem: '#test0'
                ,method: 'post' ,
                url: '<%=request.getContextPath()%>/bond/DebtmanagementList.do?zqstatus=0' //数据接口
                ,page: true //开启分页
                ,limit:5
                ,limits:[5,10,15,20]
                ,id: 'tzz'
                ,request: {
                    pageName: 'start', //页码的参数名称，默认：page
                    limitName: 'limit', //每页数据量的参数名，默认：limit
                }
                ,cols: [[ //表头
                    {field: 'zqid', title: '序号',  sort: true, fixed: 'left'}
                    ,{field: 'signid', title: '标的ID'}
                    ,{field: 'borrowingtitle', title: '借款标题'}
                    ,{field: 'investor', title: '投资人'}
                    ,{field: 'investortype',
                        title: '投资人类型',
                        templet: function(d) {
                            if(d.investortype == 1){
                                return "个人";
                            }
                            if(d.investortype == 2){
                                return "企业";
                            }
                            if(d.investortype == 3){
                                return "机构";
                            }
                        }
                    }
                    ,{field: 'zqapr', title: '年利率'}
                    ,{field: 'zqdeadline', title: '期限'}
                    ,{field: 'amountbond', title: '持有债权金额'}
                    ,{field: 'investtime', title: '投资时间', sort: true}
                ]]
            });
            $("#search_btn0").on("click", function() {
                tableIns.reload({
                    page: {
                        curr: 1 //重新从第 1 页开始
                    },
                    where: {
                        investor:  $("#investor").val(),
                        Borrowingtitle: $("#Borrowingtitle").val(),
                        investtime: $("#investtime").val(),
                        settletime: $("#settletime").val(),
                        investortype: $("#investortype").val()
                    }
                });
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
                document.getElementById('huikuanzhong').style.display='inline';
                document.getElementById('touzizhong').style.display='none';
                document.getElementById('yizhuanchu').style.display='none';
                document.getElementById('yijieqing').style.display='none';
                var tableIns =  table.render({
                    elem: '#test'+indexs+''
                    ,method: 'post' ,
                    url: '<%=request.getContextPath()%>/bond/DebtmanagementList.do?zqstatus='+data.index //数据接口
                    ,page: true //开启分页
                    ,limit:5
                    ,limits:[5,10,15,20]
                    ,id: 'tzz'
                    ,request: {
                        pageName: 'start', //页码的参数名称，默认：page
                        limitName: 'limit', //每页数据量的参数名，默认：limit
                    }
                    ,cols: [[ //表头
                        {field: 'zqid', title: '债权ID',  sort: true, fixed: 'left'}
                        ,{field: 'borrowingtitle', title: '借款标题'}
                        ,{field: 'investor', title: '债权人'}
                        ,{field: 'investortype',
                            title: '投资人类型',
                            templet: function(d) {
                                if(d.investortype == 1){
                                    return "个人";
                                }
                                if(d.investortype == 2){
                                    return "企业";
                                }
                                if(d.investortype == 3){
                                    return "机构";
                                }
                            }
                        }
                        ,{field: 'zqapr', title: '年利率'}
                        ,{field: 'zqdeadline', title: '期限'}
                        ,{field: 'amountbond', title: '持有债权金额(元)'}
                        ,{field: 'investtime', title: '投资时间', sort: true}
                    ]]
                });
                $("#search_btn1").on("click", function() {
                    tableIns.reload({
                        page: {
                            curr: 1 //重新从第 1 页开始
                        },
                        where: {
                              zqid: $("#zqid").val(),
                              investor: $("#investor1").val(),
                              Borrowingtitle: $("#Borrowingtitle1").val(),
                              investtime: $("#investtime1").val(),
                              settletime: $("#settletime1").val(),
                              investortype: $("#investortype1").val()
                        }
                    });
                });
            }
            if(data.index==2){
                document.getElementById('yijieqing').style.display='inline';
                document.getElementById('huikuanzhong').style.display='none';
                document.getElementById('touzizhong').style.display='none';
                document.getElementById('yizhuanchu').style.display='none';
                var tableIns =  table.render({
                    elem: '#test'+indexs+''
                    ,method: 'post' ,
                    url: '<%=request.getContextPath()%>/bond/DebtmanagementList.do?zqstatus='+data.index //数据接口
                    ,page: true //开启分页
                    ,limit:5
                    ,limits:[5,10,15,20]
                    ,id: 'tzz'
                    ,request: {
                        pageName: 'start', //页码的参数名称，默认：page
                        limitName: 'limit', //每页数据量的参数名，默认：limit
                    }
                    ,cols: [[ //表头
                        {field: 'zqid', title: '债权ID',  sort: true, fixed: 'left'}
                        ,{field: 'borrowingtitle', title: '借款标题'}
                        ,{field: 'investor', title: '债权人'}
                        ,{field: 'investortype',
                            title: '投资人类型',
                            templet: function(d) {
                                if(d.investortype == 1){
                                    return "个人";
                                }
                                if(d.investortype == 2){
                                    return "企业";
                                }
                                if(d.investortype == 3){
                                    return "机构";
                                }
                            }
                        }
                        ,{field: 'zqapr', title: '年利率'}
                        ,{field: 'zqdeadline', title: '期限'}
                        ,{field: 'amountbond', title: '原始债权金额(元)'}
                        ,{field: 'settletime', title: '结清时间', sort: true}
                    ]]
                });
                $("#search_btn2").on("click", function() {
                    tableIns.reload({
                        page: {
                            curr: 1 //重新从第 1 页开始
                        },
                        where: {
                              zqid: $("#zqid1").val(),
                              investor: $("#investor2").val(),
                              Borrowingtitle: $("#Borrowingtitle2").val(),
                              investtime: $("#investtime2").val(),
                              settletime: $("#settletime2").val(),
                              investortype: $("#investortype2").val()
                        }
                    });
                });
            }
            if(data.index==3){
                document.getElementById('yizhuanchu').style.display='inline';
                document.getElementById('touzizhong').style.display='none';
                document.getElementById('huikuanzhong').style.display='none';
                document.getElementById('yijieqing').style.display='none';
                var tableIns =  table.render({
                    elem: '#test'+indexs+''
                    ,method: 'post' ,
                    url: '<%=request.getContextPath()%>/bond/DebtmanagementList.do?zqstatus='+data.index //数据接口
                    ,page: true //开启分页
                    ,limit:5
                    ,limits:[5,10,15,20]
                    ,id: 'tzz'
                    ,request: {
                        pageName: 'start', //页码的参数名称，默认：page
                        limitName: 'limit', //每页数据量的参数名，默认：limit
                    }
                    ,cols: [[ //表头
                        {field: 'zqid', title: '债权ID',  sort: true, fixed: 'left'}
                        ,{field: 'borrowingtitle', title: '借款标题'}
                        ,{field: 'sellers', title: '卖出者'}
                        ,{field: 'sellerstype',
                            title: '卖出者类型',
                            templet: function(d) {
                                if(d.sellerstype == 1){
                                    return "个人";
                                }
                                if(d.sellerstype == 2){
                                    return "企业";
                                }
                                if(d.sellerstype == 3){
                                    return "机构";
                                }
                            }
                        }
                        ,{field: 'buyers', title: '买入者'}
                        ,{field: 'buyerstype',
                            title: '买入者类型',
                            templet: function(d) {
                                if(d.buyerstype == 1){
                                    return "个人";
                                }
                                if(d.buyerstype == 2){
                                    return "企业";
                                }
                                if(d.buyerstype == 3){
                                    return "机构";
                                }
                            }
                        }
                        ,{field: 'zqapr', title: '年利率'}
                        ,{field: 'zqdeadline', title: '期限'}
                        ,{field: 'amountbond', title: '债权价值(元)'}
                        ,{field: 'transferprice', title: '转让价格(元)'}
                        ,{field: 'investtime', title: '投资时间', sort: true}
                    ]]
                });
                $("#search_btn3").on("click", function() {
                    tableIns.reload({
                        page: {
                            curr: 1 //重新从第 1 页开始
                        },
                        where: {
                              zqid: $("#zqid2").val(),
                              Borrowingtitle: $("#Borrowingtitle3").val(),
                              investtime: $("#investtime3").val(),
                              settletime: $("#settletime3").val(),
                              sellerstype: $("#sellerstype3").val(),
                              buyerstype: $("#buyerstype").val()
                        }
                    });
                });
            }

            //执行一个 table 实例
          /*  var tableIns =  table.render({
                elem: '#test'+indexs+''
                ,method: 'post' ,
                url: '<%=request.getContextPath()%>/bond/DebtmanagementList.do?zqstatus='+data.index //数据接口
                ,page: true //开启分页
                ,limit:5
                ,limits:[5,10,15,20]
                ,id: 'tzz'
                ,request: {
                    pageName: 'start', //页码的参数名称，默认：page
                    limitName: 'limit', //每页数据量的参数名，默认：limit
                }
                ,cols: [[ //表头
                    {field: 'zqid', title: '序号',  sort: true, fixed: 'left'}
                    ,{field: 'signid', title: '标的ID'}
                    ,{field: 'borrowingtitle', title: '借款标题'}
                    ,{field: 'investor', title: '投资人'}
                    ,{field: 'investortype', title: '投资人类型'}
                    ,{field: 'zqapr', title: '年利率'}
                    ,{field: 'zqdeadline', title: '期限'}
                    ,{field: 'amountbond', title: '持有债权金额'}
                    ,{field: 'investtime', title: '投资时间', sort: true}
                ]]
            });*/
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

           /* $("#search_btn"+indexs+"").on("click", function() {
                tableIns.reload({
                    page: {
                        curr: 1 //重新从第 1 页开始
                    },
                    where: {
                        investor:  $("#investor").val(),
                        Borrowingtitle: $("#Borrowingtitle").val(),
                        investtime: $("#investtime").val(),
                        settletime: $("#settletime").val(),
                        investortype: $("#investortype").val(),
                      /!*  //回款中
                        zqid: $("#zqid").val(),
                        investor: $("#investor1").val(),
                        Borrowingtitle: $("#Borrowingtitle1").val(),
                        investtime: $("#investtime1").val(),
                        settletime: $("#settletime1").val(),
                        investortype: $("#investortype1").val(),
                        //已结清
                        zqid: $("#zqid1").val(),
                        investor: $("#investor2").val(),
                        Borrowingtitle: $("#Borrowingtitle2").val(),
                        investtime: $("#investtime2").val(),
                        settletime: $("#settletime2").val(),
                        investortype: $("#investortype2").val(),
                        //已转让
                        zqid: $("#zqid2").val(),
                        Borrowingtitle: $("#Borrowingtitle3").val(),
                        investtime: $("#investtime3").val(),
                        settletime: $("#settletime3").val(),
                        sellerstype: $("#sellerstype3").val(),
                        buyerstype: $("#buyerstype").val(),*!/
                    }
                });
            });*/
        });


    });



</script>

</body>
</html>