<%--
  Created by IntelliJ IDEA.
  User: 吕旭刚
  Date: 2018/5/25
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/console/css/base.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/console/css/index.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/console/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/console/js/zankai.js"></script>
<html>
<head>
    <title>车产信息</title>
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
                            <li>
                                <a href="/lxg/lxgBrochure.jsp?id=199&operationJK=null"
                                   class="tab-btn ">介绍资料</a></li>
                            <li>
                                <a href="/lxg/lxgContact.jsp?id=199&operationJK=null"
                                   class="tab-btn ">联系信息</a></li>
                            <li>
                                <a href="/lxg/lxgFinancial.jsp?id=199&operationJK=null"
                                   class="tab-btn ">财务状况</a></li>
                            <li><a href="javascript:void(0);" class="tab-btn select-a">车产信息<i
                                    class="icon-i tab-arrowtop-icon"></i></a></li>
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
                            <form action="" method="post"
                                  class="form1">
                                <input type="hidden" id="kkk" name="kk" value="199">
                                <div class="table-container">
                                    <table border="1">
                                        <tr>
                                            <th>序号</th>
                                            <th>汽车品牌</th>
                                            <th>车牌号码</th>
                                            <th>购车年份</th>
                                            <th>购买价格</th>
                                            <th>评估价格</th>
                                        </tr>
                                        <tr>
                                            <td>
                                                ${lxgInstitutionCombination.car_id}
                                            </td>
                                            <td>
                                                ${lxgInstitutionCombination.car_brand}
                                            </td>
                                            <td>
                                                ${lxgInstitutionCombination.license_platenumbe}
                                            </td>
                                            <td>
                                                <fmt:formatDate value="${lxgInstitutionCombination.car_year}" pattern="yyyy-MM-dd HH:mm:ss"/>
                                            </td>
                                            <td>
                                                ${lxgInstitutionCombination.car_price}
                                            </td>
                                            <td>
                                                ${lxgInstitutionCombination.car_assess_price}
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
