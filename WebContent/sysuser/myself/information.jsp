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
        <li>性别：<select name="gender">
					<option value="1">男</option>        
					<option value="0">女</option>        
        		</select>
        </li>
        <li>年级：<select name="class">
					<option value="2018">2018</option>        
					<option value="2017">2017</option>        
					<option value="2016">2016</option>        
					<option value="2015">2015</option>        
					<option value="2014">2014</option>        
        		</select>级</li>
        <li>院系：<input type="text" name="faculty" value="<%=sysUser.getFaculty_sort_id()%>"></li>
        <li>QQ：<input type="text" name="faculty" value="<%=sysUser.getUser_qq()%>"></li>
        <li>地址：<input type="text" name="faculty" value="<%=sysUser.getUser_address()%>"></li>
        <li>我的发布：<%=sysUser.getUser_sale()%>件</li>
        <li>信用积分：<%=sysUser.getUser_credit()%></li>
        <li><button>保存</button></li>
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