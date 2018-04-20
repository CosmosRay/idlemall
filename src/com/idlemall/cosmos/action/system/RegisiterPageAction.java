package com.idlemall.cosmos.action.system;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.idlemall.cosmos.action.base.BaseAction;
import com.idlemall.cosmos.model.SysUser;
import com.idlemall.cosmos.service.homePage.RegisiterPageServiceImpl;

@SuppressWarnings("serial")
public class RegisiterPageAction extends BaseAction{
	private RegisiterPageServiceImpl regisiterPageServiceImpl;

	//进入注册页面
	public String startRegisiter(){
		
		return "success";
	}
	/*
	 * 注册新账号
	 */
	public String addSysUser(){
		regisiterPageServiceImpl = new RegisiterPageServiceImpl();
		//获取当前时间
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		String time = sdf.format(d);
		//获取前台界面中的数据
		SysUser user = new SysUser();
		String name = getRequest().getParameter("uname");
		String qq = getRequest().getParameter("upass");
		String pwd = getRequest().getParameter("zpass");
		
		user.setUser_name(name);
		user.setUser_qq(qq);
		user.setUser_pass(pwd);
		user.setUser_gender(1);
		user.setFaculty_sort_id(0);
		user.setUser_time(time);
		user.setUser_sale(0);
		user.setUser_buy(0);
		user.setUser_credit(100);
		user.setUser_attr1("0");
		
		String ret = regisiterPageServiceImpl.addSysUser(user);
		//通过返回值得到用户是否注册成功
		if("success".equals(ret)){
			return "success";
		}
		return "defeated";
	}
	public RegisiterPageServiceImpl getRegisiterPageServiceImpl() {
		return regisiterPageServiceImpl;
	}
	public void setRegisiterPageServiceImpl(RegisiterPageServiceImpl regisiterPageServiceImpl) {
		this.regisiterPageServiceImpl = regisiterPageServiceImpl;
	}
	
}
