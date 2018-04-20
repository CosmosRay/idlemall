package com.idlemall.cosmos.service.homePage;

import com.idlemall.cosmos.dao.system.RegisiterPageDaoImpl;
import com.idlemall.cosmos.model.SysUser;

public class RegisiterPageServiceImpl implements RegisiterPageService {
	private RegisiterPageDaoImpl regisiterPageDaoImpl;
	
	@Override
	public String addSysUser(SysUser user) {
		regisiterPageDaoImpl = new RegisiterPageDaoImpl();
		
		Object[] param = {user.getUser_name(),user.getUser_pass(),user.getFaculty_sort_id(),user.getUser_gender(),user.getUser_credit(),user.getUser_qq(),user.getUser_buy(),user.getUser_sale(),user.getUser_time(),user.getUser_attr1()};
		String sql = "insert into sys_user (user_name,user_pass,FACULTY_SORT_ID,USER_GENDER,USER_CREDIT,USER_QQ,USER_BUY,USER_SALE,USER_TIME,USER_ATTR1) values(?,?,?,?,?,?,?,?,?,?)";
		String k = regisiterPageDaoImpl.addSysUser(param,sql);
		return k;
	}

	@Override
	public String saveSysUser() {
		// TODO Auto-generated method stub
		return null;
	}

	public RegisiterPageDaoImpl getRegisiterPageDaoImpl() {
		return regisiterPageDaoImpl;
	}

	public void setRegisiterPageDaoImpl(RegisiterPageDaoImpl regisiterPageDaoImpl) {
		this.regisiterPageDaoImpl = regisiterPageDaoImpl;
	}

	
	
}
