package com.idlemall.cosmos.action.system;

import com.idlemall.cosmos.action.base.BaseAction;

@SuppressWarnings("serial")
public class ShopMineAction extends BaseAction{

	//进入我的商店
	public String myShop(){
		getRequest().getSession().setAttribute("url", "shopmine");
		return "success";
	}
}
