package com.idlemall.cosmos.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**商品详情
 * @author CosmosRay
 *
 */
@Entity
@Table(name="user_goods")
public class UserGoods {

	private int goods_id; //商品ID
	private int user_id; //用户ID
	private String goods_name; //商品名称
	private String goods_image; //图片路径
	private int goods_sort_id; //商品分类
	private int faculty_sort_id; //学院分类
	private String goods_desc; //商品描述
	private double goods_price; //商品价格
	private int goods_state; //商品状态
	private String goods_time; //发布时间
	private String goods_attr1; //扩展属性1
	private String goods_attr2; //扩展属性2
	private String goods_attr3; //扩展属性3
	
	@Id 
	@Column(name="GOODS_ID",length=7)
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}
	
	@Column(name="USER_ID",length=7)
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	
	@Column(name="GOODS_NAME",length=16)
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	@Column(name="GOODS_IMAGE",length=64)
	public String getGoods_image() {
		return goods_image;
	}
	public void setGoods_image(String goods_image) {
		this.goods_image = goods_image;
	}
	@Column(name="GOODS_SORT_ID",length=2)
	public int getGoods_sort_id() {
		return goods_sort_id;
	}
	public void setGoods_sort_id(int goods_sort_id) {
		this.goods_sort_id = goods_sort_id;
	}
	@Column(name="FACULTY_SORT_ID",length=2)
	public int getFaculty_sort_id() {
		return faculty_sort_id;
	}
	public void setFaculty_sort_id(int faculty_sort_id) {
		this.faculty_sort_id = faculty_sort_id;
	}
	@Column(name="GOODS_DESC",length=100)
	public String getGoods_desc() {
		return goods_desc;
	}
	public void setGoods_desc(String goods_desc) {
		this.goods_desc = goods_desc;
	}
	@Column(name="GOODS_PRICE",length=5)
	public double getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(double goods_price) {
		this.goods_price = goods_price;
	}
	@Column(name="GOODS_STATE",length=1)
	public int getGoods_state() {
		return goods_state;
	}
	public void setGoods_state(int goods_state) {
		this.goods_state = goods_state;
	}
	@Column(name="GOODS_TIME",length=32)
	public String getGoods_time() {
		return goods_time;
	}
	public void setGoods_time(String goods_time) {
		this.goods_time = goods_time;
	}
	@Column(name="GOODS_ATTR1",length=255)
	public String getGoods_attr1() {
		return goods_attr1;
	}
	public void setGoods_attr1(String goods_attr1) {
		this.goods_attr1 = goods_attr1;
	}
	@Column(name="GOODS_ATTR2",length=255)
	public String getGoods_attr2() {
		return goods_attr2;
	}
	public void setGoods_attr2(String goods_attr2) {
		this.goods_attr2 = goods_attr2;
	}
	@Column(name="GOODS_ATTR3",length=255)
	public String getGoods_attr3() {
		return goods_attr3;
	}
	public void setGoods_attr3(String goods_attr3) {
		this.goods_attr3 = goods_attr3;
	}

	
}
