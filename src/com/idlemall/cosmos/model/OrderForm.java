package com.idlemall.cosmos.model;

public class OrderForm {

	private int order_id;  //订单ID
	private int goods_id;  //商品ID
	private int user1_id;  //卖方ID
	private int user2_id;  //买方ID
	private int trading_sort; //交易方式  1.自取 2.托管
	private String trading_time;  //交易时间
	private int sys_id;  //确认处理人
	private String notarize_time;  //确认时间
	private String order_attr1;  //
	private String order_attr2;  //
	private String order_attr3;  //
	private String order_attr4;  //
	private String order_attr5;  //
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}
	public int getUser1_id() {
		return user1_id;
	}
	public void setUser1_id(int user1_id) {
		this.user1_id = user1_id;
	}
	public int getUser2_id() {
		return user2_id;
	}
	public void setUser2_id(int user2_id) {
		this.user2_id = user2_id;
	}
	public int getTrading_sort() {
		return trading_sort;
	}
	public void setTrading_sort(int trading_sort) {
		this.trading_sort = trading_sort;
	}
	public String getTrading_time() {
		return trading_time;
	}
	public void setTrading_time(String trading_time) {
		this.trading_time = trading_time;
	}
	public int getSys_id() {
		return sys_id;
	}
	public void setSys_id(int sys_id) {
		this.sys_id = sys_id;
	}
	public String getNotarize_time() {
		return notarize_time;
	}
	public void setNotarize_time(String notarize_time) {
		this.notarize_time = notarize_time;
	}
	public String getOrder_attr1() {
		return order_attr1;
	}
	public void setOrder_attr1(String order_attr1) {
		this.order_attr1 = order_attr1;
	}
	public String getOrder_attr2() {
		return order_attr2;
	}
	public void setOrder_attr2(String order_attr2) {
		this.order_attr2 = order_attr2;
	}
	public String getOrder_attr3() {
		return order_attr3;
	}
	public void setOrder_attr3(String order_attr3) {
		this.order_attr3 = order_attr3;
	}
	public String getOrder_attr4() {
		return order_attr4;
	}
	public void setOrder_attr4(String order_attr4) {
		this.order_attr4 = order_attr4;
	}
	public String getOrder_attr5() {
		return order_attr5;
	}
	public void setOrder_attr5(String order_attr5) {
		this.order_attr5 = order_attr5;
	}

	
}
