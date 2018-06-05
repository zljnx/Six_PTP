<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/1
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/all/echarts/echarts.min.js"></script>
</head>
<body>
<div id="huan" style="height:500px"></div>
<script>
                var dom = document.getElementById("huan");
                var myChart = echarts.init(dom);
                var app = {};
                app.title = '金钱统计';
                option = {
                    title: {
                        text: '金钱统计',
                        x: ''
                    },
                    tooltip: {
                        trigger: 'item',
                        formatter: "{a} <br/>{b} : {c} ({d}%)"
                    },
                    legend: {
                        orient: 'vertical',
                        left: 'center',
                        data: ['正面', '中立']
                    },
                    series: [
                        {
                            name: '金额',
                            type: 'pie',
                            radius: '60%',
                            center: ['50%', '55%'],
                            data: [
                                {value:10, name:'正面'},
                                {value:10, name:'中立'},
                            ],
                            itemStyle: {
                                emphasis: {
                                    shadowBlur: 10,
                                    shadowOffsetX: 0,
                                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                                }
                            }
                        }
                    ]
                };
                myChart.setOption(option);




                var names = [];
                var nums = [];
                $.ajax({
                    url:"<%=request.getContextPath()%>/logController/selectHuan.do",
                    type:'post',
                    async:'true',
                    data:{},
                    dataType:'json',
                    success:function(data){

                        for(var i = 0 ; i < data.length ; i++){
                            nums.push(data[i].c_huanmoney);
                            nums.push(data[i].c_shengmoney);
                            names.reduce(data[i].id)
                        }6

                        myChart.hideLoading();
                        myChart.setOption({
                            xAxis:{
                                data:names
                            },
                            series:[{
                                name:'金额',
                                data:nums
                            }]
                        });
                    },
                    error:function(){
                        alert("图表数据加载失败");
                        myChart.hideLoading();
                    }
                });
</script>
</body>
</html>
