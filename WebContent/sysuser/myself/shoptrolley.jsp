<%@ page language="java" import="java.util.*,com.idlemall.cosmos.model.*,com.idlemall.cosmos.model.vo.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	SysUser sysUser = (SysUser)request.getSession().getAttribute("sysUser");
	PagePagingBeans pagePagingBeans = (PagePagingBeans)request.getSession().getAttribute("pagePagingBeans");
	ArrayList<UserGoods> list = (ArrayList<UserGoods>)request.getSession().getAttribute("MyTrolley");
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<base href="<%=basePath%>">
    <title>购物车</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/header.css">
    <script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/shoptrolley.js"></script>
</head>
<body>
<%-- <script>
    	verify();
    	function verify(){
    		if(<%=sysUser%>==null){
    			location.href="<%=basePath%>sysuser/login/loginpage.jsp";
    		}
    	}
    </script> --%>
<ul id="rolley_ul1">
	<%
	if(list.size()>0){
		for(int i =0;i<list.size();i++){
			%>
		<li class="rolley_li">
        <div><img src="<%=basePath%>images/home/stu201803250001/detail_11.jpg"/></div>
        <div>
            <h3><%=list.get(i).getGoods_name() %></h3>
            <p style="font-size:14px;margin:5px 0 0 0">发布时间：<%=list.get(i).getGoods_time() %></p>
            <p style="font-size:14px">发布者ID：<%=list.get(i).getUser_id()%></p>
            <p style="font-size:14px">商品号：<%=list.get(i).getGoods_id()%></p>
        </div>
        <div>
            <p>￥<%=list.get(i).getGoods_price() %></p>
        </div>
        <div>
        	<%
        	if(list.get(i).getGoods_state()==1){
        		%>
	            <p><a style="text-decoration:none;color:white;" href="">确认购买</a></p>
        		<%
        	}else{
        		%>
	            <p style="background-color:#DDD;cursor:default;">已&nbsp;售&nbsp;出</p>
        		<%
        		
        	}
        		
        	%>
            <p><a style="text-decoration:none;color:white;" href="<%=basePath %>trolleyPageAction/removeGood.action?Goods_id=<%=list.get(i).getGoods_id() %>">移除商品</a></p>
        </div>
    	</li>
			<%
		}
	}else{
		%>
		<p style="padding-top:100px;color:blue;">------暂未添加任何商品------</p>
		<%
	}
	
	%>
    

</ul>

<!--弹出框信息-->
<div id="roll_information">
    <h4>卖方信息</h4>
    <form>


    </form>
    <button id="b_hide">隐藏</button>
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