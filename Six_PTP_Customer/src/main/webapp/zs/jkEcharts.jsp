<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/6/1
  Time: 19:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/echarts/echarts.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/echarts/vintage.js"></script>
<body>
<div id="main" style="width: 700px;height:400px;"></div>

<script type="application/javascript">
    var myChart = echarts.init(document.getElementById('main'));
    myChart.setOption({
        title: {
            text: '借款统计'
        },
        tooltip: {},
        legend: {
            data:['总额(元)']
        },
        xAxis: {
            data: []
        },
        yAxis: {
            type: 'value'
        },
        series: [{
            name: '总额(元)',
            type: 'bar',
            data: []
        }]
    });
    $.ajax({
        url:"<%=request.getContextPath()%>/echarts/jiekuantongji.do",
        type:"get",
        success:function(data){

            var loginname = [];
            var jine = [];
            for (var i = 0; i < data.length; i++) {
                loginname.push(data[i].loginname);
                jine.push(data[i].zongjine)
            }
            myChart.setOption({
                xAxis: {
                    type: 'category',
                    data:loginname
                },
                series: [{
                    // 根据名字对应到相应的系列
                    name: '总额(元)',
                    data: jine
                }]
            });
        }

    })
</script>
</body>
</html>
