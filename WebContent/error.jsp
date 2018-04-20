<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>">
    <title>404</title>
<style>
	body {
    background-color: #daecee;
	}

	#error {
    position: absolute;
    top: 50%;
    left: 50%;
    margin-top: -303px;
    margin-left: -303px;
	}
</style>
</head>
<body>
    <div id="error">
        <img src="<%=basePath%>images/logo/404.png" alt="404 page not found"/>
    </div>
</body>
</html>