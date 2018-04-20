package com.idlemall.cosmos.model;

public class SysAdmin {

	private int sys_id;  //admin ID
	private String sys_name;  //admin名
	private String sys_pass;  //密码
	private int sys_valid;  //是否有效 1.有效  0.无效
	private String per_sttr1;  //扩展属性1
	private String per_sttr2;  //扩展属性2
	private String per_sttr3;  //扩展属性3
	public int getSys_id() {
		return sys_id;
	}
	public void setSys_id(int sys_id) {
		this.sys_id = sys_id;
	}
	public String getSys_name() {
		return sys_name;
	}
	public void setSys_name(String sys_name) {
		this.sys_name = sys_name;
	}
	public String getSys_pass() {
		return sys_pass;
	}
	public void setSys_pass(String sys_pass) {
		this.sys_pass = sys_pass;
	}
	public int getSys_valid() {
		return sys_valid;
	}
	public void setSys_valid(int sys_valid) {
		this.sys_valid = sys_valid;
	}
	public String getPer_sttr1() {
		return per_sttr1;
	}
	public void setPer_sttr1(String per_sttr1) {
		this.per_sttr1 = per_sttr1;
	}
	public String getPer_sttr2() {
		return per_sttr2;
	}
	public void setPer_sttr2(String per_sttr2) {
		this.per_sttr2 = per_sttr2;
	}
	public String getPer_sttr3() {
		return per_sttr3;
	}
	public void setPer_sttr3(String per_sttr3) {
		this.per_sttr3 = per_sttr3;
	}

	
}
