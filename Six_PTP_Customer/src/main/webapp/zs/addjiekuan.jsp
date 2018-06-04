<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/5/24
  Time: 20:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/layui/layui.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/assets/citys.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/assets/area.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/layui/css/layui.css">
<body>
<form class="layui-form" action="<%=request.getContextPath()%>/loans/addjiekuan.do" lay-filter="example" method="post">
    <div class="layui-form-item">
        <label class="layui-form-label">产品名称</label>
        <div class="layui-input-inline">
            <select name="productname" lay-filter="mingcheng" id="mingcheng">
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">*标的类型</label>
        <div class="layui-input-inline">
            <select name="borrowingtype" lay-filter="leixing" id="leixing"  >
                <option value="">请选择</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">*借款账户</label>
        <div class="layui-input-inline">
            <input type="text" name="loginname"  id="loginname" lay-verify="required"  autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">*借款标题</label>
        <div class="layui-input-inline">
            <input type="text" name="jkBorrowingtitle" lay-verify="required" autocomplete="off"  class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">*借款金额</label>
        <div class="layui-input-inline">
            <input type="text" name="jkAmount" lay-verify="number" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">元 借款金额范围 (1000 -10000000) 元 </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">*标的属性</label>
        <div class="layui-input-block" >
            <input type="checkbox" name="biaoproperty" value="担保" lay-filter="biaoproperty" title="担保">
            <input type="checkbox" name="biaoproperty" value="抵（质）押"  lay-filter="biaoproperty" title="抵（质）押" >
            <input type="checkbox" name="biaoproperty" value="实地认证" lay-filter="biaoproperty" title="实地认证">
            <input type="checkbox" name="biaoproperty" value="信用" lay-filter="biaoproperty" title="信用" checked="">

        </div>
        <div class="layui-form-mid layui-word-aux">标的属性优先级：担保>抵（质）押>实地认证>信用 </div>
    </div>
    <div class="layui-form-item" id="danbaofangan" style="display:none">
        <label class="layui-form-label">*担保方案</label>
        <div class="layui-input-inline">
            <div class="layui-input-inline">
                <select name="scheme" lay-filter="scheme" id="scheme" >
                    <option value="">请选择</option>
                    <option value="本息全额担保">本息全额担保</option>
                    <option value="本金全额担保">本金全额担保</option>
                </select>
            </div>
        </div>
    </div><br>
    <div class="layui-form-item">
        <label class="layui-form-label">*新增标识</label>
        <div class="layui-input-inline">
            <select name="identifytype" lay-filter="identifytype" id="identifytype" >
                <option value="">请选择</option>
                <option value="未标识">未标识</option>
                <option value="新手标">新手标</option>
                <option value="奖励标">奖励标</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item"  id="jiangli" style="display:none">
        <label class="layui-form-label">*奖励利率</label>
        <div class="layui-input-inline">
            <input type="text" name="awardlilv"  class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">%  奖励利率精确到小数点后两位,大于0且小于100 </div>
    </div><br>
    <div class="layui-form-item">
        <label class="layui-form-label">*还款方式</label>
        <div class="layui-input-inline">
            <select name="refundtype" lay-filter="refundtype"  id="refundtype">
                <option value="">请选择</option>
                <option value="等额本息">等额本息</option>
                <option value="每月付息,到期还本">每月付息,到期还本</option>
                <option value="本息到期一次还清">本息到期一次还清</option>
                <option value="等额本金">等额本金</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">*借款期限</label>
        <div class="layui-input-inline">
            <input type="text" name="jkdeadline" lay-verify="required" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">月/天 借款期限范围(1-15)月 除本息到期一次付清可选按天计算外，其他皆以月为单位 </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">*付息方式</label>
        <div class="layui-input-block" >
            <input type="radio" name="paymenttype" value="自然月" title="自然月" checked="">
            <input type="radio" name="paymenttype" value="固定日" title="固定日">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">*起息日</label>
        <div class="layui-input-inline" >
            <select name="valuedate" lay-filter="valuedate"  id="valuedate">
                <option value="T+0">T+0</option>
                <option value="T+1">T+1</option>
                <option value="T+2">T+2</option>
                <option value="T+3">T+3</option>
                <option value="T+4">T+4</option>
                <option value="T+5">T+5</option>
            </select>
        </div>
        <div class="layui-form-mid layui-word-aux">T+0表示放款当天开始计算利息(当日计息)，T+1表示放款后第一天开始计算利息(次日计息)，以此类推</div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">*年化利率 </label>
        <div class="layui-input-inline">
            <input type="text" name="jkapr" lay-verify="required" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">% 年化利率范围 (2 -25) %</div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label" style="width: 90px">*成交服务费率 </label>
        <div class="layui-input-inline">
            <input type="text" name="makeabargain"  class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">精确到小数点后三位且小于1 借款人给平台的管理费</div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label" style="width: 90px">*投资管理费率 </label>
        <div class="layui-input-inline">
            <input type="text" name="investguanli"   class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">精确到小数点后三位且小于1 投资人给平台的投资管理费</div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label" style="width: 90px">*逾期罚息利率 </label>
        <div class="layui-input-inline">
            <input type="text" name="overdue"  class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux"> 精确到小数点后三位且小于1 借款人逾期后给投资人的逾期罚息</div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">*筹款期限</label>
        <div class="layui-input-inline">
            <select name="raisefunds"   id="choukuanqixian">
                <option value="">请选择</option>
            </select>
        </div>
        <div class="layui-form-mid layui-word-aux">天 借款项目的筹款期限</div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">*起投金额</label>
        <div class="layui-input-inline">
            <input type="text" name="Investmentamount"  class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">元 单笔投资最低可投金额</div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label" style="width: 90px">*最大投资金额</label>
        <div class="layui-input-inline">
            <input type="text" name="maxamount"  class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">元 个人累计投资最大可投金额</div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label" style="width: 90px">*项目所在区域</label>
        <div class="layui-input-inline">
            <select name="province" id="province2"  lay-filter="province">
                <option value="">请选择省</option>
            </select>
        </div>
        <div class="layui-input-inline" style="display: none;">
            <select name="city" lay-filter="city" id="city2" >
                <option value="">请选择市</option>
            </select>
        </div>
        <div class="layui-input-inline" style="display: none;">
            <select name="area" lay-filter="area" id="area2" >
                <option value="">请选择县/区</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label" style="width: 90px">*活动使用方式</label>
        <div class="layui-input-block" >
            <input type="radio" name="modeactivity" value="组合使用" title="组合使用" >
            <input type="radio" name="modeactivity" value="单一使用" title="单一使用">
            <input type="radio" name="modeactivity" value="不使用" title="不使用" checked="">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label" >*投资端</label>
        <div class="layui-input-block" >
            <input type="radio" name="csorbs" value="PC+APP" title="PC+APP" checked="">
            <input type="radio" name="csorbs" value="PC" title="PC">
            <input type="radio" name="csorbs" value="APP" title="APP" >
        </div>
    </div>
   <%-- <div class="layui-form-item">
        <label class="layui-form-label" >标的图标</label>
        <button type="button" class="layui-btn layui-btn-danger" name="photo" id="upload"><i class="layui-icon"></i>上传图片</button>
        <div class="layui-inline layui-word-aux">
            这里以限制 60KB 为例
        </div>
    </div>--%>
    <div class="layui-form-item">
        <label class="layui-form-label" >*借款描述</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容" lay-verify="required" name="describea" class="layui-textarea"></textarea>
        </div>
    </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="demo1">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>

</form>
<script type="application/javascript">
    layui.use(['form','upload'], function() {
        var form = layui.form
            , layer = layui.layer
            ,upload = layui.upload;

        //监听下拉列表
        form.on('select(identifytype)', function(data){
            console.log(data)
            if(data.value=="奖励标"){
                document.getElementById('jiangli').style.display='inline';
            }else{
                document.getElementById('jiangli').style.display='none';
            }

        });

        //监听复选框
        form.on('checkbox(biaoproperty)', function(data){
            if(data.value=="担保"&&data.elem.checked==true){
                document.getElementById('danbaofangan').style.display='inline';
            }else if(data.value=="担保"&&data.elem.checked==false){
                document.getElementById('danbaofangan').style.display='none';
            }
         /*   console.log(data.elem); //得到checkbox原始DOM对象
            console.log(data.elem.checked); //是否被选中，true或者false
            console.log(data.value); //复选框value值，也可以通过data.elem.value得到
            console.log(data.othis); //得到美化后的DOM对象*/
        });


        //设定文件大小限制
        upload.render({
            elem: '#upload'
            ,url: '/upload/'
            ,size: 60 //限制文件大小，单位 KB
            ,done: function(res){
                console.log(res)
            }
        });

        //表单初始赋值
        form.val('example', {
            "makeabargain": 0 // "name": "value"
            ,"investguanli": 0.01
            ,"overdue": 0.005
            ,"Investmentamount": 100
        });

        form.verify({
            //我们既支持上述函数式的方式，也支持下述数组的形式
            //数组的两个值分别代表：[正则匹配、匹配不符时的提示文字]
            pass: [
                /^([0-9]|(1[0-5]))$/
                ,'请输入1-15'
            ],
            fuwulv:[
                /^0(\.\d{1,3})?$/
                ,"精确到小数点后三位且小于1"
            ]
        });

        $("#loginname").blur(function(){
               $.ajax({
                   url:'',
                   type:'',
                   data:{},
                   success:function(data){

                   }
               })
        });



        //监听提交
       /* form.on('submit(demo1)', function(data){
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });*/
    });


</script>



































































<script>
    //初始数据
    var mingchengData = citys;
    var $form;
    var form;
    var $;
    layui.use(['jquery', 'form'], function() {
        $ = layui.jquery;
        form = layui.form;
        $form = $('form');
        loadProvinc();
    });
    //加载省数据
    function loadProvinc() {
        var proHtml = '';
        for (var i = 0; i < mingchengData.length; i++) {
            proHtml += '<option value="' + mingchengData[i].provinceCode + '_' + i + '">' + mingchengData[i].provinceName + '</option>';
        }
        //初始化数据
        $form.find('select[name=productname]').append(proHtml);
        form.render();
        form.on('select(mingcheng)', function(data) {
            var value = data.value;
            var d = value.split('_');
            var code = d[0];
            var count = d[1];
            loadCit(mingchengData[count].mallCityList);
        });
    }
    //加载数据
    function loadCit(citys) {
        var cityHtml = '';
        for (var i = 0; i < citys.length; i++) {
            cityHtml += '<option value="' + citys[i].areaCode + '">' + citys[i].areaName + '</option>';
        }
        $form.find('select[name=borrowingtype]').html(cityHtml).parent().show();
        form.render();
        form.on('select(city)', function(data) {
        });
    }
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
            proHtml += '<option value="' + areaData[i].provinceName + '_' + areaData[i].mallCityList.length + '_' + i + '">' + areaData[i].provinceName + '</option>';
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
            cityHtml += '<option value="' + citys[i].cityName + '_' + citys[i].mallAreaList.length + '_' + i + '">' + citys[i].cityName + '</option>';
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
            areaHtml += '<option value="' + areas[i].areaName + '">' + areas[i].areaName + '</option>';
        }
        $form.find('select[name=area]').html(areaHtml).parent().show();
        form.render();
        form.on('select(area)', function(data) {
            //console.log(data);
        });
    }

</script>
<script type="application/javascript">
    var choukuan = ""
    for(var i = 1;i <=31;i++){
        choukuan += '<option value="' + i + '">' + i + '</option>';
    }
    $("#choukuanqixian").html(choukuan);
</script>


</body>
</html>
