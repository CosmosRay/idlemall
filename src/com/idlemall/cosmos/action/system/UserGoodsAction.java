package com.idlemall.cosmos.action.system;

import java.util.List;

import com.idlemall.cosmos.action.base.BaseAction;
import com.idlemall.cosmos.model.UserGoods;
import com.idlemall.cosmos.service.system.UserGoodsService;
import com.idlemall.cosmos.service.system.UserGoodsServiceImpl;

@SuppressWarnings("serial")
public class UserGoodsAction extends BaseAction{
	private UserGoodsServiceImpl userGoodsServiceImpl;
	/**
	 * 通过商品ID查找商品信息并放到request中返回给前端界面
	 * @return
	 */
	public String selectGoodById(){
		userGoodsServiceImpl = new UserGoodsServiceImpl();
		int good_id = Integer.parseInt(getRequest().getParameter("Good_id"));
		System.out.println("good_id = " + good_id);
		List<UserGoods> list = userGoodsServiceImpl.selectGoodById(good_id);
		if(list.size()<1){
			return "404";
		}
		getRequest().getSession().setAttribute("userGood", list.get(0));
		return "success";
	}
	
	//***get set 方法****
	public UserGoodsServiceImpl getUserGoodsServiceImpl() {
		return userGoodsServiceImpl;
	}
	public void setUserGoodsServiceImpl(UserGoodsServiceImpl userGoodsServiceImpl) {
		this.userGoodsServiceImpl = userGoodsServiceImpl;
	}
	
	
}
