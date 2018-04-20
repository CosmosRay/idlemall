package com.idlemall.cosmos.dao.homePage;

import java.util.List;

import com.idlemall.cosmos.model.UserGoods;

public interface PagePagingDao {
	
	/*
	 * 查询所有在售商品数量
	 * 返回int类型值
	 */
	public int selectSysAllGoods(Object[] param,String sql);
	/*
	 * 分页查询在售商品
	 * 返回List类型值
	 */
	public List<UserGoods> selectGoodsByPage(Object[] param,String sql);
}
