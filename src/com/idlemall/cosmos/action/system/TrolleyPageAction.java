package com.idlemall.cosmos.action.system;

import java.util.List;

import com.idlemall.cosmos.action.base.BaseAction;
import com.idlemall.cosmos.model.SysUser;
import com.idlemall.cosmos.model.TrolleyForm;
import com.idlemall.cosmos.model.UserGoods;
import com.idlemall.cosmos.service.system.TrolleyServiceImpl;

@SuppressWarnings("serial")
public class TrolleyPageAction extends BaseAction{
	private TrolleyServiceImpl trolleyServiceImpl;
	private TrolleyForm trolleyForm;
	//已经登录跳转 个人中心
	public String myTrolleyPage(){
		trolleyServiceImpl = new TrolleyServiceImpl();
		SysUser user = (SysUser) getRequest().getSession().getAttribute("sysUser");
		int usr_id = user.getUser_id();
		List<UserGoods> list = trolleyServiceImpl.selectTrolley(usr_id);
		getRequest().getSession().setAttribute("MyTrolley", list);
		getRequest().getSession().setAttribute("url", "shoptrolley");
		return "success";
	}
	//将物品添加到购物车
	public String saveGood(){
		trolleyServiceImpl = new TrolleyServiceImpl();
		trolleyForm = new TrolleyForm();
		SysUser user = (SysUser)getRequest().getSession().getAttribute("sysUser");
		int user_id = user.getUser_id();
		String id = getRequest().getParameter("Good_id");
		int good_id = Integer.parseInt(id);
		trolleyForm.setUser_id(user_id);
		trolleyForm.setGoods_id(good_id);
		int k = trolleyServiceImpl.saveTrolley(trolleyForm);
		if(k==0){
			return "404";
		}
		myTrolleyPage();
		return "success";
	}
	//将商品从购物车中移除
	public String removeGood(){
		trolleyServiceImpl = new TrolleyServiceImpl();
		SysUser user = (SysUser)getRequest().getSession().getAttribute("sysUser");
		int user_id = user.getUser_id();
		String id = getRequest().getParameter("Goods_id");
		int good_id = Integer.parseInt(id);
		trolleyForm = new TrolleyForm();
		trolleyForm.setUser_id(user_id);
		trolleyForm.setGoods_id(good_id);
		int k = trolleyServiceImpl.deleteTrolley(trolleyForm);
		if(k==0){
			return "404";
		}
		myTrolleyPage();
		return "success";
	}
	
}
