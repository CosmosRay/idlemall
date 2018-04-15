package com.idlemall.cosmos.util.page;

import java.util.List;

import org.hibernate.criterion.Order;

import com.idlemall.cosmos.util.SystemAttributes;



/**
 * <p>
 * Title: Page
 * </p>
 */
public class Page {

	private boolean lockPage = false;

	/** member: totalNo field type: int */
	private int totalNo; // �ܹ��ļ�¼��

	/** member: maxNo field type: int */
	private int maxNo; // һҳ����ʾ�ļ�¼��

	/** member: totalPageNo field type: int */
	private int totalPageNo; // �ܹ���ҳ��

	/** member: currentPageNo field type: int */
	private int currentPageNo; // ��ǰҳ��

	/** member: currentRecNo field type: int */
	private int currentRecNo; // ��ǰҳ��һ����¼��

	/** member: orderName field type: String */
	private String orderName; // ��ǰ������ֶ����

	/** member: orderValue field type: String */
	private String orderValue; // �����ֵ������or����or���ţ�

	/** member: lst field type: List */
	private List lst;

	/** member: totalRecNo field type: int */
	private int totalRecNo;

	/**
	 * method: getTotalRecNo
	 * 
	 * @return return type: int
	 */
	public int getTotalRecNo() {
		return totalRecNo;
	}

	/**
	 * constructor for class: Page
	 */
	public Page() {
		maxNo = SystemAttributes.PAGE_MAX_NO; 
		orderName = "";
		orderValue = "";
		currentPageNo = 1;
	}

	/**
	 * constructor for class: Page
	 * 
	 * @param maxNo
	 */
	public Page(int maxNo) {
		this.maxNo = maxNo;
		currentPageNo = 1;
	}

	/**
	 * constructor for class: Page
	 * 
	 * @param maxNo
	 * @param totalPage
	 * @param currentPageNo
	 * @param currentRecordNo
	 */
	public Page(int maxNo, int totalPage, int currentPageNo, int currentRecordNo) {
		this.maxNo = maxNo;
		this.totalPageNo = totalPage;
		this.currentPageNo = currentPageNo;
		this.currentRecNo = currentRecordNo;
	}

	/**
	 * ��õ�ǰҳ��
	 * 
	 * @return
	 */
	public int getCurrentPageNo() {
		return currentPageNo;
	}

	/**
	 * ���ÿҳ����¼��
	 * 
	 * @return
	 */
	public int getMaxNo() {
		return maxNo;
	}

	/**
	 * �������ҳ��
	 * 
	 * @return
	 */
	public int getTotalPageNo() {
		return totalPageNo;
	}

	/**
	 * ���õ�ǰҳ�� �����Զ����µ�ǰ ҳ���һ����¼�����һ����¼
	 * 
	 * @param i
	 */
	public void setCurrentPageNo(int i) {
		currentPageNo = i;
	}

	/**
	 * ������һҳ����¼��
	 * 
	 * @param i
	 */
	public void setMaxNo(int i) {
		maxNo = i;
	}

	/**
	 * ��������ҳ��
	 * 
	 * @param i
	 */
	public void setTotalPageNo(int i) {
		totalPageNo = i;
	}

	/**
	 * ��õ�ǰҳ���
	 * 
	 * @return
	 */
	public List getLst() {
		return lst;
	}

	/**
	 * ���õ�ǰҳ���
	 * 
	 * @param list
	 */
	public void setLst(List list) {
		this.lst = list;
	}

	/**
	 * ��õ�ǰҳ���ܼ�¼��
	 * 
	 * @return
	 */
	public int getCurrentPageRecords() {
		return lst == null ? 0 : (lst.size());
	}

	/**
	 * �����ܼ�¼��,�����Զ�������ҳ��
	 * 
	 * @param i
	 */
	public void setTotalRecNo(int i) {
		totalRecNo = i;
		if ((i - (i / maxNo) * maxNo) > 0) // ����ܼ�¼���Ƿ���maxNo��������������ټ�һҳ��
			totalPageNo = i / maxNo + 1;
		else
			totalPageNo = i / maxNo;

	}

	/**
	 * ��õ�ǰҳ��һ����¼��
	 * 
	 * @return
	 */
	public int getCurrentRecNo() {
		return currentRecNo;
	}

	/**
	 * ���õ�ǰҳ��һ����¼��
	 * 
	 * @param i
	 */
	public void setCurrentRecNo(int i) {
		currentRecNo = i;
	}

	/**
	 * ��������ֶ���
	 * 
	 * @return
	 */
	public String getOrderName() {
		return orderName;
	}

	/**
	 * ���������ֶ���
	 * 
	 * @param string
	 */
	public void setOrderName(String string) {
		orderName = string;
	}

	/**
	 * �������˳�� ����or����
	 * 
	 * @return
	 */
	public String getOrderValue() {
		return orderValue;
	}

	/**
	 * ��������˳�� ����or����
	 * 
	 * @param string
	 */
	public void setOrderValue(String string) {
		string = string.trim();
		if (string.equals("") || string.equals("asc") || string.equals("desc")) {
			orderValue = string;
		} else {
			orderValue = "";
		}
	}


	/**
	 * method: getOrder
	 * 
	 * @return return type: Order
	 */
	public Order getOrder() {
		Order order = null;
		if (orderName != null && orderName.length() > 0) {
			if (orderValue != null) {
				if (orderValue.equals("") || orderValue.equals("asc"))
					order = Order.asc(orderName);
				else if (orderValue.equals("desc"))
					order = Order.desc(orderName);
			}
		}
		return order;
	}

	/**
	 * method: getTotalNo
	 * 
	 * @return return type: int
	 */
	public int getTotalNo() {
		return totalNo;
	}

	/**
	 * method: setTotalNo
	 * 
	 * @param totalNo
	 *            return type: void
	 */
	public void setTotalNo(int totalNo) {
		this.totalNo = totalNo;
	}

	public boolean isLockPage() {
		return lockPage;
	}

	public void setLockPage(boolean lockPage) {
		this.lockPage = lockPage;
	}


}
