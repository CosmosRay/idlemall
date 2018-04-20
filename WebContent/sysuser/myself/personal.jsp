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
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/header.css">
</head>
<body>
	<script>
    	verify();
    	function verify(){
    		if(<%=sysUser%>==null){
    			location.href="<%=basePath%>sysuser/login/loginpage.jsp";
    		}
    	}
    </script>
<section id="personal_sec1">
	    
    <div>
        <img src="<%=basePath%>images/user/123.jpg" height="200px"/>
    </div>
    <br><br><br>
    <ul>
        <li>ID号：<%=sysUser.getUser_id()%></li>
        <li>用户名：<%=sysUser.getUser_name()%></li>
        <li>性别：<%
        	if(sysUser.getUser_gender()==1){
        		%>男<%
        	}else{
        		%>女<%
        	}
        %></li>
        
        <li>年级：<%=sysUser.getUser_class()%></li>
        <li>院系：<%=sysUser.getFaculty_sort_id()%></li>
        <li>QQ：<%=sysUser.getUser_qq()%></li>
        <li>地址：<%=sysUser.getUser_address()%></li>
        <li>我的发布：<%=sysUser.getUser_sale()%>件</li>
        <li>信用积分：<%=sysUser.getUser_credit()%></li>
        <li><a href="<%=basePath %>sysUserAction/editOwn.action">修改个人信息</a>&nbsp;&nbsp;&nbsp;<a href="<%=basePath %>sysUserAction/editPwd.action">修改密码</a></li>
    </ul>
</section>
<div id="personal_div1">

</div>
<!--==========================页脚部分开始=======================-->
<footer>
    <div id="clear_1"></div>
    <div id="footer_div3">
        <p>
            <a href="">关于闲置商城</a>|
            <a href="">我们的团队</a>|
            <a href="http://www.hactcm.edu.cn/">友情链接</a>|
            <a href="<%=basePath%>admin/login.html">系统登录</a>|
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