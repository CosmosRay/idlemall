package com.idlemall.cosmos.service.homePage;

import java.util.List;
import org.springframework.stereotype.Component;
import com.idlemall.cosmos.dao.homePage.PagePagingDaoImpl;
import com.idlemall.cosmos.model.UserGoods;
import com.idlemall.cosmos.model.vo.PagePagingBeans;

@Component("pagePagingService")
public class PagePagingServiceImpl implements PagePagingService {
	private PagePagingDaoImpl pagePagingDaoImpl;
	private PagePagingBeans myPagePagingBeans;
	@Override
	public List<UserGoods> selectSysAllGoods(PagePagingBeans pagePagingBeans) {
		pagePagingDaoImpl = new PagePagingDaoImpl();
		System.out.println("pagePagingBeans = "+pagePagingBeans);
		System.out.println("PagePagingServiceImpl被调用");
		//通过分页数据获取list
		String hql = "select * from user_goods where goods_state=1 order by goods_time desc limit ?,?";
		Object[] params ={pagePagingBeans.getStartPage(),pagePagingBeans.getDataPage()};
		List<UserGoods> list =  pagePagingDaoImpl.selectGoodsByPage(params, hql);
		System.out.println("service   list=="+list.size());
		return list;
	}

	@Override
	public PagePagingBeans getPPB() {
		pagePagingDaoImpl = new PagePagingDaoImpl();
		
		myPagePagingBeans = new PagePagingBeans();
		
		//查询所有商品数量
		String sql = "select count(*) from user_goods where goods_state=1";
		Object[] param = {};
		//总数据量
		int total =  pagePagingDaoImpl.selectSysAllGoods(param, sql);
		System.out.println("获得页面总数total = "+total);
		myPagePagingBeans.setTotalNumber(total);
		System.out.println("页面总数据======="+myPagePagingBeans.getTotalNumber());
		//页面大小
		myPagePagingBeans.setDataPage(5);
		//分页总数
		int sum = myPagePagingBeans.getTotalNumber() % myPagePagingBeans.getDataPage();
		int sum2 = myPagePagingBeans.getTotalNumber() / myPagePagingBeans.getDataPage();
		if(sum>0){
			sum2++;
		}
		myPagePagingBeans.setTotalPage(sum2);
		//当前页
		myPagePagingBeans.setCurrentPage(1);
		//页面开始数据
		myPagePagingBeans.setStartPage((myPagePagingBeans.getCurrentPage()-1)*myPagePagingBeans.getDataPage());
		//页面结束数据
		myPagePagingBeans.setEndPage(myPagePagingBeans.getCurrentPage()*myPagePagingBeans.getDataPage());
		return myPagePagingBeans;
	}
	@Override
	public List<UserGoods> selectUserAllSale(PagePagingBeans pagePagingBeans) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
	//get set 方法
	public PagePagingDaoImpl getPagePagingDaoImpl() {
		return pagePagingDaoImpl;
	}

	public void setPagePagingDaoImpl(PagePagingDaoImpl pagePagingDaoImpl) {
		this.pagePagingDaoImpl = pagePagingDaoImpl;
	}


	
}
