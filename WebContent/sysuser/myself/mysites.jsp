<%@ page language="java" import="java.util.*,com.idlemall.cosmos.model.*,com.idlemall.cosmos.model.vo.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	SysUser sysUser = (SysUser)request.getSession().getAttribute("sysUser");
	String url =(String) request.getSession().getAttribute("url");
	System.out.println("url == "+url);
	if(url == null){
		url = "personal";
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<base href="<%=basePath%>">
    <title>个人中心</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/header.css">
    <script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
    <%-- <script type="text/javascript" src="<%=basePath%>js/logoinpage.js"></script> --%>
    <script>
    	<%-- verify();
    	function verify(){
    		if(<%=sysUser%>==null){
    			location.href="<%=basePath%>sysuser/login/loginpage.jsp";
    		}
    	} --%>
    	alert("js执行！");
    	function personal_click(){
    		alert("个人中心！");
    		location.href = "<%=basePath %>sysUserAction/myOwn.action";
    	}; 
    	function shoptrolley_click(){
    		alert("购物车！");
    		location.href = "<%=basePath %>trolleyPageAction/myTrolleyPage.action";
    	}; 
    	function shopmine_click(){
    		alert("我的商城！");
    		 location.href = "<%=basePath %>shopMineAction/myShop.action";
    	};
    </script>
</head>
<body>
<header>
    <nav id="nav1">
        <ul>
            <li id="nav_l1"><img src="<%=basePath%>images/logo/address.png"><a href="#">河南中医药大学</a></li>
            <p id="nav_l0">&nbsp;</p>
           <li class="nav_l0" id="nav_l2"><a href="">hi,<%=sysUser.getUser_name() %></a></li>
             
            <li class="nav_l0" id="nav_l7"><a href="<%=basePath%>sysUserLoginAction/exit.action">退出&nbsp;&nbsp;</a></li>
        </ul>
    </nav>

    <div id="header_div" style="height: 110px;border-bottom: 1px solid #EEE">
        <a href="<%=basePath %>mainPageAction/selectGoods.action"><img id="logo" src="<%=basePath%>images/logo/logo.png"></a>
        <ul id="h_d_ul">
            <li onclick="personal_click()">主页</li>|
            <li onclick="shoptrolley_click()">购物车</li>|
            <li onclick="shopmine_click()">我的商城</li>|
            <li>发布闲置</li>
        </ul>
    </div>
</header>
<!--=============网站右侧导航条==========-->
<%-- <div id="body_right">
    <p><a href=""><img src="<%=basePath%>images/logo/account.png"/><span class="br_ri">个人中心</span></a></p>
    <p><a href=""><img src="<%=basePath%>images/logo/cart.png"/><span>购物车</span></a></p>
    <p><a href=""><img src="<%=basePath%>images/logo/quan.png"/><span class="br_ri"></span></a></p>
    <p><a href=""><img src="<%=basePath%>images/logo/all.png"/><span class="br_ri"></span></a></p>

    <p><a href=""><img src="<%=basePath%>images/logo/edit.png"/><span class="br_ri"></span></a></p>
    <p><a href=""><img src="<%=basePath%>images/logo/scanning.png"/><span class="br_ri"></span></a></p>
    <p><a href=""><img src="<%=basePath%>images/logo/less.png"/><span class="br_ri"></span></a></p>
</div> --%>
<!--网站主题部分-->

<iframe id="main_iframe" name="main_iframe" width="97%" height="450px" scrolling="no" frameborder="0"  src="<%=basePath %>sysuser/myself/<%=url %>.jsp"></iframe>



</body>
</html>