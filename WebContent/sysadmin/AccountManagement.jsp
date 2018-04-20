<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title></title>
	<link href="../css/admin.css" rel="stylesheet">
</head>
<body>
			<div class="AccountManagement_c " id="AccountManagement_c">
                <h3>账户管理 
                    <div class="amcl fr">
                        <input type="text" placeholder="用户名" class="fl" name="">
                        <div class="search fl"><img src="../images/admin/search.png"></div>
                    </div> 
                </h3>
                <div class="AM_ct text_center">
                    <div class="AM_ct_in">
                        <div class="add_btn df_btn fl" id="add_Account_btn">添加</div>
                        <div class="edit_btn df_btn fl" id="edit_Account_btn">编辑</div>
                        <div class="delete_btn df_btn fl" id="delete_Account_btn">删除</div>
                        <div class="fr df_btn ac_btn" id="ac_Account_btn">账号授权</div>
                    </div>
                </div>

                <div class="list">
                    <ul class="list_h">
                        <li class="b20"><label><input type="checkbox" name=""><span>用户名</span></label></li>
                        <li class="b20"><label>密码</label></li>
                        <li class="b60"><label>授权形式</label></li>
                    </ul>
                    <div class="list_b_c">
                        <ul class="list_null">
                            <li class="text_center">未添加管理员账户！</li>
                        </ul>

                        <ul class="list_b">
                            <li class="b20"><label><input type="checkbox" name=""><span>jiaowuchu</span></label></li>
                            <li class="b20"><label>abc123456</label></li>
                            <li class="b60"><label>购买、授权</label></li>
                        </ul>




                    </div>

                    <div class="pull_page">
                        <div class="fl pull_page_up">上一页</div>
                            <ul>
                                <li class="on">1</li>
                                <li>2</li>
                                <li>3</li>
                                <li>4</li>
                                <li class="pull_page_df_btn">…</li>
                                <li>12</li>
                            </ul>
                        <div class="fl pull_page_down">下一页</div>
                    </div>

                    
                </div>
            </div>


            <!-- 弹窗 -->
    <!-- 添加账户 -->
    <div class="add_Account dn" id="add_Account">
        <div class="add_Account_c">
            <div class="add_Account_h">
                <div class="add_Account_h_in">
                    添加账户
                    <span class="fr add_Account_close"><img src="../images/admin/close.png"></span>
                </div>
            </div>
            <div class="user_name user_i">
                <label>用户名</label> <input type="text" placeholder="输入用户名" name="">     
            </div>
            <div class="user_password user_i">
                <label>密<i>调</i>码</label> <input type="password" placeholder="输入密码" name="">     
            </div>
            <div class="add_Account_ok_btn text_center" id="add_Account_ok_btn">确<i>皮</i>定</div>
        </div>
    </div>

    <!-- 账户编辑 -->
    <div class="add_Account dn" id="user_column">
        <div class="add_Account_c">
            <div class="add_Account_h">
                <div class="add_Account_h_in">
                    编辑账户
                    <span class="fr add_Account_close"><img src="../images/admin/close.png"></span>
                </div>
            </div>
            <div class="column_now ">正在编辑 “<span>jiaowuchu</span>”账户</div>
            <div class="user_name user_i">
                <label>用户名</label> <input type="text" placeholder="输入用户名" name="">     
            </div>
            <div class="user_password user_i">
                <label>密<i>调</i>码</label> <input type="password" placeholder="输入密码" name="">     
            </div>
            <div class="add_Account_ok_btn text_center" id="user_column_ok_btn">确<i>皮</i>定</div>
        </div>
    </div>

    <!-- 删除账户 -->
    <div class="add_Account dn" id="delete_Account">
        <div class="add_Account_c">
            <div class="add_Account_h">
                <div class="add_Account_h_in">
                    删除账户
                    <span class="fr add_Account_close"><img src="../images/admin/close.png"></span>
                </div>
            </div>
            <div class="delete_text">确定删除“ <span>jiaopwuchu</span> ”账户吗？</div>
            <div class="add_Account_ok_btn text_center" id="delete_Account_ok_btn">确<i>皮</i>定</div>
        </div>
    </div>

    <!-- 账户授权 -->
    <div class="add_Account dn" id="ac_Account">
        <div class="add_Account_c">
            <div class="add_Account_h">
                <div class="add_Account_h_in">
                    账户授权
                    <span class="fr add_Account_close"><img src="../images/admin/close.png"></span>
                </div>
            </div>
            <ul>
                <li><label><input type="checkbox" name="">&nbsp;<span>购买</span></label></li>
                <li><label><input type="checkbox" name="">&nbsp;<span>发布</span></label></li>

            </ul>
            <div class="add_Account_ok_btn text_center" id="ac_Account_ok_btn">保<i>呀</i>存</div>
        </div>
    </div>
    
</body>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/admin.js"></script>
</html>