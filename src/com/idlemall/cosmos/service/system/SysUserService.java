package com.idlemall.cosmos.service.system;
import com.idlemall.cosmos.model.SysUser;;

public interface SysUserService {
	
	/**
	 * 通过用户名和密码查询用户是否存在
	 * @param user
	 * @return
	 */
	public SysUser selectSysUser(SysUser user); 
	
}
