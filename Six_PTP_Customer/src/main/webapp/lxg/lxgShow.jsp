<%--
  Created by IntelliJ IDEA.
  User: 吕旭刚
  Date: 2018/5/24
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/console/css/base.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/console/css/index.css"/>
<script type="text/javascript" src="<%=request.getContextPath()%>/console/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/console/js/zankai.js"></script>
<script src="<%=request.getContextPath()%>/js/layui/layui.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/js/layui/css/layui.css" media="all"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="right-container">
    <div class="viewFramework-body">
        <div class="viewFramework-content">

                <!--切换栏目-->
                <div class="border mt1">
                    <div class="tabnav-container">
                        <ul class="clearfix" class="layui-tab-title">
                            <li><a href="javascript:void(0);" class="tab-btn select-a">机构信息<i
                                    class="icon-i tab-arrowtop-icon"></i></a></li>
                            <li>
                                <a href="/lxg/lxgBrochure.jsp?id=199&operationJK=null"
                                   class="tab-btn ">介绍资料</a></li>
                            <li>
                                <a href="/lxg/lxgFinancial.jsp?id=199&operationJK=null"
                                   class="tab-btn ">财务状况</a></li>
                            <li>
                                <a href="/lxg/lxgContact.jsp?id=199&operationJK=null"
                                   class="tab-btn ">联系信息</a></li>
                            <li>
                                <a href="/lxg/lxgCar.jsp?id=199&operationJK=null"
                                   class="tab-btn ">车产信息</a></li>
                            <li>
                                <a href="/lxg/lxgProperty.jsp?id=199&operationJK=null"
                                   class="tab-btn ">房产信息</a></li>
                            <li><a class="tab-btn"
                                   href="/lxg/lxgRecord.jsp?id=199&operationJK=null">担保记录</a>
                            </li>
                            <li><a class="tab-btn"
                                   href="/lxg/lxgAdvances.jsp?id=199&operationJK=null">垫付记录</a>
                            </li>
                            <li>
                                <a class="tab-btn" href="/lxg/lxgDistressed.jsp?id=199&operationJK=null">不良债权购买记录</a>
                            </li>
                            <li>
                                <a class="tab-btn" href="/lxg/lxgInvestment.jsp?id=199&operationJK=null">投资记录</a>
                            </li>
                        </ul>
                    </div>
                    <div class="tab-content-container p20">


                        <div class="tab-item">
                            <ul class="gray6">
                                <li class="mb10"><span class="display-ib w200 tr mr5"><em class="red pr5">*</em>企业名称：</span>
                                    ${lxgInstitutionCombination.corporate_name}<span class="ml5"></span></li>
                                <li class="mb10"><span class="display-ib w200 tr mr5"><em class="red pr5"></em>企业简称：</span>
                                    ${lxgInstitutionCombination.corporate_referred}</li>
                                <li class="mb10"><span class="display-ib w200 tr mr5"><em class="red pr5">*</em>社会信用代码：</span>
                                    ${lxgInstitutionCombination.social_credit}<span class="ml5"></span></li>

                                <li class="mb10"><span class="display-ib w200 tr mr5"><em class="red pr5">*</em>行业：</span>
                                    ${lxgInstitutionCombination.industry}<span class="ml5"></span></li>
                                <li class="mb10"><span class="display-ib w200 tr mr5"><em class="red pr5">*</em>企业规模：</span>
                                    ${lxgInstitutionCombination.corporate_scale}<span class="ml5">人</span></li>
                                <li class="mb10"><span class="display-ib w200 tr mr5"><em class="red pr5">*</em>法人身份证号：</span>
                                    ${lxgInstitutionCombination.person_number}<span class="ml5"></span></li>
                                <li class="mb10 clearfix"><div class=" pr pl200"><span class="display-ib w200 tr mr5 pa left0"><em class="red pr5">*</em>担保机构介绍：</span>
                                    <div class="pl10">${lxgInstitutionCombination.guarantee_introduction}</div>
                                    <p></p></div></li>
                                <li class="mb10"><span class="display-ib w200 tr mr5 fl"><em class="red pr5"></em>担保情况描述：</span>
                                    <div class="pl00 ml5">
                                        <textarea id="textarea_id" cols="100" rows="8" style="width: 10px; height:10px;">${lxgInstitutionCombination.description_guarantee}</textarea>
                                    </div>
                                    <span class="ml5"></span></li>
                                <li class="mb10"><span
                                        class="display-ib w200 tr mr5">是否允许投资：</span>
                                    <input id="isInvestorHidden" type="hidden" name="isInvestorHidden" value="null">
                                    <label class=" display-ib mr50 pt5 pb5" >
                                        <input type="radio" name="allowed_invest" disabled="disabled" class="mr10" value="${lxgInstitutionCombination.allowed_invest==1}" checked="checked"/>是
                                    </label>
                                    <label class="display-ib mr50 pt5 pb5" >
                                        <input type="radio" name="allowed_invest" disabled="disabled" class="mr10" value="${lxgInstitutionCombination.allowed_invest==1}" />否
                                    </label>

                                    <span tip></span>
                                    <span errortip class="" style="display: none"></span>
                                </li>
                                <li class="mb10"><span
                                        class="display-ib w200 tr mr5">是否允许购买不良债权：</span>
                                    <input id="isBuyBadClaimHidden" type="hidden" name="allowed_distressed" value="${lxgInstitutionCombination.allowed_distressed}">
                                    <label class="cursor-p display-ib mr50 pt5 pb5">
                                        <input type="radio" name="allowed_distressed"  disabled="disabled" class="mr10" value="S" checked="checked"/>是
                                    </label>
                                    <label class="cursor-p display-ib mr50 pt5 pb5">
                                        <input type="radio" name="allowed_distressed" disabled="disabled" class="mr10" value="{lxgInstitutionCombination.allowed_distressed}"/>否
                                    </label>

                                    <span tip></span>
                                    <span errortip class="" style="display: none"></span>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>

        </div>
    </div>
</div>


<link rel="stylesheet" href="<%=request.getContextPath()%>/kindeditor/themes/default/default.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/kindeditor/plugins/code/prettify.css"/>
    <script charset="utf-8" src="<%=request.getContextPath()%>/kindeditor/kindeditor-all.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/kindeditor/lang/zh_CN.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/kindeditor/plugins/code/prettify.js"></script>
<script type="text/javascript">
    KindEditor.ready(function(K) {
        window.editor = K.create('#textarea_id', {
            readonlyMode : true
        });

    });
</script>
</body>
</html>
