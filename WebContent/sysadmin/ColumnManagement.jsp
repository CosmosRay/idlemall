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
    <meta charset="utf-8">
    <link href="../css/admin.css" rel="stylesheet">
</head>
<body>
    <!-- 用户管理 -->
            <div class="AccountManagement_c" id="ColumnManagement_c">
                <h3>用户管理
                    <div class="amcl fr">
                        <input type="text" placeholder="用户名" class="fl" name="">
                        <div class="search fl"><img src="../images/admin/search.png"></div>
                    </div> 
                </h3>
                <div class="AM_ct text_center">
                    <div class="AM_ct_in">
                        <div class="add_btn df_btn fl" id="add_column_btn">添加</div>
                        <div class="edit_btn df_btn fl" id="edit_column_btn">编辑</div>
                        <div class="delete_btn df_btn fl" id="delete_column_btn">删除</div>
                    </div>
                </div>

                <div class="list">
                    <ul class="list_h">
                        <li class="b20"><label><input type="checkbox" name=""><span>序号</span></label></li>
                        <li class="b80"><label>用户名称</label></li>
                    </ul>
                    <div class="list_b_c">
                        <ul class="list_null">
                            <li class="text_center">无用户！</li>
                        </ul>

                        <ul class="list_b">
                            <li class="b20"><label><input type="checkbox" name=""><span>01</span></label></li>
                            <li class="b80"><label>购买、发布</label></li>
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


            <!-- 添加栏目 -->
    <div class="add_Account dn" id="add_column">
        <div class="add_Account_c">
            <div class="add_Account_h">
                <div class="add_Account_h_in">
                    添加用户
                    <span class="fr add_Account_close"><img src="../images/admin/close.png"></span>
                </div>
            </div>
            <div class="user_name user_i">
                <label>用户名</label> <input type="text" placeholder="输入栏目名" name="">
            </div>
            <div class="user_password user_i">
                <label>序<i>调</i>号</label> <input type="text" placeholder="输入序号" name="">     
            </div>
            <div class="add_Account_ok_btn text_center" id="add_column_ok_btn">确<i>皮</i>定</div>
        </div>
    </div>

    <!-- 编辑栏目 -->
    <div class="add_Account dn" id="edit_column">
        <div class="add_Account_c">
            <div class="add_Account_h">
                <div class="add_Account_h_in">
                    编辑栏目
                    <span class="fr add_Account_close"><img src="../images/admin/close.png"></span>
                </div>
            </div>
            <div class="user_name user_i">
                <label>用户名</label> <input type="text" placeholder="输入栏目名" name="">
            </div>
            <div class="user_password user_i">
                <label>序<i>调</i>号</label> <input type="text" placeholder="输入序号" name="">     
            </div>
            <div class="add_Account_ok_btn text_center" id="edit_column_ok_btn">确<i>皮</i>定</div>
        </div>
    </div>

    <!-- 删除栏目 -->
    <div class="add_Account dn" id="delete_column">
        <div class="add_Account_c">
            <div class="add_Account_h">
                <div class="add_Account_h_in">
                    删除用户
                    <span class="fr add_Account_close"><img src="../images/admin/close.png"></span>
                </div>
            </div>
            <div class="delete_text">确定删除“ <span>jiaopwuchu</span> ”用户吗？</div>
            <div class="add_Account_ok_btn text_center" id="delete_column_ok_btn">确<i>皮</i>定</div>
        </div>
    </div>


</body>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/admin.js"></script>
</html>