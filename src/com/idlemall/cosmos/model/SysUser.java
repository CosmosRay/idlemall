package com.idlemall.cosmos.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**用户详情
 * @author CosmosRay
 *
 */
@Entity
@Table(name="sys_user")
public class SysUser {

	private int user_id; //用户ID
	private String user_name; //用户名
	private String user_pass; //用户密码
	private int user_gender; //性别    1.男   0.女
	private String user_class; //年级
	private int faculty_sort_id; //学院
	private String user_address; //地址
	private String user_phone; //手机号
	private String user_qq; //QQ号
	private String user_time; //注册时间
	private int user_sale; //发布商品数
	private int user_buy; //购买商品数
	private int user_credit; //信用积分
	private String user_attr1; //扩展属性1
	private String user_attr2; //扩展属性2
	private String user_attr3; //扩展属性3
	
	
	@Id 
	@Column(name="USER_ID",length=7)
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	@Column(name="USER_NAME",length=32)
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	@Column(name="USER_PASS",length=50)
	public String getUser_pass() {
		return user_pass;
	}
	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}
	@Column(name="USER_GENDER",length=1)
	public int getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(int user_gender) {
		this.user_gender = user_gender;
	}
	@Column(name="USER_CLASS",length=32)
	public String getUser_class() {
		return user_class;
	}
	public void setUser_class(String user_class) {
		this.user_class = user_class;
	}
	@Column(name="FACULTY_SORT_ID",length=2)
	public int getFaculty_sort_id() {
		return faculty_sort_id;
	}
	public void setFaculty_sort_id(int faculty_sort_id) {
		this.faculty_sort_id = faculty_sort_id;
	}
	@Column(name="USER_ADDRESS",length=64)
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	@Column(name="USER_PHONE",length=32)
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	@Column(name="USER_QQ",length=32)
	public String getUser_qq() {
		return user_qq;
	}
	public void setUser_qq(String user_qq) {
		this.user_qq = user_qq;
	}
	@Column(name="USER_TIME",length=32)
	public String getUser_time() {
		return user_time;
	}
	public void setUser_time(String user_time) {
		this.user_time = user_time;
	}
	@Column(name="USER_SALE",length=32)
	public int getUser_sale() {
		return user_sale;
	}
	public void setUser_sale(int user_sale) {
		this.user_sale = user_sale;
	}
	@Column(name="USER_BUY",length=32)
	public int getUser_buy() {
		return user_buy;
	}
	public void setUser_buy(int user_buy) {
		this.user_buy = user_buy;
	}
	@Column(name="USER_CREDIT",length=3)
	public int getUser_credit() {
		return user_credit;
	}
	public void setUser_credit(int user_credit) {
		this.user_credit = user_credit;
	}
	@Column(name="USER_ATTR1",length=255)
	public String getUser_attr1() {
		return user_attr1;
	}
	public void setUser_attr1(String user_attr1) {
		this.user_attr1 = user_attr1;
	}
	@Column(name="USER_ATTR2",length=255)
	public String getUser_attr2() {
		return user_attr2;
	}
	public void setUser_attr2(String user_attr2) {
		this.user_attr2 = user_attr2;
	}
	@Column(name="USER_ATTR3",length=255)
	public String getUser_attr3() {
		return user_attr3;
	}
	public void setUser_attr3(String user_attr3) {
		this.user_attr3 = user_attr3;
	}
	
	
	
}
