package com.idlemall.cosmos.dao.system;

import java.util.List;

import com.idlemall.cosmos.model.TrolleyForm;
import com.idlemall.cosmos.model.UserGoods;

public interface TrolleyDao {

	/**
	 * 保存用户加入购物车信息
	 * @param param
	 * @param sql
	 * @return
	 */
	public int saveTrolley(Object[] param,String sql);
	/**
	 * 查询用户加入购物车信息
	 * @param param
	 * @param sql
	 * @return
	 */
	public List<UserGoods> selectTrolley(Object[] param,String sql);
	/**
	 * 删除用户加入购物车信息
	 * @param param
	 * @param sql
	 * @return
	 */
	public int deleteTrolley(Object[] param,String sql);
}
