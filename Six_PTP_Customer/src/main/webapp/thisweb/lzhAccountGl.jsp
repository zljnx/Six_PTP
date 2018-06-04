<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2018/5/30
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <script type="text/javascript" src="../jquery/jquery.min.js"></script>
    <script src="../js/layui/layui.js"></script>
    <script src="../js/layui/lay/modules/element.js"></script>
    <link rel="stylesheet" href="../js/layui/css/layui.css" media="all" />
<head>
    <title>Title</title>
</head>
    <style type="text/css">
        .file {
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
        .basic_info{

        }


    </style>
<body>
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
        <legend>简洁风格的Tab</legend>
    </fieldset>

    <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
        <ul class="layui-tab-title">
            <li class="layui-this">个人基本信息</li>
            <li>个人学历信息</li>
            <li>个人工作信息</li>
            <li>个人认证信息</li>
            <li>个人车产信息</li>
            <li>个人房产信息</li>
        </ul>
        <div class="layui-tab-content" style="height: 100px;">
            <div class="layui-tab-item layui-show">
                <div class="show" id="userBases">
                    <div class="user_mod_gray basic_info_top clearfix">
                        <div class="portrait" id="userBases_icon"><img src="" id="accountimg"></div>
                        <div class="upload">
                            <!--上传选择文件-->
                            <a href="javascript:;" class="file">选择文件
                                <input type="file" name="file" id="file">
                            </a>
                            <p class="mt5">支持jpg,gif,png,jpeg
                                格式图片，上传图片最大4M，可上传头像尺寸为120*120</p>
                        </div>
                    </div>
                    <div class="basic_info">
                        <!-- require属性，规定必须在提交之前填写输入域（不能为空）-->
                        <!-- pattern属性，描述了一个正则表达式用于验证 <input> 元素的值-->
                        <!-- required属性，要求该输入域不能为空 -->
                        <!-- placehokder属性，用于对该输入框的提示内容-->
                        <center>
                        <form action="#" method="post" autocomplete="on">
                            <p>
                                <span style="color: red">*</span><font size="3">用户名称:</font>
                                <label><input type="text" required name="name" pattern="[\u4e00-\u9fa5]{2,}"  oninvalid="validatelt(this,'真实姓名必须是中文，且长度不小于2')"/></label>
                            </p>
                            <p>
                                <span style="letter-spacing:6em">昵</span>称：
                                <span style="color: red">*</span><font size="3">真实姓名:</font>
                                <label><input type="text" placeholder="该昵称用于登录" required name="nichen"/></label>
                            </p>
                            <p>
                                <span style="letter-spacing: 1.3em">登录密</span>码：
                                <label><input type="password" pattern="[A-Za-z0-9]{6,30}" name="password" oninvalid="validatelt(this,'密码长度至少为六位，且不能有中文')" /></label>
                            </p>
                            <p>
                                <span style="letter-spacing: 6em">性</span>别：
                                <label><input type="radio" name="sex" value="0"/>男：</label>
                                <label><input type="radio" name="sex" value="1"/>女：</label>
                            </p>
                            <p>
                                <span style="letter-spacing: 1.3em">出生日</span>期：
                                <label><input type="date" name="birthday" max="2016/7/10" required/></label>
                            </p>
                            <p>
                                <span style="letter-spacing: 1.3em">电子邮</span>箱：
                                <label><input name="email" type="email" required/></label>
                            </p>
                            <p>
                                <span style="letter-spacing: 1.3em">联系电</span>话：
                                <label><input name="phone" type="text"  required  pattern="1[34578]\d{9}$"  oninvalid="validatelt(this,'电话号只能是11位的整数')" /></label>
                            </p>
                            <p>
                                <span>选择你喜欢的颜色：</span>
                                <label><input name="color" type="color" required/></label>
                            </p>
                            <input type="submit"/>
                        </form>
                        </center>
                    </div>
                </div>
            </div>
            <div class="layui-tab-item">内容2</div>
            <div class="layui-tab-item">内容3</div>
            <div class="layui-tab-item">内容4</div>
            <div class="layui-tab-item">内容5</div>
            <div class="layui-tab-item">内容6</div>
        </div>
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
    $('#file').change(function(){
        /*var str = $('#file').val();
        var arr = str.split('\\');
        var name = arr[arr.length - 1];
        $("#text").html(name);*/
        //获取文件
        var file = $(".file").find("input")[0].files[0];
        //创建读取文件的对象
        var reader = new FileReader();
        //创建文件读取相关的变量
        var imgFile;
        //为文件读取成功设置事件
        reader.onload=function(e) {
            alert('文件读取完成');
            imgFile = e.target.result;
            $("#mainimg").attr('src', imgFile);
            $("#accountimg").attr('src', imgFile);
        };
        //正式读取文件
        reader.readAsDataURL(file);
    });

</script>

</body>
</html>
