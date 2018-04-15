package com.idlemall.cosmos.action.base;
import java.util.ArrayList;
import java.util.List;

import com.idlemall.cosmos.util.page.Page;
import com.idlemall.cosmos.util.page.PageActionDispatcher;
import com.idlemall.cosmos.util.page.PageComponentBean;
import com.idlemall.cosmos.util.page.PageFactory;


/**
 * @author Administrator
 *
 */
public class PaginationAction extends BaseAction {
	
	/**
	 * 
	 */
	/** member: serialVersionUID field type: long */
	private static final long serialVersionUID = 1L;

	/** member: page field type: Page */
	private Page page = new Page();

	/** member: gotoPageButton field type: PageComponentBean */
	private PageComponentBean gotoPageButton = new PageComponentBean(
			"comm_page_gtp", "comm_page_gtp", "", "");

	/** member: firstPageLabel field type: String */
	private String firstPageLabel = "[首页]";

	/** member: lastPageLabel field type: String */
	private String lastPageLabel = "[尾页]";

	/** member: prevPageLabel field type: String */
	private String prevPageLabel = "[上一页]";

	/** member: nextPageLabel field type: String */
	private String nextPageLabel = "[下一页]";

	/** member: firstPageLabel_g field type: String */
	private String firstPageLabel_g = "[首页]";

	/** member: lastPageLabel_g field type: String */
	private String lastPageLabel_g = "[尾页]";

	/** member: prevPageLabel_g field type: String */
	private String prevPageLabel_g = "[上一页]";

	/** member: nextPageLabel_g field type: String */
	private String nextPageLabel_g = "[下一页]";

	/** member: hiddenIndexId field type: String */
	private String hiddenIndexId = "indexid";

	/** member: hiddenIndexName field type: String */
	private String hiddenIndexName = "page.currentPageNo";

	private String page_query_actionName = "";
	
	private String sysFunc;//保存当前页面资源，用于页面生成操作按钮
	
	/**
	 * method: getPage
	 * 
	 * @return return type: Page
	 */
	public Page getPage() {
		return page;
	}

	/**
	 * method: setPage
	 * 
	 * @param page
	 *            return type: void
	 */
	public void setPage(Page page) {
		this.page = page;
	}

	/**
	 * 默认的js输出 method: outPutStatndardJs
	 * 
	 * @return 输出时注意escape为false return type: String
	 */
	public String outPutStatndardJs() {
		return outPutStatndardJs("forms[0]");
	}

	public static void main(String args[]) {
		PaginationAction pageaction = new PaginationAction();

		Page page = new Page();
		page.setCurrentPageNo(1);
		page = PageFactory.createPage(page, 25);
		pageaction.setPage(page);
	}

	/**
	 * 默认的js输出,可自定义formname method: outPutStatndardJs
	 * 
	 * @param formName
	 * @return 输出时注意escape为false return type: String
	 */
	public String outPutStatndardJs(String formName) {
		StringBuffer buf = new StringBuffer("\n");
		 //去掉字符串左右的空格
		buf.append("String.prototype.trim=function(){\n");
		buf.append("   return this.replace(/(^\\s*)|(\\s*$)/g, '');\n");
		buf.append("}\n");
		buf.append("function comm_page_pageButton(button){\n");
		buf.append("	var index=" + page.getCurrentPageNo() + ";\n");
		buf.append("	var pages=" + page.getTotalPageNo() + ";\n");
		buf.append("	//" + firstPageLabel + "按下\n");
		buf.append("	if(button==1){\n");
		buf.append("		index=1;\n");
		buf.append("	}\n");
		buf.append("	//" + prevPageLabel + "\n");
		buf.append("	if(button==2){\n");
		buf.append("		index--;\n");
		buf.append("	}\n");
		buf.append("	//" + nextPageLabel + "\n");
		buf.append("	if(button==3){\n");
		buf.append("		index++;\n");
		buf.append("	}\n");
		buf.append("	//" + lastPageLabel + "\n");
		buf.append("	if(button==4){\n");
		buf.append("		index=pages;\n");
		buf.append("	}\n");
		buf.append("	comm_page_gotoPage(index);\n");
		buf.append("}\n");
		buf.append("\n");
		buf.append("function comm_page_gotoPage(index){\n");
		buf.append("	var maxNo = document.getElementById('maxNo');\n");
		buf.append("	var maxNo_temp = document.getElementById('maxNo_temp');\n");
		buf.append("	if(isNaN(index)||(index+'').trim()==''){\n");
		buf.append("		index=1;\n");
		buf.append("	}\n");
		buf.append("	index = parseInt(index)\n");
		buf.append("	if(index<1){\n");
		buf.append("		index=1;\n");
		buf.append("	}\n");
		
		buf.append("	if(isNaN(maxNo.value)||maxNo.value.trim()==''){\n");
		buf.append("		maxNo.value = maxNo_temp.value;\n");
		buf.append("	}\n");
		
		//buf.append("	document." + formName + ".reset();\n");
		buf.append("	document.getElementById('" + hiddenIndexId
				+ "').value=index;\n");
		buf.append("  	document." + formName + ".submit();\n");
		buf.append("}\n");
		buf.append("\n");
		return buf.toString();
	}

	/**
	 * 输出默认的导航条，可与默认的js输出相匹配
	 * 
	 * @param cols
	 * @return
	 */
	public String outPutStandardNavBar(int cols) {
		return outPutStandardNavBar(cols, false);
	}

	/**
	 * 输出默认的导航条，可与默认的js输出相匹配
	 * 
	 * @param cols
	 * @return
	 */
	public String outPutStandardNavBar(int cols, boolean fill) {
		return outPutNavBar(cols, "comm_page_pageButton(1)",
				"comm_page_pageButton(4)", "comm_page_pageButton(2)",
				"comm_page_pageButton(3)", "comm_page_gotoPage("
						+ gotoPageButton.getId() + ".value)", fill);
	}

	/**
	 * 这个方法输出翻页使用的导航栏
	 * 
	 * @param cols
	 *            需要分页的table的colspan
	 * @param firstPMethod
	 *            按下‘首页’按钮以后运行的js方法
	 * @param lastPMethod
	 *            按下‘末页’按钮以后运行的js方法
	 * @param prevPMethod
	 *            按下‘上一页’按钮以后运行的js方法
	 * @param nextPMethod
	 *            按下‘下一页’按钮以后运行的js方法
	 * @param gotoMethod
	 *            按下‘转’按钮以后运行的js方法
	 * @return 导航栏字符串 输出时注意escape为false
	 */
	public String outPutNavBar(int cols, String firstPMethod,
			String lastPMethod, String prevPMethod, String nextPMethod,
			String gotoMethod, boolean fill) {

		int index = page.getCurrentPageNo();
		int pages = page.getTotalPageNo();

		boolean firstPage = false;
		boolean lastPage = false;
		String pageMarks = "&nbsp;&nbsp;<span style='font-size:13px'>共"+page.getTotalNo()+"条记录，当前第" + index + "/"
				+ pages + "页</span> ";

		StringBuffer navBar = new StringBuffer("");
		
		if (fill) {
			int totalRecord = page.getCurrentPageRecords();
			int max = page.getMaxNo();

			int gap = max - totalRecord;

			if (gap < max) {
				for (int i = 0; i < gap; i++) {
					navBar.append("<tr>");
					for (int j = 0; j < cols; j++) {
						navBar.append("<td>　</td>");
					}
					navBar.append("</tr>");
				}
			}
		}

		navBar.append("<tr class='linePage' height=22 algin=\"left\">");
		navBar.append("<td colspan=\"" + cols + "\">");
		navBar.append(pageMarks);
		if (index == 1) {
			firstPage = true;
		}

		if (index == pages || pages == 0) {
			lastPage = true;
		}

		if ((firstPage && lastPage) || pages == 0) {// 只有一页或者没有数据的情况
			navBar.append("" + firstPageLabel_g + "&nbsp;" + prevPageLabel_g
					+ "&nbsp;" + nextPageLabel_g + "&nbsp;" + lastPageLabel_g
					+ "&nbsp;");
			navBar.append("<input id='" + gotoPageButton.getId()
					+ "' type=text maxlength=10 style='width:40px;border:1px solid #c8cece' value='");
			navBar.append(index);
			navBar.append("'>");
			navBar.append("<input type=button style='height:20px;margin-left:3px;padding-top:2px;width:30px;border:1px solid #c8cece' value='转' onclick='" + gotoMethod
					+ "' disabled>");
		} else if (firstPage) {// 第一页的情况
			navBar.append("" + firstPageLabel_g + "&nbsp;" + prevPageLabel_g
					+ "&nbsp;");
			navBar.append("<a href='javascript:" + nextPMethod
					+ "' border='0'>" + nextPageLabel + "</a>&nbsp;");
			navBar.append("<a href='javascript:" + lastPMethod
					+ "' border='0'>" + lastPageLabel + "</a>&nbsp;");
			navBar.append("<input id='" + gotoPageButton.getId()
					+ "' type=text style='width:40px;border:1px solid #c8cece' maxlength=10 value='");
			navBar.append(index);
			navBar.append("'><input type=button style='height:20px;margin-left:3px;padding-top:2px;width:30px;border:1px solid #c8cece' value='转' onclick='"	+ gotoMethod + "'>");
		} else if (lastPage) {// 尾页的情况
			navBar.append("<a href='javascript:" + firstPMethod
					+ "' border='0'>" + firstPageLabel + "</a>&nbsp;");
			navBar.append("<a href='javascript:" + prevPMethod
					+ "' border='0'>" + prevPageLabel + "</a>&nbsp;");
			navBar.append("" + nextPageLabel_g + "&nbsp;" + lastPageLabel_g
					+ "&nbsp;");
			navBar.append("<input id='" + gotoPageButton.getId()
					+ "' type=text style='width:40px;border:1px solid #c8cece' maxlength=10 value='");
			navBar.append(index);
			navBar.append("'>");
			navBar.append("<input type=button style='height:20px;margin-left:3px;padding-top:2px;width:30px;border:1px solid #c8cece' value='转' onclick='" + gotoMethod
					+ "'>");
		} else if (index > 0 && index < pages) {// 中间页的情况
			navBar.append("<a href='javascript:" + firstPMethod
					+ "' border='0'>" + firstPageLabel + "</a>&nbsp;");
			navBar.append("<a href='javascript:" + prevPMethod
					+ "' border='0'>" + prevPageLabel + "</a>&nbsp;");
			navBar.append("<a href='javascript:" + nextPMethod
					+ "' border='0'>" + nextPageLabel + "</a>&nbsp;");
			navBar.append("<a href='javascript:" + lastPMethod
					+ "' border='0'>" + lastPageLabel + "</a>&nbsp;");
			navBar.append("<input id='" + gotoPageButton.getId()
					+ "' type=text style='width:40px;border:1px solid #c8cece' maxlength=10 value='");
			navBar.append(index);
			navBar.append("'><input type=button style='height:25px;margin-left:3px;padding-top:2px;width:33px;border:1px solid #c8cece' value='转' onclick='"
					+ gotoMethod + "'>");
		}
		navBar.append("&nbsp;&nbsp;&nbsp;每页显示");
		navBar.append("<input type='text' maxlength=10 style='width:40px;border:1px solid #c8cece' id='maxNo' name='page.maxNo' value='"+page.getMaxNo()+"'>条");
		//解决输入最大条数为空的情况
		navBar.append("<input type='hidden' maxlength=10 style='width:40px;border:1px solid #c8cece' id='maxNo_temp' value='"+page.getMaxNo()+"'>");
		navBar.append("<input type='button' style='height:22px;margin-left:3px;padding-top:2px;width:33px;border:1px solid #c8cece' value='确定' onclick='"+gotoMethod+"'>");
		navBar.append("</td></tr>");
		return navBar.toString();
	}

	/**
	 * 设置“转”按钮的id属性
	 * 
	 * @param buttonId
	 */
	public void setGotoPageButtonId(String buttonId) {
		this.gotoPageButton.setId(buttonId);
	}

	/**
	 * 获得“转”按钮的id属性
	 * 
	 * @return
	 */
	public String getGotoPageButtonId() {
		return gotoPageButton.getId();
	}

	/**
	 * 设置“转”按钮的onclick事件
	 * 
	 * @deprecated
	 * @param content
	 */
	public void setGoToPageOnClick(String content) {
		this.gotoPageButton.setOnclick(content);
	}

	/**
	 * @param methodName
	 * @deprecated
	 * @param args
	 */
	public void setGoToPageOnClick(String methodName, String args) {
		setGoToPageOnClick(methodName + "(" + args + ")");
	}

	/**
	 * 这个方法输出改变页码所需要的隐藏字段
	 * 
	 * @return 输出时注意escape为false
	 */
	public String outPutPageVariables() {
		StringBuffer buf = new StringBuffer("");
		buf.append("<input type='hidden' id='" + hiddenIndexId + "' name='"
				+ hiddenIndexName + "' value='" + page.getCurrentPageNo()
				+ "'/>");
		buf.append("<input type='hidden' name='page.orderName' value='"
				+ page.getOrderName() + "'/>");
		buf.append("<input type='hidden' name='page.orderValue' value='"
				+ page.getOrderValue() + "'/>");
		return buf.toString();
	}

	public String outPutUrlVariables() {
		StringBuffer buf = new StringBuffer("");
		buf.append("?" + hiddenIndexName + "=" + page.getCurrentPageNo());
		buf.append("&page.orderName=" + page.getOrderName());
		buf.append("&page.orderValue=" + page.getOrderValue());
		return buf.toString();
	}

	/**
	 * 获得首页的按钮label
	 * 
	 * @return
	 */
	public String getFirstPageLabel() {
		return firstPageLabel;
	}

	/**
	 * 设置首页的按钮label
	 * 
	 * @param firstPageLabel
	 */
	public void setFirstPageLabel(String firstPageLabel) {
		this.firstPageLabel = firstPageLabel;
	}

	/**
	 * 获得尾页的按钮label
	 * 
	 * @return
	 */
	public String getLastPageLabel() {
		return lastPageLabel;
	}

	/**
	 * 设置尾页的按钮label
	 * 
	 * @param lastPageLabel
	 */
	public void setLastPageLabel(String lastPageLabel) {
		this.lastPageLabel = lastPageLabel;
	}

	/**
	 * 获得下一页的按钮label
	 * 
	 * @return
	 */
	public String getNextPageLabel() {
		return nextPageLabel;
	}

	/**
	 * 设置下一页的按钮label
	 * 
	 * @param nextPageLabel
	 */
	public void setNextPageLabel(String nextPageLabel) {
		this.nextPageLabel = nextPageLabel;
	}

	/**
	 * 获得上一页的按钮label
	 * 
	 * @return
	 */
	public String getPrevPageLabel() {
		return prevPageLabel;
	}

	/**
	 * 设置上一页的按钮label
	 * 
	 * @param prevPageLabel
	 */
	public void setPrevPageLabel(String prevPageLabel) {
		this.prevPageLabel = prevPageLabel;
	}

	/**
	 * 获得表单隐藏字段id
	 * 
	 * @return
	 */
	public String getHiddenIndexId() {
		return hiddenIndexId;
	}

	/**
	 * 设置表单隐藏字段id
	 * 
	 * @param hiddenIndexId
	 */
	public void setHiddenIndexId(String hiddenIndexId) {
		this.hiddenIndexId = hiddenIndexId;
	}

	/**
	 * 获得表单隐藏字段name
	 * 
	 * @return
	 */
	public String getHiddenIndexName() {
		return hiddenIndexName;
	}

	/**
	 * 设置表单隐藏字段name
	 * 
	 * @param hiddenIndexName
	 */
	public void setHiddenIndexName(String hiddenIndexName) {
		this.hiddenIndexName = hiddenIndexName;
	}

	/**
	 * method: getFirstPageLabel_g
	 * 
	 * @return return type: String
	 */
	public String getFirstPageLabel_g() {
		return firstPageLabel_g;
	}

	/**
	 * method: setFirstPageLabel_g
	 * 
	 * @param firstPageLabel_g
	 *            return type: void
	 */
	public void setFirstPageLabel_g(String firstPageLabel_g) {
		this.firstPageLabel_g = firstPageLabel_g;
	}

	/**
	 * method: getLastPageLabel_g
	 * 
	 * @return return type: String
	 */
	public String getLastPageLabel_g() {
		return lastPageLabel_g;
	}

	/**
	 * method: setLastPageLabel_g
	 * 
	 * @param lastPageLabel_g
	 *            return type: void
	 */
	public void setLastPageLabel_g(String lastPageLabel_g) {
		this.lastPageLabel_g = lastPageLabel_g;
	}

	/**
	 * method: getNextPageLabel_g
	 * 
	 * @return return type: String
	 */
	public String getNextPageLabel_g() {
		return nextPageLabel_g;
	}

	/**
	 * method: setNextPageLabel_g
	 * 
	 * @param nextPageLabel_g
	 *            return type: void
	 */
	public void setNextPageLabel_g(String nextPageLabel_g) {
		this.nextPageLabel_g = nextPageLabel_g;
	}

	/**
	 * method: getPrevPageLabel_g
	 * 
	 * @return return type: String
	 */
	public String getPrevPageLabel_g() {
		return prevPageLabel_g;
	}

	/**
	 * method: setPrevPageLabel_g
	 * 
	 * @param prevPageLabel_g
	 *            return type: void
	 */
	public void setPrevPageLabel_g(String prevPageLabel_g) {
		this.prevPageLabel_g = prevPageLabel_g;
	}

	private String page_command = "";

	private String page_index = "";

	private boolean Cinit = false;

	private boolean Iinit = false;

	protected String nextPageName;

	public void setPage_command(String command) {
		this.page_command = command;
		Cinit = true;
		if (Iinit) {
			dispatch(page, page_command, page_index);
		}
	}

	public void setPage_index(String pageindex) {
		page_index = pageindex;
		Iinit = true;
		if (Cinit) {
			dispatch(page, page_command, page_index);
		}
	}

	public Page dispatch(Page page, String action, String index) {
		int command = Integer.parseInt(action);
		int pageindex = Integer.parseInt(index);
		if (command != 5) {
			page.setCurrentPageNo(pageindex);
			page.setCurrentPageNo(PageActionDispatcher.comm_page_pageButton(
					page, command));
			page.setLockPage(true);
		} else {
			page.setCurrentPageNo(PageActionDispatcher
					.comm_page_gotoPage(pageindex));
			page.setLockPage(true);
		}
		return null;
	}

	public String outPutWapStandardNavBar(int cols, String page_query_actionName) {
		return outPutWapStandardNavBar(cols, page_query_actionName, false);
	}

	public String outPutWapStandardNavBar(int cols,
			String page_query_actionName, boolean fill) {
		this.page_query_actionName = page_query_actionName;
		return outPutWapNavBar(cols, "?page.currentPageNo="
				+ page.getCurrentPageNo() + "&page_command=1"
				+ "&page.totalPageNo=" + page.getTotalPageNo() + "&page_index="
				+ page.getCurrentPageNo(), "?page.currentPageNo="
				+ page.getCurrentPageNo() + "&page_command=4"
				+ "&page.totalPageNo=" + page.getTotalPageNo() + "&page_index="
				+ page.getCurrentPageNo(), "?page.currentPageNo="
				+ page.getCurrentPageNo() + "&page_command=2"
				+ "&page.totalPageNo=" + page.getTotalPageNo() + "&page_index="
				+ page.getCurrentPageNo(), "?page.currentPageNo="
				+ page.getCurrentPageNo() + "&page_command=3"
				+ "&page.totalPageNo=" + page.getTotalPageNo() + "&page_index="
				+ page.getCurrentPageNo(), "?page.currentPageNo="
				+ page.getCurrentPageNo() + "&page_command=5"
				+ "&page.totalPageNo=" + page.getTotalPageNo() + "&page_index="
				+ page.getCurrentPageNo(), fill);
	}

	public String outPutWapNavBar(int cols, String firstPurl, String lastPurl,
			String prevPurl, String nextPurl, String gotourl, boolean fill) {
		int index = page.getCurrentPageNo();
		int pages = page.getTotalPageNo();
		boolean firstPage = false;
		boolean lastPage = false;
		String pageMarks = "&nbsp;&nbsp;<span style='font-size:13px'>" + index + "/"
				+ pages + " 合计:" + page.getTotalNo() + " </span>";

		StringBuffer navBar = new StringBuffer("");

		if (fill) {
			int totalRecord = page.getCurrentPageRecords();
			int max = page.getMaxNo();

			int gap = max - totalRecord;

			if (gap < max) {
				for (int i = 0; i < gap; i++) {
					navBar.append("<tr>");
					for (int j = 0; j < cols; j++) {
						navBar.append("<td>　</td>");
					}
					navBar.append("</tr>");
				}
			}
		}

		navBar.append("<tr class=\"oddline\" height=22>");
		navBar.append("<td colspan=\"" + cols + "\">");
		if (index == 1) {
			firstPage = true;
		}

		if (index == pages || pages == 0) {
			lastPage = true;
		}

		if ((firstPage && lastPage) || pages == 0) {// 只有一页或者没有数据的情况
			navBar.append("" + firstPageLabel_g + "&nbsp;" + prevPageLabel_g
					+ "&nbsp;" + nextPageLabel_g + "&nbsp;" + lastPageLabel_g
					+ "&nbsp;");
			navBar.append("<input id='" + gotoPageButton.getId()
					+ "' type=text size=3 maxlength=4 value='");
			navBar.append(index);
			navBar.append("'>");
			navBar.append("[转]");
		} else if (firstPage) {// 第一页的情况
			navBar.append("" + firstPageLabel_g + "&nbsp;" + prevPageLabel_g
					+ "&nbsp;");

			navBar.append("");
			navBar.append("<a href='" + page_query_actionName + nextPurl
					+ "' border='0'>" + nextPageLabel + "</a>&nbsp;");
			navBar.append("<a href='" + page_query_actionName + lastPurl
					+ "' border='0'>" + lastPageLabel + "</a>&nbsp;");
			navBar.append("<input id='" + gotoPageButton.getId()
					+ "' type=text size=3 maxlength=4 value='");
			navBar.append(index);
			navBar.append("'><a href='" + page_query_actionName + gotourl
					+ "'>[转]</a>");
		} else if (lastPage) {// 尾页的情况
			navBar.append("<a href='" + page_query_actionName + firstPurl
					+ "' border='0'>" + firstPageLabel + "</a>&nbsp;");
			navBar.append("<a href='" + page_query_actionName + prevPurl
					+ "' border='0'>" + prevPageLabel + "</a>&nbsp;");
			navBar.append("" + nextPageLabel_g + "&nbsp;" + lastPageLabel_g
					+ "&nbsp;");
			navBar.append("<input id='" + gotoPageButton.getId()
					+ "' type=text size=3 maxlength=4 value='");
			navBar.append(index);
			navBar.append("'>");
			navBar.append("<a href='" + page_query_actionName + gotourl
					+ "'>[转]</a>");
		} else if (index > 0 && index < pages) {// 中间页的情况
			navBar.append("<a href='" + page_query_actionName + firstPurl
					+ "' border='0'>" + firstPageLabel + "</a>&nbsp;");
			navBar.append("<a href='" + page_query_actionName + prevPurl
					+ "' border='0'>" + prevPageLabel + "</a>&nbsp;");
			navBar.append("<a href='" + page_query_actionName + nextPurl
					+ "' border='0'>" + nextPageLabel + "</a>&nbsp;");
			navBar.append("<a href='" + page_query_actionName + lastPurl
					+ "' border='0'>" + lastPageLabel + "</a>&nbsp;");
			navBar.append("<input id='" + gotoPageButton.getId()
					+ "' type=text size=3 maxlength=4 value='");
			navBar.append(index);
			navBar.append("'><a href='" + page_query_actionName + gotourl
					+ "'>[转]</a>");
		}
		navBar.append(pageMarks);
		navBar.append("</td></tr>");
		return navBar.toString();
	}

	/**
	 * fireNextPage 
	 * @param 
	 * @return void
	 * @throws Exception 
	 *//*
	protected void fireNextPage(String currentPage) {
		//从Session中获取名称设立登记页面跳转List
		List pagenamelist = (List) this.getSession().getAttribute(SystemAttributes.NAMECREATEPAGELIST);
		//获取下一页面名称
		setNextPageName(ListUtil.getNextItem(pagenamelist,currentPage));
	}*/

	public String getPage_query_actionName() {
		return page_query_actionName;
	}

	public void setPage_query_actionName(String page_query_actionName) {
		this.page_query_actionName = page_query_actionName;
	}


	/**
	 * @return the nextPageName
	 */
	public String getNextPageName() {
		return nextPageName;
	}

	/**
	 * @param nextPageName the nextPageName to set
	 */
	public void setNextPageName(String nextPageName) {
		this.nextPageName = nextPageName;
	}

	public String getSysFunc() {
		return sysFunc;
	}

	public void setSysFunc(String sysFunc) {
		this.sysFunc = sysFunc;
	}
	/**
	 * 对传入的list执行分页处理	
	 * @param list
	 * @return
	 */
	public Page getListPage(List list){
		page = PageFactory.createPage(page, list.size());	
		int offset = page.getCurrentRecNo();
		int length = page.getMaxNo();		
		ArrayList viewList=new ArrayList();
		int maxNum=0;
		if((offset+length)>list.size()){
			maxNum=list.size();
		}else{
			maxNum=offset+length;
		}
		for(int i=offset;i<maxNum;i++){
		viewList.add(list.get(i));	
		}
		page.setLst(viewList);
		return page;
	}
	/**
	 * 传入list进行分页	
	 * @param list
	 */
	public void setPageList(List list){
		if(list!=null){
			setPage(getListPage(list));
		}
	}
	
	
}
