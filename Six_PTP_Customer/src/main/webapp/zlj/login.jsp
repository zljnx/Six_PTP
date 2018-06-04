<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/19
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>黄金杯网贷-后台系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <META HTTP-EQUIV="Pragma" CONTENT="no-cache">
    <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
    <META HTTP-EQUIV="Expires" CONTENT="0"><link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/login.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/login2.css" />
</head>
<style>
    /*验证码*/

    .upload-awrp {
        overflow: hidden;

    }

    .code {
        font-family: Arial;
        font-style: italic;
        font-size: 25px;
        border: 0;
        font-weight: bolder;
        float: left;
        cursor: pointer;
        width: 80px;
        height: 48px;
        text-align: center;
        vertical-align: middle;
        border: 1px solid #6D6D72;
    }
</style>

<body style="background:#04529d" class="login-body">
<div class="login-top-container">
    <div class="w1002 pr">
        <div class="login-logo pt40"><a> <%--<img src="/console/fileStore/0/2016/7/27/84.png"/>--%> </a></div>
        <div class="pa right0 top-60 login-title-color"><span class="f40 display-ib h40 lh40 va-middle">V7.0标准版</span><span
                class="f60 display-ib h40 lh40 pl10 pr10 va-middle">一</span><span
                class="f30 display-ib h40 lh40 va-middle">后台管理系统</span></div>
    </div>
</div>

<!--登录内容-->
<div class="login-content-container">
    <div class="login-c-imac"><img src="<%=request.getContextPath()%>/images/login_imac.png"/></div>
    <div class="login-form-container">
        <form  method="post" <%--onsubmit="return onSubmit()"--%>>
            <div class="form-box">
                <ul class="pl20">
                    <li class="mb30">
                        <span class="title display-ib white w90 f20 va-middle">用户名：</span>

                        <div class="info display-ib radius-4 overflow-h va-middle">
                            <i class="icon-i w30 h36 m5 va-middle login-user-icon"></i>
                            <input type="hidden" id="userId" name="username"/>
                            <input id="txUserId" value=""
                                   type="text" class="text w180 pl10 gray6 border-l-s" onblur="accountCheck();"/>
                            <i class="icon-i w30 h36 mt5 va-middle"></i>
                        </div>

                    </li>
                    <li class="mb30">
                        <span class="title display-ib white w90 f20 va-middle">密　码：</span>

                        <div class="info display-ib radius-4 overflow-h va-middle">
                            <i class="icon-i w30 h36 m5  va-middle login-password-icon"></i>
                            <input id="passwordId" type="password"
                                   class="text w180 pl10 gray6 border-l-s" onselectstart="return false;"
                                   ondragenter="return false;" onpaste="return false;" onfocus="accountCheck();"
                                   onblur="passwordCheck();" autocomplete="off"/>
                            <input id="truePwd" name="password" type="hidden"/>
                            <i class="icon-i w30 h36 mt5 va-middle"></i>
                        </div>
                    </li>
                    <li class="mb30">
                        <span class="title display-ib white w90 f20 va-middle">验证码：</span>

                        <div class="info display-ib radius-4 overflow-h va-middle info-code">
                            <i class="icon-i w30 h30 m5 mt10 va-middle login-code-icon"></i>
                            <input name="verifyCode" maxlength="6" id="verifyCodes" type="text"
                                   class="text w100 pl10 gray6 border-l-s" onblur="verifyCheck();"/>
                        </div>
                        <span class="display-ib va-middle ml10"  id="check-code" style="overflow: hidden;">

                            <span class="code" id="data_code"></span>

                        </span>
                    </li>
                    <li class="mb10">
                        <p class="ml100 red pr20" id="error"></p>
                        <span id="show"></span>
                    </li>
                    <li>
                        <div class="pl90">
                            <input name="login" type="button" onclick="onSubmit()" class="submit-btn display-ib radius-6" value="登 录">
                        </div>
                    </li>
                </ul>
            </div>
        </form>
    </div>
</div>
<div class="login-foot-container">
    <p class="pt30">
        <a href="http://112.95.233.249:8503">黄金杯网贷</a>
        |
        <span class="gray6">轻松借贷 投资无忧 ©  www.huangjinbei.com All Rights Reserved</span>
    </p>
</div>
<!--登录内容 结束-->
<script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/login.js"></script>
</script><script type="text/javascript" src="<%=request.getContextPath()%>/js/login2.js"></script>

<script type="text/javascript">
    var verify = /^[\s\S]*$/;
    var isNull = /^[\s]{0,}$/;
    var loginName = /^[a-z]([\w]*)$/i;
    var zwReg = /^[\u4e00-\u9fa5]/g;
    var timers=2;//设定跳转的时间
    function accountCheck() {
        var val = $("#txUserId").val();
        var p = $("#error");
        if (isNull.test(val)) {
            p.html("用户名不能为空");
            //$("#txUserId").next("i").removeClass("login-right-icon").addClass("login-error-icon");
            return false;
        } else if (zwReg.test(val))
        {
            p.html("用户名不能包含中文");
            return false;
        }
        else {
            p.html("");
            //$("#txUserId").next("i").removeClass("login-error-icon").addClass("login-right-icon");
        }
        return true;
    }
    function passwordCheck() {

        if(!accountCheck()){
            return false;
        }
        var val = $("#passwordId").val();
        var p = $("#error");
        if (isNull.test(val)) {
            p.html("密码不能为空");
            //$("input[name='password']").next("i").removeClass("login-right-icon").addClass("login-error-icon");
            return false;
        } else {
            p.html("");
            //$("input[name='password']").next("i").removeClass("login-error-icon").addClass("login-right-icon");
        }
        return true;
    }
    function verifyCheck() {
        //是否需要验证码.

        var flag = true;
        if (flag != "undefined" && flag == false) {
            return true;
        }
        var val = $("#data_code").text().toLowerCase();
        var putcode = $("#verifyCodes").val().toLowerCase();

        var p = $("#error");
        if (isNull.test(val)) {
            p.html("验证码不能为空");
            return false;
        } else if (putcode!=val) {
            p.html("您输入的验证码有误");
            return false;
        }else{
            p.html("");
        }
        return true;
    }
    function onSubmit() {
        var p = $("#error");
        if (accountCheck() && passwordCheck() && verifyCheck()) {
            $(".submit-btn").attr("disabled", true);
            /*var modulus = "009e55b21b5b66a44b52a7e14844215b63ea7067b727fa1e729c7e7863c4654007128d046bba2e69121bfd70858947010430d3f953c55a46a8511ce4b296d51587f04e8e10caaf1ae59ab17a9a63eebb024bb524b5bbf2e5bfbe011f7c5518aa3c520445aaf444bc8471099822bdddfc33a4cfa84e009e104d033fcb4f6b4a293f", exponent = "010001";
            var key = RSAUtils.getKeyPair(exponent, '', modulus);
            $("#userId").val(RSAUtils.encryptedString(key, $("#txUserId").val()));
            $("#truePwd").val(RSAUtils.encryptedString(key, $("#passwordId").val()));*/


            var  userpwd=   $("#passwordId").val();
            var username=   $("#txUserId").val();

            $.ajax({
                url:"<%=request.getContextPath()%>/zljLoginController/userlogin.do",
                data:{username:username,userpwd:userpwd},
                type:"post",
                dataType:"json",
                success:function(data){
                      if(data.flag=="true")
                      {
                          p.html(data.msg);


                          setInterval("refer()",1000); //启动1秒定时

                      }else {
                          p.html(data.msg);
                      }
                },error:function(){
                    p.html("大哥哥，小姐姐，麻烦打个电话给我们管理员。就说系统炸了")
                }
            })
            return true;
        } else {
            return false;
        }
    }


    function refer(){

        if(timers==0){
            location="<%=request.getContextPath()%>/main.jsp"; //#设定跳转的链接地址
        }
        $("#show").html=""+timers+"秒后跳转到百度"; // 显示倒计时
        timers--;

    }
</script>

<script type="text/javascript">
    /**
     * 验证码
     * @param {Object} o 验证码长度
     */
    $.fn.code_Obj = function(o) {
        var _this = $(this);
        var options = {
            code_l: o.codeLength,//验证码长度
            codeChars: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
                'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
                'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
            ],
            codeColors: ['#f44336', '#009688', '#cddc39', '#03a9f4', '#9c27b0', '#5e4444', '#9ebf9f', '#ffc8c4', '#2b4754', '#b4ced9', '#835f53', '#aa677e'],
            code_Init: function() {
                var code = "";
                var codeColor = "";
                var checkCode = _this.find("#data_code");
                for(var i = 0; i < this.code_l; i++) {
                    var charNum = Math.floor(Math.random() * 52);
                    code += this.codeChars[charNum];
                }
                for(var i = 0; i < this.codeColors.length; i++) {
                    var charNum = Math.floor(Math.random() * 12);
                    codeColor = this.codeColors[charNum];
                }
                console.log(code);
                if(checkCode) {
                    checkCode.css('color', codeColor);
                    checkCode.className = "code";
                    checkCode.text(code);
                    checkCode.attr('data-value', code);
                }
            }
        };

        options.code_Init();//初始化验证码
        _this.find("#data_code").bind('click', function() {
            options.code_Init();
        });
    };
</script>
<script type="text/javascript">
    /**
     * 验证码
     * codeLength:验证码长度
     */
    $('#check-code').code_Obj({
        codeLength: 4
    });
</script>

</body>
</html>
