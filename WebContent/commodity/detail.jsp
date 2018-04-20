<%@ page language="java" import="java.util.*,com.idlemall.cosmos.model.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	SysUser sysUser = (SysUser)request.getSession().getAttribute("sysUser");
	UserGoods userGood = (UserGoods)request.getSession().getAttribute("userGood");
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><%=userGood.getGoods_name() %></title>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/header.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/detail.css">

    <script type="text/javascript" src="<%=basePath %>js/jquery.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/shoptrolley.js"></script>
</head>
<body>
<header>
    <nav id="nav1">
        <ul>
            <li id="nav_l1"><img src="<%=basePath %>images/logo/address.png"><a href="#">河南中医药大学</a></li>
            <p id="nav_l0">&nbsp;</p>
            <%
            	if(sysUser==null){
            		%>
		            <li class="nav_l0" id="nav_l2"><a href="<%=basePath%>sysUserLoginAction/sysUserLogin.action">hi,请登录</a></li>
		            <li class="nav_l0" id="nav_l3"><a href="">注册</a></li>
            		<%
            	}else{
            		%>
		            <li class="nav_l0" id="nav_l2"><a href="<%=basePath%>trolleyPageAction/myTrolleyPage.action">hi,<%=sysUser.getUser_name() %></a></li>
            		<li class="nav_l0" id="nav_l4"><a href="<%=basePath%>trolleyPageAction/myTrolleyPage.action"><img src="<%=basePath %>images/logo/form.png">我的订单</a></li>
            		<li class="nav_l0" id="nav_l7"><a href="<%=basePath%>sysUserLoginAction/exit.action">退出&nbsp;&nbsp;</a></li>
            		<%
            	}
            %>
            <li class="nav_l0" id="nav_l6"><a href="">客户服务&nbsp;&nbsp;<img src="<%=basePath %>images/logo/t_arrow.gif"></a></li>
        </ul>
    </nav>

    <div id="header_div">
        <img id="logo" src="<%=basePath %>images/logo/logo.png">
        <div id="hd_div1">
            <p><input type="text" name="search">
                <a href=""><img id="search" src="<%=basePath %>images/logo/search.png"/></a>
            </p>
            <!--<ul id="div1_u1">
                <li><a href="">测试···&nbsp;</a></li>
                <li><a href="">测试···&nbsp;</a></li>
                <li><a href="">测试···&nbsp;</a></li>
                <li><a href="">测试···&nbsp;</a></li>
                <li><a href="">测试···&nbsp;</a></li>
                <li><a href="">测试···&nbsp;</a></li>
            </ul>-->

            <!-- <ul id="div1_u2">
                <li><a href="">手机</a></li>
                <li><a href="">电脑</a></li>
                <li><a href="">数码</a></li>
                <li><a href="">电器</a></li>
                <li><a href="">服装</a></li>
                <li><a href="">女性</a></li>
                <li><a href="">书籍</a></li>
                <li><a href="">器材</a></li>
                <li><a href="">办公</a></li>
                <li><a href="">其他</a></li>
            </ul> -->
        </div>

        <div id="div1_u3">
            <img src="<%=basePath %>images/logo/car.png"><span>购物车</span>
        </div>
    </div>
</header>
<!--=============网站右侧导航条==========-->
<%-- <div id="body_right">
    <p><a href=""><img src="<%=basePath %>images/logo/account.png"/><span class="br_ri">个人中心</span></a></p>
    <p><a href=""><img src="<%=basePath %>images/logo/cart.png"/><span>购物车</span></a></p>
    <p><a href=""><img src="<%=basePath %>images/logo/quan.png"/><span class="br_ri"></span></a></p>
    <p><a href=""><img src="<%=basePath %>images/logo/all.png"/><span class="br_ri"></span></a></p>

    <p><a href=""><img src="<%=basePath %>images/logo/edit.png"/><span class="br_ri"></span></a></p>
    <p><a href=""><img src="<%=basePath %>images/logo/scanning.png"/><span class="br_ri"></span></a></p>
    <p><a href=""><img src="<%=basePath %>images/logo/less.png"/><span class="br_ri"></span></a></p>
</div> --%>
<!--====================网站主题部分=================-->
<section id="sec1">
    <ul>
        <li><a href="">首页</a></li>>
        <li><a href="">电脑</a></li>
    </ul>
</section>
<!--====================简单介绍=================-->
<section id="sec2">
    <div id="sec2_div1">
        <ul>
            <li><img src="<%=basePath %>images/goods/detail_12.jpg"></li>
        </ul>
        <p id="sec2_div11">
            <span>商品编号:<%=userGood.getGoods_id() %></span>
    </div>
    <div id="sec2_div2">
        <br>
        <h4>&nbsp;&nbsp;&nbsp;&nbsp;<%=userGood.getGoods_name() %></h4>
        <p><%=userGood.getFaculty_sort_id() %></p>
        <ul>
            <li id="s2_li1">价格&nbsp;&nbsp;&nbsp;&nbsp;<span>￥<%=userGood.getGoods_price() %></span>
            <li id="s2_li2">配送<span>货到付款</span><span></span></li>
            <li id="s2_li3">发布时间：<span><%=userGood.getGoods_time() %> </span></li>
            <li>
            	<span>商品描述：</span><br>
            	<%=userGood.getGoods_desc()	 %>
            </li>
        </ul>
        <button id="shop_button" name="">联系商家</button>
    </div>
    <div id="sec2_div3">

    </div>

</section>

<!--弹出框信息-->
<div id="roll_information2">
    <h4>卖方信息</h4>
    <hr>
    <form>

        <p> 用户名：<span>河中医</span></p>
        <p> 院系：<span>信息技术学院</span></p>
        <p>QQ：<span>1217180902</span></p>
        <p>手机：<span>15736363636</span></p>

    </form>
    <button id="b_hide">X</button>
</div>
<!--页脚部分开始-->
<footer>
    <div id="clear_1"></div>
    <div id="footer_div3">
        <p>
            <a href="">关于闲置商城</a>|
            <a href="">我们的团队</a>|
            <a href="http://www.hactcm.edu.cn/">友情链接</a>|
            <a href="<%=basePath %>admin/login.html">系统登录</a>|
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