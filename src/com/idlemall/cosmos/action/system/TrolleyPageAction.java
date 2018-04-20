package com.idlemall.cosmos.action.system;

import com.idlemall.cosmos.action.base.BaseAction;

public class TrolleyPageAction extends BaseAction{

	//已经登录跳转 个人中心
	public String myTrolleyPage(){
		getRequest().getSession().setAttribute("url", "shoptrolley");
		return "success";
	}
}
