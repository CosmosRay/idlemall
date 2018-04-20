package com.idlemall.cosmos.service.system;

import java.util.List;

import com.idlemall.cosmos.model.TrolleyForm;
import com.idlemall.cosmos.model.UserGoods;

public interface TrolleyService {
	
	/**
	 * 保存用户加入购物车信息
	 * @return
	 */
	public int saveTrolley(TrolleyForm trolley);
	/**
	 * 查询用户加入购物车信息
	 * @return
	 */
	public List<UserGoods> selectTrolley(int user_id);
	/**
	 * 删除用户加入购物车信息
	 * @return
	 */
	public int deleteTrolley(TrolleyForm trol);
}
