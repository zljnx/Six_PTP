<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <title>我的黄金杯网贷</title>
    <script type="text/javascript" src="../jquery/jquery.min.js"></script>
    <script src="../js/layui/layui.js"></script>
    <script src="../js/layui/lay/modules/element.js"></script>
    <link rel="stylesheet" href="../js/layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="../all/simple/css/base.css">
    <link rel="stylesheet" type="text/css" href="../all/simple/css/user.css" />
    <link rel="stylesheet" href="../all/simple/css/common.css">
</head>
<script>
    $(document).ready(function(){
        //要执行的js代码段
        $.ajax({
            url:"/lzhUserInfo/queryUserImg.do?id="+1,
            type:"post",
            dataType: "json",
            success:function(data){
                $("#img2").attr("src",data[0].filename);
            },
            error:function(){
                alert("图片回显失败")
            }
        })
    });
</script>
<style type="text/css">
    .file{
        position: relative;
        display: inline-block;
        background: #51b5fd;
        border: 1px solid #4b8cfd;
        border-radius: 4px;
        padding: 4px 12px;
        overflow: hidden;
        color: #ffffff;
        text-decoration: none;
        text-indent: 0;
        line-height: 20px;
    }
    .file input {
        position: absolute;
        font-size: 100px;
        right: 0;
        top: 0;
        opacity: 0;
    }
</style>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>个人信息展示</legend>
</fieldset>
<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
    <ul class="layui-tab-title">
        <li class="layui-this" style="width: 126px">个人基本信息</li>
        <li style="width: 126px">个人学历信息</li>
        <li style="width: 126px">个人工作信息</li>
        <li style="width: 126px">个人车产信息</li>
        <li style="width: 126px">个人房产信息</li>
    </ul>
<#list  list as  userInfo>
    <div class="layui-tab-content" style="height: 100px;">
        <div class="layui-tab-item layui-show">
            <div class="show" id="userBases">
                <div class="user_mod_gray basic_info_top clearfix">
                    <div class="portrait" id="userBases_icon"><img src="" id="img2"></div>
                    <form id="myform" method="post" enctype="multipart/form-data" >
                        <div class="upload">
                            <!--上传选择文件-->
                            <a href="javascript:;" class="file">选择文件
                                <input type="file" name="file" id="file">
                                <input type="hidden" name="id" value="1">
                            </a>
                            <p class="mt5">支持jpg,gif,png,jpeg
                                格式图片，上传图片最大4M，可上传头像尺寸为120*120</p>
                        </div>
                    </form>
                </div>
                <div class="basic_info" style="background-color: white">
                    <!-- require属性，规定必须在提交之前填写输入域（不能为空）-->
                    <!-- pattern属性，描述了一个正则表达式用于验证 <input> 元素的值-->
                    <!-- required属性，要求该输入域不能为空 -->
                    <!-- placehokder属性，用于对该输入框的提示内容-->
                    <input type="hidden" name="id" value="">
                    <input type="hidden" name="educationid" value="">
                    <input type="hidden" name="workid" value="">
                    <input type="hidden" name="car_id" value="">
                    <input type="hidden" name="property_id" value="">
                    <hr>
                    <p>
                        <span style="color: red">*</span><font size="3">用户名称:</font>&emsp;
                        <label><input type="text" required name="loginname" value="${userInfo.loginname}" placeholder="该昵称用于登录" pattern="[\u4e00-\u9fa5]{2,}"  oninvalid="validatelt(this,'真实姓名必须是中文，且长度不小于2')"/></label>
                        <span style="color: red">*</span><font size="3">真实姓名:</font>&emsp;
                        <label><input type="text"  required name="username" value="${userInfo.username}"/></label>
                    </p>
                    <hr>
                    <p>
                        <span style="color: red">*</span><font size="3">手机号码:</font>&emsp;
                        <label><input type="text" pattern="1[34578]\d{9}$" name="userphone" value="${userInfo.userphone}" oninvalid="validatelt(this,'手机号只能是11位的整数')" /></label>
                    </p>
                    <hr>
                    <p>
                        <span style="color: red">*</span><font size="3">身份证号:</font>&emsp;
                        <label><input type="text" pattern="[A-Za-z0-9]{18,18}" name="idcard" value="${userInfo.idcard}" oninvalid="validatelt(this,'身份证长度为十八位，且不能有中文')" /></label>
                    </p>
                    <hr>
                    <p>
                        <span style="color: red">*</span><font size="3">电子邮箱:</font>&emsp;
                        <label><input name="email" value="${userInfo.eamil}" type="eamil" required/></label>
                    </p>
                    <hr>
                    <p>

                        <span style="color: red">*</span><font size="3">性&emsp;&emsp;别:</font>&emsp;&emsp;
                        <label><input type="radio" name="sex"  value="${userInfo.sex}" <#if userInfo.sex==0> checked </#if>/>男：</label>
                        <label><input type="radio" name="sex"  value="${userInfo.sex}" <#if userInfo.sex==1> checked </#if>/>女：</label>
                    </p>
                    <hr>
                </div>
            </div>
        </div>
        <div class="layui-tab-item">
            <br>
            <p>
                <span style="color: red">*</span><font size="3">学校名称:</font>&emsp;
                <label><input type="text" required name="school" value="${userInfo.school}" pattern="[\u4e00-\u9fa5]{2,}"  oninvalid="validatelt(this,'学校名称必须是中文，且长度不小于2')"/></label>
            </p>
            <hr>
            <p>
                <span style="color: red">*</span><font size="3">入学年份:</font>&emsp;
                <label><input type="text" name="entrancedate" value="${userInfo.entrancedate?string("yyyy-MM-dd")}" required/></label>
            </p>
            <hr>
            <p>
                <span style="color: red">*</span><font size="3">毕业年份:</font>&emsp;
                <label><input type="text" name="graduationdate" value="${userInfo.graduationdate?string("yyyy-MM-dd")}" required/></label>
            </p>
            <hr>
            <p>
                <span style="color: red">*</span><font size="3">专业名称:</font>&emsp;
                <label><input type="text" required name="major" value="${userInfo.major}" pattern="[\u4e00-\u9fa5]{2,}"  oninvalid="validatelt(this,'专业名称必须是中文，且长度不小于2')"/></label>
            </p>
            <hr>
            <p>
                <span style="color: red">*</span><font size="3">在校情况简介:</font>&emsp;
                <label>
                    <textarea type="text" style="width: 600px;height: 100px" required name="schoolinfo" value="" pattern="[\u4e00-\u9fa5]{1,100}" placeholder="随意写"  oninvalid="validatelt(this,'简介必须是中文，且长度不小于1')">${userInfo.schoolinfo}</textarea>
                </label>
            </p>
            <hr>
        </div>
        <div class="layui-tab-item">
            <br>
            <p>
                <span style="color: red">*</span><font size="3">在职状态:</font>&emsp;&emsp;
                <label><input type="radio" name="workstatus" value="${userInfo.workstatus}" <#if userInfo.workstatus==0> checked </#if>/>在职</label>
                <label><input type="radio" name="workstatus" value="${userInfo.workstatus}" <#if userInfo.workstatus==1> checked </#if>/>未职</label>
            </p>
            <hr>
            <p>
                <span style="color: red">*</span><font size="3">单位名称:</font>&emsp;
                <label><input type="text" required name="companyname" value="${userInfo.companyname}" pattern="[\u4e00-\u9fa5]{2,}"  oninvalid="validatelt(this,'单位名称必须是中文，且长度不小于2')"/></label>
            </p>
            <hr>
            <p>
                <span style="color: red">*</span><font size="3">工作地址:</font>&emsp;
                <label><input type="text" required name="addrid" value="${userInfo.areaname}" pattern="[\u4e00-\u9fa5]{2,}"  oninvalid="validatelt(this,'公司地址必须是中文，且长度不小于2')"/></label>
            </p>
            <hr>
            <p>
                <span style="color: red">*</span><font size="3">公司类别:</font>&emsp;
                <label><input type="text" required name="companytype" value="${userInfo.companytype}" pattern="[\u4e00-\u9fa5]{2,}"  oninvalid="validatelt(this,'公司类别必须是中文，且长度不小于2')"/></label>
            </p>
            <hr>
            <p>
                <span style="color: red">*</span><font size="3">公司规模:</font>&emsp;
                <label><input type="text" required name="companyscale" value="${userInfo.companyscale}" pattern="[A-Za-z0-9]{2,}"  oninvalid="validatelt(this,'公司规模必须是数字，且长度不小于2')"/></label>
            </p>
            <hr>
        </div>
        <div class="layui-tab-item">
            <br>
            <p>
                <span style="color: red">*</span><font size="3">车牌号码:</font>&emsp;
                <label><input type="text" required name="license_platenumbe" value="${userInfo.license_platenumbe}" pattern="[A-Za-z0-9]{4,}"  oninvalid="validatelt(this,'车牌号码只能是数字，且长度不小于4')"/></label>
            </p>
            <hr>
            <p>
                <span style="color: red">*</span><font size="3">购买年份:</font>&emsp;
                <label><input type="text" name="car_year" value="${userInfo.car_year?string("yyyy-MM-dd")}" required/></label>
            </p>
            <hr>
            <p>
                <span style="color: red">*</span><font size="3">购买价格:</font>&emsp;
                <label><input type="text" required name="car_price" value="${userInfo.car_price}" pattern="[A-Za-z0-9]{2,}"  oninvalid="validatelt(this,'购买价格必须是数字，且长度不小于2')"/></label>
            </p>
            <hr>
            <p>
                <span style="color: red">*</span><font size="3">汽车品牌:</font>&emsp;
                <label><input type="text" required name="car_brand" value="${userInfo.car_brand}" pattern="[\u4e00-\u9fa5]{2,}"  oninvalid="validatelt(this,'汽车品牌必须是中文，且长度不小于2')"/></label>
            </p>
            <hr>
            <p>
                <span style="color: red">*</span><font size="3">评估价格:</font>&emsp;
                <label><input type="text" required name="car_assess_price" value="${userInfo.car_assess_price}" pattern="[A-Za-z0-9]{2,}"  oninvalid="validatelt(this,'评估价格必须是数字，且长度不小于2')"/></label>
            </p>
            <hr>
        </div>
        <div class="layui-tab-item">
            <br>
            <p>
                <span style="color: red">*</span><font size="3">小区名称:</font>&emsp;
                <label><input type="text" required name="village_name" value="${userInfo.village_name}" pattern="[\u4e00-\u9fa5]{2,}"  oninvalid="validatelt(this,'小区名称只能是汉字，且长度不小于2')"/></label>
            </p>
            <hr>
            <p>
                <span style="color: red">*</span><font size="3">建筑面积:</font>&emsp;
                <label><input type="text" name="construction_area" value="${userInfo.construction_area}"  pattern="[A-Za-z0-9]{2,}" oninvalid="validatelt(this,'建筑面积必须是数字，且长度不小于2')"/></label>
            </p>
            <hr>
            <p>
                <span style="color: red">*</span><font size="3">购买价格:</font>&emsp;
                <label><input type="text" required name="property_price" value="${userInfo.property_price}" pattern="[A-Za-z0-9]{2,}"  oninvalid="validatelt(this,'购买价格必须是数字，且长度不小于2')"/></label>
            </p>
            <hr>
            <p>
                <span style="color: red">*</span><font size="3">房产证编号:</font>&emsp;
                <label><input type="text" required name="property_number" value="${userInfo.property_number}" pattern="[A-Za-z0-9]{2,}"  oninvalid="validatelt(this,'房产证编号必须是数字，且长度不小于2')"/></label>
            </p>
            <hr>
            <p>
                <span style="color: red">*</span><font size="3">使用年限:</font>&emsp;
                <label><input type="text" required name="use_number_year" value="${userInfo.use_number_year}" pattern="[A-Za-z0-9]{2,}"  oninvalid="validatelt(this,'使用年限必须是数字，且长度不小于2')"/></label>
            </p>
            <hr>
            <p>
                <span style="color: red">*</span><font size="3">评估价格:</font>&emsp;
                <label><input type="text" required name="property_assess_price" value="${userInfo.property_assess_price}" pattern="[A-Za-z0-9]{2,}"  oninvalid="validatelt(this,'评估价格必须是数字，且长度不小于2')"/></label>
            </p>
            <hr>
            <p>
                <span style="color: red">*</span><font size="3">参考价格:</font>&emsp;
                <label><input type="text" required name="reference_price" value="${userInfo.reference_price}" pattern="[A-Za-z0-9]{2,}"  oninvalid="validatelt(this,'参考价格必须是数字，且长度不小于2')"/></label>
            </p>
            <hr>
            <p>
                <span style="color: red">*</span><font size="3">区&emsp;&emsp;域:</font>&emsp;
                <label><input type="text" required name="property_address" value="${userInfo.property_address}" pattern="[\u4e00-\u9fa5]{2,}"  oninvalid="validatelt(this,'必须是汉字，且长度不小于2')"/></label>
            </p>
            <hr>
        </div>
    </div>
</#list>
</div>
<script type="text/javascript">
    layui.use(['element', 'form'], function(){
        var $ = layui.jquery
                , element = layui.element
                ,form = layui.form;

    });
    //对悬浮窗的设置
    function validatelt(inputelement,err){
        if(inputelement.validity.patternMismatch){
            inputelement.setCustomValidity(err);
            //错误后就清空，不过执行顺序有点问题就不要了
//                if(confirm("输入有误,是否清空此项？")){
//                    inputelement.value="";
//                }
        }else{
            inputelement.setCustomValidity("");
            return true;
        }
    }

    $('#file').change(function() {
        var file = $(".file").find("input")[0].files[0];
        //创建读取文件的对象
        var reader = new FileReader();
        //创建文件读取相关的变量
        var imgFile;
        //为文件读取成功设置事件
        reader.onload = function (e) {
            alert('文件读取完成');
            imgFile = e.target.result;
            $("#mainimg").attr('src', imgFile);
            $("#accountimg").attr('src', imgFile);
        };
        //正式读取文件
        reader.readAsDataURL(file);
        //$("#sub").click();
        //window.location.reload();
        var formData = new FormData($('#myform')[0]);
        $.ajax({
            type: 'post',
            url: "/lzhUserInfo/uploadPhoto.do",
            data:formData,
            processData: false,
            contentType: false,
            error:function () {
                window.location.reload();
            }
            ,success:function () {
                window.location.reload();
            }
        });
    })
</script>
</body>
</html>
