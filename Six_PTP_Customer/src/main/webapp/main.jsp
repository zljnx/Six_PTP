<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2018/5/16
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>黄金杯网贷</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery.min.js"></script>
    <link rel="icon" href="<%=request.getContextPath()%>/images/favicon.ico" type="image/x-icon" />
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <script src="<%=request.getContextPath()%>/layui/layui.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/layui/css/layui.css" media="all" />
    <script type="text/javascript" src="<%=request.getContextPath()%>/layui/lay/modules/layer.js"></script>
    <link  rel="stylesheet" href="<%=request.getContextPath()%>/layui/css/modules/layer/default/layer.css" />

<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">黄金杯网贷</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="#">业务管理</a></li>
            <li class="layui-nav-item"><a href="#">推广管理</a></li>
            <li class="layui-nav-item"><a href="#">基本设置</a></li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="<%=request.getContextPath()%>/images/favicon.ico" class="layui-nav-img">
                    ${sessionScope.adminSession.loginname}
                </a>
                <dl class="layui-nav-child">
                    <dd>
                        <a class="infoUpdate"><cite>基本资料</cite></a>
                    </dd>
                    <dd>
                        <a class="pwdUpdate"><cite>安全设置</cite></a>
                    </dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="#"><i class="iconfont icon-Icon_logout"></i><cite> 退出</cite></a>
            </li>
        </ul>
    </div>
    <div class="toggle-collapse" style="left: 200px;"></div>
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
          <%--  <div class="layui-nav-top" style="height:150px">
               &lt;%&ndash; <center>
                    <img src=" " onerror="this.src='<%=request.getContextPath()%>/images/favicon.ico'" style="height:80px;width:80px;border-radius:50%;overflow:hidden;">
                </center>
             &ndash;%&gt;
               &lt;%&ndash; <p>您好，${sessionScope.adminSession.loginname} 欢迎登陆！</p>&ndash;%&gt;
            </div>--%>
            <!-- 左侧导航区域（可配合layui已有的垂直导航）layui-nav-itemed -->
           <ul class="layui-nav layui-nav-tree" lay-filter="menutrees" id="menutrees">

                </ul>



        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->

        <iframe name="ifre" src="<%=request.getContextPath()%>/zlj/index.jsp" scrolling="yes" width="100%" height="100%" frameborder="0" overflow="visible"></iframe>
    </div>


    <div class="layui-footer">
        <!-- 底部固定区域 -->
        <center>
            <font color="#8B8B8B">© GoldCup.com黄金杯网贷</font>
        </center>
    </div>
</div>

<script type="text/javascript">
    //JavaScript代码区域
    layui.use(['element','tree'],function(){
        var element = layui.element
        //初始化layer.tree
     /*   var tree = layui.tree({
            elem: '#treemenu' //传入元素选择器
            ,nodes:treeMenu()
            ,click: function(node){
                console.log(node) //node即为当前点击的节点数据 //这里可以通过后台获取（如ThinkPHP框架则可以通过后台拼接好，再生成模板变量类似{$tree}就可以）
            }
        });*/

       /* //一些事件监听
        element.on('nav(demo)', function(elem){
            console.log(elem); //得到当前点击的DOM对象
            element.tabAdd('tabs', {
                title:"aaaaaaaaaa"
                ,content:"222222222222" //支持传入html
                ,id: '选项卡标题的lay-id属性值'
            });
        });*/

        //初始化动态监听
        element.init();
    });

    // 修改个人信息
    $(".infoUpdate").on("click", function() {
        layer.open({
            area : [ '500px', '500px' ],
            title : "基本资料",
            type : 2,
            content : "personCenter.html",//页面自定义
        });
    });
    // 修改密码
    $(".pwdUpdate").on("click", function() {
        layer.open({
            area : [ '500px', '500px' ],
            title : "安全设置",
            type : 2,
            content : "updatePwd.html",//页面自定义
        });
    });

       /* $.ajax({
            url:" /ZljTreeMenuController/getTreeMenu.do",
            type:"post",
             dataType:"json",
            async:false,
            success:function(data){
                var is=data.length;

                var ht="";
               for(var i=0;i<is;i++){
                 ht+='<li class="layui-nav-item">'
                 if(data[i].href!=null&&data[i].href!=0)
                 {
                     ht+="<a href='"+data[i].href+"' target='ifre'>"+data[i].name+"</a>"
                 }else {
                     ht+="<a href='javascript:0;'>"+data[i].name+"</a>"
                 }
                 if(data[i].children!=null)
                   {  var jsq=  data[i].children.length
                       for(var j=0;j<jsq;j++) {
                        ht+=" <dl class='layui-nav-child'>"
                           if(data[i].children[j].href!=null&&data[i].children[j].href!=0)
                           {
                               ht+='<dd><a href="'+data[i].children[j].href+'" target="ifre" > '+data[i].children[j].name+' </a></dd></dl>';

                           }else {
                               ht+='<dd><a href="javascript:0;"> '+data[i].children[j].name+' </a></dd></dl>';
                           }

                             }
                         }
                 ht+="  </li>";
             } ht+=' </ul>'
                $("#menutrees").html(ht);
            },
            error:function(){
                alert("查询出错");
            }
        });*/
      $.ajax({
            url:"<%=request.getContextPath()%>/ZljTreeMenuController/getTreeMenu.do",
            type:"post",
             dataType:"json",
            async:false,
            success:function(data){
                var is=data.length;
               var ht="";
               for(var i=0;i<is;i++){
                   if (i==1)
                   {
                       ht+='<li class="layui-nav-item layui-nav-itemed">'
                   }else {
                       ht+='<li class="layui-nav-item">'
                   }

                 if(data[i].href!=null&&data[i].href!=0)
                 {
                     ht+="<a href='"+data[i].href+"' target='ifre'>"+data[i].name+"</a>"
                 }else {
                     ht+="<a href='javascript:0;'>"+data[i].name+"</a>"
                 }
                 if(data[i].children!=null)
                   {  var jsq=  data[i].children.length
                       for(var j=0;j<jsq;j++) {
                        ht+=" <dl class='layui-nav-child'><dd>"
                           if(data[i].children[j].href!=null&&data[i].children[j].href!=0)
                           {
                               ht+='<a href="'+data[i].children[j].href+'" target="ifre" > '+data[i].children[j].name+' </a> ';

                           }else {
                               ht+='<a href="javascript:0;"> '+data[i].children[j].name+' </a> ';
                           }
                           if(data[i].children[j].children!=null)
                           {
                               var jk=  data[i].children[j].children.length;
                               for (var k=0;k<jk;k++)
                               {
                                   ht+=" <dl class='layui-nav-child'><dd>"
                                   if(data[i].children[j].children[k].href!=null&&data[i].children[j].children[k].href!=0)
                                   {
                                       ht+='<a href="'+data[i].children[j].children[k].href+'" target="ifre" > '+data[i].children[j].children[k].name+' </a> ';

                                   }else {
                                       ht+=' <a href="javascript:0;"> '+data[i].children[j].name+' </a>';
                                   }
                                   ht+="</dd></dl>";
                               }
                           }
                           ht+="</dd></dl>";
                             }
                         }

                 ht+=" </li>";
             } ht+=' </ul>'
                $("#menutrees").html(ht);
            },
            error:function(){
                alert("查询出错");
            }
        });
    function avo(url,title1,id){

        var $ = layui.jquery
            ,element = layui.element;

        var li = $("li[lay-id="+id+"]").length;

        if(li>0){
            element.tabChange('demo', id);
        }else{
            res1 = "<iframe src="+ url +" id='iframe-main"+ id +"' name='iframe-main"+ id +"' frameborder='0' height='99%' style='width:100%;height:99%'></iframe>";
            element.tabAdd('demo', {
                title: title1 //用于演示
                ,content: res1
                ,id: id //实际使用一般是规定好的id，这里以时间戳模拟下
            })

            element.tabChange('demo', id);
        }
        element.init();
    }
</script>
</body>
</html>
