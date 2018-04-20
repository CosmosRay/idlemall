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
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/logoinpage.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/regsiter.css"/>
    <script type="text/javascript" src="<%=basePath %>js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/regisiter.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/logoinpage.js"></script>
    <script>
    	function Check_Home()  
    	{    
        	if ( document.getElementById("uname").value==""||document.getElementById("upass").value==""||document.getElementById("zpass").value==""||document.getElementById("qpass").value=="")   
        	{  
            	return false;  
        	}
         	return true;  
    	}  
    </script>
</head>
<body>
<!--导航栏-->
<header>
    <section>
        <a href="<%=basePath %>mainPageAction/selectGoods.action"><img src="<%=basePath %>images/logo/loginlogo.jpg" alt="图片无法显示"/></a>
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
        <div id="div2"><span class="p12">您好，欢迎观临闲置网！</span><a href="<%=basePath %>sysUserLoginAction/mySysUserLogin.action">请登录</a></div>
    </section>
</header>
<!--=====================注册界面设置=======================-->
<section id="resec1">
    <div id="re_div1">
    </div>
    <div id="re_div2">
        <form action="<%=basePath %>regisiterPageAction/addSysUser.action" method="post" onsubmit="return Check_Home()">
            <h1>闲置网注册</h1>
            <div class="rein" id="re_in1">
                <!--用户名填写-->
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
            <!--手机号填写-->
            <div class="rein" id="re_in2">
                <span>QQ号</span>
                <input class="re_put" type="text"  name="upass">
                <div class="show_div">
                    <p class="show_p1"></p>
                    <div class="show_div2">
                        <p class="show_p2">请填写正确的QQ号以便<br/>接收订单通知、找回密码等</p>
                    </div>
                </div>
                <div id="show2_d2" class="show2_div">
                    <p class="show2_p1"></p>
                    <div class="show2_div2">
                        <p class="show2_p2">格式错误请输入正确的QQ<br/>号码</p>
                    </div>
                </div>
            </div>
            <!--短信验证码填写-->
           <!--  <div class="rein" id="re_in3">
                <span>短信验证码</span>
                <input class="re_put" type="text"  name="xinxi">
                <input id="re_ptx" disabled type="button" value="获取验证码">
                <div class="show_div">

                </div>

                <div class="show2_div">

                </div>

            </div> -->
            <!--密码填写-->
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
            <!--//确认验证码填写-->
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
            <p>点击注册，表示您同意闲置网 <a href="agreement.html">《服务协议》</a></p>
            <input id="re_in6" type="submit" value="同意协议并注册">
        </form>
    </div>
</section>
<!--=======================页脚部分=========================-->
<footer id="foot">
    <p><a href="">豫ICP备16050468号</a>&nbsp;|&nbsp;<a href="">豫B2-20170039</a>&nbsp;|&nbsp;<a href="">营业执照</a></p>

    <p>Copyright © 闲置商城 2017-2018，All Rights Reserved</p>
</footer>
</body>
</html>