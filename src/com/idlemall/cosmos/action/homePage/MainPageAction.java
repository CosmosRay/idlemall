package com.idlemall.cosmos.action.homePage;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.idlemall.cosmos.action.base.BaseAction;
import com.idlemall.cosmos.model.SysUser;
import com.idlemall.cosmos.model.UserGoods;
import com.idlemall.cosmos.model.vo.PagePagingBeans;
import com.idlemall.cosmos.service.homePage.PagePagingServiceImpl;

@SuppressWarnings("serial")
public class MainPageAction  extends BaseAction{

	private SysUser sysUser;
	private PagePagingBeans pagePagingBeans;
	private PagePagingServiceImpl pagePagingServiceImpl;
	/**
	 * 测试方法
	 * @return
	 */
	public String  demo(){
		return "success";
	}
	/**
	 * 1.检查用户是否登录
	 * 存在：       
	 * 不存在：
	 * 2.查询数据库中商品信息
	 * 倒叙分组排列
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String selectGoods(){
		/*从session中获取登录用户信息*/
		HttpSession session =  getRequest().getSession();
		sysUser = (SysUser) session.getAttribute("sysUser");
		System.out.println("sysUser = "+sysUser);
		
		getSession().put("sysUser", sysUser);
		/**
		 * 从session中获取分页信息pagePagingBeans
		 * 利用pagePagingBeans获取数据
		 **/
		pagePagingBeans = (PagePagingBeans) session.getAttribute("pagePagingBeans");
		
		PagePagingServiceImpl pagePagingServiceImpl = new PagePagingServiceImpl();
		//pagePagingBeans ==null页面是第一次被调用
		if(pagePagingBeans==null){
			pagePagingBeans = pagePagingServiceImpl.getPPB();
		}
		
		List<UserGoods> userGoodsList = pagePagingServiceImpl.selectSysAllGoods(pagePagingBeans);
		getSession().put("userGoodsList", userGoodsList);
		getSession().put("pagePagingBeans", pagePagingBeans);
		return "success";
	}
	/**
	 * 分页：下一页
	 */
	@SuppressWarnings("unchecked")
	public String nextPage(){
		pagePagingServiceImpl =new PagePagingServiceImpl();
		/*从session中获取登录用户信息*/
		HttpSession session =  getRequest().getSession();
		pagePagingBeans = (PagePagingBeans) session.getAttribute("pagePagingBeans");
		//计算下一页页码
		int i = pagePagingBeans.getCurrentPage()+1;
		if(i <= pagePagingBeans.getTotalPage()){
			pagePagingBeans.setCurrentPage(i);
			//页面开始数据
			pagePagingBeans.setStartPage((pagePagingBeans.getCurrentPage()-1)*pagePagingBeans.getDataPage());
			//页面结束数据
			pagePagingBeans.setEndPage(pagePagingBeans.getCurrentPage()*pagePagingBeans.getDataPage());
		}
		//查询分页数据
		List<UserGoods> userGoodsList = pagePagingServiceImpl.selectSysAllGoods(pagePagingBeans);
		getSession().put("userGoodsList", userGoodsList);
		getSession().put("pagePagingBeans", pagePagingBeans);
		return "success";
	}
	/**
	 * 分页：上一页
	 */
	@SuppressWarnings("unchecked")
	public String perviousPage(){
		pagePagingServiceImpl =new PagePagingServiceImpl();
		/*从session中获取登录用户信息*/
		HttpSession session =  getRequest().getSession();
		pagePagingBeans = (PagePagingBeans) session.getAttribute("pagePagingBeans");
		//计算下一页页码
		int i = pagePagingBeans.getCurrentPage()-1;
		if(i > 0){
			pagePagingBeans.setCurrentPage(i);
			//页面开始数据
			pagePagingBeans.setStartPage((pagePagingBeans.getCurrentPage()-1)*pagePagingBeans.getDataPage());
			//页面结束数据
			pagePagingBeans.setEndPage(pagePagingBeans.getCurrentPage()*pagePagingBeans.getDataPage());
		}
		//查询分页数据
		List<UserGoods> userGoodsList = pagePagingServiceImpl.selectSysAllGoods(pagePagingBeans);
		getSession().put("userGoodsList", userGoodsList);
		getSession().put("pagePagingBeans", pagePagingBeans);
		return "success";
	}
	//******************set,get方法**********************
	public SysUser getSysUser() {
		return sysUser;
	}

	public void setSysUser(SysUser sysUser) {
		this.sysUser = sysUser;
	}
	public PagePagingBeans getPagePagingBeans() {
		return pagePagingBeans;
	}
	public void setPagePagingBeans(PagePagingBeans pagePagingBeans) {
		this.pagePagingBeans = pagePagingBeans;
	}
	public PagePagingServiceImpl getPagePagingServiceImpl() {
		return pagePagingServiceImpl;
	}
	public void setPagePagingServiceImpl(PagePagingServiceImpl pagePagingServiceImpl) {
		this.pagePagingServiceImpl = pagePagingServiceImpl;
	}
	
}
