package com.idlemall.cosmos.dao.system;

import com.idlemall.cosmos.model.SysUser;

public interface SysUserDao {

	/**
	 * 通过用户名和密码查询用户是否存在
	 */
	public SysUser selectSysUser(Object[] param,String sql);
}
