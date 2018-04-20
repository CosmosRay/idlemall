package com.idlemall.cosmos.dao.system;

import java.util.List;

import com.idlemall.cosmos.model.UserGoods;

/**商品信息DAO interface
 * @author CosmosRay
 *
 */
public interface UserGoodsDao {
	/**
	 * 通过商品ID查询商品信息
	 * @return List<UserGoods>
	 */
	public List<UserGoods> selectGoodById(Object[] param,String sql);
	
}
