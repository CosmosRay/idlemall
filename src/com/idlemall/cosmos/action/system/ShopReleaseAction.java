package com.idlemall.cosmos.action.system;

import com.idlemall.cosmos.action.base.BaseAction;

@SuppressWarnings("serial")
public class ShopReleaseAction extends BaseAction{
	
	public String enterRelease(){
		getRequest().getSession().setAttribute("url", "shoprelease");
		return "success";
	}
}
