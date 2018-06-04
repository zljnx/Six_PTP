<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/31
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/all/echarts/echarts.min.js"></script>
</head>
<body style="height: 100%; margin: 0">
<div id="container" style="height:500px;width: 400px"></div>
<%--<script>
    var dom = echarts.init(document.getElementById("container"));
    option = {
        color: ['#3398DB'],
        title: {
            text: '日志统计',
            subtext: '数据来自后台'
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'shadow'
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: {
            type: 'value',
            boundaryGap: [0, 0.01],
            axisTick: {
                alignWithLabel: true
            }
        },
        yAxis: {
            type: 'category',
            data: ['日常','总计','异常','新增','删除','修改','查询']
        },
        series: [{
            data: [120, 200, 150, 80, 70, 110, 130],
            type: 'bar',
            barWidth: '60%',
        }]
       /* series: [
            {
                name: '日志记录条数',
                type: 'bar',
                data: [{}]
            }
        ]*/
    };

    dom.setOption(option);
</script>--%>
<script>
    $(function(){
        $.ajax({
            url:'<%=request.getContextPath()%>/logController/selecttongji.do',
            dataType:'json',
            type:'post',

            success:function(result){
                var dom = document.getElementById("container");
                var myChart = echarts.init(dom);
                var app = {};
                option = null;
                app.title = '日志统计';

                option = {
                    color: ['#3398DB'],
                    title: {
                        text: '日志统计',
                        subtext: '数据来自后台'
                    },
                    tooltip: {
                        trigger: 'axis',
                        axisPointer: {
                            type: 'shadow'
                        }
                    },
                    legend: {
                        String: ['日常', '总计','异常','新增','删除','修改','查询']
                    },
                    grid: {
                        left: '3%',
                        right: '4%',
                        bottom: '3%',
                        containLabel: true
                    },
                    xAxis: {
                        type: 'category',
                        data: ['日常','总计','异常','新增','删除','修改','查询'],
                        axisTick: {
                            alignWithLabel: true
                        }
                    },
                    yAxis: {
                        type: 'value',

                    },
                    series: [
                        {
                            name: '日志记录条数',
                            type: 'bar',
                            data: result
                        }
                    ]
                };

                if (option && typeof option === "object") {
                    myChart.setOption(option, true);
                }
            },
            error:function(){


            }
        })
    })
</script>
</body>
</html>
