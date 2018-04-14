<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>登陆</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="../css/admin.css">
</head>
<body>
	<div class="login_head">
		<div class="container">
			<img src="../images/admin/logo.png">
		</div>
	</div>

	<div class="login_banner">
		<div class="container">
			<div class="login">
                <div class="login_in">
                <form method="post" action="../SysUserLogin">
                    <div class="login_h">后台登陆</div>
                    <div class="user_login">
                        <input type="text" name="name" placeholder="账号">
                        <input type="text" name="pass" placeholder="密码">
                    </div>
                    <div class="img_code">
                        <input type="text" placeholder="验证码">  
                        <img src="../images/admin/img_code.jpg" alt="">
                    </div>
                   <!--  <div class="login_btn">登陆</div> -->
                    <input type="submit" style="border:0;" class="login_btn" value="登陆"/>
                    </form>
                </div>
                
            </div>
		</div>
	</div>

	<div class="login_end text_center">版权所有&copy;：闲置商城  豫ICP备08102576号</div>
</body>
</html>