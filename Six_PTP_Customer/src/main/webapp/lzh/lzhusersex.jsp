<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/4
  Time: 23:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<script type="text/javascript" src="../all/echarts/echarts.min.js"></script>
<script type="text/javascript" src="../jquery/jquery.min.js"></script>
<head>
    <title>Title</title>
</head>
<body>
    <div class="chart" id="chart" style="width:520px;height:400px;"></div>
    <script type="text/javascript">
        var echartsPie = echarts.init(document.getElementById('chart'));
        var option = {
            title : {
                text: '用户男女比例',
                subtext: '纯属虚构',
                x:'center'
            },
            tooltip : {
                trigger: 'item',
                formatter: "{a} <br/> {b} : {c}人 ({d}%)"
            },
            toolbox: {
                show : true,
                feature : {
                    mark : {show: true},
                    dataView : {show: true, readOnly: false},
                    magicType : {
                        show: true,
                        type: ['pie', 'funnel'],
                        option: {
                            funnel: {
                                x: '25%',
                                width: '50%',
                                funnelAlign: 'left',
                                max: 1548
                            }
                        }
                    },
                    restore : {show: true},
                    saveAsImage : {show: true}
                }
            },
            series : [
                {
                    name: '性别',
                    type: 'pie',
                    radius : '55%',
                    center: ['50%', '60%'],
                    data:[

                    ],
                }
            ]
        };
        echartsPie.setOption(option)
        $.ajax({
            url : "/lzhUserInfo/queryUserSex.do",
            type : "post",
            dataType: "json",
            success : function(result) {
                var data=[
                    {name:'男',value:result[0].boycount},
                    {name:'女',value:result[0].girlcount}
                ]
                var name=[];
                name.push(data[0].name);
                name.push(data[1].name);
                echartsPie.setOption({
                    legend: {
                        orient: 'vertical',
                        left: 'left',
                        data:name
                    },
                    series: [{
                        // 根据名字对应到相应的系列
                        name: "性别",
                        data: data,
                    }],
                });
            }
        })
    </script>
</body>
</html>
