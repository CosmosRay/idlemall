package com.idlemall.pojo;

public class SysUser {

	private int sys_id;
	private String sys_name;
	private String sys_pass;
	
	public SysUser() {
		super();
	}
	public SysUser(int sys_id, String sys_name, String sys_pass) {
		super();
		this.sys_id = sys_id;
		this.sys_name = sys_name;
		this.sys_pass = sys_pass;
	}
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

	
}
