<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2018/5/29
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的迪蒙网贷</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/>
    <META HTTP-EQUIV="Pragma" CONTENT="no-cache">
    <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
    <META HTTP-EQUIV="Expires" CONTENT="0">
    <script type="text/javascript" src="/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="/jquery/dialog.js"></script>
    <script type="text/javascript" src="/jquery/jquery-select-list.js"></script>
    <script type="text/javascript" src="/all/echarts/echarts.min.js"></script>
    <link rel="stylesheet" href="/all/simple/css/base.css">
    <link rel="stylesheet" type="text/css" href="/all/simple/css/user.css" />
    <link rel="stylesheet" href="/all/simple/css/common.css">
</head>

<body>
<!--顶部、头部-->
<!--顶部条-->
<div class="top-container">
    <div class="wrap">
        <div class="top-center">
            <div class="logo-container"><a href="#"><img src="/all/simple/images/logo.jpg" title="迪蒙网贷"></a></div>
            <div class="clearfix">
                <div class="head-container clearfix">
                    <div class="head-login-container">
                        <ul>
                            <!--未登录-->
                            <!--未登录 end-->
                            <!--已登录--2><!--已登录-->
                            <li>您好，</li>
                            <li class="user">
                                <a href="#" title="gechangquan" class="highlight">gechan...</a>
                                <div class="child">
                                    <div class="arrow"></div>
                                    <a href="#">充值</a>
                                    <a href="#">提现</a>
                                    <a href="#">资金管理</a>
                                    <a href="#">理财管理</a>
                                    <a href="#">借款管理</a>
                                    <a href="javascript:void(0);" onclick="DMQQLogout();">安全退出</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="top_bar"><a href="#" class="icon sine-icon mr15"></a>
                        <a href="#" class="icon wechat-icon mr15">
                            <div class="code tc"><i class="arrow"></i>
                                <div class="border"><img src="#"><br />
                                    关注迪蒙网贷微信 </div>
                            </div>
                        </a>
                        <a href="#">新手指引</a> |
                        <a href="#">帮助中心</a> |
                        <a href="#">手机客户端
                            <div class="code tc"><i class="arrow"></i>
                                <div class="border">
                                    <img src="#"><br />下载客户端APP
                                </div>
                            </div>
                        </a> </div>
                </div>
            </div>
            <div class="top-nav clearfix">
                <ul class="clearfix">
                    <li><a href="#" class="nav-a">首页</a></li>
                    <li>
                        <a class="nav-a" href="#">我要投资</a>
                        <dl class="subnav">
                            <dd><a href="#">投资项目</a></dd>
                            <dd><a href="#">债权转让</a></dd>
                        </dl>
                    </li>
                    <li>
                        <a href="#" class="nav-a">我要借款</a>
                        <dl class="subnav">
                            <dd><a href="#">信用贷</a></dd>
                            <dd><a href="#">个人借款</a></dd>
                            <dd><a href="#">企业借款</a></dd>
                        </dl>
                    </li>
                    <li><a href="#" class="nav-a">信息披露</a></li>
                    <li><a href="#" class="nav-a">我的账户</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--头部-->
<!--顶部、头部-->

<!--主体内容-->
<div class="main_bg clearfix">
    <div class="user_wrap w1002 clearfix">
        <!--左菜单-->
        <div class="w200">
            <div class="side_info">
                <div class="portrait">
                    <a href="#">
                        <img src='' id="mainimg"/>
                    </a>
                </div>
                <div class="title" title="gechangquan">gechangquan</div>
            </div>
            <div class="sidemenu">
                <div class="my_account"><a href="lzhAccount.jsp"><i class="icon"></i>我的账户</a></div>
                <ul class="menu">
                    <li class="group">
                        <span class="item "><i class="icon01"></i>资金管理</span>
                    </li>
                    <li class="group">
                        <span class="item "><i class="icon02"></i>理财管理</span>
                    </li>
                    <li class="group">
                        <span class="item "><i class="icon03"></i>借款管理</span>
                    </li>
                    <li class="group">
                        <span class="item " onclick="loaduser()"><i class="icon04"></i>账户管理</span>
                    </li>
                    <li class="group">
                        <span class="item "><i class="icon07"></i>我的奖励</span>
                    </li>
                    <li class="group">
                        <span class="item "><i class="icon06"></i>邀请好友</span>
                    </li>
                    <li class="group">
                        <span class="item "><i class="icon05"></i>消息管理</span>
                    </li>
                    <li class="group">
                        <span class="item "><i class="icon09"></i>我要吐槽</span>
                    </li>
                </ul>
            </div>
        </div>

        <!--右边内容-->
        <div class="r_main">
            <div class="account_info">
                <div class="top clearfix">
                    <div class="greetings" title="晚上好！在忙碌中找寻休憩，在平淡中找寻快乐！">晚上好！在忙碌中找寻休憩，在平淡中找寻快...</div>
                    <div class="level fl ml10">
                            状态<span title="极高" class="progress_bg">
                                    <span class="progress" style="width:100%;"></span>
                                </span>良好
                    </div>
                </div>
                <!-- 用户中心 start -->
                <div class="clearfix">
                    <div class="info_l">
                        <div class="chart" id="chart" style="width:520px;height:400px;"></div>
                        <script type="text/javascript">
                            var echartsPie = echarts.init(document.getElementById('chart'));
                            var option = {
                                title : {
                                    text: '借款投资信息',
                                    subtext: '纯属虚构',
                                    x:'center'
                                },
                                tooltip : {
                                    trigger: 'item',
                                    formatter: "{a} <br/> {b} : {c}元 ({d}%)"
                                },
                                toolbox: {
                                    show : true,
                                    feature : {
                                        mark : {show: true},
                                        dataView : {show: true, readOnly: false},
                                        magicType : {
                                            show: true,
                                            type: ['pie', 'funnel'],
                                            option: {
                                                funnel: {
                                                    x: '25%',
                                                    width: '50%',
                                                    funnelAlign: 'left',
                                                    max: 1548
                                                }
                                            }
                                        },
                                        restore : {show: true},
                                        saveAsImage : {show: true}
                                    }
                                },
                                series : [
                                    {
                                        name: '金额',
                                        type: 'pie',
                                        radius : '55%',
                                        center: ['50%', '60%'],
                                        data:[

                                        ],
                                    }
                                ]
                            };
                            echartsPie.setOption(option)
                           $.ajax({
                                    url : "<%=request.getContextPath()%>/lzhUserInfo/queryTreportforms.do?id="+1,
                                    type : "post",
                                    dataType: "json",
                                    success : function(result) {
                                        var data=[
                                            {name:'借款金额',value:result[0].borrowing_amount},
                                            {name:'投资金额',value:result[0].investment_amount}
                                        ]
                                        var name=[];
                                        name.push(data[0].name);
                                        name.push(data[1].name);
                                        echartsPie.setOption({
                                            legend: {
                                                orient: 'vertical',
                                                left: 'left',
                                                data:name
                                            },
                                            series: [{
                                                // 根据名字对应到相应的系列
                                                name: "金额",
                                                data: data,
                                            }],
                                        });
                                    }
                            })
                        </script>
                    </div>
                    <div class="info_r">
                        <ul class="money">
                            <li>可用余额(元)：<span class="orange">测试65656.00</span>
                            </li>
                            <li>冻结金额(元)：测试5656.00</li>
                        </ul>
                        <ul class="vouchers">
                            <li><i class="icon01"></i><a
                                    href="#">红包(元)：0.00</a></li>
                            <li><i class="icon02"></i><a
                                    href="#">加息券(张)：0</a></li>
                            <li><i class="icon03"></i><a
                                    href="#">体验金(元)：0.00</a></li>
                        </ul>
                        <div class="tr mt20 clearfix mb20">
                            <a href="#" class="btn01 fl">充值</a>
                            <a href="#" class="btn02 ml10 mr5 fl">提现</a>
                            <span id="signSpan">
                            </span>
                            <a href="#" class="btn03 mt10 mr5  fl">还款</a>
                        </div>
                    </div>
                    <!-- 用户中心 end -->
                </div>
            </div>
            <div class="user_mod border_t15">
                <div class="user_til mt30"><i class="icon"></i><span
                        class="gray3 f18 mr20">借款账户</span>待还总金额￥0.00<a href="#" class="fr">更多&gt;</a>
                </div>
                <div class="user_table">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr class="til">
                            <td>借款标题</td>
                            <td align="center">待还本金(元)</td>
                            <td align="center">待还利息(元)</td>
                            <td align="center">逾期费用(元)</td>
                            <td align="center">&nbsp;</td>
                        </tr>
                        <tr ><td align="center" colspan="5">暂无数据</td></tr>
                    </table>
                </div>
            </div>
            <div class="user_mod border_t15">
                <div class="user_til"><i class="icon"></i><span class="gray3 f18">理财推荐</span><a href="#" class="fr">更多&gt;</a></div>
                <div class="user_table">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr class="til">
                            <td>借款标题</td>
                            <td align="center">金额(元)</td>
                            <td align="center">年化利率(%)</td>
                            <td align="center">借款期限</td>
                            <td align="center">进度</td>
                            <td align="center">&nbsp;</td>
                        </tr>
                        <tr>
                            <td title="一天发给">
                                <i class="item_icon novice_icon">新</i><a href="#" class="til_120">一天发给</a>
                            </td>
                            <td align="center">1,000.00</td>
                            <td align="center">25.00</td>
                            <td align="center">15个月</td>
                            <td align="center">
                                <span class="progress_bg"><span class="progress" style="width:0%;"></span></span><em class="progress_cent">0%</em>
                            </td>
                            <td align="center"><a href="#" class="btn04">去投资</a></td>
                        </tr>
                        <tr>
                            <td title="大萨达撒">
                                <i class="item_icon novice_icon">新</i><a href="#" class="til_120">大萨达撒</a>
                            </td>
                            <td align="center">100,000.00</td>
                            <td align="center">25.00</td>
                            <td align="center">15个月</td>
                            <td align="center">
                                <span class="progress_bg"><span class="progress" style="width:0%;"></span></span>
                                <em class="progress_cent">0%</em>
                            </td>
                            <td align="center"><a href="#" class="btn04">去投资</a></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <!--右边内容-->
    </div>
</div>
<script type="text/javascript">
    function loaduser(){
        $('.r_main').load('lzhAccountGl.jsp');
    }

</script>
<!--主体内容-->
<div class="popup_bg" style="display: none;"></div>
<div id="info"></div>
<!--底部-->
<!--底部开始-->
<div class="footer">
    <div class="wrap clearfix">
        <div class="info fl">
            <div class="footer_logo"><a href="#"><img src="/all/simple/images/footer_logo.png"></a></div>
            <p class="mt10"><span class="f24 arial bold">400 - 678 - 5518</span>(9:00 - 18:00)</p>
            <p class="address">服务邮箱：kefu@dimeng.net<br>
                广东省深圳市罗湖区振业大厦28楼</p>
        </div>
        <div class="line"></div>
        <div class="focus">
            <div class="til">关注我们 :</div>
            <div class="box"> <i class="weixin_icon"></i>
                <div class="code"> <i class="arrow"></i>
                    <div class="border"> <img src="#"><br />
                        扫一扫关注微信 </div>
                </div>
            </div>
            <div class="box ml15"> <i class="app_icon"></i>
                <div class="code"> <i class="arrow"></i>
                    <div class="border"> <img src="#"><br />下载客户端APP </div>
                </div>
            </div>
        </div>
        <div class="line"></div>
        <div class="nav">
            <ul class="clearfix">
                <li><a href="#">关于我们</a></li>
                <li><a href="#">安全保障</a></li>
                <li><a href="#">新手入门1</a></li>
                <li><a href="#">媒体报道</a></li>
                <li><a href="#">招贤纳士2</a></li>
                <li><a href="#">帮助中心</a></li>
            </ul>
        </div>
    </div>
    <div class="wrap copyright tc">
        <p class="mb10">轻松贷款 投资无忧© 2014 112.95.233.249:8503 All Rights Reserved  | 备案号：粤ICP备13082949号</p>
        <div class="tc">
            <a href="#"><img src="/all/simple/images/footer_44.jpg"></a>
            <a href="#"><img src="/all/simple/images/footer_46.jpg"></a>
        </div>
    </div>
</div>
<!--底部结束-->
</body>
</html>