package com.idlemall.cosmos.service.homePage;

import java.util.List;
import com.idlemall.cosmos.model.UserGoods;
import com.idlemall.cosmos.model.vo.PagePagingBeans;

/**分页显示Service interface
 * @author CosmosRay
 *
 */
public interface PagePagingService {
	
	/****************系统用户+商品分页********************/
	/*所有系统商品分页数据*/
	public List<UserGoods> selectSysAllGoods(PagePagingBeans pagePagingBeans);
	//获取分页对象数据
	public PagePagingBeans getPPB();
	/*用户所有发布商品信息分页*/
	public List<UserGoods> selectUserAllSale(PagePagingBeans pagePagingBeans);
	
	/*用户所有售出商品信息分页*/
	
	/*用户所有购买商品信息分页*/
	
	
	/****************系统admin+数据分页********************/
}
