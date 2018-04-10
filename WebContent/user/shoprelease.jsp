<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="../css/header.css">
    <link rel="stylesheet" type="text/css" href="../css/shoprelease.css">
</head>
<body>

<div id="shopmine_div">
    <h2>闲置商品发布</h2>
    <form method="post" action="">
    <div id="sm_d_d1">
        <img src="../images/home/stu201803250001/detail_11.jpg">
    </div>
    <div id="sm_d_d2">
        商品名：<input type="text" name="name"><br><br>
        分&nbsp;类：<select name="sort">
                <option value="0">--未选--</option>
                <option value="1">手机</option>
                <option value="2">电脑</option>
                <option value="3">数码</option>
                <option value="4">电器</option>
                <option value="5">服装</option>
                <option value="6">化妆品</option>
                <option value="7">书籍</option>
                <option value="8">器材</option>
                <option value="9">办公</option>
                <option value="10">其他</option>
            </select><br><br>
        学&nbsp;院：<select name="sort">
                <option value="0">--未选--</option>
                <option value="1">第一临床医学院</option>
                <option value="2">第二临床医学院、骨伤学院</option>
                <option value="3">针灸推拿学院</option>
                <option value="4">基础医学院</option>
                <option value="5">药学院</option>
                <option value="6">管理学院</option>
                <option value="7">外语学院</option>
                <option value="8">信息技术学院</option>
                <option value="9">继续教育学院</option>
                <option value="10">护理学院</option>
                <option value="10">康复医学院</option>
                <option value="10">国际教育学院</option>
            </select><br><br>
        描&nbsp;述：<textarea maxlength="100" name=""></textarea><br><br>
        价&nbsp;格：<input type="text" name="name"><br><br>
        <input class="form_input" type="submit" value="发布">&nbsp;&nbsp;&nbsp;
        <input class="form_input" type="reset" value="取消">
    </div>

    </form>
</div>

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