package com.idlemall.cosmos.service.system;

import java.util.List;

import com.idlemall.cosmos.dao.system.UserGoodsDaoImpl;
import com.idlemall.cosmos.model.UserGoods;

public class UserGoodsServiceImpl implements UserGoodsService {
	private UserGoodsDaoImpl userGoodsDaoImpl;
	@Override
	public List<UserGoods> selectGoodById(int good_id) {
		userGoodsDaoImpl = new UserGoodsDaoImpl();
		System.out.println("selectGoodById service被执行***************");
		String sql = "select * from user_goods where GOODS_ID=?";
		Object[] param = {good_id};
		List<UserGoods> list = userGoodsDaoImpl.selectGoodById(param,sql);
		return list;
	}
	
	
	public UserGoodsDaoImpl getUserGoodsDaoImpl() {
		return userGoodsDaoImpl;
	}
	public void setUserGoodsDaoImpl(UserGoodsDaoImpl userGoodsDaoImpl) {
		this.userGoodsDaoImpl = userGoodsDaoImpl;
	}
	
	
}
