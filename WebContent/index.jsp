<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>闲置商城</title>
    <link rel="stylesheet" type="text/css" href="../css/header.css">
    <link rel="stylesheet" type="text/css" href="../css/index.css">
    <script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="../js/index.js"></script>
</head>
<body>
<header>
    <nav id="nav1">
        <ul>
            <li id="nav_l1"><img src="../images/logo/address.png"><a href="#">河南中医药大学</a></li>
            <p id="nav_l0">&nbsp;</p>
            <li class="nav_l0" id="nav_l2"><a href="../login/logoinpage.html">hi,请登录</a></li>
            <li class="nav_l0" id="nav_l3"><a href="../register/regisiterpage.html">注册</a></li>
            <li class="nav_l0" id="nav_l4"><a href="../login/logoinpage.html"><img src="../images/logo/form.png">我的订单</a></li>
            <li class="nav_l0" id="nav_l6"><a href="#">客户服务&nbsp;&nbsp;<img src="../images/logo/t_arrow.gif"></a></li>
        </ul>
    </nav>
<!--=====================顶部导航====================-->
    <div id="header_div">
        <a href="index.html"><img id="logo" src="../images/logo/logo.png"></a>
        <div id="hd_div1">
            <p><input type="text" name="search">
                <a href="searchList.html"><img id="search" src="../images/logo/search.png"/></a>
            </p>
            <ul id="div1_u1">
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

            </ul>
        </div>

        <div id="div1_u3">
            <a href=""><img src="../images/logo/car.png"><span>购物车</span></a>
        </div>
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
<!--===========================网站主题部分=======================-->
<section id="sec1">
    <!--背景轮播图-->
    <section id="sec1_sec2">
    <div id="sec1_div1">
        <ul>
            <li class="sec1_div1_li" id="sec1_p1"><div><img src="../images/index/bg_1.jpg"></div></li>
            <li class="sec1_div1_li" id="sec1_p2"><div><img src="../images/index/bg_2.jpg"></div></li>
            <li class="sec1_div1_li" id="sec1_p3"><div><img src="../images/index/bg_3.jpg"></div></li>
            <li class="sec1_div1_li" id="sec1_p4"><div><img src="../images/index/bg_4.jpg"></div></li>
            <li class="sec1_div1_li" id="sec1_p5"><div><img src="../images/index/bg_5.jpg"></div></li>
            <li class="sec1_div1_li" id="sec1_p6"><div><img src="../images/index/bg_6.jpg"></div></li>
            <li class="sec1_div1_li" id="sec1_p7"><div><img src="../images/index/bg_7.jpg"></div></li>
            <li class="sec1_div1_li" id="sec1_p8"><div><img src="../images/index/bg_8.jpg"></div></li>
            <li class="sec1_div1_li" id="sec1_p9"><div><img src="../images/index/bg_9.jpg"></div></li>
        </ul>
    </div>
    <!--左侧详情导航-->
    <nav id="sec1_nav2">
        <ul>
            <li class="nav2_li"><img src="../images/logo/nav1.png"/><a href="#">闲置推荐</a>
                <div class="nav2_div">
                    <div class="nav2_div2">
                        <img src="../images/goods/left-right.png">
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
            <li class="nav2_li"><img src="../images/logo/nav2.png"/><a href="#">手机</a>
                <div class="nav2_div">
                    <div class="nav2_div2">
                        <img src="../images/goods/left-right.png">
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
            <li class="nav2_li"><img src="../images/logo/nav3.png"/><a href="#">电脑</a>
                <div class="nav2_div">
                    <div class="nav2_div2">
                        <img src="../images/goods/left-right.png">
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
            <li class="nav2_li"><img src="../images/logo/nav4.png"/><a href="#">数码</a>
                    <div class="nav2_div">
                        <div class="nav2_div2">
                            <img src="../images/goods/left-right.png">
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
            <li class="nav2_li"><img src="../images/logo/nav5.png"/><a href="#">电器</a>
                <div class="nav2_div">
                    <div class="nav2_div2">
                        <img src="../images/goods/left-right.png">
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
            <li class="nav2_li"><img src="../images/logo/nav6.png"/><a href="#">服装</a>
                <div class="nav2_div">
                    <div class="nav2_div2">
                        <img src="../images/goods/left-right.png">
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
            <li class="nav2_li"><img src="../images/logo/nav7.png"/><a href="#">女性</a>
                <div class="nav2_div">
                <div class="nav2_div2">
                    <img src="../images/goods/left-right.png">
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
            <li class="nav2_li"><img src="../images/logo/nav8.png"/><a href="#">书籍</a>
                <div class="nav2_div">
                    <div class="nav2_div2">
                        <img src="../images/goods/left-right.png">
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
            <li class="nav2_li"><img src="../images/logo/nav9.png"/><a href="#">器材</a>
                <div class="nav2_div">
                    <div class="nav2_div2">
                        <img src="../images/goods/left-right.png">
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
            <li class="nav2_li"><img src="../images/logo/nav10.png"/><a href="#">办公</a>
                <div class="nav2_div">
                    <div class="nav2_div2">
                        <img src="../images/goods/left-right.png">
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
            <li class="nav2_li"><img src="../images/logo/nav5.png"/><a href="#">其他</a>
                <div class="nav2_div">
                    <div class="nav2_div2">
                        <img src="../images/goods/left-right.png">
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
            <li class="nav2_li"><img src="../images/logo/nav3.png"/><a href="#">其他</a>
                <div class="nav2_div">
                    <div class="nav2_div2">
                        <img src="../images/goods/left-right.png">
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
    <div id="sec1_div3">
        <div id="sdiv3_d1">
            <span><img src="../images/logo/atm.png"></span>

            <p><input type="button" value="登录"><input type="button" value="注册"></p>
        </div>
        <div id="sdiv3_d2">
            <ul>
                <li><a href="#"><img src="../images/logo/vip_01.png"/><br/>金币商城</a></li>
                <li><a href="#"><img src="../images/logo/vip_02.png"/><br/>0元试用</a></li>
                <li><a href="#"><img src="../images/logo/vip_03.png"/><br/>手机充值</a></li>
                <img src="../images/logo/jin.png"/>
            </ul>
            <ul>
                <li><a href="#">【优选】闲置书籍</a></li>
                <li><a href="#">【优选】闲置用具</a></li>
                <li><a href="#">【优选】闲置电子</a></li>
            </ul>
        </div>
    </div>
    </section>
</section>
<!--==========================抢购列表========================-->
<section id="sec2">
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
            <img src="../images/index/sec2_01.jpg"/>
        </a></li>
        <li class="sec2_li"><a href="">
            <p>农谣 兴化大闸蟹鲜活螃蟹<br/><br/>
                <span>￥108</span><br/><span>参考价：￥138</span></p>
            <img src="../images/index/sec2_02.jpg"/>
        </a></li>
        <li class="sec2_li"><a href="">
            <p>品赞 四川蒲江红心泥猴桃30个<br/><br/>
                <span>￥48.8</span><br/><span>参考价：￥128</span></p>
            <img src="../images/index/sec2_03.jpg"/>
        </a></li>
        <li class="sec2_li"><a href="">
            <p>Liven利仁养生壶LR-D1803<br/><br/>
                <span>￥99</span><br/><span>参考价：￥199</span></p>
            <img src="../images/index/sec2_04.jpg"/>
        </a></li>
    </ul>
</section>
<!--==========================商品列表========================-->
<section id="sec5_ul">
    <ul>
        <li class="sec5_li"><a href="detail.html">
            <img src="../images/goods/li_01.jpg">
            <h4>￥6999</h4>
            <p class="sec5_p1">Huawei 华为 MateBook X 13英寸轻薄</p>
            <p class="sec5_p2">测试······</p>
            <input  class="sec5_p3" type="button" value="加入购物车"><!--<h5 class="sec5_p6"><input type="button" name="check"></h5>-->
            <!--<p class="sec5_p4"><img src="../images/logo/comments.png">120&nbsp;&nbsp;&nbsp;<span><img src="../images/logo/good.png">100%</span></p>-->
            <p class="sec5_p4">发布时间：<span>2018.3.21</span></p>
            <p class="sec5_p5">学生自营&nbsp;河南中医药大学</p>
        </a></li>
        <li class="sec5_li"><a href="detail.html">
            <img src="../images/goods/li_01.jpg">
            <h4>￥6999</h4>
            <p class="sec5_p1">Huawei 华为 MateBook X 13英寸轻薄</p>
            <p class="sec5_p2">测试······</p>
            <input  class="sec5_p3" type="button" value="加入购物车"><!--<h5 class="sec5_p6"><input type="button" name="check"></h5>-->
            <!--<p class="sec5_p4"><img src="../images/logo/comments.png">120&nbsp;&nbsp;&nbsp;<span><img src="../images/logo/good.png">100%</span></p>-->
            <p class="sec5_p4">发布时间：<span>2018.3.21</span></p>
            <p class="sec5_p5">学生自营&nbsp;河南中医药大学</p>
        </a></li>
        <li class="sec5_li"><a href="detail.html">
            <img src="../images/goods/li_01.jpg">
            <h4>￥6999</h4>
            <p class="sec5_p1">Huawei 华为 MateBook X 13英寸轻薄</p>
            <p class="sec5_p2">测试······</p>
            <input  class="sec5_p3" type="button" value="加入购物车"><!--<h5 class="sec5_p6"><input type="button" name="check"></h5>-->
            <!--<p class="sec5_p4"><img src="../images/logo/comments.png">120&nbsp;&nbsp;&nbsp;<span><img src="../images/logo/good.png">100%</span></p>-->
            <p class="sec5_p4">发布时间：<span>2018.3.21</span></p>
            <p class="sec5_p5">学生自营&nbsp;河南中医药大学</p>
        </a></li>
        <li class="sec5_li"><a href="detail.html">
            <img src="../images/goods/li_01.jpg">
            <h4>￥6999</h4>
            <p class="sec5_p1">Huawei 华为 MateBook X 13英寸轻薄</p>
            <p class="sec5_p2">测试······</p>
            <input  class="sec5_p3" type="button" value="加入购物车"><!--<h5 class="sec5_p6"><input type="button" name="check"></h5>-->
            <!--<p class="sec5_p4"><img src="../images/logo/comments.png">120&nbsp;&nbsp;&nbsp;<span><img src="../images/logo/good.png">100%</span></p>-->
            <p class="sec5_p4">发布时间：<span>2018.3.21</span></p>
            <p class="sec5_p5">学生自营&nbsp;河南中医药大学</p>
        </a></li>
        <li class="sec5_li"><a href="detail.html">
            <img src="../images/goods/li_01.jpg">
            <h4>￥6999</h4>
            <p class="sec5_p1">Huawei 华为 MateBook X 13英寸轻薄</p>
            <p class="sec5_p2">测试······</p>
            <input  class="sec5_p3" type="button" value="加入购物车"><!--<h5 class="sec5_p6"><input type="button" name="check"></h5>-->
            <!--<p class="sec5_p4"><img src="../images/logo/comments.png">120&nbsp;&nbsp;&nbsp;<span><img src="../images/logo/good.png">100%</span></p>-->
            <p class="sec5_p4">发布时间：<span>2018.3.21</span></p>
            <p class="sec5_p5">学生自营&nbsp;河南中医药大学</p>
        </a></li>

    </ul>
</section>

<!--==========================团购=======================-->
<!--<section id="sec3">
    &lt;!&ndash;团购左侧&ndash;&gt;
    <div class="div3_1">
    <a href=""><img src="../images/index/sec_301.jpg">
        <p>品牌特卖<br/>————<br/><span>每天十点上新！</span></p>
    </a></div>
    &lt;!&ndash;团购中部&ndash;&gt;
    <div class="div3_2">
        <div id="div3_21"><a href=""><img src="../images/index/sec_302.jpg"></a></div>

        <div class="div3_22" id="div3_22"><a href="">
            <p>闲置·量贩团<br/><br/>
                <span>迪士尼门票限量抢</span></p>
            <img src="../images/index/sec_303.jpg"/>
        </a></div>
        <div class="div3_22" id="div3_23"><a href="">
            <p>闲置·品牌团<br/><br/>
                <span>流心蛋黄白莲蓉</span></p>
            <img src="../images/index/sec_304.jpg"/>
        </a></div>
        <a class="div3_24" id="div3_24" href=""><img src="../images/logo/sc.png"/>团购</a>
    </div>
    &lt;!&ndash;团购右侧&ndash;&gt;
    <div class="div3_3">
        <a class="div3_24" id="div3_31" href=""><img src="../images/logo/wxb.png"/>排行榜</a>
        <ul id="div3_u1">
            <li><a href="">女装</a></li>
            <li><a href="">休闲零食</a></li>
            <li><a href="">纸制品</a></li>
            <li><a href="">面部护肤</a></li>
            <li><a href="">粮油/干货</a></li>
        </ul>
        <ul id="div3_u2">
            <li><a href=""><img src="../images/index/sec_305.jpg"/><p>妖精de狂欢 2017</p></a></li>
            <li><a href=""><img src="../images/index/sec_306.jpg"/><p>妖精de狂欢 秋衣V</p></a></li>
            <li><a href=""><img src="../images/index/sec_307.jpg"/><p>妖精de狂欢 棉麻</p></a></li>
            <li><a href=""><img src="../images/index/sec_308.jpg"/><p>妖精de狂欢 2017</p></a></li>
            <li><a href=""><img src="../images/index/sec_309.jpg"/><p>晗曼婷 套装裙女装</p></a></li>
            <li><a href=""><img src="../images/index/sec_310.jpg"/><p>思橱 2017秋冬高</p></a></li>
        </ul>
    </div>
</section>-->
<!--==========================领卷=======================-->
<section id="sec5"></section>
<!--==========================耍大牌=======================-->
<section id="sec6"></section>
<!--==========================我的专属活动=======================-->
<section id="sec7"></section>
<!--==========================全球进口=======================-->
<section id="sec8"></section>
<!--==========================国产食品=======================-->
<section id="sec9"></section>
<!--==========================一号生鲜=======================-->
<section id="sec10"></section>
<!--==========================母婴玩具=======================-->
<!--==========================家居生活=======================-->
<!--==========================手机家电=======================-->
<!--==========================服饰鞋包=======================-->
<!--==========================懂你想要=======================-->


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