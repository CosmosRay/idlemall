package com.idlemall.cosmos.util.page;


public class PageActionDispatcher {

	public static int comm_page_pageButton(Page page, int button) {
		int index = page.getCurrentPageNo();
		int pages = page.getTotalPageNo();
		// [��ҳ]����
		if (button == 1) {
			index = 1;
		}
		// [��һҳ]
		if (button == 2) {
			index--;
		}
		// [��һҳ]
		if (button == 3) {
			index++;
		}
		// [βҳ]
		if (button == 4) {
			index = pages;
		}
		return comm_page_gotoPage(index);
	}

	public static int comm_page_gotoPage(int index) {

		if (index < 1) {
			index = 1;
		}
		return index;
	}
}
