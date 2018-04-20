package com.idlemall.cosmos.dao.system;

public interface RegisiterPageDao {

	/**
	 * 添加新用户信息
	 */
	public String addSysUser(Object[] param,String sql);
	/**
	 * 完善用户信息
	 */
	public String saveSysUser(Object[] param,String sql);
}
