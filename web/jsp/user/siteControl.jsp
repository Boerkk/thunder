<%--
  Created by IntelliJ IDEA.
  User: 52305
  Date: 2022/1/23
  Time: 8:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--</body>--%>
<%--</html>--%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>点标记添加点击事件</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <style>
        body,
        html,
        #container {
            overflow: hidden;
            width: 100%;
            height: 100%;
            margin: 0;
            font-family: "微软雅黑";
        }
    </style>
    <script src="//api.map.baidu.com/api?type=webgl&v=1.0&ak=oRTPhvt2KPdwi0AIjoGYekexjgetqkIV"></script>
    <script src="/js/jquery-1.12.4.js"></script>
</head>
<body>
<div id="container"></div>
</body>
</html>
<script>
    var map = new BMapGL.Map('container');
    var point = new BMapGL.Point(116.404, 39.925);
    map.centerAndZoom(point, 5);
    // 创建点标记
    var marker = new BMapGL.Marker(point);
    map.addOverlay(marker);
    // 创建信息窗口
    var opts = {
        width: 200,
        height: 100,
        // title: '故宫博物院'
        // enableMessage:true//设置允许信息窗发送短息
    };
    var infoWindow = new BMapGL.InfoWindow('地址：北京市东城区王府井大街88号乐天银泰百货八层', opts);
    // 点标记添加点击事件
    marker.addEventListener('click', function () {
        map.openInfoWindow(infoWindow, point); // 开启信息窗口
    });
    var data_info = new Array();
    $(function () {
        $.post("",function (data) {
            var d = eval(data);
        })
    })
    map.enableScrollWheelZoom(true);
</script>
