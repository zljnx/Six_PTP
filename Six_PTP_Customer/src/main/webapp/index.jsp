<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="keywords" content="黄金杯网贷系统"/>
    <meta name="description" content="黄金杯网贷系统"/>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/>
    <meta http-equiv="Pragma" CONTENT="no-cache"/>
    <meta http-equiv="Cache-Control" CONTENT="no-cache"/>
    <meta http-equiv="Expires" CONTENT="0"/><meta name="renderer" content="ie-comp" />
    <meta property="qc:admins" content="36215751376367246375"/>
    <meta property="wb:webmaster" content="e38aeae607353b18"/>
    <title>
        黄金杯网贷</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/shouyecss/shouye.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/shouyecss/shouye1.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/shouyecss/shouye2.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/shouyecss/shouye3.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/layui/layui.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/layui/css/layui.css">

    <script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=2876050872" type="text/javascript" charset="utf-8"></script>
</head>
<style type="text/css">
    .aaa{
        width:100%;
        border:1px solid #cceff5;background:#fafcfd;
        border-radius:10px;
    }
    .dl{
        margin-left:30px;
        background-color:white;
        position:relative;
    }
</style>
<body>
<!--浮层-->
<form action="" method="post"
      id="loginForm" name="loginForm" target="_self">
    <input type="hidden" id="openId" name="openId" value=""/>
    <input type="hidden" id="accessToken" name="accessToken" value=""/>
    <input type="hidden" id="_z" name="_z" value=""/>
</form>
<!--浮层-->

<div style="position:fixed; background:#fff; z-index:9999;width:100%;height:40px; overflow:hidden; display:block;" id='a3b299a7-a69c-4bb8-8185-28a3abfa7cf3'>
    <div style='padding-left:28%;color: #c30;font-size:18px;'>
        警告: 如果看到该信息,可能是因为您的浏览器没有启用JavaScript功能，请开启该功能并在重启后访问网站。
    </div>
</div>
<script type="text/javascript">try{document.getElementById('a3b299a7-a69c-4bb8-8185-28a3abfa7cf3').style.display='none';}catch(e){}</script>

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
<script type="text/javascript" src="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js" data-appid="101173448"  data-redirecturi=""  charset="utf-8"> </script>
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
                                <a href="http://wpa.qq.com/msgrd?V=1&uin=1203881034&exe=qq&Site=qq&menu=yes" target="_blank" title="客服GG">
                                    <span class="enterprise_q1"><img src="../images/90.jpg"/></span>
                                    客服GG</a>
                            </li>
                            <li>
                                <a href="http://wpa.qq.com/msgrd?V=1&uin=89753761&exe=qq&Site=qq&menu=yes" target="_blank" title="客服MM">
                                    <span class="enterprise_q1"><img src="../images/89.jpg"/></span>
                                    客服MM</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </li>
        <li>
            <a class="item code" href="javascript:void(0)">
                <i></i>
                <div class="con"><img src="../images/126.png"></div>
            </a>
        </li>
        <li><a class="item back" href="javascript:void(0);" id="re_top"><i></i></a></li>
    </ul>
</div>

<!--顶部条-->
<div class="top-container">
    <div class="wrap">
        <div class="top-center">
            <div class="logo-container"><a href="http://112.95.233.249:8503"><img src="<%=request.getContextPath()%>/images/logo.jpg" title="黄金杯网贷"></a></div>
            <div class="clearfix">
                <div class="head-container clearfix">
                    <div class="head-login-container">
                        <ul>
                            <!--未登录-->
                            <!--未登录 end-->

                            <!--已登录--2><!--已登录-->
                            <li>您好，</li>
                            <li class="user">
                                <a href="http://112.95.233.249:8503/user/" title="" class="highlight"></a>
                                <div class="child">
                                    <div class="arrow"></div>
                                    <a href="http://112.95.233.249:8503/user/capital/charge.html">充值</a>
                                    <a href="http://112.95.233.249:8503/user/capital/withdraw.html">提现</a>
                                    <a href="http://112.95.233.249:8503/user/capital/tradingRecord.html">资金管理</a>
                                    <a href="http://112.95.233.249:8503/user/financing/wdzq/hszdzq.html">理财管理</a>
                                    <a href="http://112.95.233.249:8503/user/credit/repaying.html">借款管理</a>
                                    <a href="javascript:void(0);" onclick="DMQQLogout();">安全退出</a>
                                </div>
                            </li>
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
                    <li><a href="<%=request.getContextPath()%>/thisweb/shouye.jsp" class="nav-a">首页</a></li>
                    <li>
                        <a class="nav-a" href="<%=request.getContextPath()%>/thisweb/woyaotouzi.jspi.jsp">我要投资</a>
                        <dl class="subnav">
                            <dd><a href="http://112.95.233.249:8503/financing/sbtz/">投资项目</a></dd>
                            <dd><a href="http://112.95.233.249:8503/financing/sbtz/index.html?btype=3">债权转让</a></dd>
                        </dl>
                    </li>
                    <li><a href="http://112.95.233.249:8503/credit/" class="nav-a">我要借款</a>
                        <dl class="subnav">
                            <dd><a href="http://112.95.233.249:8503/credit/xjd/">信用贷</a></dd>
                            <dd><a href="http://112.95.233.249:8503/credit/dkyx.html">个人借款</a></dd>
                            <dd><a href="http://112.95.233.249:8503/credit/qydkyx.html">企业借款</a></dd>
                        </dl>
                    </li>
                    <li class="item"><div class="nav"><a href="http://112.95.233.249:8503/xxpl/baxx.html">信息披露</a></div></li>
                    <li><a href="http://112.95.233.249:8503/user/" class="nav-a">我的账户</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div id="info"></div>
<div class="popup_bg" style="display:none"></div>
<!--头部-->
<!--浮层-->
<script type="text/javascript" src="<%=request.getContextPath()%>/shouyecss/shouye5.js"></script>

<!--banner-->
<div class="layui-carousel" id="lunbo">
    <div carousel-item="">
        <div><img src="../images/80.jpg"></div>
        <div><img src="../images/123.jpg"></div>
    </div>
</div>
<script type="application/javascript">
    layui.use(['carousel', 'form'], function() {
        var carousel = layui.carousel
            , form = layui.form;

        //图片轮播
        carousel.render({
            elem: '#lunbo'
            ,width: '1349px'
            ,height: '400px'
            ,interval: 5000
        });
    });
</script>
<%--<div class="banner-container">
    <div class="banner clearfix">
        <ul class="rslides rslides1">
            <li style="background: url(../images/80.jpg) center 0px no-repeat; display: list-item; float: left; position: relative;" id="rslides1_s0" class="rslides1_on">
                <a target="_blank" href="http://www.baidu.com/"></a>
            </li>
            <li style="background: url(../images/123.jpg) center 0px no-repeat; display: none; float: none; position: absolute;" id="rslides1_s1" class="">
            </li>
        </ul>
        <a href="#" class="rslides_nav rslides1_nav prev">Previous</a>
        <a href="#" class="rslides_nav rslides1_nav next">Next</a>
        <ul class="rslides_tabs rslides1_tabs"><li class=""><a href="#" class="rslides1_s1">1</a></li><li class="rslides_here"><a href="#" class="rslides1_s2">2</a></li></ul>

    </div>
</div>--%>
<!--banner end-->



<!--Notice-->
<div class="notice-container clearfix">
    <div class="wrap pr clearfix"><i class="icon horn-icon"></i>
        <div class="notice-list-container clearfix">
            <div class="bd">
                <ul>
                    <li><span class="fr">2018-05-15</span><a target="_blank"  title="2-2016年已过半，黄金杯网贷大事回顾……">【活动】2-2016年已过半，黄金杯网贷大事回顾……</a></li>
                    <li><span class="fr">2018-01-22</span><a target="_blank"  title="限额表">【活动】限额表</a></li>
                    <li><span class="fr">2017-05-08</span><a target="_blank"  title="2016年已过半，黄金杯网贷大事回顾……">【活动】2016年已过半，黄金杯网贷大事回顾……</a></li>
                    <li><span class="fr">2017-04-25</span><a target="_blank"  title="限额表">【系统】限额表</a></li>
                </ul>
            </div>
        </div>
        <a href="http://112.95.233.249:8503/zxdt/index.html" class="fr">更多 ></a>
    </div>

</div>
<!--Notice end-->
<div class="wrap">
    <!--investment-->
    <div class="investment-index">
        <div class="wrap pr">
            <div class="investment-container">
                <ul>
                    <li>
                        <div class="item-box border_r">
                            <span>累计投资总额</span>
                            <span class="highlight f24 bold" data-from="0.00" data-to="147.41" id="zongjine"></span><span class="highlight">元</span>
                        </div>
                    </li>
                    <li>
                        <div class="item-box border_r"><span>累计投资总收益</span>
                            <span class="highlight f24 bold" data-from="0.00" data-to="4.71" id="shouyi"></span><span class="highlight">元</span>
                        </div>
                    </li>
                    <li>
                        <div class="item-box"> <span>累计投资人数</span><span class="highlight f24 bold" data-from="0" data-to="29" id="zongrenshu"></span><span class="highlight">人</span> </div>
                    </li>
                </ul>
            </div>
            <a href="#" class="more-btn">更多数据 ></a> </div>
    </div>
    <script type="application/javascript">
        $(function(){
            $.ajax({
                url:"<%=request.getContextPath()%>/shouye/tongji.do",
                type:"post",
                success:function(data){
                    $("#zongrenshu").html(data.zongrenshu);
                    $("#shouyi").html(data.shouyi);
                    $("#zongjine").html(data.zongjine);
            }
            })

        })

    </script>
    <!--investment end-->


    <!--icon video-->
    <div class="icon-video-container">
        <div class="icon-container">
            <ul>
                <li>
                    <div class="item-box" onclick="location.href='../'">
                        <div class="pic pic-01"></div>
                        <h3 class="f20 tc">投资理财</h3>
                        <p>成为理财人，通过主动投资或加入优选理财计划将资金进行出借投资，可获得预期<br />12-15%的稳定年化收益。</p>
                    </div>
                </li>
                <li>
                    <div class="item-box" onclick="location.href='../'">
                        <div class="pic pic-02"></div>
                        <h3 class="f20 tc">快捷借款</h3>
                        <p>成为借款人，按照要求完善个人信息，通过发标进行贷款，最快2小时可获得所需资金。</p>
                    </div>
                </li>
                <li>
                    <div class="item-box" onclick="location.href='http://112.95.233.249:8503/gywm/fklc.html'">
                        <div class="pic pic-03"></div>
                        <h3 class="f20 tc">资金安全</h3>
                        <p>所有投资标的100%适用本息保障计划，如遇贷款人违约，黄金杯网贷将通过风险备用金有效保障理财人的本息安全。</p>
                    </div>
                </li>
            </ul>
        </div>
        <!--视频-->

        <div class="video-box">
            <div style="width: 318px;height: 2px;">&nbsp;</div>
            <div id="jp_container_1" class="jp-video jp-video-360p" role="application" aria-label="media player" style="width: 318px;height: 240px;">
                <div class="jp-type-single">
                    <div id="jquery_jplayer_1" class="jp-jplayer" style="width: 318px; height: 240px;">
                        <img id="jp_poster_0" style="width: 318px; height: 240px; display: none;">
                        <video id="jp_video_0" preload="metadata" src="<%=request.getContextPath()%>/images/82.mp4" style="width: 318px; height: 240px;"></video>
                    </div>
                    <div class="jp-gui">
                        <div class="jp-video-play">
                            <button class="jp-video-play-icon" role="button" tabindex="0"></button>
                        </div>
                    </div>
                    <div class="jp-no-solution">

                    </div>
                </div>
                <div class="video_start" style="display:none;"><a href="javascript:void(0);"></a></div>
            </div>
        </div>
        <!--视频-->
    </div>
    <!--icon video end-->


    <div class="video_jplayer" style="display:none;">
        <span class="video_jplayer_close" id="vid_colse">×</span>
        <div class="video_show">
        </div>
    </div>

    <script type="text/javascript" src="<%=request.getContextPath()%>/shouyecss/shouye4.js"></script>
    <script type="text/javascript">

        $("#index_video").click(function () {
            $(".video_jplayer").show();
            $("#jquery_jplayer_1").jPlayer("play");

        });
        $("#vid_colse").click(function () {
            $("#jquery_jplayer_1").jPlayer("pause");
            $(".video_jplayer").hide();
        });

        function gd(i) {
            if (i == 1) {
                document.getElementById('gd').href = '/zxdt/wdhyzx.html';
            } else {
                document.getElementById('gd').href = '/zxdt/hlwjryj.html';
            }
        }
        function onSubmit() {
            var modulus = "009e55b21b5b66a44b52a7e14844215b63ea7067b727fa1e729c7e7863c4654007128d046bba2e69121bfd70858947010430d3f953c55a46a8511ce4b296d51587f04e8e10caaf1ae59ab17a9a63eebb024bb524b5bbf2e5bfbe011f7c5518aa3c520445aaf444bc8471099822bdddfc33a4cfa84e009e104d033fcb4f6b4a293f", exponent = "010001";
            var key = RSAUtils.getKeyPair(exponent, '', modulus);
            $("#passwordOne").val(RSAUtils.encryptedString(key, $("#passwordOne").val()));
            $("#passwordTwo").val(RSAUtils.encryptedString(key, $("#passwordTwo").val()));
            return true;
        }

        $(document).ready(function(){

            $("#jp_container_1").click(function () {
                $(".video_start").hide();
                $("#jquery_jplayer_1").jPlayer("play");
            });

            $("#jquery_jplayer_1").jPlayer({
                ready: function () {
                    $(this).jPlayer("setMedia", {
                        m4v: "../images/82.mp4"
                    }).jPlayer("play");
                },
                swfPath: "/js/jplayer/jquery.jplayer.swf",
                supplied: "m4v",
                size: {
                    width: "318px",
                    height: "240px",
                    cssClass: "jp-video-360p"
                },
                ended: function() {
                    $(".video_start").show();
                },
                useStateClassSkin: true,
                autoBlur: false,
                smoothPlayBar: true,
                keyEnabled: true,
                remainingDuration: true,
                toggleDuration: true
            });

        });

        $(".video_start").click(function () {
            $(".video_start").hide();
            $("#jquery_jplayer_1").jPlayer("play");
        });
    </script>
    <!--banner-->

  <div class="item_bg">
    <div class="item_list w1002" id="investData">
        <div class="clear"></div>
        <!--recommend-->
        <div class="recommend-container">
            <div class="recommend-title icon">推荐标</div>
            <table class="datatable" id="tuijianbiao">
          <%--      <tr>
                    <td width="7%">
                        <i class="icon xin1-icon"></i>
                        <i class="icon bao-icon"></i></td>
                    <td class="td-title tl">
                        <div class="title-container"><a href="/financing/sbtz/index/138.html">买车</a></div>
                    </td>
                    <td width="10%">
                        <div class="f20 gray3">15.00%</div>
                        <div class="gray9">年化利率</div></td>
                    <td width="10%">
                        <div class="f20 gray3">
                            10个月
                        </div>
                        <div class="gray9">借款期限</div>
                    </td>
                    <td width="18%">
                        <div class="f20 gray3">
                            5.00万元
                        </div>
                        <div class="gray9">借款金额</div>
                    </td>
                    <td width="18%">

                        <p class="orange mt10" id="time">2018-06-01 00:00 即将开始</p>
                    </td>
                    <td width="15%">
                        <a href="/financing/sbtz/index/138.html" class="btn-border-gray">预发布</a>
                    </td>
                    <!--预发标
                     <td width="18%">2016-08-01 12:00 <br>即将开始</td>
                    <td width="15%"><a class="btn-border-gray">预发标</a></td>
                    -->
                </tr>--%>
            </table>
        </div>
        <script type="application/javascript">
            $(function(){
                $.ajax({
                    url:'<%=request.getContextPath()%>/shouye/tuijian.do',
                    type:'post',
                    success:function(data){
                       var tr="";
                       for(var i=0;i<data.length;i++){
                           tr+="<tr><td width=\"7%\"><i class=\"icon bao-icon\"></i></td>\n" +
                               "<td class=\"td-title tl\"><div class=\"title-container\">\n" +
                               "<a href=\"/\">"+data[i].jkBorrowingtitle+"</a></div></td>\n" +
                               "<td width=\"10%\"><div class=\"f20 gray3\">"+data[i].jkapr+"%</div><div class=\"gray9\">年化利率</div></td>\n" +
                               "<td width=\"10%\"><div class=\"f20 gray3\">"+data[i].jkdeadline+"</div>\n" +
                               "<div class=\"gray9\">借款期限</div></td><td width=\"18%\">\n" +
                               "<div class=\"f20 gray3\">"+data[i].jkAmount+"元</div>\n" +
                               "<div class=\"gray9\">借款金额</div></td>\n" +
                               "<td width=\"18%\"> <p class=\"orange mt10\" id=\"time\">"+data[i].yufabutime+" 即将开始</p></td>\n" +
                               "<td width=\"15%\"><a  class=\"btn-border-gray\">预发布</a>\n" +
                               "</td></tr>"
                       }
                       $("#tuijianbiao").html(tr)
                    }
                })
            })

        </script>
        <!--recommend end-->

        <script type="text/javascript">
            var endTime =276528000;
            var clearTime = null;
            function time() {
                var leftsecond = parseInt(endTime / 1000);
                var day = Math.floor(leftsecond / (60 * 60 * 24)) < 0 ? 0 : Math
                    .floor(leftsecond / (60 * 60 * 24));
                var hour = Math.floor((leftsecond - day * 24 * 60 * 60) / 3600) < 0 ? 0
                    : Math.floor((leftsecond - day * 24 * 60 * 60) / 3600);
                var minute = Math
                    .floor((leftsecond - day * 24 * 60 * 60 - hour * 3600) / 60) < 0 ? 0
                    : Math
                        .floor((leftsecond - day * 24 * 60 * 60 - hour * 3600) / 60);
                var second = Math.floor(leftsecond - day * 24 * 60 * 60 - hour * 3600
                    - minute * 60) < 0 ? 0 : Math.floor(leftsecond - day * 24 * 60
                    * 60 - hour * 3600 - minute * 60);
                if (hour < 10) {
                    hour = "0" + hour;
                }
                if (minute < 10) {
                    minute = "0" + minute;
                }
                if (second < 10) {
                    second = "0" + second;
                }
                //$("#time").html(hour+"时"+minute+"分"+second+"秒 开始发售");
                if (leftsecond <= 0) {
                    clearInterval(clearTime);
                    location.reload();
                }
            }

            clearInterval(clearTime);
        </script>
        <!--investment list-->
        <div class="investment-list-container" id="investTitle">
            <div class="investment-title">
                <ul class="tab-hd-ul tab-hd-container clearfix">
                    <li class="tab-item-btn item-li selectd" id="sbtz" onclick="initInvestData('sbtz')" >投资项目</li>
                    <li>｜</li>
                    <li class="tab-item-btn item-li" id="zqzr" onclick="initInvestData('zqzr')">债权转让</li>
                    <li class="more-li"><a href="#">更多></a></li>
                </ul>
            </div>
            <div class="investment-list tab-bd-container" id="investmentList">
                <div class="tab-item-con" id="touzizhuaiquan">

                    </table>
            </div>
        </div>
            <!-- 拼  我要投资，债权转让-->
            <script type="application/javascript">

                $(function(){
                    bbbbb();
                })

                function initInvestData(zt){
                    if(zt=="sbtz"){
                        bbbbb();
                    }else if(zt=="zqzr"){
                        $.ajax({
                            url:'<%=request.getContextPath()%>/shouye/zhaiquanzhuanrang.do',
                            type:'post',
                            success:function(data){
                                var table="<table class=\"table\"><thead><tr><th width=\"6%\"></th><th>项目名称</th><th width=\"10%\">年化利率</th>" +
                                    "<th width=\"10%\">剩余期数</th><th width=\"15%\">债权价值</th>" +
                                    "<th width=\"15%\">待收本息</th><th width=\"15%\">转让价格</th><th width=\"15%\">操作</th></tr></thead><tbody  id='zhaiquanzhuanrang'></tbody></table>";
                                $("#touzizhuaiquan").html(table);
                                var tr = "";
                                for (var i = 0; i < data.length; i++) {
                                    tr+="<tr><td class=\"tr\"><span class=\"pr10\"><i class=\"icon xin2-icon\"></i></span></td>" +
                                        "<td class=\"td-title tl\"><div class=\"title-container\">" +
                                        "<a title=\"#\" href=\"#\">"+data[i].borrowingtitle+"</a></div></td><td>" +
                                        "<div class=\"f20 gray3\">"+(data[i].zrapr)*100+"%</div></td><td><div class=\"f20\">"+data[i].restperiods+"</div></td>" +
                                        "<td><div class=\"f18 gray3\">"+data[i].amountbond+"元</div></td><td><div class=\"f18 gray3\">"+((data[i].amountbond)*(data[i].zrapr)+(data[i].amountbond))+"元</div></td>" +
                                        "<td><div class=\"f18 gray3\">"+data[i].transferprice+"元</div></td><td><span class=\"btn-border-gray\">已转让</span></td>"
                                }
                                $("#zhaiquanzhuanrang").html(tr);
                            }
                        })
                    }
                }

                function bbbbb(){
                    $.ajax({
                        url:'<%=request.getContextPath()%>/shouye/touziorjiekuan.do',
                        type:'post',
                        success:function(data){
                            var table='  <table class="table">\n' +
                                '                        <thead>\n' +
                                '                        <tr><th width="7%"></th>\n' +
                                '                            <th>项目名称</th>\n' +
                                '                            <th width="10%">年化利率</th>\n' +
                                '                            <th width="10%">借款期限</th>\n' +
                                '                            <th width="18%">借款金额</th>\n' +
                                '                            <th width="18%">进度</th>\n' +
                                '                            <th width="15%">操作</th></tr>\n' +
                                '                        </thead>\n' +
                                '                        <tbody id="touzixiangmu">\n' +
                                '\n' +
                                '                        </tbody>';
                            $("#touzizhuaiquan").html(table);
                            var tr="";
                            for (var i = 0; i < data.length; i++) {
                                tr+="<tr><td class=\"tr\">\n" +
                                    "<span class=\"pr10\"><i class=\"icon bao-icon\"></i></span>\n" +
                                    " </td>\n" +
                                    "<td class=\"td-title tl\">\n" +
                                    "<div class=\"tititle-containertle\">\n" +
                                    " <a title="+data[i].jkBorrowingtitle+" href=\"/financing/sbtz/index/140.html\">"+data[i].jkBorrowingtitle+"</a></div></td>\n" +
                                    " <td><div class=\"f20 gray3\">"+data[i].jkapr+"%</div></td><td><div class=\"f20 gray3\">"+data[i].jkdeadline+"</div></td>\n" +
                                    "<td><div class=\"f20 gray3\">"+data[i].jkAmount+"元</div></td>\n" +
                                    "<td><div class=\"progress-bar\"><p class=\"p-bg\"><span class=\"progress_bar\" style=\"width:100%;\"></span></p><span class=\"num\">100%</span></div></td>\n" +
                                    "<td><a  class=\"btn-border-gray\">已结清</a></td></tr>";

                            }

                            $("#touzixiangmu").html(tr)

                        }
                    })
                }

                function xiangqing(id){
                  location.href="<%=request.getContextPath()%>/shouye/xiangqing.do?xiangqing="+id;
                }
            </script>
        <!--investment list end-->
        <div id="info"></div>
        <form method="post" class="form1" name="zqzrForm" id="zqzrForm" action="http://112.95.233.249:8503/user/bid/zqzr.htm" >
            <input type="hidden" name="2c894a14-9399-41cb-9a23-c340819b4565" value="ebb0cc00-a0ce-4782-bac5-daf281ded5ac"><input type="hidden" id="zqSucc" name="zqSucc" value="http://112.95.233.249:8503/user/financing/zqzr/zqyzr.html">
            <input type="hidden" name="zqzrId" id="zqzrId">
            <div class="popup_bg"  style="display: none;"></div>
            <div class="dialog d_error w510" style="margin:-150px 0 0 -255px; display: none;" >
                <div id="idRisk" style="display:none"></div>
                <div id="id_content" style="display:none">
                    <div class="popup_bg"></div>
                    <div class="dialog">
                        <div class="title"><a href="javascript:closeInfo();" class="out" onclick="resetForm();"></a>债权购买确认</div>
                        <div class="content">
                            <div class="tip_information">
                                <div class="question"></div>
                                <div class="tips">
                                    <span class="f20 gray3">您此次购买债权价值为<span id="zqjz">0</span>元，<br />需支付金额<span id="zrjg">0</span>,确认购买？</span>
                                </div>
                                <div class="mt20">
                                    <span class="red">*</span>
                                    交易密码：<input type="password" onblur="checkVal()" class="required text_style" id="tran_pwd" autocomplete="off"/>
                                </div>
                                <div class="mt20">
                                    <span id="errorSpan"  class="red" style="display: none"></span>
                                </div>
                            </div>
                            <div class="tc mt10">
                                <input name="iAgree" type="checkbox" id="iAgree" class="m_cb"/>&nbsp;<label for="iAgree">我已阅读并同意</label>
                                <a target="_blank"  href="/term/ZQZRXY.html"
                                   class="highlight">《债权转让协议》</a>
                            </div>
                            <div class="tc mt10">
                                <a href="javascript:void(0)" id="" class="btn01 btn_gray btn_disabled sub-btn">确 定</a>
                                <a href="javascript:void(0);" id="cancel" onclick="resetForm();" class="btn01 btn_gray ml20">取消</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <input type="hidden" name="tranPwd" id="tranPwd" />
        </form>
        <input type="hidden" name="isTG" id="isTG" value="false"/>
        <input type="hidden" name="isOpenWithPsd" id="isOpenWithPsd" value="true"/>
        <script type="text/javascript" src="/js/dialog.js"></script>
        <script type="text/javascript" src="/js/financing/zqzr.js"></script>
        <script type="text/javascript">
            var _investUrl = "/invest.htm";
            var _sbtzMoreUrl = "http://112.95.233.249:8503/financing/sbtz/";
            var _zqzrMoreUrl = "http://112.95.233.249:8503/financing/sbtz/index.html?btype=3";
            var _sbtzXqUrl = "/financing/sbtz/index/";
            var _zqxqUrl = "/financing/sbtz/zqxq/";
            var _loginUrl = "http://112.95.233.249:8503/user/login.html";
            var _gyjzXqUrl = "/financing/gyb/gybXq/";
            var _gyjzListUrl = "http://112.95.233.249:8503/financing/gyb/gyJz.html";
            var _checkTxPwdUrl = 'http://112.95.233.249:8503/user/bid/checkTxPwd.htm';
            var tjbId = 138;
            var isInvestLimit='true';
            var isOpenRiskAccess ='true';
            $(function(){
                $("#okInvest").click(function(){
                    okInvest_click();
                });

                //“我同意”按钮切回事件
                $("input:checkbox[name='iAgree']").attr("checked", false);
                $("input:checkbox[name='iAgree']").click(function() {
                    var iAgree = $(this).attr("checked");
                    var register = $(".sub-btn");
                    if (iAgree) {
                        register.removeClass("btn_gray btn_disabled");
                        register.attr("id","okInvest");
                        //选中“我同意”，绑定事件
                        $("#okInvest").click(function(){
                            okInvest_click();
                        });
                    } else {
                        register.addClass("btn_gray btn_disabled");
                        $("#okInvest").unbind("click");
                        register.attr("id","");
                    }
                });
            });

            //重置我同意按钮
            function resetForm(){
                var register = $(".sub-btn");
                $("input:checkbox[name='iAgree']").attr("checked", false);
                register.addClass("btn_gray btn_disabled");
                $("#okInvest").unbind("click");
                register.attr("id","");
            }

            function okInvest_click(){
                var isTG= $("#isTG").val();
                var isOpenWithPds =  $("#isOpenWithPsd").val();
                if("true" == isOpenWithPds)
                {
                    keleyidialog();
                }else{
                    $("#zqzrForm").get(0).submit();
                }

            }
            function keleyidialog() {
                var tran_pwd = $("#tran_pwd").val();
                if(!tran_pwd){
                    $("#errorSpan").html("交易密码不能为空").css("fontSize","14px").show();
                    //return;
                }else{
                    $("#errorSpan").hide();
                    var sPwd= RSAUtils.encryptedString(key,tran_pwd);
                    $("#tranPwd").val(sPwd);
                    var param = {'tranPwd':sPwd};
                    $.ajax({
                        type:"post",
                        dataType:"html",
                        url: _checkTxPwdUrl,
                        data: param,
                        success:function(data){
                            data = eval("("+data+")");
                            if(data.code=="0001"){
                                $("#tran_pwd").next("span").hide();
                                $("div.dialog").hide();
                                $("div.popup_bg").hide();
                                //提交
                                $("#zqzrForm").get(0).submit();
                            }else{
                                $("#errorSpan").html(data.msg).css("fontSize","14px").show();
                            }
                        }
                        ,error : function(){
                            alert("系统繁忙，请稍后重试！");
                        }
                    });

                }
            }

            function checkVal(){
                var tran_pwd = $("#tran_pwd").val();
                if(!tran_pwd){
                    $("#errorSpan").html("交易密码不能为空").css("fontSize","14px").show();
                    //return;
                }else{
                    $("#errorSpan").hide();
                }
            }

            var isLogin = false;
            var isHmd = false;
            var isZrr = false;
            var isInvest = true;

            isLogin = true;

            isZrr = true;

            var userRiskLevel = 'BSX';
            var _rzUrl = '/user/account/userBases.html?userBasesFlag=1';
            var modulus = "009e55b21b5b66a44b52a7e14844215b63ea7067b727fa1e729c7e7863c4654007128d046bba2e69121bfd70858947010430d3f953c55a46a8511ce4b296d51587f04e8e10caaf1ae59ab17a9a63eebb024bb524b5bbf2e5bfbe011f7c5518aa3c520445aaf444bc8471099822bdddfc33a4cfa84e009e104d033fcb4f6b4a293f", exponent = "010001";
            var key = RSAUtils.getKeyPair(exponent, '', modulus);




            function sbtzCountdown(F13Time,id) {
                //去掉此倒计时操作，只在详情页倒计时
                /*var date = new Date();
                var timeamp = '1527505872000';
                date.setTime(F13Time);
                var sbtzEndTime = date.getTime()-timeamp;
                setInterval(function() {
                    sbtzEndTime = sbtzEndTime - 1000;
                    var time = sbtzEndTime;
                    //sbtzTime(time,id);
                    if(time <= 0){
                        clearInterval(this);
                        location.reload();
                    }
                }, 1000);*/
            }

            function sbtzTime(sbtzEndTime,id) {
                var leftsecond = parseInt(sbtzEndTime / 1000);
                var day = Math.floor(leftsecond / (60 * 60 * 24)) < 0 ? 0 : Math
                    .floor(leftsecond / (60 * 60 * 24));
                var hour = Math.floor((leftsecond - day * 24 * 60 * 60) / 3600) < 0 ? 0
                    : Math.floor((leftsecond - day * 24 * 60 * 60) / 3600);
                var minute = Math
                    .floor((leftsecond - day * 24 * 60 * 60 - hour * 3600) / 60) < 0 ? 0
                    : Math
                        .floor((leftsecond - day * 24 * 60 * 60 - hour * 3600) / 60);
                var second = Math.floor(leftsecond - day * 24 * 60 * 60 - hour * 3600
                    - minute * 60) < 0 ? 0 : Math.floor(leftsecond - day * 24 * 60
                    * 60 - hour * 3600 - minute * 60);
                if (hour < 10) {
                    hour = "0" + hour;
                }
                if (minute < 10) {
                    minute = "0" + minute;
                }
                if (second < 10) {
                    second = "0" + second;
                }
                //$("#sbtzTime"+id).html(hour+"时"+minute+"分"+second+"秒 开始发售");
            }
        </script>
    </div>
</div>
    <div class="new-container clearfix">
        <!--left box-->
        <div class="left-box">
            <div class="pr40">
                <!--media-->
                <div class="media">
                    <div class="new-hd"><a href="#" class="more">更多></a>
                        <span class="media_title">媒体报道</span></div>
                    <div class="" id="aaa" style="width:700px" align="left">

                    </div>
                </div>
                <script type="application/javascript">
                    $(function(){
                        $.ajax({
                            url:"<%=request.getContextPath()%>/shouye/queryNews.do",
                            dataType: 'json',
                            method: 'GET',
                            success:function(result){
                                var aas="";
                                var bb="";
                                for (var i = 0; i < 10; i++) {
                                    aas+="<div><h4 onclick='queryNewsBytitle(this)'><font color='red'>●</font> &nbsp;<a href='javascript:#'>"+result[i].title+"</a></h3>";
                                    aas+="<div class='dl' style='display:none' >时间:<span>"+result[i].time+"</span><br/>来源: <span>"+result[i].src+"</span> <br/>  <br/><img src="+result[i].pic+"> <br/> <br/><div class='aaa'>"+result[i].content+"</div><br/><br/><br/>"
                                        +"</div></div> ";
                                }
                                $("#aaa").html(aas)

                            }
                        })
                    })
                    function queryNewsBytitle(obj){
                        //alert($(obj).href)//.attr("display","block");
                        //alert($(obj).parent().html())//.attr("display","block");
                        $(obj).next().toggle()

                    }
                </script>
                <!--media end-->

                <!--information-->
              <%--  <div class="information mt15">
                    <div class="new-hd"><a href="http://112.95.233.249:8503/zxdt/wdhyzx.html" class="more">更多></a><span class="media_title">网贷行业资讯</span></div>
                    <div class="new-bd" id="mtbdDataBody">
                        <ul style="height: 140px;">
                            <li><a href="#">测试测试测试测试测试1111111111111111 <em class="time">2018-05-21</em></a></li>
                            <li><a href="#">测试测试测试测试测试22222222222 <em class="time">2018-05-21</em></a></li>
                            <li><a href="#">测试测试测试测试测试3333333333333 <em class="time">2018-05-21</em></a></li>
                        </ul>
                    </div>
                </div>--%>
                <!--information end-->

                <!--school-->
               <%-- <div class="school mt15">
                    <div class="new-hd"><a href="http://112.95.233.249:8503/zxdt/index.html?type=HLWJRYJ" class="more">更多></a><span class="media_title">互联网金融研究</span></div>
                    <div class="new-bd" id="jrxyDatayBody">
                        <ul style="height: 140px;">
                            <li><a href="#">测试测试测试测试测试1111111111111111 <em class="time">2018-05-21</em></a></li>
                            <li><a href="#">测试测试测试测试测试22222222222 <em class="time">2018-05-21</em></a></li>
                            <li><a href="#">测试测试测试测试测试3333333333333 <em class="time">2018-05-21</em></a></li>
                        </ul>
                    </div>
                </div>--%>
                <!--school end-->

            </div>
        </div>

        <!--right box-->
        <div class="right-box">

            <!--ranking-->
            <div class="ranking-container" style="width:251px; height:430px;">
                <div class="title"><i class="icon ranking-icon"></i><span>投资排行榜</span></div>
                <div class="tab-nav tab-hd-container">
                 <%--   <a id="ranking1" href="javascript:setTab('ranking',1,3)" class="tab-item-btn tab-a selectd">周</a>
                    <a id="ranking2" href="javascript:setTab('ranking',2,3)" class="tab-item-btn tab-a">月</a>
                    <a id="ranking3" href="javascript:setTab('ranking',3,3)" class="tab-item-btn tab-a">年</a>--%>
                </div>
                <div class="content tab-bd-container" style="">
                    <!--box 1-->
                    <div class="tab-item-con" id="con_ranking_1">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>用户名</th>
                                <th>投资金额(元)</th>
                            </tr>
                            </thead>
                            <tbody id="paiming">
                           <%-- <tr>
                                <td><i class="i-box icon ranking2-icon-1">1</i></td>
                                <td>lih***8</td>
                                <td>4,000.00</td>
                            </tr>
                            <tr>
                                <td><i class="i-box icon ranking2-icon-2">2</i></td>
                                <td>wan***n</td>
                                <td>2,000.00</td>
                            </tr>
                            <tr>
                                <td><i class="i-box icon ranking2-icon-3">3</i></td>
                                <td>dim***g</td>
                                <td>2,000.00</td>
                            </tr>
                            <tr>
                                <td><i class="i-box i-box2">4</i></td>
                                <td>t18***8</td>
                                <td>2,000.00</td>
                            </tr>--%>
                            </tbody>
                        </table>
                    </div>

                     <script type="application/javascript">

                         $(function(){
                             $.ajax({
                                 url:"<%=request.getContextPath()%>/shouye/paihang.do",
                                 type:"post",
                                 success:function(data){
                                        var tr="";
                                        for(var i=0;i<data.length;i++){
                                            tel1 =data[i].loginname.replace(data[i].loginname.substring(2,5), "****")
                                           tr+="  <tr>" +
                                               "  <td >"+tel1+"</td>" +
                                               " <td>"+data[i].investmentamount+"</td>" +
                                               " </tr>"
                                        }

                                     $("#paiming").html(tr)
                                 }
                             })
                         })

                     </script>

                    <!--box 1 end-->

                   <%-- <!--box 2-->
                    <div class="tab-item-con" style="display:none;"  id="con_ranking_2">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>排名</th>
                                <th>用户名</th>
                                <th>投资金额(元)</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><i class="i-box icon ranking2-icon-1">1</i></td>
                                <td>qiu***0</td>
                                <td>13,000.00</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!--box 2 end-->

                    <!--box 3-->
                    <div class="tab-item-con hide" id="con_ranking_3">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>排名</th>
                                <th>用户名</th>
                                <th>投资金额(元)</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><i class="i-box icon ranking2-icon-1">1</i></td>
                                <td>qiu***0</td>
                                <td>13,000.00</td>
                            </tr>
                            <tr>
                                <td><i class="i-box icon ranking2-icon-2">2</i></td>
                                <td>lih***8</td>
                                <td>12,000.00</td>
                            </tr>
                            <tr>
                                <td><i class="i-box icon ranking2-icon-3">3</i></td>
                                <td>wan***n</td>
                                <td>10,200.00</td>
                            </tr>
                            <tr>
                                <td><i class="i-box i-box2">4</i></td>
                                <td>dim***g</td>
                                <td>10,200.00</td>
                            </tr>
                            <tr>
                                <td><i class="i-box i-box2">5</i></td>
                                <td>t18***8</td>
                                <td>10,000.00</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!--box 3 end-->--%>


                </div>
            </div>
            <!--ranking end-->


        </div>
    </div>
    <script type="text/javascript">
        var _infoUrl = "/info.htm";
        var _mtbdMoreUrl = "http://112.95.233.249:8503/zxdt/mtbd.html";
        var _wdhyzxMoreUrl = "http://112.95.233.249:8503/zxdt/wdhyzx.html";
        var _wzggMoreUrl = "http://112.95.233.249:8503/zxdt/index.html";
        var _hlwjryjMoreUrl = "http://112.95.233.249:8503/zxdt/index.html?type=HLWJRYJ";
        var _mtbdXqUrl = "/zxdt/mtbd/";
        var _wdhyzxXqUrl = "/zxdt/wdhyzx/";
        var _wzggXqUrl = "/zxdt/wzgg/";
        var _hlwjryjXqUrl = "/zxdt/hlwjryj/";
    </script>

    <script type="text/javascript">

        //tab切换
        function setTab(name,cursel,n){
            var hover="selectd";
            for(var i=1;i<=n;i++){
                var menu=$("#"+name+i);
                var con=document.getElementById("con_"+name+"_"+i);
                if(i==cursel){
                    menu.addClass(hover);
                }
                else{
                    menu.removeClass(hover);
                }

                if (con)con.style.display=i==cursel?"block":"none";
            }
        }
    </script><!--合作伙伴-->
    <div class="wrap cooperation">
        <div class="hd clearfix">合作伙伴</div>
        <div class="cooperation_bd clearfix">
            <div class="prev"><a class="">上一个</a></div>
            <div class="bd">
                <ul class="picList clearfix">
                    <li><a href="http://www.baidu.com" target="_blank" title="人民网"><img src="../images/70.jpg" alt="人民网"/></a></li>
                    <li><a href="http://www.baidu.com " target="_blank" title="腾讯"><img src="../images/71.jpg" alt="腾讯"/></a></li>
                    <li><a href="http://www.sina.cn" target="_blank" title="新浪"><img src="../images/72.jpg" alt="新浪"/></a></li>
                    <li><a href="http://www.baidu.com" target="_blank" title="IBM"><img src="../images/73.jpg" alt="IBM"/></a></li>
                    <li><a href="http://www.baidu.com" target="_blank" title="CCTV"><img src="../images/74.jpg" alt="CCTV"/></a></li>
                    <li><a href="http://www.baidu.com" target="_blank" title="第一财经"><img src="../images/75.jpg" alt="第一财经"/></a></li>
                </ul>
            </div>
            <div class="next"><a class="">下一个</a></div>
        </div>
    </div>
    <!--合作伙伴-->
</div>
<!--友情链接-->
<div class="wrap">
    <div class="link">
        <div class="hd">友情链接：</div>
        <ul class="bd clearfix">
            <li><a href="http://test" target="_blank" title="test">test</a></li>
            <li><a href="http://qq" target="_blank" title="wwww">wwww</a></li>
            <li><a href="http://www.baidu.com" target="_blank" title="百度">百度</a></li>
        </ul>
    </div>
</div>
<!--友情链接-->
<!--底部开始-->
<div class="footer">
    <div class="wrap clearfix">
        <div class="info fl">
            <div class="footer_logo"><a href="http://112.95.233.249:8503"><img src="../images/footer_logo.png"></a></div>
            <p class="mt10"><span class="f24 arial bold">400 - 678 - 5518</span>(9:00 - 18:00)</p>
            <p class="address">服务邮箱：kefu@dimeng.net<br>
                广东省深圳市罗湖区振业大厦28楼</p>
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
            <a href="#"><img src="../images/footer_44.jpg"></a>
            <a href="#"><img src="../images/footer_46.jpg"></a></div>
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
</script><!--第三方流量统计 end --><script type="text/javascript" src="/js/validation.js"></script>
<script type="text/javascript" src="/js/percentage.js"></script>
<script type="text/javascript" src="/simple/js/index.js"></script>
</body>
</html>