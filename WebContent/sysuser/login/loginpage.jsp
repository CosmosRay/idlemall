<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>闲置网登录</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/logoinpage.css"/>
    <script type="text/javascript" src="<%=basePath %>js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/logoinpage.js"></script>
</head>
<body>
<!--导航栏-->
<header>
    <section>
        <a href="<%=basePath%>mainPageAction/selectGoods.action"><img src="<%=basePath %>images/logo/loginlogo.jpg" alt="图片无法显示"/></a>
        <div id="div1">
            <ul>
                <li id="div1_li"><a href="#"><img src="<%=basePath %>images/logo/runbun.png">帮助中心<img src="<%=basePath %>images/logo/turnb.png" alt="图片无法正常显示"></a></li>
                <!-- <li class="div1_li"><a class="a1" href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;包裹跟踪</a></li>
                <li class="div1_li"><a class="a1" href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;常见问题</a></li>
                <li class="div1_li"><a class="a1" href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在线退换货</a></li>
                <li class="div1_li"><a class="a1" href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在线投诉</a></li>
                <li class="div1_li"><a class="a1" href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;配送范围</a></li> -->
            </ul>
        </a></div>
        <div id="div2"><span class="p12">您好，欢迎观临闲置网！</span></div>
    </section>
</header>
<!--登录界面设置-->
<section id="sec1">
    <div id="div3"><a href="<%=basePath%>mainPageAction/selectGoods.action"><img src="<%=basePath %>images/logo/loginlogo_1.jpg"/></a></div>
    <div id="div4">
        <form method="post" action="<%=basePath %>sysUserLoginAction/mySysUserLogin.action">
            <p>闲置网登录<a href="<%=basePath %>regisiterPageAction/startRegisiter.action">注册新账号</a></p>
            <p class="for1"><img src="<%=basePath %>images/logo/i_u.png"/><input type="text" name="iname"></p>
            <p class="for1"><img src="<%=basePath %>images/logo/i_pwd.png"/><input type="password" name="ipass"></p>
            <p><input type="checkbox" name="zidong">自动登录 <a href="">忘记密码？</a></p>
            <p><input type="submit" name="sub" value="登录"></p>
            <!--<p>更多合作网站账号登录</p>
            <ul id="div4_ul">
                <li><img src="<%=basePath %>images/logo/QQ.png"></li>
                <li><img src="<%=basePath %>images/logo/JD.png"></li>
                <li><img src="<%=basePath %>images/logo/WX.png"></li>
                <li><img src="<%=basePath %>images/logo/WB.png"></li>
                <li><a href="">更多合作网站<img src="<%=basePath %>images/logo/turnb.png"></a></li>
            </ul>-->
            <div id="div5"></div>
        </form>
    </div>
</section>

<!--页脚部分-->
<footer id="foot">
    <p><a href="">豫ICP备17012658号</a>&nbsp;|&nbsp;<a href="">豫ICP备17012658号-1</a></p>

    <p>Copyright © 闲置商城 2017-2018，All Rights Reserved</p>
</footer>
</body>
</html>