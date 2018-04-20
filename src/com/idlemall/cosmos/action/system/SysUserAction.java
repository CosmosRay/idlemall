package com.idlemall.cosmos.action.system;

import com.idlemall.cosmos.action.base.BaseAction;

@SuppressWarnings("serial")
public class SysUserAction extends BaseAction{

	//进入个人管理系统
	public String myOwn(){
		getRequest().getSession().setAttribute("url", "personal");
		return "success";
	}
	
	
}
