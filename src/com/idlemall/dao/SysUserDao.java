package com.idlemall.dao;

import com.idlemall.pojo.SysUser;

public interface SysUserDao {
	
	public int selectSysUser(String sql,Object[] param);
	
}
