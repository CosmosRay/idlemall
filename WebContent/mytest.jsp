<%@ page language="java" import="java.util.*,com.idlemall.cosmos.model.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	SysUser sysUser = (SysUser)request.getSession().getAttribute("LOGIN_USER");
	ArrayList<UserGoods> list = (ArrayList<UserGoods>)request.getSession().getAttribute("userGoodsList");
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=sysUser %>
<%=list.size() %>

<%
	for(int i =0; i<list.size();i++){
		%>
		<%=list.get(i).getGoods_id() %><br>
		<%
	}
%>
<%-- <jsp:include page="<%=basePath %>sysuser/bottomBase.jsp"/> --%>
<!-- #include file = "myfile.inc" -->
</body>
</html>