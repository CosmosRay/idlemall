package com.idlemall.cosmos.service.system;

import org.springframework.stereotype.Repository;
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
	
	@Override
	public int saveSysUser(SysUser user) {
		sysUserDaoImpl = new SysUserDaoImpl();
		Object[] param = {user.getUser_gender(),user.getUser_class(),user.getFaculty_sort_id(),user.getUser_qq(),user.getUser_address(),user.getUser_id()};
		String sql = "update sys_user set user_gender=?,user_class=?,faculty_sort_id=?,user_qq=?,user_address=? where user_id=?";
		int k = sysUserDaoImpl.saveSysUser(param, sql);
		return k;
	}
	
	@Override
	public int savePwd(int id, String jpwd, String xpwd) {
		sysUserDaoImpl = new SysUserDaoImpl();
		Object[] param = {xpwd,id,jpwd};
		String sql = "update sys_user set user_pass=? where user_id=? and user_pass=?";
		int k = sysUserDaoImpl.saveSysUser(param, sql);
		return k;
	}
	public SysUserDaoImpl getSysUserDaoImpl() {
		return sysUserDaoImpl;
	}
	public void setSysUserDaoImpl(SysUserDaoImpl sysUserDaoImpl) {
		this.sysUserDaoImpl = sysUserDaoImpl;
	}



	
	

}
