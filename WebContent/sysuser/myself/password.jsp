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
    <script type="text/javascript" src="<%=basePath %>js/jquery-3.2.1.min.js"></script>
	<script>
    	<%-- verify();
    	function verify(){
    		if(<%=sysUser%>==null){
    			location.href="<%=basePath%>sysuser/login/loginpage.jsp";
    		}
    	} --%>
    	function Check_Home(){
    		if(document.getElementById("jpwd").value==""||document.getElementById("xpwd").value==""||document.getElementById("zpwd").value==""){
    			alert("密码输入不能为空！");
				return false;    			
    		}
    		if(document.getElementById("xpwd").value!=document.getElementById("zpwd").value){
    			alert("两次新密码输入不同");
    			return false;
    		}
    		return true;
    	}
    </script>
</head>
<body>
<section id="personal_sec1">
	    
    <%-- <div>
        <img src="<%=basePath%>images/user/123.jpg" height="200px"/>
    </div> --%>
    <br><br><br>
    <form method="post" action="<%=basePath %>sysUserAction/savePwd.action" onsubmit="return Check_Home()">
    <ul>
        <li>&nbsp;旧密码：<input type="password" id="jpwd" name="jpwd"></li>
        <li>&nbsp;新密码：<input type="password" id="xpwd" name="xpwd"></li>
        <li>再次输入：<input type="password" id="zpwd" name="zpwd"></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li><input type="submit" value="保存"></li>
    </ul>
    </form>
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