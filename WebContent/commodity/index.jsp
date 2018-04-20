<%@ page language="java" import="java.util.*,com.idlemall.cosmos.model.*,com.idlemall.cosmos.model.vo.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	SysUser sysUser = (SysUser)request.getSession().getAttribute("sysUser");
	PagePagingBeans pagePagingBeans = (PagePagingBeans)request.getSession().getAttribute("pagePagingBeans");
	ArrayList<UserGoods> list = (ArrayList<UserGoods>)request.getSession().getAttribute("userGoodsList");
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<base href="<%=basePath%>">
    <title>闲置商城</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/header.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/index.css">
    <script type="text/javascript" src="<%=basePath %>js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/index.js"></script>
    <script type="text/javascript">
    	/* 判断页面是否是通过正常路径加载进来 */
    	<%-- function page_check(){
    		if(<%=pagePagingBeans%>==null){
    			location.href="<%=basePath%>mainPageAction/selectGoods.action";
    		}
    	}
    	$(document).ready(function(){
		    page_check();
    	}); --%>
    	function check_login(){
    		var flag = confirm("您还未登录，是否继续登录？");
    		if(flag){
    		var user = <%=sysUser%>;
    		alert(user);
    		if(user == null){
    			location.href="<%=basePath%>sysUserLoginAction/sysUserLogin.action";
    		}
    		}else{
    			
    		}	
    	};
    	<%-- function trolleyPageclick(){
    			location.href="<%=basePath%>sysUserLoginAction/trolleyPage.action";
    		
    	} --%>
    	
    </script>
    
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
		            <li class="nav_l0" id="nav_l3"><a href="<%=basePath %>regisiterPageAction/startRegisiter.action">注册</a></li>
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
<!--=====================顶部导航====================-->
    <div id="header_div">
        <!-- <a href="index.html"> --><img id="logo" src="<%=basePath %>images/logo/logo.png"><!-- </a> -->
        <div id="hd_div1">
            <p><input type="text" name="search">
                <a href="searchList.html"><img id="search" src="<%=basePath %>images/logo/search.png"/></a>
            </p>
            <!-- <ul id="div1_u1">
                <li><a href="">书籍&nbsp;</a></li>
                <li><a href="">瑜伽垫&nbsp;</a></li>
                <li><a href="">测试···&nbsp;</a></li>

            </ul>
			
            <ul id="div1_u2">
                <li><a href="">书籍</a></li>
                <li><a href="">测试···</a></li>
                <li><a href="">测试···</a></li>
                <li><a href="">测试···</a></li>
                <li><a href="">测试···</a></li>

            </ul> -->
        </div>

        <div id="div1_u3" onclick="check_login()">
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
<!--===========================网站主题部分=======================-->
<section id="sec1">
    <!--背景轮播图-->
    <section id="sec1_sec2">
    <div id="sec1_div1">
        <ul>
            <li class="sec1_div1_li" id="sec1_p1"><div><img src="<%=basePath %>images/index/bg_1.jpg"></div></li>
            <li class="sec1_div1_li" id="sec1_p2"><div><img src="<%=basePath %>images/index/bg_2.jpg"></div></li>
            <li class="sec1_div1_li" id="sec1_p3"><div><img src="<%=basePath %>images/index/bg_3.jpg"></div></li>
            <li class="sec1_div1_li" id="sec1_p4"><div><img src="<%=basePath %>images/index/bg_4.jpg"></div></li>
            <li class="sec1_div1_li" id="sec1_p5"><div><img src="<%=basePath %>images/index/bg_5.jpg"></div></li>
            <li class="sec1_div1_li" id="sec1_p6"><div><img src="<%=basePath %>images/index/bg_6.jpg"></div></li>
            <li class="sec1_div1_li" id="sec1_p7"><div><img src="<%=basePath %>images/index/bg_7.jpg"></div></li>
            <li class="sec1_div1_li" id="sec1_p8"><div><img src="<%=basePath %>images/index/bg_8.jpg"></div></li>
            <li class="sec1_div1_li" id="sec1_p9"><div><img src="<%=basePath %>images/index/bg_9.jpg"></div></li>
        </ul>
    </div>
    <!--左侧详情导航-->
    <nav id="sec1_nav2">
        <ul>
            <li class="nav2_li"><img src="<%=basePath %>images/logo/nav1.png"/><a href="#">闲置推荐</a>
                <div class="nav2_div">
                    <div class="nav2_div2">
                        <img src="<%=basePath %>images/goods/left-right.png">
                    </div>
                    <dl>
                        <dt><a href="#">生生鲜</a> ><dt>
                        <dd><a href="#">牛奶</a></dd><dd><a href="#">成人</a></dd><dd><a href="#">奶粉</a></dd><dd><a href="#">酸奶</a></dd><dd><a href="#">豆奶</a></dd><dd><a href="#">奶酪</a></dd><dd><a href="#">黄油/奶油</a></dd><dd><a href="#">水果</a></dd><dd><a href="#">肉类</a></dd><dd><a href="#">海鲜</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">饼干糕点</a> ></dt>
                        <dd><a href="#">饼干</a></dd><dd><a href="#">曲奇</a></dd><dd><a href="#">威化</a></dd><dd><a href="#">夹心饼干</a></dd><dd><a href="#">苏打饼干</a></dd><dd><a href="#">糕点</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">酒水饮料</a> ></dt>
                        <dd><a href="#">葡萄酒</a></dd><dd><a href="#">啤酒</a></dd><dd><a href="#">洋酒</a></dd><dd><a href="#">起泡酒</a></dd><dd><a href="#">饮用水</a></dd><dd><a href="#">碳酸饮料</a></dd><dd><a href="#">果蔬汁</a></dd><dd><a href="#">咖啡</a></dd><dd><a href="#">果味饮料</a></dd><dd><a href="#">茶饮料</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">休闲零食</a> ></dt>
                        <dd><a href="#">坚果</a></dd><dd><a href="#">果干</a></dd><dd><a href="#">海苔</a></dd><dd><a href="#">膨化</a></dd><dd><a href="#">巧克力</a></dd><dd><a href="#">糖果</a></dd><dd><a href="#">果冻/布丁</a></dd><dd><a href="#">海味零食</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">粮油调味</a> ></dt>
                        <dd><a href="#">橄榄油</a></dd><dd><a href="#">大米</a></dd><dd><a href="#">方便面</a></dd><dd><a href="#">罐头</a></dd><dd><a href="#">食用油</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">茶冲咖啡</a> ></dt>
                        <dd><a href="#">速溶咖啡</a></dd><dd><a href="#">咖啡伴侣</a></dd><dd><a href="#">咖啡豆/粉</a></dd><dd><a href="#">白咖啡</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">母婴玩具</a> ></dt>
                        <dd><a href="#">奶粉</a></dd><dd><a href="#">尿裤湿巾</a></dd><dd><a href="#">洗护清洁</a></dd><dd><a href="#">哺育喂养</a></dd><dd><a href="#">童车童床</a></dd><dd><a href="#">辅食</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">美妆个护</a> ></dt>
                        <dd><a href="#">洁面卸妆</a></dd><dd><a href="#">面膜</a></dd><dd><a href="#">彩妆</a></dd><dd><a href="#">香水</a></dd><dd><a href="#">洗发护发</a></dd><dd><a href="#">套装</a></dd><dd><a href="#">沐浴</a></dd><dd><a href="#">洗手液</a></dd><dd><a href="#">牙膏</a></dd><dd><a href="#">牙刷</a></dd><dd><a href="#">漱口水</a></dd><dd><a href="#">卫生巾</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">家居清洁</a> ></dt>
                        <dd><a href="#">水具</a></dd><dd><a href="#">锅具</a></dd><dd><a href="#">刀具</a></dd><dd><a href="#">乳胶枕</a></dd><dd><a href="#">宠物用品</a></dd>
                    </dl>

                </div></li>
            <li class="nav2_li"><img src="<%=basePath %>images/logo/nav2.png"/><a href="#">手机</a>
                <div class="nav2_div">
                    <div class="nav2_div2">
                        <img src="<%=basePath %>images/goods/left-right.png">
                    </div>
                    <dl>
                        <dt><a href="#">生鲜</a> ><dt>
                        <dd><a href="#">牛奶</a></dd><dd><a href="#">成人</a></dd><dd><a href="#">奶粉</a></dd><dd><a href="#">酸奶</a></dd><dd><a href="#">豆奶</a></dd><dd><a href="#">奶酪</a></dd><dd><a href="#">黄油/奶油</a></dd><dd><a href="#">水果</a></dd><dd><a href="#">肉类</a></dd><dd><a href="#">海鲜</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">饼干糕点</a> ></dt>
                        <dd><a href="#">饼干</a></dd><dd><a href="#">曲奇</a></dd><dd><a href="#">威化</a></dd><dd><a href="#">夹心饼干</a></dd><dd><a href="#">苏打饼干</a></dd><dd><a href="#">糕点</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">酒水饮料</a> ></dt>
                        <dd><a href="#">葡萄酒</a></dd><dd><a href="#">啤酒</a></dd><dd><a href="#">洋酒</a></dd><dd><a href="#">起泡酒</a></dd><dd><a href="#">饮用水</a></dd><dd><a href="#">碳酸饮料</a></dd><dd><a href="#">果蔬汁</a></dd><dd><a href="#">咖啡</a></dd><dd><a href="#">果味饮料</a></dd><dd><a href="#">茶饮料</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">休闲零食</a> ></dt>
                        <dd><a href="#">坚果</a></dd><dd><a href="#">果干</a></dd><dd><a href="#">海苔</a></dd><dd><a href="#">膨化</a></dd><dd><a href="#">巧克力</a></dd><dd><a href="#">糖果</a></dd><dd><a href="#">果冻/布丁</a></dd><dd><a href="#">海味零食</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">粮油调味</a> ></dt>
                        <dd><a href="#">橄榄油</a></dd><dd><a href="#">大米</a></dd><dd><a href="#">方便面</a></dd><dd><a href="#">罐头</a></dd><dd><a href="#">食用油</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">茶冲咖啡</a> ></dt>
                        <dd><a href="#">速溶咖啡</a></dd><dd><a href="#">咖啡伴侣</a></dd><dd><a href="#">咖啡豆/粉</a></dd><dd><a href="#">白咖啡</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">母婴玩具</a> ></dt>
                        <dd><a href="#">奶粉</a></dd><dd><a href="#">尿裤湿巾</a></dd><dd><a href="#">洗护清洁</a></dd><dd><a href="#">哺育喂养</a></dd><dd><a href="#">童车童床</a></dd><dd><a href="#">辅食</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">美妆个护</a> ></dt>
                        <dd><a href="#">洁面卸妆</a></dd><dd><a href="#">面膜</a></dd><dd><a href="#">彩妆</a></dd><dd><a href="#">香水</a></dd><dd><a href="#">洗发护发</a></dd><dd><a href="#">套装</a></dd><dd><a href="#">沐浴</a></dd><dd><a href="#">洗手液</a></dd><dd><a href="#">牙膏</a></dd><dd><a href="#">牙刷</a></dd><dd><a href="#">漱口水</a></dd><dd><a href="#">卫生巾</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">家居清洁</a> ></dt>
                        <dd><a href="#">水具</a></dd><dd><a href="#">锅具</a></dd><dd><a href="#">刀具</a></dd><dd><a href="#">乳胶枕</a></dd><dd><a href="#">宠物用品</a></dd>
                    </dl>
                </div></li>
            <li class="nav2_li"><img src="<%=basePath %>images/logo/nav3.png"/><a href="#">电脑</a>
                <div class="nav2_div">
                    <div class="nav2_div2">
                        <img src="<%=basePath %>images/goods/left-right.png">
                    </div>
                    <dl>
                        <dt><a href="#">乳品</a> ><dt>
                        <dd><a href="#">牛奶</a></dd><dd><a href="#">成人</a></dd><dd><a href="#">奶粉</a></dd><dd><a href="#">酸奶</a></dd><dd><a href="#">豆奶</a></dd><dd><a href="#">奶酪</a></dd><dd><a href="#">黄油/奶油</a></dd><dd><a href="#">水果</a></dd><dd><a href="#">肉类</a></dd><dd><a href="#">海鲜</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">饼干糕点</a> ></dt>
                        <dd><a href="#">饼干</a></dd><dd><a href="#">曲奇</a></dd><dd><a href="#">威化</a></dd><dd><a href="#">夹心饼干</a></dd><dd><a href="#">苏打饼干</a></dd><dd><a href="#">糕点</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">酒水饮料</a> ></dt>
                        <dd><a href="#">葡萄酒</a></dd><dd><a href="#">啤酒</a></dd><dd><a href="#">洋酒</a></dd><dd><a href="#">起泡酒</a></dd><dd><a href="#">饮用水</a></dd><dd><a href="#">碳酸饮料</a></dd><dd><a href="#">果蔬汁</a></dd><dd><a href="#">咖啡</a></dd><dd><a href="#">果味饮料</a></dd><dd><a href="#">茶饮料</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">休闲零食</a> ></dt>
                        <dd><a href="#">坚果</a></dd><dd><a href="#">果干</a></dd><dd><a href="#">海苔</a></dd><dd><a href="#">膨化</a></dd><dd><a href="#">巧克力</a></dd><dd><a href="#">糖果</a></dd><dd><a href="#">果冻/布丁</a></dd><dd><a href="#">海味零食</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">粮油调味</a> ></dt>
                        <dd><a href="#">橄榄油</a></dd><dd><a href="#">大米</a></dd><dd><a href="#">方便面</a></dd><dd><a href="#">罐头</a></dd><dd><a href="#">食用油</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">茶冲咖啡</a> ></dt>
                        <dd><a href="#">速溶咖啡</a></dd><dd><a href="#">咖啡伴侣</a></dd><dd><a href="#">咖啡豆/粉</a></dd><dd><a href="#">白咖啡</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">母婴玩具</a> ></dt>
                        <dd><a href="#">奶粉</a></dd><dd><a href="#">尿裤湿巾</a></dd><dd><a href="#">洗护清洁</a></dd><dd><a href="#">哺育喂养</a></dd><dd><a href="#">童车童床</a></dd><dd><a href="#">辅食</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">美妆个护</a> ></dt>
                        <dd><a href="#">洁面卸妆</a></dd><dd><a href="#">面膜</a></dd><dd><a href="#">彩妆</a></dd><dd><a href="#">香水</a></dd><dd><a href="#">洗发护发</a></dd><dd><a href="#">套装</a></dd><dd><a href="#">沐浴</a></dd><dd><a href="#">洗手液</a></dd><dd><a href="#">牙膏</a></dd><dd><a href="#">牙刷</a></dd><dd><a href="#">漱口水</a></dd><dd><a href="#">卫生巾</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">家居清洁</a> ></dt>
                        <dd><a href="#">水具</a></dd><dd><a href="#">锅具</a></dd><dd><a href="#">刀具</a></dd><dd><a href="#">乳胶枕</a></dd><dd><a href="#">宠物用品</a></dd>
                    </dl>
                </div></li>
            <li class="nav2_li"><img src="<%=basePath %>images/logo/nav4.png"/><a href="#">数码</a>
                    <div class="nav2_div">
                        <div class="nav2_div2">
                            <img src="<%=basePath %>images/goods/left-right.png">
                        </div>
                        <dl>
                            <dt><a href="#">休闲零食</a> ><dt>
                            <dd><a href="#">牛奶</a></dd><dd><a href="#">成人</a></dd><dd><a href="#">奶粉</a></dd><dd><a href="#">酸奶</a></dd><dd><a href="#">豆奶</a></dd><dd><a href="#">奶酪</a></dd><dd><a href="#">黄油/奶油</a></dd><dd><a href="#">水果</a></dd><dd><a href="#">肉类</a></dd><dd><a href="#">海鲜</a></dd>
                        </dl>
                        <dl>
                            <dt><a href="#">饼干糕点</a> ></dt>
                            <dd><a href="#">饼干</a></dd><dd><a href="#">曲奇</a></dd><dd><a href="#">威化</a></dd><dd><a href="#">夹心饼干</a></dd><dd><a href="#">苏打饼干</a></dd><dd><a href="#">糕点</a></dd>
                        </dl>
                        <dl>
                            <dt><a href="#">酒水饮料</a> ></dt>
                            <dd><a href="#">葡萄酒</a></dd><dd><a href="#">啤酒</a></dd><dd><a href="#">洋酒</a></dd><dd><a href="#">起泡酒</a></dd><dd><a href="#">饮用水</a></dd><dd><a href="#">碳酸饮料</a></dd><dd><a href="#">果蔬汁</a></dd><dd><a href="#">咖啡</a></dd><dd><a href="#">果味饮料</a></dd><dd><a href="#">茶饮料</a></dd>
                        </dl>
                        <dl>
                            <dt><a href="#">休闲零食</a> ></dt>
                            <dd><a href="#">坚果</a></dd><dd><a href="#">果干</a></dd><dd><a href="#">海苔</a></dd><dd><a href="#">膨化</a></dd><dd><a href="#">巧克力</a></dd><dd><a href="#">糖果</a></dd><dd><a href="#">果冻/布丁</a></dd><dd><a href="#">海味零食</a></dd>
                        </dl>
                        <dl>
                            <dt><a href="#">粮油调味</a> ></dt>
                            <dd><a href="#">橄榄油</a></dd><dd><a href="#">大米</a></dd><dd><a href="#">方便面</a></dd><dd><a href="#">罐头</a></dd><dd><a href="#">食用油</a></dd>
                        </dl>
                        <dl>
                            <dt><a href="#">茶冲咖啡</a> ></dt>
                            <dd><a href="#">速溶咖啡</a></dd><dd><a href="#">咖啡伴侣</a></dd><dd><a href="#">咖啡豆/粉</a></dd><dd><a href="#">白咖啡</a></dd>
                        </dl>
                        <dl>
                            <dt><a href="#">母婴玩具</a> ></dt>
                            <dd><a href="#">奶粉</a></dd><dd><a href="#">尿裤湿巾</a></dd><dd><a href="#">洗护清洁</a></dd><dd><a href="#">哺育喂养</a></dd><dd><a href="#">童车童床</a></dd><dd><a href="#">辅食</a></dd>
                        </dl>
                        <dl>
                            <dt><a href="#">美妆个护</a> ></dt>
                            <dd><a href="#">洁面卸妆</a></dd><dd><a href="#">面膜</a></dd><dd><a href="#">彩妆</a></dd><dd><a href="#">香水</a></dd><dd><a href="#">洗发护发</a></dd><dd><a href="#">套装</a></dd><dd><a href="#">沐浴</a></dd><dd><a href="#">洗手液</a></dd><dd><a href="#">牙膏</a></dd><dd><a href="#">牙刷</a></dd><dd><a href="#">漱口水</a></dd><dd><a href="#">卫生巾</a></dd>
                        </dl>
                        <dl>
                            <dt><a href="#">家居清洁</a> ></dt>
                            <dd><a href="#">水具</a></dd><dd><a href="#">锅具</a></dd><dd><a href="#">刀具</a></dd><dd><a href="#">乳胶枕</a></dd><dd><a href="#">宠物用品</a></dd>
                        </dl>
                </div></li>
            <li class="nav2_li"><img src="<%=basePath %>images/logo/nav5.png"/><a href="#">电器</a>
                <div class="nav2_div">
                    <div class="nav2_div2">
                        <img src="<%=basePath %>images/goods/left-right.png">
                    </div>
                    <dl>
                        <dt><a href="#">奶粉</a> ><dt>
                        <dd><a href="#">牛奶</a></dd><dd><a href="#">成人</a></dd><dd><a href="#">奶粉</a></dd><dd><a href="#">酸奶</a></dd><dd><a href="#">豆奶</a></dd><dd><a href="#">奶酪</a></dd><dd><a href="#">黄油/奶油</a></dd><dd><a href="#">水果</a></dd><dd><a href="#">肉类</a></dd><dd><a href="#">海鲜</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">饼干糕点</a> ></dt>
                        <dd><a href="#">饼干</a></dd><dd><a href="#">曲奇</a></dd><dd><a href="#">威化</a></dd><dd><a href="#">夹心饼干</a></dd><dd><a href="#">苏打饼干</a></dd><dd><a href="#">糕点</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">酒水饮料</a> ></dt>
                        <dd><a href="#">葡萄酒</a></dd><dd><a href="#">啤酒</a></dd><dd><a href="#">洋酒</a></dd><dd><a href="#">起泡酒</a></dd><dd><a href="#">饮用水</a></dd><dd><a href="#">碳酸饮料</a></dd><dd><a href="#">果蔬汁</a></dd><dd><a href="#">咖啡</a></dd><dd><a href="#">果味饮料</a></dd><dd><a href="#">茶饮料</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">休闲零食</a> ></dt>
                        <dd><a href="#">坚果</a></dd><dd><a href="#">果干</a></dd><dd><a href="#">海苔</a></dd><dd><a href="#">膨化</a></dd><dd><a href="#">巧克力</a></dd><dd><a href="#">糖果</a></dd><dd><a href="#">果冻/布丁</a></dd><dd><a href="#">海味零食</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">粮油调味</a> ></dt>
                        <dd><a href="#">橄榄油</a></dd><dd><a href="#">大米</a></dd><dd><a href="#">方便面</a></dd><dd><a href="#">罐头</a></dd><dd><a href="#">食用油</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">茶冲咖啡</a> ></dt>
                        <dd><a href="#">速溶咖啡</a></dd><dd><a href="#">咖啡伴侣</a></dd><dd><a href="#">咖啡豆/粉</a></dd><dd><a href="#">白咖啡</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">母婴玩具</a> ></dt>
                        <dd><a href="#">奶粉</a></dd><dd><a href="#">尿裤湿巾</a></dd><dd><a href="#">洗护清洁</a></dd><dd><a href="#">哺育喂养</a></dd><dd><a href="#">童车童床</a></dd><dd><a href="#">辅食</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">美妆个护</a> ></dt>
                        <dd><a href="#">洁面卸妆</a></dd><dd><a href="#">面膜</a></dd><dd><a href="#">彩妆</a></dd><dd><a href="#">香水</a></dd><dd><a href="#">洗发护发</a></dd><dd><a href="#">套装</a></dd><dd><a href="#">沐浴</a></dd><dd><a href="#">洗手液</a></dd><dd><a href="#">牙膏</a></dd><dd><a href="#">牙刷</a></dd><dd><a href="#">漱口水</a></dd><dd><a href="#">卫生巾</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">家居清洁</a> ></dt>
                        <dd><a href="#">水具</a></dd><dd><a href="#">锅具</a></dd><dd><a href="#">刀具</a></dd><dd><a href="#">乳胶枕</a></dd><dd><a href="#">宠物用品</a></dd>
                    </dl>
                </div></li>
            <li class="nav2_li"><img src="<%=basePath %>images/logo/nav6.png"/><a href="#">服装</a>
                <div class="nav2_div">
                    <div class="nav2_div2">
                        <img src="<%=basePath %>images/goods/left-right.png">
                    </div>
                    <dl>
                        <dt><a href="#">一次性</a> ><dt>
                        <dd><a href="#">牛奶</a></dd><dd><a href="#">成人</a></dd><dd><a href="#">奶粉</a></dd><dd><a href="#">酸奶</a></dd><dd><a href="#">豆奶</a></dd><dd><a href="#">奶酪</a></dd><dd><a href="#">黄油/奶油</a></dd><dd><a href="#">水果</a></dd><dd><a href="#">肉类</a></dd><dd><a href="#">海鲜</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">饼干糕点</a> ></dt>
                        <dd><a href="#">饼干</a></dd><dd><a href="#">曲奇</a></dd><dd><a href="#">威化</a></dd><dd><a href="#">夹心饼干</a></dd><dd><a href="#">苏打饼干</a></dd><dd><a href="#">糕点</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">酒水饮料</a> ></dt>
                        <dd><a href="#">葡萄酒</a></dd><dd><a href="#">啤酒</a></dd><dd><a href="#">洋酒</a></dd><dd><a href="#">起泡酒</a></dd><dd><a href="#">饮用水</a></dd><dd><a href="#">碳酸饮料</a></dd><dd><a href="#">果蔬汁</a></dd><dd><a href="#">咖啡</a></dd><dd><a href="#">果味饮料</a></dd><dd><a href="#">茶饮料</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">休闲零食</a> ></dt>
                        <dd><a href="#">坚果</a></dd><dd><a href="#">果干</a></dd><dd><a href="#">海苔</a></dd><dd><a href="#">膨化</a></dd><dd><a href="#">巧克力</a></dd><dd><a href="#">糖果</a></dd><dd><a href="#">果冻/布丁</a></dd><dd><a href="#">海味零食</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">粮油调味</a> ></dt>
                        <dd><a href="#">橄榄油</a></dd><dd><a href="#">大米</a></dd><dd><a href="#">方便面</a></dd><dd><a href="#">罐头</a></dd><dd><a href="#">食用油</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">茶冲咖啡</a> ></dt>
                        <dd><a href="#">速溶咖啡</a></dd><dd><a href="#">咖啡伴侣</a></dd><dd><a href="#">咖啡豆/粉</a></dd><dd><a href="#">白咖啡</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">母婴玩具</a> ></dt>
                        <dd><a href="#">奶粉</a></dd><dd><a href="#">尿裤湿巾</a></dd><dd><a href="#">洗护清洁</a></dd><dd><a href="#">哺育喂养</a></dd><dd><a href="#">童车童床</a></dd><dd><a href="#">辅食</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">美妆个护</a> ></dt>
                        <dd><a href="#">洁面卸妆</a></dd><dd><a href="#">面膜</a></dd><dd><a href="#">彩妆</a></dd><dd><a href="#">香水</a></dd><dd><a href="#">洗发护发</a></dd><dd><a href="#">套装</a></dd><dd><a href="#">沐浴</a></dd><dd><a href="#">洗手液</a></dd><dd><a href="#">牙膏</a></dd><dd><a href="#">牙刷</a></dd><dd><a href="#">漱口水</a></dd><dd><a href="#">卫生巾</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">家居清洁</a> ></dt>
                        <dd><a href="#">水具</a></dd><dd><a href="#">锅具</a></dd><dd><a href="#">刀具</a></dd><dd><a href="#">乳胶枕</a></dd><dd><a href="#">宠物用品</a></dd>
                    </dl>
                </div></li>
            <li class="nav2_li"><img src="<%=basePath %>images/logo/nav7.png"/><a href="#">女性</a>
                <div class="nav2_div">
                <div class="nav2_div2">
                    <img src="<%=basePath %>images/goods/left-right.png">
                </div>
                <dl>
                    <dt><a href="#">床上用品</a> ><dt>
                    <dd><a href="#">牛奶</a></dd><dd><a href="#">成人</a></dd><dd><a href="#">奶粉</a></dd><dd><a href="#">酸奶</a></dd><dd><a href="#">豆奶</a></dd><dd><a href="#">奶酪</a></dd><dd><a href="#">黄油/奶油</a></dd><dd><a href="#">水果</a></dd><dd><a href="#">肉类</a></dd><dd><a href="#">海鲜</a></dd>
                </dl>
                <dl>
                    <dt><a href="#">饼干糕点</a> ></dt>
                    <dd><a href="#">饼干</a></dd><dd><a href="#">曲奇</a></dd><dd><a href="#">威化</a></dd><dd><a href="#">夹心饼干</a></dd><dd><a href="#">苏打饼干</a></dd><dd><a href="#">糕点</a></dd>
                </dl>
                <dl>
                    <dt><a href="#">酒水饮料</a> ></dt>
                    <dd><a href="#">葡萄酒</a></dd><dd><a href="#">啤酒</a></dd><dd><a href="#">洋酒</a></dd><dd><a href="#">起泡酒</a></dd><dd><a href="#">饮用水</a></dd><dd><a href="#">碳酸饮料</a></dd><dd><a href="#">果蔬汁</a></dd><dd><a href="#">咖啡</a></dd><dd><a href="#">果味饮料</a></dd><dd><a href="#">茶饮料</a></dd>
                </dl>
                <dl>
                    <dt><a href="#">休闲零食</a> ></dt>
                    <dd><a href="#">坚果</a></dd><dd><a href="#">果干</a></dd><dd><a href="#">海苔</a></dd><dd><a href="#">膨化</a></dd><dd><a href="#">巧克力</a></dd><dd><a href="#">糖果</a></dd><dd><a href="#">果冻/布丁</a></dd><dd><a href="#">海味零食</a></dd>
                </dl>
                <dl>
                    <dt><a href="#">粮油调味</a> ></dt>
                    <dd><a href="#">橄榄油</a></dd><dd><a href="#">大米</a></dd><dd><a href="#">方便面</a></dd><dd><a href="#">罐头</a></dd><dd><a href="#">食用油</a></dd>
                </dl>
                <dl>
                    <dt><a href="#">茶冲咖啡</a> ></dt>
                    <dd><a href="#">速溶咖啡</a></dd><dd><a href="#">咖啡伴侣</a></dd><dd><a href="#">咖啡豆/粉</a></dd><dd><a href="#">白咖啡</a></dd>
                </dl>
                <dl>
                    <dt><a href="#">母婴玩具</a> ></dt>
                    <dd><a href="#">奶粉</a></dd><dd><a href="#">尿裤湿巾</a></dd><dd><a href="#">洗护清洁</a></dd><dd><a href="#">哺育喂养</a></dd><dd><a href="#">童车童床</a></dd><dd><a href="#">辅食</a></dd>
                </dl>
                <dl>
                    <dt><a href="#">美妆个护</a> ></dt>
                    <dd><a href="#">洁面卸妆</a></dd><dd><a href="#">面膜</a></dd><dd><a href="#">彩妆</a></dd><dd><a href="#">香水</a></dd><dd><a href="#">洗发护发</a></dd><dd><a href="#">套装</a></dd><dd><a href="#">沐浴</a></dd><dd><a href="#">洗手液</a></dd><dd><a href="#">牙膏</a></dd><dd><a href="#">牙刷</a></dd><dd><a href="#">漱口水</a></dd><dd><a href="#">卫生巾</a></dd>
                </dl>
                <dl>
                    <dt><a href="#">家居清洁</a> ></dt>
                    <dd><a href="#">水具</a></dd><dd><a href="#">锅具</a></dd><dd><a href="#">刀具</a></dd><dd><a href="#">乳胶枕</a></dd><dd><a href="#">宠物用品</a></dd>
                </dl>
            </div></li>
            <li class="nav2_li"><img src="<%=basePath %>images/logo/nav8.png"/><a href="#">书籍</a>
                <div class="nav2_div">
                    <div class="nav2_div2">
                        <img src="<%=basePath %>images/goods/left-right.png">
                    </div>
                    <dl>
                        <dt><a href="#">美发护发</a> ><dt>
                        <dd><a href="#">牛奶</a></dd><dd><a href="#">成人</a></dd><dd><a href="#">奶粉</a></dd><dd><a href="#">酸奶</a></dd><dd><a href="#">豆奶</a></dd><dd><a href="#">奶酪</a></dd><dd><a href="#">黄油/奶油</a></dd><dd><a href="#">水果</a></dd><dd><a href="#">肉类</a></dd><dd><a href="#">海鲜</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">饼干糕点</a> ></dt>
                        <dd><a href="#">饼干</a></dd><dd><a href="#">曲奇</a></dd><dd><a href="#">威化</a></dd><dd><a href="#">夹心饼干</a></dd><dd><a href="#">苏打饼干</a></dd><dd><a href="#">糕点</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">酒水饮料</a> ></dt>
                        <dd><a href="#">葡萄酒</a></dd><dd><a href="#">啤酒</a></dd><dd><a href="#">洋酒</a></dd><dd><a href="#">起泡酒</a></dd><dd><a href="#">饮用水</a></dd><dd><a href="#">碳酸饮料</a></dd><dd><a href="#">果蔬汁</a></dd><dd><a href="#">咖啡</a></dd><dd><a href="#">果味饮料</a></dd><dd><a href="#">茶饮料</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">休闲零食</a> ></dt>
                        <dd><a href="#">坚果</a></dd><dd><a href="#">果干</a></dd><dd><a href="#">海苔</a></dd><dd><a href="#">膨化</a></dd><dd><a href="#">巧克力</a></dd><dd><a href="#">糖果</a></dd><dd><a href="#">果冻/布丁</a></dd><dd><a href="#">海味零食</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">粮油调味</a> ></dt>
                        <dd><a href="#">橄榄油</a></dd><dd><a href="#">大米</a></dd><dd><a href="#">方便面</a></dd><dd><a href="#">罐头</a></dd><dd><a href="#">食用油</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">茶冲咖啡</a> ></dt>
                        <dd><a href="#">速溶咖啡</a></dd><dd><a href="#">咖啡伴侣</a></dd><dd><a href="#">咖啡豆/粉</a></dd><dd><a href="#">白咖啡</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">母婴玩具</a> ></dt>
                        <dd><a href="#">奶粉</a></dd><dd><a href="#">尿裤湿巾</a></dd><dd><a href="#">洗护清洁</a></dd><dd><a href="#">哺育喂养</a></dd><dd><a href="#">童车童床</a></dd><dd><a href="#">辅食</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">美妆个护</a> ></dt>
                        <dd><a href="#">洁面卸妆</a></dd><dd><a href="#">面膜</a></dd><dd><a href="#">彩妆</a></dd><dd><a href="#">香水</a></dd><dd><a href="#">洗发护发</a></dd><dd><a href="#">套装</a></dd><dd><a href="#">沐浴</a></dd><dd><a href="#">洗手液</a></dd><dd><a href="#">牙膏</a></dd><dd><a href="#">牙刷</a></dd><dd><a href="#">漱口水</a></dd><dd><a href="#">卫生巾</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">家居清洁</a> ></dt>
                        <dd><a href="#">水具</a></dd><dd><a href="#">锅具</a></dd><dd><a href="#">刀具</a></dd><dd><a href="#">乳胶枕</a></dd><dd><a href="#">宠物用品</a></dd>
                    </dl>
                </div></li>
            <li class="nav2_li"><img src="<%=basePath %>images/logo/nav9.png"/><a href="#">器材</a>
                <div class="nav2_div">
                    <div class="nav2_div2">
                        <img src="<%=basePath %>images/goods/left-right.png">
                    </div>
                    <dl>
                        <dt><a href="#">女装</a><dt>
                        <dd><a href="#">牛奶</a></dd><dd><a href="#">成人</a></dd><dd><a href="#">奶粉</a></dd><dd><a href="#">酸奶</a></dd><dd><a href="#">豆奶</a></dd><dd><a href="#">奶酪</a></dd><dd><a href="#">黄油/奶油</a></dd><dd><a href="#">水果</a></dd><dd><a href="#">肉类</a></dd><dd><a href="#">海鲜</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">饼干糕点</a> ></dt>
                        <dd><a href="#">饼干</a></dd><dd><a href="#">曲奇</a></dd><dd><a href="#">威化</a></dd><dd><a href="#">夹心饼干</a></dd><dd><a href="#">苏打饼干</a></dd><dd><a href="#">糕点</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">酒水饮料</a> ></dt>
                        <dd><a href="#">葡萄酒</a></dd><dd><a href="#">啤酒</a></dd><dd><a href="#">洋酒</a></dd><dd><a href="#">起泡酒</a></dd><dd><a href="#">饮用水</a></dd><dd><a href="#">碳酸饮料</a></dd><dd><a href="#">果蔬汁</a></dd><dd><a href="#">咖啡</a></dd><dd><a href="#">果味饮料</a></dd><dd><a href="#">茶饮料</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">休闲零食</a> ></dt>
                        <dd><a href="#">坚果</a></dd><dd><a href="#">果干</a></dd><dd><a href="#">海苔</a></dd><dd><a href="#">膨化</a></dd><dd><a href="#">巧克力</a></dd><dd><a href="#">糖果</a></dd><dd><a href="#">果冻/布丁</a></dd><dd><a href="#">海味零食</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">粮油调味</a> ></dt>
                        <dd><a href="#">橄榄油</a></dd><dd><a href="#">大米</a></dd><dd><a href="#">方便面</a></dd><dd><a href="#">罐头</a></dd><dd><a href="#">食用油</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">茶冲咖啡</a> ></dt>
                        <dd><a href="#">速溶咖啡</a></dd><dd><a href="#">咖啡伴侣</a></dd><dd><a href="#">咖啡豆/粉</a></dd><dd><a href="#">白咖啡</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">母婴玩具</a> ></dt>
                        <dd><a href="#">奶粉</a></dd><dd><a href="#">尿裤湿巾</a></dd><dd><a href="#">洗护清洁</a></dd><dd><a href="#">哺育喂养</a></dd><dd><a href="#">童车童床</a></dd><dd><a href="#">辅食</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">美妆个护</a> ></dt>
                        <dd><a href="#">洁面卸妆</a></dd><dd><a href="#">面膜</a></dd><dd><a href="#">彩妆</a></dd><dd><a href="#">香水</a></dd><dd><a href="#">洗发护发</a></dd><dd><a href="#">套装</a></dd><dd><a href="#">沐浴</a></dd><dd><a href="#">洗手液</a></dd><dd><a href="#">牙膏</a></dd><dd><a href="#">牙刷</a></dd><dd><a href="#">漱口水</a></dd><dd><a href="#">卫生巾</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">家居清洁</a> ></dt>
                        <dd><a href="#">水具</a></dd><dd><a href="#">锅具</a></dd><dd><a href="#">刀具</a></dd><dd><a href="#">乳胶枕</a></dd><dd><a href="#">宠物用品</a></dd>
                    </dl>
                </div></li>
            <li class="nav2_li"><img src="<%=basePath %>images/logo/nav10.png"/><a href="#">办公</a>
                <div class="nav2_div">
                    <div class="nav2_div2">
                        <img src="<%=basePath %>images/goods/left-right.png">
                    </div>
                    <dl>
                        <dt><a href="#">男鞋</a> ><dt>
                        <dd><a href="#">牛奶</a></dd><dd><a href="#">成人</a></dd><dd><a href="#">奶粉</a></dd><dd><a href="#">酸奶</a></dd><dd><a href="#">豆奶</a></dd><dd><a href="#">奶酪</a></dd><dd><a href="#">黄油/奶油</a></dd><dd><a href="#">水果</a></dd><dd><a href="#">肉类</a></dd><dd><a href="#">海鲜</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">饼干糕点</a> ></dt>
                        <dd><a href="#">饼干</a></dd><dd><a href="#">曲奇</a></dd><dd><a href="#">威化</a></dd><dd><a href="#">夹心饼干</a></dd><dd><a href="#">苏打饼干</a></dd><dd><a href="#">糕点</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">酒水饮料</a> ></dt>
                        <dd><a href="#">葡萄酒</a></dd><dd><a href="#">啤酒</a></dd><dd><a href="#">洋酒</a></dd><dd><a href="#">起泡酒</a></dd><dd><a href="#">饮用水</a></dd><dd><a href="#">碳酸饮料</a></dd><dd><a href="#">果蔬汁</a></dd><dd><a href="#">咖啡</a></dd><dd><a href="#">果味饮料</a></dd><dd><a href="#">茶饮料</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">休闲零食</a> ></dt>
                        <dd><a href="#">坚果</a></dd><dd><a href="#">果干</a></dd><dd><a href="#">海苔</a></dd><dd><a href="#">膨化</a></dd><dd><a href="#">巧克力</a></dd><dd><a href="#">糖果</a></dd><dd><a href="#">果冻/布丁</a></dd><dd><a href="#">海味零食</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">粮油调味</a> ></dt>
                        <dd><a href="#">橄榄油</a></dd><dd><a href="#">大米</a></dd><dd><a href="#">方便面</a></dd><dd><a href="#">罐头</a></dd><dd><a href="#">食用油</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">茶冲咖啡</a> ></dt>
                        <dd><a href="#">速溶咖啡</a></dd><dd><a href="#">咖啡伴侣</a></dd><dd><a href="#">咖啡豆/粉</a></dd><dd><a href="#">白咖啡</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">母婴玩具</a> ></dt>
                        <dd><a href="#">奶粉</a></dd><dd><a href="#">尿裤湿巾</a></dd><dd><a href="#">洗护清洁</a></dd><dd><a href="#">哺育喂养</a></dd><dd><a href="#">童车童床</a></dd><dd><a href="#">辅食</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">美妆个护</a> ></dt>
                        <dd><a href="#">洁面卸妆</a></dd><dd><a href="#">面膜</a></dd><dd><a href="#">彩妆</a></dd><dd><a href="#">香水</a></dd><dd><a href="#">洗发护发</a></dd><dd><a href="#">套装</a></dd><dd><a href="#">沐浴</a></dd><dd><a href="#">洗手液</a></dd><dd><a href="#">牙膏</a></dd><dd><a href="#">牙刷</a></dd><dd><a href="#">漱口水</a></dd><dd><a href="#">卫生巾</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">家居清洁</a> ></dt>
                        <dd><a href="#">水具</a></dd><dd><a href="#">锅具</a></dd><dd><a href="#">刀具</a></dd><dd><a href="#">乳胶枕</a></dd><dd><a href="#">宠物用品</a></dd>
                    </dl>
                </div></li>
            <li class="nav2_li"><img src="<%=basePath %>images/logo/nav5.png"/><a href="#">其他</a>
                <div class="nav2_div">
                    <div class="nav2_div2">
                        <img src="<%=basePath %>images/goods/left-right.png">
                    </div>
                    <dl>
                        <dt><a href="#">手机</a> ><dt>
                        <dd><a href="#">牛奶</a></dd><dd><a href="#">成人</a></dd><dd><a href="#">奶粉</a></dd><dd><a href="#">酸奶</a></dd><dd><a href="#">豆奶</a></dd><dd><a href="#">奶酪</a></dd><dd><a href="#">黄油/奶油</a></dd><dd><a href="#">水果</a></dd><dd><a href="#">肉类</a></dd><dd><a href="#">海鲜</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">饼干糕点</a> ></dt>
                        <dd><a href="#">饼干</a></dd><dd><a href="#">曲奇</a></dd><dd><a href="#">威化</a></dd><dd><a href="#">夹心饼干</a></dd><dd><a href="#">苏打饼干</a></dd><dd><a href="#">糕点</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">酒水饮料</a> ></dt>
                        <dd><a href="#">葡萄酒</a></dd><dd><a href="#">啤酒</a></dd><dd><a href="#">洋酒</a></dd><dd><a href="#">起泡酒</a></dd><dd><a href="#">饮用水</a></dd><dd><a href="#">碳酸饮料</a></dd><dd><a href="#">果蔬汁</a></dd><dd><a href="#">咖啡</a></dd><dd><a href="#">果味饮料</a></dd><dd><a href="#">茶饮料</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">休闲零食</a> ></dt>
                        <dd><a href="#">坚果</a></dd><dd><a href="#">果干</a></dd><dd><a href="#">海苔</a></dd><dd><a href="#">膨化</a></dd><dd><a href="#">巧克力</a></dd><dd><a href="#">糖果</a></dd><dd><a href="#">果冻/布丁</a></dd><dd><a href="#">海味零食</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">粮油调味</a> ></dt>
                        <dd><a href="#">橄榄油</a></dd><dd><a href="#">大米</a></dd><dd><a href="#">方便面</a></dd><dd><a href="#">罐头</a></dd><dd><a href="#">食用油</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">茶冲咖啡</a> ></dt>
                        <dd><a href="#">速溶咖啡</a></dd><dd><a href="#">咖啡伴侣</a></dd><dd><a href="#">咖啡豆/粉</a></dd><dd><a href="#">白咖啡</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">母婴玩具</a> ></dt>
                        <dd><a href="#">奶粉</a></dd><dd><a href="#">尿裤湿巾</a></dd><dd><a href="#">洗护清洁</a></dd><dd><a href="#">哺育喂养</a></dd><dd><a href="#">童车童床</a></dd><dd><a href="#">辅食</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">美妆个护</a> ></dt>
                        <dd><a href="#">洁面卸妆</a></dd><dd><a href="#">面膜</a></dd><dd><a href="#">彩妆</a></dd><dd><a href="#">香水</a></dd><dd><a href="#">洗发护发</a></dd><dd><a href="#">套装</a></dd><dd><a href="#">沐浴</a></dd><dd><a href="#">洗手液</a></dd><dd><a href="#">牙膏</a></dd><dd><a href="#">牙刷</a></dd><dd><a href="#">漱口水</a></dd><dd><a href="#">卫生巾</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">家居清洁</a> ></dt>
                        <dd><a href="#">水具</a></dd><dd><a href="#">锅具</a></dd><dd><a href="#">刀具</a></dd><dd><a href="#">乳胶枕</a></dd><dd><a href="#">宠物用品</a></dd>
                    </dl>
                </div></li>
            <li class="nav2_li"><img src="<%=basePath %>images/logo/nav3.png"/><a href="#">其他</a>
                <div class="nav2_div">
                    <div class="nav2_div2">
                        <img src="<%=basePath %>images/goods/left-right.png">
                    </div>
                    <dl>
                        <dt><a href="#">厨房小电</a> ><dt>
                        <dd><a href="#">牛奶</a></dd><dd><a href="#">成人</a></dd><dd><a href="#">奶粉</a></dd><dd><a href="#">酸奶</a></dd><dd><a href="#">豆奶</a></dd><dd><a href="#">奶酪</a></dd><dd><a href="#">黄油/奶油</a></dd><dd><a href="#">水果</a></dd><dd><a href="#">肉类</a></dd><dd><a href="#">海鲜</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">饼干糕点</a> ></dt>
                        <dd><a href="#">饼干</a></dd><dd><a href="#">曲奇</a></dd><dd><a href="#">威化</a></dd><dd><a href="#">夹心饼干</a></dd><dd><a href="#">苏打饼干</a></dd><dd><a href="#">糕点</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">酒水饮料</a> ></dt>
                        <dd><a href="#">葡萄酒</a></dd><dd><a href="#">啤酒</a></dd><dd><a href="#">洋酒</a></dd><dd><a href="#">起泡酒</a></dd><dd><a href="#">饮用水</a></dd><dd><a href="#">碳酸饮料</a></dd><dd><a href="#">果蔬汁</a></dd><dd><a href="#">咖啡</a></dd><dd><a href="#">果味饮料</a></dd><dd><a href="#">茶饮料</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">休闲零食</a> ></dt>
                        <dd><a href="#">坚果</a></dd><dd><a href="#">果干</a></dd><dd><a href="#">海苔</a></dd><dd><a href="#">膨化</a></dd><dd><a href="#">巧克力</a></dd><dd><a href="#">糖果</a></dd><dd><a href="#">果冻/布丁</a></dd><dd><a href="#">海味零食</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">粮油调味</a> ></dt>
                        <dd><a href="#">橄榄油</a></dd><dd><a href="#">大米</a></dd><dd><a href="#">方便面</a></dd><dd><a href="#">罐头</a></dd><dd><a href="#">食用油</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">茶冲咖啡</a> ></dt>
                        <dd><a href="#">速溶咖啡</a></dd><dd><a href="#">咖啡伴侣</a></dd><dd><a href="#">咖啡豆/粉</a></dd><dd><a href="#">白咖啡</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">母婴玩具</a> ></dt>
                        <dd><a href="#">奶粉</a></dd><dd><a href="#">尿裤湿巾</a></dd><dd><a href="#">洗护清洁</a></dd><dd><a href="#">哺育喂养</a></dd><dd><a href="#">童车童床</a></dd><dd><a href="#">辅食</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">美妆个护</a> ></dt>
                        <dd><a href="#">洁面卸妆</a></dd><dd><a href="#">面膜</a></dd><dd><a href="#">彩妆</a></dd><dd><a href="#">香水</a></dd><dd><a href="#">洗发护发</a></dd><dd><a href="#">套装</a></dd><dd><a href="#">沐浴</a></dd><dd><a href="#">洗手液</a></dd><dd><a href="#">牙膏</a></dd><dd><a href="#">牙刷</a></dd><dd><a href="#">漱口水</a></dd><dd><a href="#">卫生巾</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="#">家居清洁</a> ></dt>
                        <dd><a href="#">水具</a></dd><dd><a href="#">锅具</a></dd><dd><a href="#">刀具</a></dd><dd><a href="#">乳胶枕</a></dd><dd><a href="#">宠物用品</a></dd>
                    </dl>
                </div></li>
        </ul>
    </nav>
    <!--右侧登录导航-->
    <%-- <div id="sec1_div3">
        <div id="sdiv3_d1">
            <span><img src="<%=basePath %>images/logo/atm.png"></span>

           <!--  <p><input type="button" value="登录"><input type="button" value="注册"></p> -->
        </div>
        <div id="sdiv3_d2">
            <ul>
                <li><a href="#"><img src="<%=basePath %>images/logo/vip_01.png"/><br/>金币商城</a></li>
                <li><a href="#"><img src="<%=basePath %>images/logo/vip_02.png"/><br/>0元试用</a></li>
                <li><a href="#"><img src="<%=basePath %>images/logo/vip_03.png"/><br/>手机充值</a></li>
                <img src="<%=basePath %>images/logo/jin.png"/>
            </ul>
            <ul>
                <li><a href="#">【优选】闲置书籍</a></li>
                <li><a href="#">【优选】闲置用具</a></li>
                <li><a href="#">【优选】闲置电子</a></li>
            </ul>
        </div>
    </div> --%>
    </section>
</section>
<!--==========================抢购列表========================-->
<%-- <section id="sec2">
    <ul id="sec2_ul">
        <li><a href="">
                <span>本场结束</span>
                <p>01</p>:<p>24</p>:<p>43</p><br/>
            <span>查看更多&nbsp;></span>
            </a>
        </li>
        <li class="sec2_li"><a href="">
            <p>Meixin美心低糖蛋黄白莲蓉月饼<br/><br/>
                <span>￥228</span><br/><span>参考价：￥338</span></p>
            <img src="<%=basePath %>images/index/sec2_01.jpg"/>
        </a></li>
        <li class="sec2_li"><a href="">
            <p>农谣 兴化大闸蟹鲜活螃蟹<br/><br/>
                <span>￥108</span><br/><span>参考价：￥138</span></p>
            <img src="<%=basePath %>images/index/sec2_02.jpg"/>
        </a></li>
        <li class="sec2_li"><a href="">
            <p>品赞 四川蒲江红心泥猴桃30个<br/><br/>
                <span>￥48.8</span><br/><span>参考价：￥128</span></p>
            <img src="<%=basePath %>images/index/sec2_03.jpg"/>
        </a></li>
        <li class="sec2_li"><a href="">
            <p>Liven利仁养生壶LR-D1803<br/><br/>
                <span>￥99</span><br/><span>参考价：￥199</span></p>
            <img src="<%=basePath %>images/index/sec2_04.jpg"/>
        </a></li>
    </ul>
</section> --%>
<!--==========================商品列表========================-->
<section id="sec5_ul">
    <ul>
    	<%
    		for(int i = 0;i < list.size();i++){
    			%>
    			<li class="sec5_li">
    			<a href="<%=basePath %>userGoodsAction/selectGoodById.action?Good_id=<%=list.get(i).getGoods_id()%>">
            	<img src="<%=basePath %>images/goods/li_01.jpg">
            	<h4>￥<%=list.get(i).getGoods_price() %></h4>
            	<p class="sec5_p1"><%=list.get(i).getGoods_name() %></p>
            	<p class="sec5_p2">测试······</p></a>
            	<a href=""  class="sec5_p3">加入购物车</a>
            	<p class="sec5_p4" style="font-size:12px;">发布时间：<span><%=list.get(i).getGoods_time() %></span></p>
            	<p class="sec5_p5" style="font-size:12px;">学生自营&nbsp;河南中医药大学</p>
       			</li>
    			<%
    		}
    	%>
        
        

    </ul>
</section>
<!--======================更多列表==========================-->

<footer>
<div id="sec6_66">
    <ul>
        <li id="sec6_66_li3" class="sec6_66_li"><a href="<%=basePath %>mainPageAction/nextPage.action">下一页 </a></li>
        <li id="sec6_66_li2" class="sec6_66_li"><%=pagePagingBeans.getTotalPage()%></li>
        <li id="sec6_66_li2" class="sec6_66_li">/</li>
        <li id="sec6_66_li2" class="sec6_66_li"><%=pagePagingBeans.getCurrentPage() %></li>
        <li id="sec6_66_li3" class="sec6_66_li"><a href="<%=basePath%>mainPageAction/perviousPage.action">上一页</a></li>
        
    </ul>
</div>
    <div id="clear_1"></div>
    <div id="footer_div3">
        <p>
            <a href="">关于闲置商城</a>|
            <a href="">我们的团队</a>|
            <a href="http://www.hactcm.edu.cn/">友情链接</a>|
            <a href="<%=basePath %>admin/login.jsp">系统登录</a>|
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