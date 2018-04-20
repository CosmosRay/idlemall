package com.idlemall.cosmos.model.vo;

/**分页数据
 * @author CosmosRay
 *	
 */
public class PagePagingBeans {
	private int totalNumber;//总数据量
	private int dataPage;//页面大小
	private int totalPage;//总页面数
	private int currentPage;//当前页面
	private int startPage;//查询开始数据
	private int endPage;//查询结束数据
	private int perviousPage;//上一页
	private int nextPage; //下一页
	
	
	
	
	public PagePagingBeans() {
		super();
	}
	
	public PagePagingBeans(int totalNumber, int dataPage, int totalPage, int currentPage, int startPage, int endPage,
			int perviousPage, int nextPage) {
		super();
		this.totalNumber = totalNumber;
		this.dataPage = dataPage;
		this.totalPage = totalPage;
		this.currentPage = currentPage;
		this.startPage = startPage;
		this.endPage = endPage;
		this.perviousPage = perviousPage;
		this.nextPage = nextPage;
	}

	public int getTotalNumber() {
		return totalNumber;
	}
	public void setTotalNumber(int totalNumber) {
		this.totalNumber = totalNumber;
	}
	public int getDataPage() {
		return dataPage;
	}
	public void setDataPage(int dataPage) {
		this.dataPage = dataPage;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getPerviousPage() {
		return perviousPage;
	}
	public void setPerviousPage(int perviousPage) {
		this.perviousPage = perviousPage;
	}
	public int getNextPage() {
		return nextPage;
	}
	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}
	
	
}
