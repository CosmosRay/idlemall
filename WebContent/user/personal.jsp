<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="../css/header.css">
</head>
<body>

<section id="personal_sec1">
    <div>
        <img src="../images/user/123.jpg" height="200px"/>
    </div>
    <br><br><br>
    <ul>
        <li>CosmosRay</li>
        <li>男</li>
        <li>河南中医药大学</li>
        <li>ID号：xz20180011</li>
        <li>我的发布：8件</li>
    </ul>
</section>
<div id="personal_div1"></div>
<!--==========================页脚部分开始=======================-->
<footer>
    <div id="clear_1"></div>
    <div id="footer_div3">
        <p>
            <a href="">关于闲置商城</a>|
            <a href="">我们的团队</a>|
            <a href="http://www.hactcm.edu.cn/">友情链接</a>|
            <a href="../admin/login.html">系统登录</a>|
            <a href="">闲置新品</a>
        </p>

        <p>
            <a href="">豫ICP备16050468号</a>|
            <a href="">经营证照</a>
        </p>

        <p>
            Copyright&copy;&nbsp;闲置商场网上超市&nbsp;2017-2018，All&nbsp;Rights&nbsp;Reserved
        </p>
    </div>
</footer>
</body>
</html>