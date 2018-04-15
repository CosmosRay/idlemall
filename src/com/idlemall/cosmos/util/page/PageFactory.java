package com.idlemall.cosmos.util.page;

import java.util.ArrayList;
import java.util.List;


/**
 * <p>
 * Title: PageFactory
 * </p>
 */
public class PageFactory {

	/**
	 * method: createPage
	 * 
	 * @param page
	 * @param totalRecords
	 * @return return type: Page
	 */
	public static Page createPage(Page page, int totalRecords) {
		if (page == null) {
			page = new Page();
		} else {
			page.setTotalNo(totalRecords);
		}
		return createPage(page);
	}

	public static Page createPage(Page page) {
		int maxNo = page.getMaxNo();
		int currentPageNo = page.getCurrentPageNo();
		int totalRecNo = page.getTotalNo();

		maxNo = getMaxNo(maxNo);
		int totalPage = getTotalPage(maxNo, totalRecNo);
		currentPageNo = getCurrentPage(currentPageNo, totalPage);
		int currentRecordNo = getCurrentRecordNo(maxNo, currentPageNo);

		page.setMaxNo(maxNo);
		page.setTotalPageNo(totalPage);
		page.setCurrentPageNo(currentPageNo);
		page.setCurrentRecNo(currentRecordNo);

		return page;
	}

	public static Page createPage(List fulllist, Page page) {

		page = PageFactory.createPage(page, fulllist.size());
		int currentRecNo = page.getCurrentRecNo();
		int maxNo = page.getMaxNo();

		List pagelist = new ArrayList();

		for (int i = (currentRecNo); i < (currentRecNo + maxNo); i++) {
			if (i == (fulllist.size() - 1))
				break;
			pagelist.add(fulllist.get(i));
		}

		page.setLst(pagelist);

		return page;
	}

	/**
	 * method: getMaxNo
	 * 
	 * @param everyPage
	 * @return return type: int
	 */
	private static int getMaxNo(int everyPage) {
		return everyPage == 0 ? 10 : everyPage;
	}

	/**
	 * method: getCurrentPage
	 * 
	 * @param currentPage
	 * @param totalPage
	 * @return return type: int
	 */
	private static int getCurrentPage(int currentPage, int totalPage) {
		currentPage = currentPage == 0 ? 1 : currentPage;
		return currentPage > totalPage ? totalPage : currentPage;
	}

	/**
	 * method: getCurrentRecordNo
	 * 
	 * @param everyPage
	 * @param currentPage
	 * @return return type: int
	 */
	private static int getCurrentRecordNo(int everyPage, int currentPage) {
		if (currentPage == 0) {
			return 0;
		}
		return (currentPage - 1) * everyPage;
	}

	/**
	 * method: getTotalPage
	 * 
	 * @param everyPage
	 * @param totalRecords
	 * @return return type: int
	 */
	private static int getTotalPage(int everyPage, int totalRecords) {
		int totalPage = 0;

		if (totalRecords % everyPage == 0)
			totalPage = totalRecords / everyPage;
		else
			totalPage = totalRecords / everyPage + 1;

		return totalPage;
	}

}
