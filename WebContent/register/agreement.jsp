<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>注册闲置网</title>
    <link rel="stylesheet" type="text/css" href="../css/logoinpage.css"/>
    <link rel="stylesheet" type="text/css" href="../css/regsiter.css"/>
    <script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="../js/regisiter.js"></script>
    <script type="text/javascript" src="../js/logoinpage.js"></script>
</head>
<body>
<!--导航栏-->
<header>
    <section>
        <a href="../commodity/index.html"><img src="../images/logo/loginlogo.jpg" alt="图片无法显示"/></a>
        <!--<div id="div1">
            <ul>
                <li id="div1_li"><a href="#"><img src="../images/logo/runbun.png">帮助中心<img src="../images/logo/turnb.png" alt="图片无法正常显示"></a></li>
                <li class="div1_li"><a class="a1" href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;包裹跟踪</a></li>
                <li class="div1_li"><a class="a1" href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;常见问题</a></li>
                <li class="div1_li"><a class="a1" href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在线退换货</a></li>
                <li class="div1_li"><a class="a1" href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在线投诉</a></li>
                <li class="div1_li"><a class="a1" href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;配送范围</a></li>
            </ul>
            </a></div>-->
        <div id="div2"><span class="p12">您好，欢迎观临闲置网！</span><a href="../login/logoinpage.html">请登录</a></div>
    </section>
</header>
<!--=====================注册界面设置=======================-->
<!--<section id="resec1">
    <div id="re_div1">
    </div>
    <div id="re_div2">
        <form action="" method="post">
            <h1>闲置网注册</h1>
            <div class="rein" id="re_in1">
                &lt;!&ndash;用户名填写&ndash;&gt;
                <span>用户名</span>
                <input class="re_put" type="text"  name="uname">
                <div class="show_div">
                    <p class="show_p1"></p>
                    <div class="show_div2">
                        <p class="show_p2">4-20位字符、可由中文、英<br/>文、数字或符号“_”组成</p>
                    </div>
                </div>
                <div id="show2_d1" class="show2_div">
                    <p class="show2_p1"></p>
                    <div class="show2_div2">
                        <p class="show2_p2">用户名不能为空</p>
                    </div>
                </div>
            </div>
            &lt;!&ndash;手机号填写&ndash;&gt;
            <div class="rein" id="re_in2">
                <span>手机号</span>
                <input class="re_put" type="text"  name="upass">
                <div class="show_div">
                    <p class="show_p1"></p>
                    <div class="show_div2">
                        <p class="show_p2">请填写正确的手机号以便<br/>接收订单通知、找回密码等</p>
                    </div>
                </div>
                <div id="show2_d2" class="show2_div">
                    <p class="show2_p1"></p>
                    <div class="show2_div2">
                        <p class="show2_p2">格式错误请输入正确的手机<br/>号码</p>
                    </div>
                </div>
            </div>
            &lt;!&ndash;短信验证码填写&ndash;&gt;
            <div class="rein" id="re_in3">
                <span>短信验证码</span>
                <input class="re_put" type="text"  name="xinxi">
                <input id="re_ptx" disabled type="button" value="获取验证码">
                <div class="show_div">

                </div>

                <div class="show2_div">

                </div>

            </div>
            &lt;!&ndash;密码填写&ndash;&gt;
            <div class="rein" id="re_in4">
                <span>设置密码</span>
                <input class="re_put" type="password"  name="zpass">
                <div class="show_div">
                    <p class="show_p1"></p>
                    <div class="show_div2">
                        <p class="show_p2">6-20个大小写英文字母、数字<br/>或符号组合</p>
                    </div>
                </div>
                <div id="show2_d4" class="show2_div">
                    <p class="show2_p1"></p>
                    <div class="show2_div2">
                        <p class="show2_p2">密码不能为空</p>
                    </div>
                </div>
            </div>
            &lt;!&ndash;//确认验证码填写&ndash;&gt;
            <div class="rein" id="re_in5">
                <span>确认密码</span>
                <input class="re_put" type="password"  name="qpass">
                <div class="show_div">
                    <p class="show_p1"></p>
                    <div class="show_div2">
                        <p class="show_p2">请再次输入密码</p>
                    </div>
                </div>

                <div id="show2_d5" class="show_div">
                    <p class="show_p1"></p>
                    <div class="show_div2">
                        <p class="show_p2">请再次输入密码</p>
                    </div>
                </div>

            </div>
            <p>点击注册，表示您同意闲置网 <a href="">《服务协议》</a></p>
            <input id="re_in6" type="submit" value="同意协议并注册">
        </form>
    </div>
</section>-->
<!--=======================协议部分=========================-->
<br>
<br>
<h1 style="text-align: center">闲置商城协议书</h1>
<br>
<hr style="margin:0 20% 0 20%">
<br>
<br>
<p style="margin:0 20% 0 20%">
    闲置商城协议书！闲置商城协议书！闲置商城协议书！闲置商城协议书！闲置商城协议书！闲置商城协议书！
    闲置商城协议书！闲置商城协议书！闲置商城协议书！闲置商城协议书！闲置商城协议书！闲置商城协议书！
    闲置商城协议书！闲置商城协议书！闲置商城协议书！闲置商城协议书！闲置商城协议书！闲置商城协议书！
    闲置商城协议书！闲置商城协议书！闲置商城协议书！闲置商城协议书！闲置商城协议书！闲置商城协议书！
</p>
<br>
<br>
<!--=======================页脚部分=========================-->
<footer id="foot">
    <p><a href="">豫ICP备16050468号</a>&nbsp;|&nbsp;<a href="">豫B2-20170039</a>&nbsp;|&nbsp;<a href="">营业执照</a></p>

    <p>Copyright © 闲置商城 2017-2018，All Rights Reserved</p>
</footer>
</body>
</html>