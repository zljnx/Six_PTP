<%--
  Created by IntelliJ IDEA.
  User: 吕旭刚
  Date: 2018/5/24
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/console/css/base.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/console/css/index.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/console/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/console/js/zankai.js"></script>

<html>
<head>
    <title>介绍资料</title>
</head>
<body>
<div class="right-container">
    <div class="viewFramework-body">
        <div class="viewFramework-content">
            <div class="p20">
                <div class="border">
                    <div class="title-container"><i class="icon-i w30 h30 va-middle title-left-icon"></i>机构信息
                        <div class="fr mt5">
                            <input type="button" class="btn btn-blue2 radius-6 pl20 pr20 fr mr10" onclick="location.href='/lxg/lxgShow.jsp'" value="返回">
                        </div>

                    </div>

                </div>

                <!--切换栏目-->
                <div class="border mt20">
                    <div class="tabnav-container">
                        <ul class="clearfix">
                            <li>
                                <a href="/lxg/lxgShow.jsp?id=199&operationJK=null"
                                   class="tab-btn ">机构信息<i class="icon-i tab-arrowtop-icon"></i></a></li>
                            <li><a href="javascript:void(0);" class="tab-btn select-a">介绍资料<i
                                    class="icon-i tab-arrowtop-icon"></i></a></li>
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
                                <li class="mb10"><span class="display-ib w200 tr mr5"><em class="red pr5">*</em>企业简介：</span>
                                    <textarea id="textarea_id" cols="100" rows="8" style="width: 10px; height:10px;">${lxgInstitutionCombination.corporate_introduction}</textarea>
                                </li>
                                <li class="mb10"><span class="display-ib w200 tr mr5"><em class="red pr5">*</em>经营情况：</span>
                                    <textarea id="textarea_id2" cols="100" rows="8" style="width: 10px; height:10px;">${lxgInstitutionCombination.operating_condition}</textarea>
                                </li>
                                <li class="mb10"><span class="display-ib w200 tr mr5"><em class="red pr5">*</em>涉诉情况：</span>
                                    <textarea id="textarea_id3" cols="100" rows="8" style="width: 10px; height:10px;">${lxgInstitutionCombination.cases_lawsuit}</textarea>
                                </li>
                                <li class="mb10"><span class="display-ib w200 tr mr5"><em class="red pr5">*</em>征信情况：</span>
                                    <textarea id="textarea_id4" cols="100" rows="8" style="width: 10px; height:10px;">${lxgInstitutionCombination.credit_conditions}</textarea>
                                    <input type="hidden"
                                           name="F01"
                                           value="199"/>
                                    <span class="ml5"></span></li>

                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="<%=request.getContextPath()%>/console/js/validation.js"></script>
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
        window.editor = K.create('#textarea_id2', {
            readonlyMode : true
        });
        window.editor = K.create('#textarea_id3', {
            readonlyMode : true
        });
        window.editor = K.create('#textarea_id4', {
            readonlyMode : true
        });


    });
</script>
</body>
</html>
