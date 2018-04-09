package com.idlemall.service;

import com.idlemall.daoImpl.SysUserDaoImpl;
import com.idlemall.pojo.SysUser;

public class SysUserService {

	SysUserDaoImpl sysUserDaoImpl = new SysUserDaoImpl();
	public int selectSysUser(SysUser sysUser){
		Object[] param = {sysUser.getSys_name(),sysUser.getSys_pass()};
		String sql = "select * from sysuser where sys_name=? and sys_pass=?";
		int i = sysUserDaoImpl.selectSysUser(sql,param);
		return i;
	}
}
