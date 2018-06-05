<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/5/30
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="keywords" content="黄金杯网贷系统"/>
    <meta name="description" content="黄金杯网贷系统"/>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/>
    <meta http-equiv="Pragma" CONTENT="no-cache"/>
    <meta http-equiv="Cache-Control" CONTENT="no-cache"/>
    <meta http-equiv="Expires" CONTENT="0"/><title>散标详情-黄金杯网贷</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/shouyecss/shouye.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/shouyecss/woyaotouzi.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/shouyecss/shouye2.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/shouyecss/woyaotouzi1.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/shouyecss/xiangqing.css">
</head>
<body>
<div style="position:fixed; background:#fff; z-index:9999;width:100%;height:40px; overflow:hidden; display:block;" id='48ee82be-35ce-4c70-bbfa-8782b3d7d078'>
    <div style='padding-left:28%;color: #c30;font-size:18px;'>
        警告: 如果看到该信息,可能是因为您的浏览器没有启用JavaScript功能，请开启该功能并在重启后访问网站。
    </div>
</div>
<script type="text/javascript">try{document.getElementById('48ee82be-35ce-4c70-bbfa-8782b3d7d078').style.display='none';}catch(e){}</script>

<script type="text/javascript">
    <!--//
    {
        try {
            var a = window.opener || window.parent;
            while (a.parent != a) {
                a = a.parent;
            }
            if (a.location.host != '112.95.233.249:8503') {

            }
        }catch(e){

        }
    }
    $(function(){$("#nav").click(function(e){var src = e?e.target:event.srcElement;if(src.tagName == "H3"){var next = src.nextElementSibling || src.nextSibling;next.style.display = (next.style.display =="block")?"none":"block";}});});
    function setTab(name,cursel,n){for(var i=1;i<=n;i++){var menu=document.getElementById(name+i);var con=document.getElementById("con_"+name+"_"+i);menu.className=i==cursel?"hover":"";con.style.display=i==cursel?"block":"none";}}
    $(".ny_register .til").click(function(){$(this).next().slideToggle("slow,10");if($(this).hasClass("up")){$(this).removeClass("up");}else{$(this).addClass("up");}});
    //-->
</script><script type="text/javascript" src="/js/dialog.js"></script>
<script type="text/javascript" src="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js" data-appid="101173448"  data-redirecturi="http://112.95.233.249:8503/associatedRegister.html"  charset="utf-8"> </script>
<script type="text/javascript" src="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js" charset="utf-8"  data-callback="true"></script>
<script type="text/javascript" src="/js/jquery-select-list.js"></script>
<script type="text/javascript" src="/simple/js/common.js"></script>
<script type="text/javascript">

    function pageSubmit(_obj){
        if(setCurrentPage(_obj)){
            toAjaxPage();
        }
    }

    //输入分页，点确定查询时，设置当前页
    function setCurrentPage(_obj){
        var currentPage1 = $(_obj).prev().val();
        var re =  /^[1-9]+[0-9]*]*$/;
        if(!re.test(currentPage1)){
            return false;
        }
        currentPage = currentPage1;
        if(currentPage>$(_obj).prev().attr("maxSize")*1){
            currentPage = $(_obj).prev().attr("maxSize")*1;
        }
        currentPage = parseInt(currentPage);
        return true;
    }

    function goPageSubmit(obj, pagingPath) {

        var goPage = $(obj).prev().val();
        var re = /^[1-9]+[0-9]*]*$/;
        if (!re.test(goPage)) {
            return;
        }
        if (goPage > $(obj).prev().attr("maxSize") * 1) {
            goPage = $(obj).prev().attr("maxSize") * 1;
        }
        var _pageUrl = pagingPath + goPage;
        if (pagingPath.indexOf(".html") > 0 || pagingPath.indexOf(".htm") > 0) {
            if (pagingPath.indexOf("?") > 0) {
                _pageUrl = pagingPath + "&paging.current=" + goPage;
            } else {
                _pageUrl = pagingPath + "?paging.current=" + goPage;
            }
        }
        location.href = _pageUrl;
    }

    function DMQQLogout() {
        //1 QQ退出
        QC.Login.signOut();
        //2 本地退出
        location.href ="/logout.htm";
    }

</script>
<div class="floating_layer">
    <ul>
        <li>
            <div class="item computer">
                <i></i>
                <div class="con">
                    <div class="text">
                        <p class="border_b"><a href="http://112.95.233.249:8503/credit/lcjsq.html">理财计算器</a></p>
                        <p><a href="http://112.95.233.249:8503/credit/jkjsq.html">借款计算器</a></p>
                    </div>
                </div>
            </div>
        </li>
        <li>
            <div class="item service">
                <i></i>
                <div class="con">
                    <div class="service_box">
                        <ul>
                            <li>
                                <a href="http://wpa.qq.com/msgrd?v=3&uin=2486949099&site=qq&menu=yes" target="_blank" title="迪迪">
                                    <span class="enterprise_q1"><img src="/fileStore/3/2016/7/27/90.jpg"/></span>
                                    迪迪</a>
                            </li>
                            <li>
                                <a href="http://wpa.qq.com/msgrd?v=3&uin=2875612902&site=qq&menu=yes" target="_blank" title="蒙蒙">
                                    <span class="enterprise_q1"><img src="/fileStore/3/2016/7/27/89.jpg"/></span>
                                    蒙蒙</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </li>
        <li>
            <a class="item code" href="javascript:void(0)">
                <i></i>
                <div class="con"><img src="/fileStore/0/2016/9/7/126.png"></div>
            </a>
        </li>
        <li><a class="item back" href="javascript:void(0);" id="re_top"><i></i></a></li>
    </ul>
</div>

<!--顶部条-->
<div class="top-container">
    <div class="wrap">
        <div class="top-center">

            <div class="clearfix">
                <div class="head-container clearfix">
                    <div class="head-login-container">
                        <ul>
                            <!--未登录-->
                            <!--登录前-->
                            <li class="li-btn"><a href="http://112.95.233.249:8503/register.html" class="reg-btn">免费注册</a></li>
                            <li class="li-btn"><a href="http://112.95.233.249:8503/user/login.html" class="login-btn">立即登录</a></li>
                        </ul>
                    </div>
                    <div class="top_bar"><a href="http://112.95.233.249:8503" class="icon sine-icon mr15"></a>
                        <a href="http://112.95.233.249:8503" class="icon wechat-icon mr15">
                            <div class="code tc"><i class="arrow"></i>
                                <div class="border"><img src="/fileStore/0/2016/9/7/126.png"><br />
                                    关注黄金杯网贷微信 </div>
                            </div>
                        </a>
                        <a href="http://112.95.233.249:8503/bzzx/xszy.html">新手指引</a> |
                        <a href="http://112.95.233.249:8503/bzzx/czytx.html">帮助中心</a> |
                        <a href="http://112.95.233.249:8503/app/downloadApp.htm">手机客户端
                            <div class="code tc"><i class="arrow"></i>
                                <div class="border">
                                    <img src="/fileStore/0/2017/1/5/150.png"><br />下载客户端APP
                                </div>
                            </div>
                        </a> </div>
                </div>
            </div>
            <div class="top-nav clearfix">
                <ul class="clearfix">
                    <li><a href="/index.html" class="nav-a">首页</a></li>
                    <li>
                        <a class="nav-a" href="/thisweb/woyaotouzi.jsp">我要投资</a>
                        <dl class="subnav">
                            <dd><a href="http://112.95.233.249:8503/financing/sbtz/">投资项目</a></dd>
                            <dd><a href="http://112.95.233.249:8503/financing/sbtz/index.html?btype=3">债权转让</a></dd>
                        </dl>
                    </li>
                    <li><a href="/thisweb/WhbJingTai.html" class="nav-a">我要借款</a>

                    </li>

                    <li><a href="/thisweb/lzhAccount.html" class="nav-a">我的账户</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div id="info"></div>
<div class="popup_bg" style="display:none"></div>
<!--头部-->
<div class="main_bg">
    <script type="text/javascript" src="/js/security.js"></script>
    <script type="text/javascript">
        var modulus = "009e55b21b5b66a44b52a7e14844215b63ea7067b727fa1e729c7e7863c4654007128d046bba2e69121bfd70858947010430d3f953c55a46a8511ce4b296d51587f04e8e10caaf1ae59ab17a9a63eebb024bb524b5bbf2e5bfbe011f7c5518aa3c520445aaf444bc8471099822bdddfc33a4cfa84e009e104d033fcb4f6b4a293f", exponent = "010001";
        var key = RSAUtils.getKeyPair(exponent, '', modulus);
    </script>

    <div class="item_details_top w1002 clearfix">
        <div class="left">
            <div class="til" >
                <span class="item_icon dan_icon">保</span>
                ${xiangqing.xmname}</div>

            <div class="clearfix mt30">
            <%--    <div class="pic"><img src="/fileStore/0/2016/7/26/1.jpg"  /></div>--%>
                <div class="info">
                    <div class="border_d_b pb10">

                        项目规模：<span class="gray3 f30">${xiangqing.xmmoney}</span>元
                    </div>
                    <ul class="data clearfix">
                        <li>年化利率<span class="f30 orange">${xiangqing.apr}</span><span class="f18 orange">%</span></li>
                        <li class="line"></li>
                        <li>投资期限
                            <span class="f30 gray3">${xiangqing.tzqixian}</span><span class="f18"></span>
                        </li>
                    </ul>
                    <ul class="other_info clearfix mt20">
                        <li class="long"><div class="progress">进度<span class="progress_bg ml5"><span class="progress_bar" style="width:0%;"></span></span> <span class="cent">0%</span> </div></li>
                        <li>发布日期：<fmt:formatDate value="${xiangqing.faburiqi}" pattern="yyyy-MM-dd" /></li>
                        <li>担保方：<span >${xiangqing.gongsiming}</span></li>
                        <li>保障方式：${xiangqing.danbaofangshi}</li>
                        <li>还款方式：${xiangqing.huankuanfangshi}</li>
                      <%--  <li>
                            剩余时间：

                            <font><em class="f18 gray33" id="ckDay">23</em>天</font>
                            <em class="f18 gray33" id="ckHour">6</em>时
                            <em class="f18 gray33" id="ckMin">11</em>分
                            <font style="display: none;"><em class="f18 gray33" id="ckSecond">29</em>秒</font>
                        </li>--%>
                        <li>
                        </li>
                        <li class="long">
                            风险提示：详见<a href="javascript:showFXTS()" class="highlight">《风险提示函》</a>
                        </li>
                        <li class="long">投资人条件：风险承受等级“谨慎型及以上”</li>
                    </ul>
                </div>
            </div>
        </div>

            <div class="right">
                <form target="bidForm" name="agreeform" class="form1" id="bidForm"  >

                    <div class="right">
                        <div class="f18 border_d_b tc pb5">项目剩余可投金额<br /><span class="f30">${xiangqing.haixuzijin}</span>元</div>
                        <div class="mt10"><%--<a href="#" class="blue fr">充值</a>--%>
                            可用金额：<span class="orange"><em class="bold">${listuser.yue}</em></span> 元</div>
                        <p class="mt5">最大可投金额：
                            <span class="orange bold">${xiangqing.haixuzijin}</span> 元
                        </p>
                        <div class="focus_input pr mt15">
                            <input id="amount" name="amount" maxlength="10" type="text" class="focus_text"  onblur="lixi()" autocomplete="off"/>
                        </div>
                        <p id="dxje">&nbsp;</p>
                        <p id="yqCount">预期收益金额：<span class="orange" id="yqCountEm"></span> 元</p>
                        <div class="mt15 f12">
                            <input name="iAgree" type="checkbox" id="iAgree"  class="m_cb"/>&nbsp;<label for="iAgree">我已阅读并同意</label>
                            <a href="javascript:showFXTS()" class="highlight">《风险提示函》</a>
                            <a onclick="submita()" href="javascript:void(0);"  class="btn01  sub-btn" style="margin-top: 5px;">确认投资</a>
                        </div>
                    </div>

                </form>

            </div>


        <div id="shurumima" class="dialog" style="display:none">
            <div class="title tc">请输入交易密码 <a href="javascript:closeInfo();" class="out"></a></div>
            <div class="content" style="max-height: 490px; overflow-y: auto;"><p>
                <span style="color:#666666;font-family:Microsoft YaHei;font-size:14px;line-height:21px;background-color:#FFFFFF;">请输入交易密码</span>
            </p>

	<div class="content">
        <input id="mimaaaaaaa"  maxlength="10" type="password" class="focus_text" />
        </div>
                <div class="tc pb20 pt20"><a href="javascript:queding()" class="btn01">确定</a> </div>
                <div class="tc pb20 pt20"><a href="javascript:quxiao()" class="btn01">取消</a></div>

    </div>
        </div>

    <script>
            function showFXTS(){
                var h=$(window).height()-200;
                if(h<600){	$("#showFXTSH .content").height(h);
                    $("#showFXTSH").css({"top":"50%","margin-top":(h+160)/2*(-1)});
                }
                $("#showFXTSH").show();
            }

            function closeFXTS(){
                $("#showFXTSH").hide();
            }
        </script>



        <script type="application/javascript">
            function submita(){
                var session1 =    "${sessionScope.listuser.id}"
                if(session1==null||session1==""){
                    alert("请先登录")
                    location.href="<%=request.getContextPath()%>/thisweb/login.html";
                }else
               if(lixi()){
                   var fuxuan = $("#iAgree").is(":checked");
                   if(fuxuan==true){
                       $("#shurumima").show();
                   }else{
                       alert("请阅读风险提示函");
                   }
               }

            }


            function quxiao(){
                $("#mimaaaaaaa").val(null);
                $("#shurumima").hide();
            }

            function queding(){
                var mima =  $("#mimaaaaaaa").val();
                var session2 =    "${sessionScope.listuser.id}"
                var jine = $("#amount").val();
                var jkid = ${xiangqing.xmid}
                    $.ajax({
                        url: '<%=request.getContextPath()%>/shouye/mimayanzheng.do',
                        type: 'post',
                        datatype:'text',
                        data: {"mima":mima,"userid":session2,"jine":jine,"jkid":jkid},
                        success: function (data) {
                            if(data=="yes")
                            {

                                alert("下蛋成功！咯咯咯！");
                                $("#mimaaaaaaa").val(null);
                                $("#shurumima").hide();
                            }else {
                                alert("交易密码错误！")
                            }
                        }

                    })

            }
        </script>



        <script type="application/javascript">
            function lixi(){
                var apr = ${xiangqing.apr}/100
                var haixuzijin = ${xiangqing.haixuzijin};
                var jine = $("#amount").val();
                var myreg = /^[0-9]([0-9])*$/;
                var yue =    "${sessionScope.listuser.yue}"
                if(yue<haixuzijin){
                    alert("您的账户余额不足")
                    return false;
                }else
                if(jine==null||jine==""){
                    alert("请输入金额")
                    return false;
                }else
                if(jine>haixuzijin){
                    alert("金额不可大于可投金额")
                    return false;
                }else if(!myreg.test(jine)){
                    alert("投资金额必须为整数！")
                    return false;
                }
                else{
                    $("#yqCountEm").html((jine*apr).toFixed(2));
                    return true;
                }


            }


        </script>
    </div>
    <div id="showFXTSH" class="dialog" style="display:none">
        <div class="title tc">风险提示函 <a href="javascript:closeInfo();" class="out"></a></div>
        <div class="content" style="max-height: 490px; overflow-y: auto;"><p>
            <span style="color:#666666;font-family:Microsoft YaHei;font-size:14px;line-height:21px;background-color:#FFFFFF;">风险提示函</span>
        </p>
            <p>
	<span style="color:#666666;font-family:'Microsoft yahei';font-size:14px;line-height:21px;background-color:#FFFFFF;">
	<div class="content">
            <p style="font-size:13px;color:#878D96;font-family:'Microsoft YaHei', 'Glyphicons Halflings';background-color:#FFFFFF;">
                <span style="font-family:Microsoft YaHei;font-size:14px;">出借人应认真阅读《黄金杯网站服务协议》、资金出借相关协议（《借款合同》、《债权转让协议》、《黄金杯P2P体验计划用户协议书》等）、本函内容及本网站（</span><a href="http://www.xinxindai.com/"><span style="font-family:Microsoft YaHei;font-size:14px;">www.baidu.com</span></a><span style="font-family:Microsoft YaHei;font-size:14px;">）关于资金出借、资费介绍、标的说明等操作规则，充分了解在本网站上出借资金的法律意义及相关风险，并根据自身的出借经验、出借目的、出借期限、自身资产状况等判断所选择的借款标的是否与自身的风险承受能力相当。&nbsp;</span><br />
                <span style="font-family:Microsoft YaHei;font-size:14px;"> 出借人的资金在出借过程中可能面临各种风险，包括但不限于市场风险、信用风险、利率风险、流动性风险以及战争、自然灾害等不可抗力导致的出借资金损失。&nbsp;</span><br />
                <span style="font-family:Microsoft YaHei;font-size:14px;"> 主要风险说明如下：&nbsp;</span>
            </p>
            <h3 style="font-family:'Microsoft YaHei';font-weight:300;color:#525252;font-size:18px;background-color:#FFFFFF;">
                <span style="font-family:Microsoft YaHei;font-size:14px;">一、政策风险</span>
            </h3>
            <span style="color:#878D96;font-family:Microsoft YaHei;font-size:14px;background-color:#FFFFFF;">国家宏观政策、财政政策、货币政策、行业政策、地区发展政策的变动可能会对出借方执行产生不利影响，对此黄金杯网络科技有限公司不承担责任。&nbsp;</span><br />
            <br />
            <br />
            <h3 style="font-family:'Microsoft YaHei';font-weight:300;color:#525252;font-size:18px;background-color:#FFFFFF;">
                <span style="font-family:Microsoft YaHei;font-size:14px;">二、借款方信用风险</span>
            </h3>
            <strong></strong><span style="color:#878D96;font-family:Microsoft YaHei;font-size:14px;background-color:#FFFFFF;">当
借款方因突发事件或其他不可预见的事件，导致短期或者长期丧失还款能力
(包括但不限于借款人收入情况、财产状况发生变化、人身出现意外、发生疾病、死亡等情况)，或者借款人的还款意愿发生变化时，出借人的资金可能无法按时回
收。如果出借人所投借款标的属于风险准备金专用账户保障范围内的类型，则当借款人逾期还款时，出借人的资金将根据本网站公示的风险准备金规则得到补偿；若
风险准备金专用账户余额不足以弥补当期所有的逾期借款人的违约金额时，出借人当期应得到的回款可能延迟回收。&nbsp;</span><br />
            <br />
            <br />
            <h3 style="font-family:'Microsoft YaHei';font-weight:300;color:#525252;font-size:18px;background-color:#FFFFFF;">
                <span style="font-family:Microsoft YaHei;font-size:14px;">三、资金流动性风险</span>
            </h3>
            <strong></strong><span style="color:#878D96;font-family:Microsoft YaHei;font-size:14px;background-color:#FFFFFF;">出
借人按照约定将资金出借给借款人使用，在借款人不主动提前还款的情况下，借款人将按照约定的期限分期偿还出借人的本金和利息，出借人的出借资金将分期回
收，因此资金回收需要一定的周期；若出借人需要提前回收出借资金，则本网站将在出借人提出需要以及其他对出借人有利的时机，帮助出借人寻找、向出借人推荐
愿意受让出借人债权资产的第三方，但不能确保一定能够在出借人需求的时间协助出借人寻找到合适的债权受让人。&nbsp;</span><br />
            <br />
            <br />
            <h3 style="font-family:'Microsoft YaHei';font-weight:300;color:#525252;font-size:18px;background-color:#FFFFFF;">
                <span style="font-family:Microsoft YaHei;font-size:14px;">四、不可抗力的风险</span>
            </h3>
            <span style="color:#878D96;font-family:Microsoft YaHei;font-size:14px;background-color:#FFFFFF;">由于战争、动乱、罢工、自然灾害等不可抗力因素的出现，可能导致出借人的出借资金受到损失。&nbsp;</span><br />
            <br />
            <br />
            <h3 style="font-family:'Microsoft YaHei';font-weight:300;color:#525252;font-size:18px;background-color:#FFFFFF;">
                <span style="font-family:Microsoft YaHei;font-size:14px;">五、其他风险</span>
            </h3>
            <span style="color:#878D96;font-family:Microsoft YaHei;font-size:14px;background-color:#FFFFFF;">本风险提示函的揭示事项仅为列举性质，未能详尽列明出借人所面临的全部风险和可能导致出借人资产损失的所有因素。&nbsp;</span><br />
            <span style="color:#878D96;font-family:Microsoft YaHei;font-size:14px;background-color:#FFFFFF;">出借人在出借资金前，应认真阅读并理解相关业务规则、标的说明书、网站服务协议、电子借款合同及本风险提示函的全部内容，并确信自身已做好足够的风险评估与财务安排，避免因出借资金而遭受难以承受的损失。</span>
            <p style="font-size:13px;color:#878D96;font-family:'Microsoft YaHei', 'Glyphicons Halflings';background-color:#FFFFFF;">
                <span style="font-family:Microsoft YaHei;font-size:14px;">注：本函中 “出借人”是指在本网站注册，并以其自有合法资金通过本网站提供的信息服务获取收益的用户，包括网站各类借款标的投标人、债权受让人等。</span>
            </p>
            <p style="font-size:13px;color:#878D96;font-family:'Microsoft YaHei', 'Glyphicons Halflings';background-color:#FFFFFF;" align="left">
                <span style="font-family:Microsoft YaHei;font-size:14px;">&nbsp;</span>
            </p>
            <h2 class="text-center" style="font-family:'Microsoft YaHei';font-weight:300;color:#525252;font-size:22px;text-align:center;background-color:#FFFFFF;">
                <span style="font-family:Microsoft YaHei;font-size:14px;">出借人声明</span>
            </h2>
            <p style="font-size:13px;color:#878D96;font-family:'Microsoft YaHei', 'Glyphicons Halflings';background-color:#FFFFFF;">
                <br />
                <span style="font-family:Microsoft YaHei;font-size:14px;"> 出借资金为本人合法管理的资产，本人保证出借资金的来源及用途符合国家有关规定，承诺提供给新新贷网站的所有信息资料均合法、真实、准确、完整，没有任何虚假陈述、重大遗漏和误导。&nbsp;</span><br />
                <br />
                <span style="font-family:Microsoft YaHei;font-size:14px;"> 在签署相关协议前，本人已认真阅读《新新贷网站服务协议》、资金出借相关协议（《借款合同》、《债权转让协议》、《黄金杯•P2P体验计划用户协议书》等）、资金出借风险提示函及新新贷网站（</span><a href="http://www.xinxindai.com/"><span style="font-family:Microsoft YaHei;font-size:14px;">www.dimeng.net</span></a><span style="font-family:Microsoft YaHei;font-size:14px;">）关于资金出借、资费介绍、标的说明等操作规则及其他相关文件，充分了解在该网站上出借资金的法律意义及相关风险，同意遵守上述文件内容，并愿意承担相关风险。并已就此（在需要时）获取过独立的法律咨询。&nbsp;</span><br />
                <span style="font-family:Microsoft YaHei;font-size:14px;"> 特此声明！</span>
            </p>
        </div>
        <br />
        </span>
        </div>
    <div class="tc pb20 pt20"><a href="javascript:closeFXTS()" class="btn01">我已知悉</a></div>
</div>




<script type="text/javascript">
    function getWebSoketConnection() {
        var accountId = '';
        var webSocketUrt = '112.95.233.249:8503';
        var webSocket=new WebSocket("ws://"+webSocketUrt+"/pay/websocket/"+accountId);
        webSocket.onerror = function(event) {
            alert(event.data);
        };

        webSocket.onopen = function(event) {
            //alert("连接建立成功");
            //document.getElementById("list").innerHTML="连接建立成功！";
        };

        webSocket.onmessage = function(event) {
            //alert(event.data);
            //document.getElementById("list").innerHTML+="<br/>" + event.data;
            //$("#info").html(showDialogInfoReload(event.data, "successful"));
            $("#info").html(showSuccInfo(event.data, "successful", $("#sbSucc").val()));
        };
    }



    function sendMessage() {
        var msg=document.getElementById("nickname").value+"："+document.getElementById("textarea").value;
        document.getElementById("textarea").value="";
        webSocket.send(msg);
    }
</script>
<div class="item_details_con w1002">
  <%--  <div class="main_tab">
        <ul class="clearfix">
            <li id="bdxq" class="hover">标的详情</li>
            <li id="fkxx">风控信息</li>
            <li id="xgwj">相关文件</li>
            <li id="tzjl">投资记录</li>
        </ul>
    </div>--%>
    <div id="dataHtml" class="con details">

    </div>

</div>

</div>
<input type="hidden" name="isTG" id="isTG"
       value="false"/>
<input type="hidden" name="isOpenWithPsd" id="isOpenWithPsd"
       value="true"/>

<div id="info"></div>
<script type="text/javascript">
    var checkUrl = "/financing/sbtz/checkPsd.htm";
    var accountId = '';
    var _dataUrl = "/financing/sbtz/bdxqData.htm";
    var _bid = "139";
    var currentPage = 1;
    var pageSize = 10;
    var pageCount = 0;
    var attUrl = "/financing/sbtz/annex.htm";
    var isZrr = false;

    isZrr = true;
</script>

<!--底部开始-->
<div class="footer">
    <div class="wrap clearfix">
        <div class="info fl">

            <p class="mt10"><span class="f24 arial bold">13126568505</span>(9:00 - 18:00)</p>
            <p class="address">服务邮箱：963658059@qq.com<br>
                北京市海淀区西三旗明园大学</p>
        </div>
        <div class="line"></div>
        <div class="focus">
            <div class="til">关注我们 :</div>
            <div class="box"> <i class="weixin_icon"></i>
                <div class="code"> <i class="arrow"></i>
                    <div class="border"> <img src="/fileStore/0/2016/9/7/126.png"><br />
                        扫一扫关注微信 </div>
                </div>
            </div>
            <div class="box ml15"> <i class="app_icon"></i>
                <div class="code"> <i class="arrow"></i>
                    <div class="border"> <img src="/fileStore/0/2017/1/5/150.png"><br />下载客户端APP </div>
                </div>
            </div>
        </div>
        <div class="line"></div>
        <div class="nav">
            <ul class="clearfix">
                <li><a href="http://112.95.233.249:8503/gywm/gsjj.html">关于我们</a></li>
                <li><a href="http://112.95.233.249:8503/gywm/fklc.html">安全保障</a></li>
                <li><a href="http://112.95.233.249:8503/bzzx/xszy.html">新手入门1</a></li>

                <li><a href="http://112.95.233.249:8503/zxdt/mtbd.html">媒体报道</a></li>

                <li><a href="http://112.95.233.249:8503/gywm/zxns.html">招贤纳士2</a></li>
                <li><a href="http://112.95.233.249:8503/bzzx/czytx.html">帮助中心</a></li>
            </ul>
        </div>
    </div>
    <div class="wrap copyright tc">
        <p class="mb10">轻松贷款 投资无忧© 2014 112.95.233.249:8503 All Rights Reserved  | 备案号：粤ICP备13082949号</p>
        <div class="tc">
            <a href="#"><img src="/images/footer_44.jpg"></a>
            <a href="#"><img src="/images/footer_46.jpg"></a></div>
    </div>
</div>
<!--底部结束-->
<!--第三方流量统计 start-->
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?86d304fa5d25c231be274f4372eff9b5";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script><!--第三方流量统计 end --><link type="text/css" rel="stylesheet" href="/js/jquery-ui-1.10.4/css/smoothness/jquery-ui-1.10.4.custom.min.css" media="screen" />
<script type="text/javascript" src="/js/jquery-ui-1.10.4/js/jquery-ui-1.10.4.custom.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="/js/financing/sbtz.js"></script>
<script type="text/javascript" src="/js/financing/sbtz/bdxq.js"></script>
<script type="text/javascript" src="/js/amountUtil.js"></script>
<script type="text/javascript" src="/js/dialog.js"></script>

<script type="text/javascript" src="/js/highslide-with-gallery.js"></script>
<script type="text/javascript">

    var havaRZTG = 'true';
    var authText = "";
    var _rzUrl = "";
    hs.graphicsDir = '/js/graphics/';
    hs.align = 'center';
    hs.transitions = ['expand', 'crossfade'];
    hs.wrapperClassName = 'dark borderless floating-caption';
    hs.fadeInOut = true;
    hs.dimmingOpacity = .75;

    // Add the controlbar
    if (hs.addSlideshow) hs.addSlideshow({
        //slideshowGroup: 'group1',
        interval: 5000,
        repeat: false,
        useControls: true,
        fixedControls: 'fit',
        overlayOptions: {
            opacity: .6,
            position: 'bottom center',
            hideOnMouseOut: true
        }
    });
</script>
<iframe name="bidForm" id="iframeID1" src="" width="0" height="0" frameborder="0" />
</body>
</html>
