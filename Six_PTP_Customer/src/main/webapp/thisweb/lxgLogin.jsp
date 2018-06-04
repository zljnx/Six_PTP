<%--
 Created by IntelliJ IDEA.
 User: 吕旭刚
 Date: 2018/5/24
 Time: 22:18
 To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>迪蒙网贷-后台系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/user/simple/css/common.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/user/simple/css/user.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/user/simple/css/base.css" />

</head>
<body >

<script type="text/javascript">try{document.getElementById('c6fe3f71-4802-4e35-a205-89e1f9662ed8').style.display='none';}catch(e){}</script>
<script type="text/javascript" src="<%=request.getContextPath()%>/user/js/jquery/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/user/simple/js/common.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/user/simple/js/user.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/user/js/jquery-select-list.js"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/user/openapi/qc_loader.js" data-appid="101173448" data-redirecturi="" charset="utf-8"> </script>


<!--头部2--><form action="" method="post"
                id="loginForm" name="loginForm" target="_self">
    <input type="hidden" id="openId" name="openId" value=""/>
    <input type="hidden" id="accessToken" name="accessToken" value=""/>
    <input type="hidden" id="_z" name="_z" value=""/>
</form>
<div class="login_header w1002 clearfix">
    <div class="logo_line fl"></div>
    <div class="fl f24 gray6 welcome_t">欢迎登录</div>
</div>

<!--主体内容-->
<div class="main_bg" style="padding:0px;">
    <div class="login_bg login_page_box" id="RedBg" style="width: 100%; padding: 60px 0px; height: 600px; background-image: url(&quot;/user/images/logo.jpg&quot;);">
        <a href="javascript:void(0);" id="RedBgURL" class="red_click"></a>
        <div class="logindx_k login_mod clearfix">
            <div class="landing_port">
                <div class="login_hd">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="white f24 bold" style="background: #CDAD00">用户登录</span></div>
                <form action="" method="post" onsubmit="return onSubmit();">
                    <input type="hidden" id="_z1" name="loginname" value=""/>
                    <div class="login_form form_appearance clearfix">
                        <ul>
                            <li class="item">
                                <div class="con">
                                    <div class="input focus_input">
                                        <i class="name_ico fl"></i>
                                        <input id="txtUserId" type="text" class="text text1 focus_text fl" maxlength="30"
                                               value=""
                                               onclick="hideError();" name="username"/><label for="txtUserId">用户名/邮箱/手机号</label>
                                        <input id="userId1" name="username" type="hidden"/>
                                    </div>
                                    <p class="prompt">&nbsp;</p>
                                    <!--                         <p class="prompt">用户名错误！</p> -->
                                </div>
                            </li>
                            <li class="item">
                                <div class="con">
                                    <div class="wjmm_box">
                                        <div class="input focus_input">
                                            <i class="password_ico fl"></i>
                                            <input id="txtpasswordId" type="password" class="text text3 focus_text fl" maxlength="20"
                                                   onselectstart="return false;" ondragenter="return false;"
                                                   onpaste="return false;" onclick="hideError();" name="userpwd" autocomplete="off"/><label for="txtpasswordId">密码</label>
                                            <input id="passwordId" name="userpwd" type="hidden"/>
                                        </div>
                                        <p class="prompt">&nbsp;</p>
                                    </div>
                                </div>
                            </li>
                            <li class="item">
                                <div class="con">
                                    <button type="button" id="loginButton" class="login_bt mt10" style="cursor: pointer;">立即登录</button>
                                </div>
                            </li>
                            <li class="item">
                                <div class="con">
                                    <p class="mt20">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <a href="<%=request.getContextPath()%>/login/register.html"
                                           class="yellow_color pl10 agreement_t">立即注册</a>
                                    <p class="third_party mt15 mb15"></p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!--主体内容-->

<script type="text/javascript" src="<%=request.getContextPath()%>/user/js/security.js"></script>
<script type="text/javascript">
    var isNull = /^[\s]{0,}$/;
    var verify = /^\d{6}$/;
    var loginName = /^[a-z]([\w]*)$/i;
    var testChinese = /.*[\u4e00-\u9fa5]+.*$/;
    function hideError(){
        var p = $("#txtUserId").parent().parent().find("p");
        p.html("&nbsp;");
        p.removeClass("red");
    }
    function accountCheck() {
        var val = $.trim($("#txtUserId").val());
        var p = $("#txtUserId").parent().parent().find("p");
        p.html("&nbsp;");
        p.removeClass("red");
        if (isNull.test(val)) {
            p.html("用户名不能为空");
            p.addClass("red");
            return false;
        }else if(testChinese.test(val)){
            p.html("用户名不能为中文");
            p.addClass("red");
            return false;
        }
        return true;
    }
    function passwordCheck() {
        var val = $("#txtpasswordId").val();
        var p = $("#txtpasswordId").parent().parent().find("p");
        p.html("&nbsp;");
        p.removeClass("red");
        if (isNull.test(val)) {
            p.html("密码不能为空");
            p.addClass("red");
            return false;
        }
        return true;
    }
    function verifyCheck() {
        //是否需要验证码.
        var flag = true;
        var isShowVcode = 'false';
        if ((flag != "undefined" && flag == false) || isShowVcode=='false') {
            return true;
        }

        var val = $("input[name='verifyCode']").val();
        var p = $("#verifyError");
        p.html("&nbsp;");
        p.removeClass("red");
        if (isNull.test(val)) {
            p.html("验证码不能为空");
            p.addClass("red");
            return false;
        } else if (!verify.test(val)) {
            p.html("您输入的验证码有误");
            p.addClass("red");
            return false;
        }
        return true;
    }
    function onSubmit() {
        if (accountCheck() && passwordCheck() && verifyCheck()) {
            var modulus = "009e55b21b5b66a44b52a7e14844215b63ea7067b727fa1e729c7e7863c4654007128d046bba2e69121bfd70858947010430d3f953c55a46a8511ce4b296d51587f04e8e10caaf1ae59ab17a9a63eebb024bb524b5bbf2e5bfbe011f7c5518aa3c520445aaf444bc8471099822bdddfc33a4cfa84e009e104d033fcb4f6b4a293f", exponent = "010001";
            var key = RSAUtils.getKeyPair(exponent, '', modulus);
            $("#userId").val(RSAUtils.encryptedString(key, $.trim($("#txtUserId").val())));
            $("#passwordId").val(RSAUtils.encryptedString(key, $("#txtpasswordId").val()));

            return true;
        } else {
            return false;
        }
    }

</script>
<style type="text/css">
    iframe{margin-left: 90px;}
</style>
<script type="text/javascript">


    if (QC.Login.check()) {//如果已登录
        QC.Login.signOut();
        QC.Login.getMe(function (openId, accessToken) {
            $("#openId").val(openId);
            $("#accessToken").val(accessToken);
            loginForm.submit();
        });
    }

    WB2.anyWhere(function (W) {
        W.widget.connectButton({
            id: "tpa_login_sina",
            type: "3,2",
            callback: {
                login: function (o) { //登录后的回调函数
                    var status = WB2.checkLogin();
                    if (status) {
                        WB2.logout();
                        $("#openId").val(o.id);
                        clearTime = setInterval(function () {
                            var status = WB2.checkLogin();
                            if (status) {
                                WB2.logout();
                            } else {
                                clearInterval(clearTime);
                                loginForm.submit();
                            }
                        }, 1000);
                    }
                }
            }
        });
    });
</script>

<script type="text/javascript">
    var pic_list=[];

    pic_list.push({"img":"","URL":"javascript:void(0);"});

    var picnum=Math.floor(Math.random()*pic_list.length);
    $("#RedBg").css({"background-image":"url("+pic_list[picnum].img+")"});
    if(pic_list[picnum].URL == "javascript:void(0);"||pic_list[picnum].URL == ""){
        $("#RedBgURL").removeAttr("target");
    }
    $("#RedBgURL").attr("href",pic_list[picnum].URL);
</script>
<script type="text/javascript">
    $("#loginButton").click(function(){
        if (accountCheck() && passwordCheck() && verifyCheck()) {
            var loginname = $("#txtUserId").val();
            var userpwd = $("#txtpasswordId").val();
            $.ajax({
                url:"<%=request.getContextPath()%>/lxg/LxgLogin.do",
                type:"post",
                data:{loginname:loginname,userpwd:userpwd},
                success:function(ddd){
                    if(ddd=="kk"){
                        alert("登陆成功");
                        location.href="/index.jsp";
                    }else if("ddd==gg"){
                        alert("用户不存在");
                    }
                },
                error:function(){
                    alert("用户名或密码错误");
                }
            })

        }else{
            alert("请按提示操作");
        }
    })

</script>



</body>
</html>
