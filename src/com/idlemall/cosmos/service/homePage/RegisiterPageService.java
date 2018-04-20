package com.idlemall.cosmos.service.homePage;

import com.idlemall.cosmos.model.SysUser;

public interface RegisiterPageService {

	
	/**
	 * 保存新增用户信息
	 * @return
	 */
	public String addSysUser(SysUser user);
	/**
	 * 完善用户信息
	 * @return
	 */
	public String saveSysUser();
}
