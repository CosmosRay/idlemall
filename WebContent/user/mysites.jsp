<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>个人中心</title>
    <link rel="stylesheet" type="text/css" href="../css/header.css">
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/logoinpage.js"></script>
</head>
<body>
<header>
    <nav id="nav1">
        <ul>
            <li id="nav_l1"><img src="../images/logo/address.png"><a href="#">河南中医药大学</a></li>
            <p id="nav_l0">&nbsp;</p>
            <!--<li class="nav_l0" id="nav_l2"><a href="#">hi,请登录</a></li>
            <li class="nav_l0" id="nav_l3"><a href="#">注册</a></li>
            <li class="nav_l0" id="nav_l4"><a href="#"><img src="../images/logo/form.png">我的订单</a></li>
            <li class="nav_l0" id="nav_l5"><a href="#">充值中心&nbsp;&nbsp;<img src="../images/logo/t_arrow.gif"></a></li>
            <li class="nav_l0" id="nav_l6"><a href="#">客户服务&nbsp;&nbsp;<img src="../images/logo/t_arrow.gif"></a></li>-->
            <li class="nav_l0" id="nav_l7"><a href="../commodity/index.html">退出&nbsp;&nbsp;</a></li>
        </ul>
    </nav>

    <div id="header_div" style="height: 110px;border-bottom: 1px solid #EEE">
        <img id="logo" src="../images/logo/logo.png">
        <ul id="h_d_ul">
            <li>主页</li>|
            <li>购物车</li>|
            <li>我的商城</li>|
            <li>发布闲置</li>
        </ul>
    </div>
</header>
<!--=============网站右侧导航条==========-->
<div id="body_right">
    <p><a href=""><img src="../images/logo/account.png"/><span class="br_ri">个人中心</span></a></p>
    <p><a href=""><img src="../images/logo/cart.png"/><span>购物车</span></a></p>
    <p><a href=""><img src="../images/logo/quan.png"/><span class="br_ri"></span></a></p>
    <p><a href=""><img src="../images/logo/all.png"/><span class="br_ri"></span></a></p>

    <p><a href=""><img src="../images/logo/edit.png"/><span class="br_ri"></span></a></p>
    <p><a href=""><img src="../images/logo/scanning.png"/><span class="br_ri"></span></a></p>
    <p><a href=""><img src="../images/logo/less.png"/><span class="br_ri"></span></a></p>
</div>
<!--网站主题部分-->


<iframe id="main_iframe" name="main_iframe" width="97%" height="450px" scrolling="no" frameborder="0"  src="personal.html"></iframe>



</body>
</html>