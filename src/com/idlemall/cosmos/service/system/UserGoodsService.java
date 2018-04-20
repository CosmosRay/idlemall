package com.idlemall.cosmos.service.system;

import java.util.List;

import com.idlemall.cosmos.model.UserGoods;

/**商品信息SQL  service
 * @author CosmosRay
 *
 */
public interface UserGoodsService {
	
	/**
	 * 通过商品ID查找商品信息
	 * @return List<UserGoods>
	 */
	public List<UserGoods> selectGoodById(int goods_id);
	
}
