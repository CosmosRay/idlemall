<%@ page language="java" import="java.util.*,com.idlemall.cosmos.model.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>主页</title>
  </head>
  <script type="text/javascript" src="<%=basePath%>js/jquery-3.2.1.min.js"></script>
  <script>
  	 $(document).ready(function(){
  		/*  alert("通过Action跳转···"); */
  		location.href="<%=basePath%>mainPageAction/selectGoods.action";
  		<%-- location.href="<%=basePath%>detailPageAction/enterOne.action"; --%>
  		<%-- $ajax({
  			url:"<%=basePath%>mainPageAction/mainPageAction!demo.action",
			type:"post"
  		}); --%>
  	 });
  </script>
  <body>
   <%-- 	<%
   		SysUser user = new SysUser();
   		user.setUser_name("李雷");
   		request.getSession().setAttribute("sysUser", user);
   	
   	%> --%>
  </body>
</html>
