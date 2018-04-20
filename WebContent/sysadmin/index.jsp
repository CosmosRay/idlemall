<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>闲置商城管理平台</title>
<meta name="description" content="">
<meta name="keywords" content="">
<link href="../css/admin.css" rel="stylesheet">
</head>
<body>

    <div class="header">
        <div class="header_in">
            <img src="../images/admin/tit.png">
            <div class="quit text_center">安全退出</div>
        </div>
        
    </div>

    <div class="content ">
        <div class="user">
            <div class="user_status fl text_center">当前用户： <span>管理员001</span></div>
            <div class="user_location fl">当前： 首页-<span>admin管理</span>  </div>
        </div>
        <div class="nav_side text_center fl">
            <div class="nav AccountManagement active">admin管理</div>
            <div class="nav ColumnManagement">用户管理</div>
            <!--<div class="nav NewsManagement">新闻管理</div>-->
        </div>


        <div class="main_fx">
            
            <div class="AccountManagement_c_iframe">
                <iframe src="AccountManagement.jsp"></iframe>
            </div>

        </div>
        



    </div>

    

    

</body>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/admin.js"></script>

</html>