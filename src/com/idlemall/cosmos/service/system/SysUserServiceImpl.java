package com.idlemall.cosmos.service.system;

import javax.annotation.Resource;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import com.idlemall.cosmos.dao.base.CommonDao;
import com.idlemall.cosmos.dao.system.SysUserDaoImpl;
import com.idlemall.cosmos.model.SysUser;

/**用户service
 * @author CosmosRay
 * 
 */
@Repository
public class SysUserServiceImpl implements SysUserService {
	private SysUserDaoImpl sysUserDaoImpl;
	@Override
	public SysUser selectSysUser(SysUser user) {
		sysUserDaoImpl = new SysUserDaoImpl();
		String sql = "select * from sys_user where user_name=? and user_pass=?";	
		Object[] param = {user.getUser_name(),user.getUser_pass()};
		SysUser usr = sysUserDaoImpl.selectSysUser(param,sql);
		System.out.println("usr  =" +usr);
		System.out.println("user.getUser_name()"+user.getUser_name());
		System.out.println("user.getUser_pass()"+user.getUser_pass());
		if(usr != null){
			return usr;
		}
		return null;
	}
	
	
	public SysUserDaoImpl getSysUserDaoImpl() {
		return sysUserDaoImpl;
	}
	public void setSysUserDaoImpl(SysUserDaoImpl sysUserDaoImpl) {
		this.sysUserDaoImpl = sysUserDaoImpl;
	}
	
	

}
