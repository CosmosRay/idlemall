<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>关键词搜索</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/header.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/searchList.css">
</head>
<body>
<header>
    <nav id="nav1">
        <ul>
            <li id="nav_l1"><img src="<%=basePath %>images/logo/address.png"><a href="#">送货地址，请选择？</a></li>
            <p id="nav_l0">&nbsp;</p>
            <li class="nav_l0" id="nav_l2"><a href="#">hi,请登录</a></li>
            <li class="nav_l0" id="nav_l3"><a href="#">注册</a></li>
            <li class="nav_l0" id="nav_l4"><a href="#"><img src="<%=basePath %>images/logo/form.png">我的订单</a></li>
            <li class="nav_l0" id="nav_l5"><a href="#">充值中心&nbsp;&nbsp;<img src="<%=basePath %>images/logo/t_arrow.gif"></a></li>
            <li class="nav_l0" id="nav_l6"><a href="#">客户服务&nbsp;&nbsp;<img src="<%=basePath %>images/logo/t_arrow.gif"></a></li>
            <li class="nav_l0" id="nav_l7"><a href="#">网站导航&nbsp;&nbsp;<img src="<%=basePath %>images/logo/t_arrow.gif"></a></li>
        </ul>
    </nav>

    <div id="header_div">
        <a href="index.html"><img id="logo" src="<%=basePath %>images/logo/logo.png"></a>
        <div id="hd_div1">
            <p><input type="text" name="search">
                <a href=""><img id="search" src="<%=basePath %>images/logo/search.png"/></a>
            </p>
            <ul id="div1_u1">
                <li><a href="">iPhone8&nbsp;</a></li>
                <li><a href="">测试······&nbsp;</a></li>
                <li><a href="">测试······&nbsp;</a></li>
                <li><a href="">测试······&nbsp;</a></li>
                <li><a href="">测试······&nbsp;</a></li>
            </ul>

            <ul id="div1_u2">
                <li><a href="">测试······</a></li>
                <li><a href="">测试······</a></li>
                <li><a href="">测试······</a></li>
                <li><a href="">测试······</a></li>
            </ul>
        </div>

        <div id="div1_u3">
            <img src="<%=basePath %>images/logo/car.png"><span>购物车</span>
        </div>
    </div>
</header>
<!--=============网站右侧导航条==========-->
<div id="body_right">
    <p><a href=""><img src="<%=basePath %>images/logo/account.png"/><span class="br_ri">个人中心</span></a></p>
    <p><a href=""><img src="<%=basePath %>images/logo/cart.png"/><span>购物车</span></a></p>
    <p><a href=""><img src="<%=basePath %>images/logo/quan.png"/><span class="br_ri"></span></a></p>
    <p><a href=""><img src="<%=basePath %>images/logo/all.png"/><span class="br_ri"></span></a></p>

    <p><a href=""><img src="<%=basePath %>images/logo/edit.png"/><span class="br_ri"></span></a></p>
    <p><a href=""><img src="<%=basePath %>images/logo/scanning.png"/><span class="br_ri"></span></a></p>
    <p><a href="#"><img src="<%=basePath %>images/logo/less.png"/><span class="br_ri"></span></a></p>
</div>
<!--======================检索导航==========================-->
<section id="sec2">
    <div><img src="<%=basePath %>images/logo/ViewGallery.png"/><a href="#">全部结果</a></div>
    <!--<div>&lt;!&ndash;<input type="text"><a href=""><p><img src="<%=basePath %>images/logo/wxbsearch.png"></p></a>&ndash;&gt;</div>-->
    <p id="sec2_p1">共13874条</p>
</section>
<!--======================分类导航==========================-->
<!--<section id="sec3">
    <div id="sec3_div1"><div>品牌</div>
        <span>
        <a href=""><img src="<%=basePath %>images/logo/secrch_01.jpg"/></a>
        <a href=""><img src="<%=basePath %>images/logo/secrch_02.jpg"/></a>
        <a href=""><img src="<%=basePath %>images/logo/secrch_03.jpg"/></a>
        <a href=""><img src="<%=basePath %>images/logo/secrch_04.jpg"/></a>
        <a href=""><img src="<%=basePath %>images/logo/secrch_05.jpg"/></a>
        <a href=""><img src="<%=basePath %>images/logo/secrch_06.jpg"/></a>
        <a href=""><img src="<%=basePath %>images/logo/secrch_07.jpg"/></a>
        <a href=""><img src="<%=basePath %>images/logo/secrch_08.jpg"/></a>
        <a href=""><img src="<%=basePath %>images/logo/secrch_09.jpg"/></a>
        <a href=""><img src="<%=basePath %>images/logo/secrch_10.jpg"/></a>
        <a href=""><img src="<%=basePath %>images/logo/secrch_11.jpg"/></a>
        </span>
    </div>
    <div id="sec3_div2"><div class="sec3_div2">尺寸</div><ul class="sec3_div3">
        <li><a href="">15英寸</a></li>
        <li><a href="">14英寸</a></li>
        <li><a href="">13英寸</a></li>
        <li><a href="">12英寸</a></li>
        <li><a href="">17英寸及以上</a></li>
        <li><a href="">11英寸</a></li>
        <li><a href="">10.1英寸</a></li>
        <li><a href="">15.6英寸</a></li>
        <li><a href="">12.2英寸</a></li>
        <li><a href="">13.3英寸</a></li>
        <li><a href="">15.4英寸</a></li>
        <li><a href="">12.5英寸</a></li>
        <li><a href="">12.3英寸</a></li>
        <li><a href="">13.5英寸</a></li>
        <input type="button" value="多选"/>

    </ul></div>
    <div class="sec3_div"><div class="sec3_div2">CPU系列</div><ul class="sec3_div3">
        <li><a href="">酷睿i5</a></li>
        <li><a href="">酷睿i7</a></li>
        <li><a href="">酷睿i3</a></li>
        <li><a href="">APU A</a></li>
        <li><a href="">intel core M</a></li>
        <li><a href="">APU E</a></li>
        <li><a href="">赛扬</a></li>
        <li><a href="">奔腾</a></li>
        <li><a href="">凌动</a></li>
        <li><a href="">AMD A6</a></li>
        <li><a href="">AMD A8</a></li>
        <input type="button" value="多选"/>
    </ul></div>
    <div class="sec3_div"><div class="sec3_div2">定位</div><ul class="sec3_div3">
        <li><a href="">高清游戏本</a></li>
        <li><a href="">轻薄便携本</a></li>
        <li><a href="">商务办公本</a></li>
        <li><a href="">女性笔记本</a></li>
        <li><a href="">全能学生本</a></li>
        <li><a href="">家庭影音本</a></li>
        <li><a href="">尊贵旗舰本</a></li>
        <input type="button" value="多选"/>
    </ul></div>
    <div class="sec3_div"><div class="sec3_div2">硬盘容量</div><ul class="sec3_div3">
        <li><a href="">1TB</a></li>
        <li><a href="">500GB</a></li>
        <li><a href="">含64GB SSD</a></li>
        <li><a href="">含128GB SSD</a></li>
        <li><a href="">含256GB SSD</a></li>
        <li><a href="">含512GB SSD</a></li>
        <li><a href="">混合硬盘</a></li>
        <li><a href="">其它容量</a></li>
        <input type="button" value="多选"/>
    </ul></div>
    <div class="sec3_div"><div class="sec3_div2">价格</div><ul class="sec3_div3">
        <li><a href="">0-2429元</a></li>
        <li><a href="">2429-3779元</a></li>
        <li><a href="">3779-5184元</a></li>
        <li><a href="">5184-6577元</a></li>
        <li><a href="">6577-9597元</a></li>
        <li><a href="">9597元以上</a></li>
        <input type="button" value="多选"/>
    </ul></div>
    <div class="sec3_div"><div class="sec3_div2"></div><ul class="sec3_div3">
        <li><a href=""></a></li>
    </ul></div>
</section>-->
<!--======================分类选择==========================-->
<section id="sec4">
    <ul id="sec4_ul1">
        <li><a href="">综合</a></li>
        <li><a href="">销量<img src="<%=basePath %>images/logo/more_unfold.png"/></a></li>
        <li><a href="">评论<img src="<%=basePath %>images/logo/more_unfold.png"/></a></li>
        <li><a href="">新品<img src="<%=basePath %>images/logo/more_unfold.png"/></a></li>
        <li><a href="">价格<img src="<%=basePath %>images/logo/sx.png"/></a></li>
        <li class="sec4_li1"><a href=""><img src="<%=basePath %>images/logo/more.png"></a></li>
        <li class="sec4_li1"><a href=""><img src="<%=basePath %>images/logo/back.png"></a></li>
        <!--<li class="sec4_li1"><a href=""><img src="<%=basePath %>images/logo/all(1).png">大图</a></li>
        <li class="sec4_li1"><a href=""><img src="<%=basePath %>images/logo/wxbmxdp.png">店铺</a></li>-->
    </ul>
        <!--<div id="sec4_div1">
            <p>
                <input type="checkbox" name="dingwei">1号店自营
                <input type="checkbox" name="dingwei">商家包邮
                <input type="checkbox" name="dingwei">堡垒价
                <input type="checkbox" name="dingwei">仅显示有货
                <input type="checkbox" name="dingwei">1号团
                <input type="checkbox" name="dingwei">满减
                <input type="checkbox" name="dingwei">满赠
                <input type="checkbox" name="dingwei"><img src="//d9.yihaodianimg.com/N09/M02/AC/DB/ChEi2VlyDWiASC8bAAAI2SzEhMQ33900.tmp">

            </p>
        </div>-->
</section>

<!--======================列表展示==========================-->
<section id="sec5">
    <ul>
        <li class="sec5_li"><a href="detail.html">
            <img src="<%=basePath %>images/goods/li_01.jpg">
            <h4>￥6999</h4>
            <p class="sec5_p1">Huawei 华为 MateBook X 13英寸轻薄</p>
            <p class="sec5_p2">测试······</p>
            <input  class="sec5_p3" type="button" value="加入购物车"><!--<h5 class="sec5_p6"><input type="button" name="check"></h5>-->
            <!--<p class="sec5_p4"><img src="<%=basePath %>images/logo/comments.png">120&nbsp;&nbsp;&nbsp;<span><img src="<%=basePath %>images/logo/good.png">100%</span></p>-->
            <p class="sec5_p4">发布时间：<span>2018.3.21</span></p>
            <p class="sec5_p5">学生自营&nbsp;河南中医药大学</p>
        </a></li>



    </ul>
</section>
<!--======================更多列表==========================-->
<section id="sec6">
    <ul>
        <li id="sec6_li3" class="sec6_li"><a href="">下一页<img src="<%=basePath %>images/logo/yjt.png"/></a></li>
        <li class="sec6_li"><a href="">50</a></li>
        <li id="sec6_li2" class="sec6_li">...</li>
        <li class="sec6_li"><a href="">4</a></li>
        <li class="sec6_li"><a href="">3</a></li>
        <li class="sec6_li"><a href="">2</a></li>
        <li class="sec6_li"><a href="">1</a></li>
    </ul>
</section>


<!--=========================页脚部分开始=======================-->
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